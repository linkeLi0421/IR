; ModuleID = '/llk/IR/drivers/phy/ti/phy-omap-usb2.c_pt.bc'
source_filename = "../drivers/phy/ti/phy-omap-usb2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_usb2_set_comparator:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_usb2_set_comparator\22\09\09\09\09\09"
module asm "__kstrtabns_omap_usb2_set_comparator:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_phy_data = type { ptr, i8, i32, i32, i32 }
%struct.omap_usb = type { %struct.usb_phy, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, i32, i32, i32, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.phy_companion = type { ptr, ptr }

@__kstrtab_omap_usb2_set_comparator = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_usb2_set_comparator = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_usb2_set_comparator = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_usb2_set_comparator to i32), ptr @__kstrtab_omap_usb2_set_comparator, ptr @__kstrtabns_omap_usb2_set_comparator }, section "___ksymtab_gpl+omap_usb2_set_comparator", align 4
@__initcall__kmod_phy_omap_usb2__252_528_omap_usb2_driver_init6 = internal global ptr @omap_usb2_driver_init, section ".initcall6.init", align 4
@omap_usb2_driver = internal global %struct.platform_driver { ptr @omap_usb2_probe, ptr @omap_usb2_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_usb2_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_omap_usb2_driver_exit = internal global ptr @omap_usb2_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias253 = internal constant [39 x i8] c"phy_omap_usb2.alias=platform:omap_usb2\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [44 x i8] c"phy_omap_usb2.author=Texas Instruments Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description255 = internal constant [47 x i8] c"phy_omap_usb2.description=OMAP USB2 phy driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file256 = internal constant [48 x i8] c"phy_omap_usb2.file=drivers/phy/ti/phy-omap-usb2\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [29 x i8] c"phy_omap_usb2.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"omap-usb2\00", align 1
@omap_usb2_id_table = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap-usb2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap_usb2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-usb2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap5_usb2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7x-usb2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra7x_usb2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7x-usb2-phy2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra7x_usb2_phy2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am437x-usb2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am437x_usb2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am654-usb2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am654_usb2_data }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"syscon-phy-power\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"ctrl-module\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to get control device phandle\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to get control device\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"couldn't get power reg. offset\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"wkupclk\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"unable to get wkupclk %ld, trying old name\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"usb_phy_cm_clk32k\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"unable to get usb_phy_cm_clk32k\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"found usb_phy_cm_clk32k, please fix DTS\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"refclk\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"usb_otg_ss_refclk960m\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"found usb_otg_ss_refclk960m, please fix DTS\0A\00", align 1
@ops = internal constant %struct.phy_ops { ptr @omap_usb_init, ptr @omap_usb_exit, ptr @omap_usb_power_on, ptr @omap_usb_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@omap_usb2_init_errata.am65x_sr10_soc_devices = internal constant [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr @.str.14, ptr @.str.15, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"AM65X\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"SR1.0\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"Failed to enable wkupclk %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"Failed to enable optclk %d\0A\00", align 1
@omap_usb2_data = internal constant %struct.usb_phy_data { ptr @.str.18, i8 3, i32 1, i32 0, i32 1 }, align 4
@omap5_usb2_data = internal constant %struct.usb_phy_data { ptr @.str.19, i8 0, i32 1, i32 0, i32 1 }, align 4
@dra7x_usb2_data = internal constant %struct.usb_phy_data { ptr @.str.20, i8 4, i32 1, i32 0, i32 1 }, align 4
@dra7x_usb2_phy2_data = internal constant %struct.usb_phy_data { ptr @.str.21, i8 4, i32 268435456, i32 0, i32 268435456 }, align 4
@am437x_usb2_data = internal constant %struct.usb_phy_data { ptr @.str.22, i8 0, i32 1572867, i32 1572864, i32 3 }, align 4
@am654_usb2_data = internal constant %struct.usb_phy_data { ptr @.str.23, i8 4, i32 304, i32 48, i32 256 }, align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"omap_usb2\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"omap5_usb2\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"dra7x_usb2\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"dra7x_usb2_phy2\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"am437x_usb2\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"am654_usb2\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias253, ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_file256, ptr @__UNIQUE_ID_license257, ptr @__exitcall_omap_usb2_driver_exit, ptr @__initcall__kmod_phy_omap_usb2__252_528_omap_usb2_driver_init6, ptr @__ksymtab_omap_usb2_set_comparator, ptr @omap_usb2_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_usb2_set_comparator(ptr noundef %0) #0 {
  %2 = tail call ptr @usb_get_phy(i32 noundef 1) #7
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.omap_usb, ptr %2, i32 0, i32 1
  store ptr %0, ptr %5, align 4
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ 0, %4 ], [ -19, %1 ]
  ret i32 %7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_phy(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @omap_usb2_driver_init() #3 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_usb2_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap_usb2_driver_exit() #3 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_usb2_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_usb2_probe(ptr noundef %0) #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @of_match_device(ptr noundef nonnull @omap_usb2_id_table, ptr noundef %3) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %147, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.of_device_id, ptr %6, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 244, i32 noundef 3520) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %147, label %13

13:                                               ; preds = %8
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 44, i32 noundef 3520) #7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %147, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.omap_usb, ptr %11, i32 0, i32 4
  store ptr %3, ptr %17, align 4
  store ptr %3, ptr %11, align 4
  %18 = load ptr, ptr %10, align 4
  %19 = getelementptr inbounds %struct.usb_phy, ptr %11, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.usb_phy, ptr %11, i32 0, i32 5
  store ptr %14, ptr %20, align 4
  %21 = getelementptr inbounds %struct.usb_phy, ptr %11, i32 0, i32 3
  store i32 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.usb_phy_data, ptr %10, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.omap_usb, ptr %11, i32 0, i32 11
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.usb_phy_data, ptr %10, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.omap_usb, ptr %11, i32 0, i32 12
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.usb_phy_data, ptr %10, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.omap_usb, ptr %11, i32 0, i32 13
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.usb_phy_data, ptr %10, i32 0, i32 1
  %32 = load i8, ptr %31, align 4
  %33 = getelementptr inbounds %struct.omap_usb, ptr %11, i32 0, i32 8
  store i8 %32, ptr %33, align 4
  %34 = tail call ptr @soc_device_match(ptr noundef nonnull @omap_usb2_init_errata.am65x_sr10_soc_devices) #7
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %16
  %37 = load i8, ptr %33, align 4
  %38 = or i8 %37, 8
  store i8 %38, ptr %33, align 4
  br label %39

39:                                               ; preds = %36, %16
  %40 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  %41 = getelementptr inbounds %struct.omap_usb, ptr %11, i32 0, i32 3
  store ptr %40, ptr %41, align 4
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = ptrtoint ptr %40 to i32
  br label %147

45:                                               ; preds = %39
  %46 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %5, ptr noundef nonnull @.str.1) #7
  %47 = getelementptr inbounds %struct.omap_usb, ptr %11, i32 0, i32 9
  store ptr %46, ptr %47, align 4
  %48 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  store ptr null, ptr %47, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #7, !annotation !8
  %50 = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #7
  %51 = icmp ne i32 %50, 0
  %52 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #7
  %53 = icmp eq ptr %52, null
  %54 = select i1 %51, i1 true, i1 %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #8
  br label %147

56:                                               ; preds = %49
  %57 = call ptr @of_find_device_by_node(ptr noundef nonnull %52) #7
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #8
  br label %147

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.platform_device, ptr %57, i32 0, i32 3
  %62 = getelementptr inbounds %struct.omap_usb, ptr %11, i32 0, i32 5
  store ptr %61, ptr %62, align 4
  br label %68

63:                                               ; preds = %45
  %64 = getelementptr inbounds %struct.omap_usb, ptr %11, i32 0, i32 10
  %65 = tail call i32 @of_property_read_u32_index(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef 1, ptr noundef %64) #7
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5) #8
  br label %147

68:                                               ; preds = %63, %60
  %69 = load ptr, ptr %17, align 4
  %70 = call ptr @devm_clk_get(ptr noundef %69, ptr noundef nonnull @.str.6) #7
  %71 = getelementptr inbounds %struct.omap_usb, ptr %11, i32 0, i32 6
  store ptr %70, ptr %71, align 4
  %72 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %73, label %88

73:                                               ; preds = %68
  %74 = icmp eq ptr %70, inttoptr (i32 -517 to ptr)
  br i1 %74, label %147, label %75

75:                                               ; preds = %73
  %76 = ptrtoint ptr %70 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %76) #8
  %77 = load ptr, ptr %17, align 4
  %78 = call ptr @devm_clk_get(ptr noundef %77, ptr noundef nonnull @.str.8) #7
  store ptr %78, ptr %71, align 4
  %79 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = icmp eq ptr %78, inttoptr (i32 -517 to ptr)
  br i1 %81, label %84, label %82

82:                                               ; preds = %80
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9) #8
  %83 = load ptr, ptr %71, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi ptr [ %83, %82 ], [ inttoptr (i32 -517 to ptr), %80 ]
  %86 = ptrtoint ptr %85 to i32
  br label %147

87:                                               ; preds = %75
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.10) #8
  br label %88

88:                                               ; preds = %87, %68
  %89 = load ptr, ptr %17, align 4
  %90 = call ptr @devm_clk_get(ptr noundef %89, ptr noundef nonnull @.str.11) #7
  %91 = getelementptr inbounds %struct.omap_usb, ptr %11, i32 0, i32 7
  store ptr %90, ptr %91, align 4
  %92 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = icmp eq ptr %90, inttoptr (i32 -517 to ptr)
  br i1 %94, label %147, label %95

95:                                               ; preds = %93
  %96 = load ptr, ptr %17, align 4
  %97 = call ptr @devm_clk_get(ptr noundef %96, ptr noundef nonnull @.str.12) #7
  store ptr %97, ptr %91, align 4
  %98 = icmp ugt ptr %97, inttoptr (i32 -4096 to ptr)
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.13) #8
  br label %100

100:                                              ; preds = %99, %95, %88
  %101 = getelementptr inbounds %struct.usb_otg, ptr %14, i32 0, i32 6
  store ptr @omap_usb_set_host, ptr %101, align 4
  %102 = getelementptr inbounds %struct.usb_otg, ptr %14, i32 0, i32 7
  store ptr @omap_usb_set_peripheral, ptr %102, align 4
  %103 = load i8, ptr %31, align 4
  %104 = and i8 %103, 2
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.usb_otg, ptr %14, i32 0, i32 8
  store ptr @omap_usb_set_vbus, ptr %107, align 4
  %108 = load i8, ptr %31, align 4
  br label %109

109:                                              ; preds = %106, %100
  %110 = phi i8 [ %108, %106 ], [ %103, %100 ]
  %111 = and i8 %110, 1
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.usb_otg, ptr %14, i32 0, i32 9
  store ptr @omap_usb_start_srp, ptr %114, align 4
  br label %115

115:                                              ; preds = %113, %109
  %116 = getelementptr inbounds %struct.usb_otg, ptr %14, i32 0, i32 2
  store ptr %11, ptr %116, align 4
  %117 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %11, ptr %117, align 8
  %118 = load ptr, ptr %17, align 4
  call void @pm_runtime_enable(ptr noundef %118) #7
  %119 = load ptr, ptr %17, align 4
  %120 = call ptr @devm_phy_create(ptr noundef %119, ptr noundef null, ptr noundef nonnull @ops) #7
  %121 = icmp ugt ptr %120, inttoptr (i32 -4096 to ptr)
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load ptr, ptr %17, align 4
  call void @__pm_runtime_disable(ptr noundef %123, i1 noundef zeroext true) #7
  %124 = ptrtoint ptr %120 to i32
  br label %147

125:                                              ; preds = %115
  %126 = getelementptr inbounds %struct.device, ptr %120, i32 0, i32 8
  store ptr %11, ptr %126, align 8
  %127 = load ptr, ptr %47, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.omap_usb, ptr %11, i32 0, i32 5
  %131 = load ptr, ptr %130, align 4
  call void @omap_control_phy_power(ptr noundef %131, i32 noundef 0) #7
  br label %138

132:                                              ; preds = %125
  %133 = load i32, ptr %30, align 4
  %134 = getelementptr inbounds %struct.omap_usb, ptr %11, i32 0, i32 10
  %135 = load i32, ptr %134, align 4
  %136 = load i32, ptr %24, align 4
  %137 = call i32 @regmap_update_bits_base(ptr noundef nonnull %127, i32 noundef %135, i32 noundef %136, i32 noundef %133, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %138

138:                                              ; preds = %132, %129
  %139 = load ptr, ptr %17, align 4
  %140 = call ptr @__devm_of_phy_provider_register(ptr noundef %139, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #7
  %141 = icmp ugt ptr %140, inttoptr (i32 -4096 to ptr)
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load ptr, ptr %17, align 4
  call void @__pm_runtime_disable(ptr noundef %143, i1 noundef zeroext true) #7
  %144 = ptrtoint ptr %140 to i32
  br label %147

145:                                              ; preds = %138
  %146 = call i32 @usb_add_phy_dev(ptr noundef nonnull %11) #7
  br label %147

147:                                              ; preds = %145, %142, %122, %93, %84, %73, %67, %59, %55, %43, %13, %8, %1
  %148 = phi i32 [ %44, %43 ], [ %86, %84 ], [ %124, %122 ], [ %144, %142 ], [ 0, %145 ], [ -22, %59 ], [ -22, %55 ], [ -22, %67 ], [ -22, %1 ], [ -12, %8 ], [ -12, %13 ], [ -517, %73 ], [ -517, %93 ]
  ret i32 %148
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_usb2_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @usb_remove_phy(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.omap_usb, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call void @__pm_runtime_disable(ptr noundef %5, i1 noundef zeroext true) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @omap_usb_set_host(ptr nocapture noundef writeonly %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 3
  store ptr %1, ptr %3, align 4
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 5
  store i32 0, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @omap_usb_set_peripheral(ptr nocapture noundef writeonly %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 4
  store ptr %1, ptr %3, align 4
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 5
  store i32 0, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_usb_set_vbus(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.omap_usb, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 4
  %10 = tail call i32 %9(ptr noundef nonnull %6, i1 noundef zeroext %1) #7
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i32 [ %10, %8 ], [ -19, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_usb_start_srp(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.usb_otg, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.omap_usb, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.phy_companion, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef nonnull %5) #7
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi i32 [ %10, %7 ], [ -19, %1 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_usb_power_off(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.omap_usb, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.omap_usb, ptr %3, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  tail call void @omap_control_phy_power(ptr noundef %9, i32 noundef 0) #7
  br label %18

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.omap_usb, ptr %3, i32 0, i32 13
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.omap_usb, ptr %3, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.omap_usb, ptr %3, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %5, i32 noundef %14, i32 noundef %16, i32 noundef %12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %18

18:                                               ; preds = %10, %7
  %19 = phi i32 [ %17, %10 ], [ 0, %7 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_phy_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_usb_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.omap_usb, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i32 [ %6, %1 ], [ %9, %11 ]
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.omap_usb, ptr %3, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.16, i32 noundef %13) #8
  br label %36

18:                                               ; preds = %12, %8
  %19 = getelementptr inbounds %struct.omap_usb, ptr %3, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %36, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @clk_prepare(ptr noundef %20) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = tail call i32 @clk_enable(ptr noundef %20) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %25
  tail call void @clk_unprepare(ptr noundef %20) #7
  br label %29

29:                                               ; preds = %28, %22
  %30 = phi i32 [ %23, %22 ], [ %26, %28 ]
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.omap_usb, ptr %3, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.17, i32 noundef %30) #8
  %35 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %35) #7
  br label %36

36:                                               ; preds = %32, %29, %25, %18, %15
  %37 = getelementptr inbounds %struct.omap_usb, ptr %3, i32 0, i32 8
  %38 = load i8, ptr %37, align 4
  %39 = and i8 %38, 4
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.omap_usb, ptr %3, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 76
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #7, !srcloc !9
  %46 = or i32 %45, -2147483648
  %47 = load ptr, ptr %42, align 4
  %48 = getelementptr i8, ptr %47, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #7, !srcloc !10
  %49 = load i8, ptr %37, align 4
  br label %50

50:                                               ; preds = %41, %36
  %51 = phi i8 [ %49, %41 ], [ %38, %36 ]
  %52 = and i8 %51, 8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.omap_usb, ptr %3, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i8, ptr %56, i32 20
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #7, !srcloc !9
  %59 = or i32 %58, 805306368
  %60 = load ptr, ptr %55, align 4
  %61 = getelementptr i8, ptr %60, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #7, !srcloc !10
  br label %62

62:                                               ; preds = %54, %50
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_usb_exit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.omap_usb, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  %6 = getelementptr inbounds %struct.omap_usb, ptr %3, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  br label %10

10:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_usb_power_on(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.omap_usb, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.omap_usb, ptr %3, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  tail call void @omap_control_phy_power(ptr noundef %9, i32 noundef 1) #7
  br label %18

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.omap_usb, ptr %3, i32 0, i32 12
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.omap_usb, ptr %3, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.omap_usb, ptr %3, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %5, i32 noundef %14, i32 noundef %16, i32 noundef %12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %18

18:                                               ; preds = %10, %7
  %19 = phi i32 [ %17, %10 ], [ 0, %7 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_control_phy_power(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_phy(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"auto-init"}
!9 = !{i64 2488112}
!10 = !{i64 2487694}
