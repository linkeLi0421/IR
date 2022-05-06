; ModuleID = '/llk/IR/drivers/phy/ti/phy-gmii-sel.c_pt.bc'
source_filename = "../drivers/phy/ti/phy-gmii-sel.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phy_gmii_sel_soc_data = type { i32, i32, ptr, i8 }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
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
%struct.phy_gmii_sel_priv = type { ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.phy_gmii_sel_phy_priv = type { ptr, i32, ptr, i32, i32, [3 x ptr] }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_phy_gmii_sel__287_399_phy_gmii_sel_driver_init6 = internal global ptr @phy_gmii_sel_driver_init, section ".initcall6.init", align 4
@phy_gmii_sel_driver = internal global %struct.platform_driver { ptr @phy_gmii_sel_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @phy_gmii_sel_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_phy_gmii_sel_driver_exit = internal global ptr @phy_gmii_sel_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file288 = internal constant [46 x i8] c"phy_gmii_sel.file=drivers/phy/ti/phy-gmii-sel\00", section ".modinfo", align 1
@__UNIQUE_ID_license289 = internal constant [28 x i8] c"phy_gmii_sel.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [65 x i8] c"phy_gmii_sel.author=Grygorii Strashko <grygorii.strashko@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [76 x i8] c"phy_gmii_sel.description=TI CPSW Port's PHY Interface Mode selection Driver\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"phy-gmii-sel\00", align 1
@phy_gmii_sel_id_table = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3352-phy-gmii-sel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @phy_gmii_sel_soc_am33xx }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7xx-phy-gmii-sel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @phy_gmii_sel_soc_dra7 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am43xx-phy-gmii-sel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @phy_gmii_sel_soc_am33xx }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm814-phy-gmii-sel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @phy_gmii_sel_soc_dm814 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am654-phy-gmii-sel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @phy_gmii_sel_soc_am654 }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to get syscon %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to create phy provider %d\0A\00", align 1
@phy_gmii_sel_ops = internal constant %struct.phy_ops { ptr null, ptr null, ptr null, ptr null, ptr @phy_gmii_sel_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to create phy%d %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"port%u: unsupported mode: \22%s\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"port%u: set mode fail %d\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"mii\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"gmii\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"sgmii\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"tbi\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"rev-mii\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"rmii\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"rev-rmii\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"rgmii\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"rgmii-id\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"rgmii-rxid\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"rgmii-txid\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"rtbi\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"smii\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"xgmii\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"xlgmii\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"moca\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"qsgmii\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"trgmii\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"1000base-x\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"2500base-x\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"5gbase-r\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"rxaui\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"xaui\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"10gbase-r\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"25gbase-r\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"usxgmii\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"10gbase-kr\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"100base-x\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@phy_gmii_sel_soc_am33xx = internal constant %struct.phy_gmii_sel_soc_data { i32 2, i32 6, ptr @phy_gmii_sel_fields_am33xx, i8 0 }, align 4
@phy_gmii_sel_soc_dra7 = internal constant %struct.phy_gmii_sel_soc_data { i32 2, i32 0, ptr @phy_gmii_sel_fields_dra7, i8 0 }, align 4
@phy_gmii_sel_soc_dm814 = internal constant %struct.phy_gmii_sel_soc_data { i32 2, i32 2, ptr @phy_gmii_sel_fields_am33xx, i8 0 }, align 4
@phy_gmii_sel_soc_am654 = internal constant %struct.phy_gmii_sel_soc_data { i32 0, i32 0, ptr @phy_gmii_sel_fields_am654, i8 1 }, align 4
@phy_gmii_sel_fields_am33xx = internal constant [2 x [3 x %struct.reg_field]] [[3 x %struct.reg_field] [%struct.reg_field { i32 1616, i32 0, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 1616, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 1616, i32 6, i32 6, i32 0, i32 0 }], [3 x %struct.reg_field] [%struct.reg_field { i32 1616, i32 2, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 1616, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 1616, i32 7, i32 7, i32 0, i32 0 }]], align 4
@phy_gmii_sel_fields_dra7 = internal constant [2 x [3 x %struct.reg_field]] [[3 x %struct.reg_field] [%struct.reg_field { i32 1364, i32 0, i32 1, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer], [3 x %struct.reg_field] [%struct.reg_field { i32 1364, i32 4, i32 5, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer]], align 4
@phy_gmii_sel_fields_am654 = internal constant [8 x [3 x %struct.reg_field]] [[3 x %struct.reg_field] [%struct.reg_field { i32 0, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer], [3 x %struct.reg_field] [%struct.reg_field { i32 4, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer], [3 x %struct.reg_field] [%struct.reg_field { i32 8, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer], [3 x %struct.reg_field] [%struct.reg_field { i32 12, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer], [3 x %struct.reg_field] [%struct.reg_field { i32 16, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer], [3 x %struct.reg_field] [%struct.reg_field { i32 20, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer], [3 x %struct.reg_field] [%struct.reg_field { i32 24, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer], [3 x %struct.reg_field] [%struct.reg_field { i32 28, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer]], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file288, ptr @__UNIQUE_ID_license289, ptr @__exitcall_phy_gmii_sel_driver_exit, ptr @__initcall__kmod_phy_gmii_sel__287_399_phy_gmii_sel_driver_init6, ptr @phy_gmii_sel_driver_exit], section "llvm.metadata"
@switch.table.phy_gmii_sel_mode = private unnamed_addr constant [11 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1], align 4
@switch.table.phy_gmii_sel_mode.37 = private unnamed_addr constant [11 x i32] [i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2], align 4
@switch.table.phy_modes = private unnamed_addr constant [30 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.35, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @phy_gmii_sel_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @phy_gmii_sel_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @phy_gmii_sel_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @phy_gmii_sel_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_gmii_sel_probe(ptr noundef %0) #2 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @of_match_node(ptr noundef nonnull @phy_gmii_sel_id_table, ptr noundef %5) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %167, label %8

8:                                                ; preds = %1
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 28, i32 noundef 3520) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %167, label %11

11:                                               ; preds = %8
  store ptr %3, ptr %9, align 4
  %12 = getelementptr inbounds %struct.of_device_id, ptr %6, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.phy_gmii_sel_priv, ptr %9, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  %15 = load i32, ptr %13, align 4
  %16 = getelementptr inbounds %struct.phy_gmii_sel_priv, ptr %9, i32 0, i32 5
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.device_node, ptr %5, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = tail call ptr @syscon_node_to_regmap(ptr noundef %18) #8
  %20 = getelementptr inbounds %struct.phy_gmii_sel_priv, ptr %9, i32 0, i32 2
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %11
  %23 = ptrtoint ptr %19 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %23) #9
  br label %167

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.phy_gmii_sel_soc_data, ptr %13, i32 0, i32 3
  %26 = load i8, ptr %25, align 4, !range !8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store i64 0, ptr %2, align 8, !annotation !9
  %29 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %30 = load ptr, ptr %29, align 8
  %31 = call ptr @__of_get_address(ptr noundef %30, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %2, ptr noundef null) #8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %28
  %34 = load i64, ptr %2, align 8
  %35 = lshr i64 %34, 2
  %36 = trunc i64 %35 to i32
  store i32 %36, ptr %16, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i32, ptr %31, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39) #8
  %41 = getelementptr inbounds %struct.phy_gmii_sel_priv, ptr %9, i32 0, i32 6
  store i32 %40, ptr %41, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  br label %43

42:                                               ; preds = %33, %28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  br label %167

43:                                               ; preds = %38, %24
  %44 = phi i32 [ %36, %38 ], [ %15, %24 ]
  %45 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %44, i32 32) #8
  %46 = extractvalue { i32, i1 } %45, 1
  br i1 %46, label %167, label %47, !prof !10

47:                                               ; preds = %43
  %48 = extractvalue { i32, i1 } %45, 0
  %49 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %48, i32 noundef 3520) #8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %167, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.phy_gmii_sel_priv, ptr %9, i32 0, i32 6
  %53 = icmp eq i32 %44, 0
  br i1 %53, label %159, label %54

54:                                               ; preds = %155, %51
  %55 = phi i32 [ %56, %155 ], [ 0, %51 ]
  %56 = add nuw i32 %55, 1
  %57 = getelementptr %struct.phy_gmii_sel_phy_priv, ptr %49, i32 %55
  %58 = load ptr, ptr %14, align 4
  %59 = load ptr, ptr %9, align 4
  %60 = getelementptr %struct.phy_gmii_sel_phy_priv, ptr %49, i32 %55, i32 1
  store i32 %56, ptr %60, align 4
  store ptr %9, ptr %57, align 4
  %61 = getelementptr inbounds %struct.phy_gmii_sel_soc_data, ptr %58, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr [3 x %struct.reg_field], ptr %62, i32 %55
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds i8, ptr %63, i32 4
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds i8, ptr %63, i32 8
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds i8, ptr %63, i32 12
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds i8, ptr %63, i32 16
  %72 = load i32, ptr %71, align 4
  %73 = load i32, ptr %52, align 4
  %74 = add i32 %73, %64
  %75 = load ptr, ptr %20, align 4
  %76 = insertvalue [5 x i32] poison, i32 %74, 0
  %77 = insertvalue [5 x i32] %76, i32 %66, 1
  %78 = insertvalue [5 x i32] %77, i32 %68, 2
  %79 = insertvalue [5 x i32] %78, i32 %70, 3
  %80 = insertvalue [5 x i32] %79, i32 %72, 4
  %81 = call ptr @devm_regmap_field_alloc(ptr noundef %59, ptr noundef %75, [5 x i32] %80) #8
  %82 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %82, label %83, label %85

83:                                               ; preds = %54
  %84 = ptrtoint ptr %81 to i32
  br label %167

85:                                               ; preds = %54
  %86 = getelementptr %struct.reg_field, ptr %63, i32 1
  %87 = getelementptr %struct.phy_gmii_sel_phy_priv, ptr %49, i32 %55, i32 5
  store ptr %81, ptr %87, align 4
  %88 = getelementptr %struct.reg_field, ptr %86, i32 1
  %89 = getelementptr inbounds %struct.phy_gmii_sel_soc_data, ptr %58, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, 2
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %118, label %93

93:                                               ; preds = %85
  %94 = load i32, ptr %86, align 4
  %95 = load i32, ptr %52, align 4
  %96 = add i32 %95, %94
  %97 = getelementptr inbounds i8, ptr %86, i32 16
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr inbounds i8, ptr %86, i32 12
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr inbounds i8, ptr %86, i32 8
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr inbounds i8, ptr %86, i32 4
  %104 = load i32, ptr %103, align 4
  %105 = load ptr, ptr %20, align 4
  %106 = insertvalue [5 x i32] poison, i32 %96, 0
  %107 = insertvalue [5 x i32] %106, i32 %104, 1
  %108 = insertvalue [5 x i32] %107, i32 %102, 2
  %109 = insertvalue [5 x i32] %108, i32 %100, 3
  %110 = insertvalue [5 x i32] %109, i32 %98, 4
  %111 = call ptr @devm_regmap_field_alloc(ptr noundef %59, ptr noundef %105, [5 x i32] %110) #8
  %112 = icmp ugt ptr %111, inttoptr (i32 -4096 to ptr)
  br i1 %112, label %113, label %115

113:                                              ; preds = %93
  %114 = ptrtoint ptr %111 to i32
  br label %167

115:                                              ; preds = %93
  %116 = getelementptr %struct.phy_gmii_sel_phy_priv, ptr %49, i32 %55, i32 5, i32 1
  store ptr %111, ptr %116, align 4
  %117 = load i32, ptr %89, align 4
  br label %118

118:                                              ; preds = %115, %85
  %119 = phi i32 [ %117, %115 ], [ %90, %85 ]
  %120 = and i32 %119, 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %146, label %122

122:                                              ; preds = %118
  %123 = load i32, ptr %88, align 4
  %124 = load i32, ptr %52, align 4
  %125 = add i32 %124, %123
  %126 = getelementptr inbounds i8, ptr %88, i32 16
  %127 = load i32, ptr %126, align 4
  %128 = getelementptr inbounds i8, ptr %88, i32 12
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr inbounds i8, ptr %88, i32 8
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr inbounds i8, ptr %88, i32 4
  %133 = load i32, ptr %132, align 4
  %134 = load ptr, ptr %20, align 4
  %135 = insertvalue [5 x i32] poison, i32 %125, 0
  %136 = insertvalue [5 x i32] %135, i32 %133, 1
  %137 = insertvalue [5 x i32] %136, i32 %131, 2
  %138 = insertvalue [5 x i32] %137, i32 %129, 3
  %139 = insertvalue [5 x i32] %138, i32 %127, 4
  %140 = call ptr @devm_regmap_field_alloc(ptr noundef %59, ptr noundef %134, [5 x i32] %139) #8
  %141 = icmp ugt ptr %140, inttoptr (i32 -4096 to ptr)
  br i1 %141, label %142, label %144

142:                                              ; preds = %122
  %143 = ptrtoint ptr %140 to i32
  br label %167

144:                                              ; preds = %122
  %145 = getelementptr %struct.phy_gmii_sel_phy_priv, ptr %49, i32 %55, i32 5, i32 2
  store ptr %140, ptr %145, align 4
  br label %146

146:                                              ; preds = %144, %118
  %147 = load ptr, ptr %9, align 4
  %148 = getelementptr inbounds %struct.device, ptr %147, i32 0, i32 25
  %149 = load ptr, ptr %148, align 8
  %150 = call ptr @devm_phy_create(ptr noundef %59, ptr noundef %149, ptr noundef nonnull @phy_gmii_sel_ops) #8
  %151 = getelementptr %struct.phy_gmii_sel_phy_priv, ptr %49, i32 %55, i32 2
  store ptr %150, ptr %151, align 4
  %152 = icmp ugt ptr %150, inttoptr (i32 -4096 to ptr)
  br i1 %152, label %153, label %155

153:                                              ; preds = %146
  %154 = ptrtoint ptr %150 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.3, i32 noundef %56, i32 noundef %154) #9
  br label %167

155:                                              ; preds = %146
  %156 = getelementptr inbounds %struct.device, ptr %150, i32 0, i32 8
  store ptr %57, ptr %156, align 8
  %157 = load i32, ptr %16, align 4
  %158 = icmp ult i32 %56, %157
  br i1 %158, label %54, label %159

159:                                              ; preds = %155, %51
  %160 = getelementptr inbounds %struct.phy_gmii_sel_priv, ptr %9, i32 0, i32 4
  store ptr %49, ptr %160, align 4
  %161 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %9, ptr %161, align 8
  %162 = call ptr @__devm_of_phy_provider_register(ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef nonnull @phy_gmii_sel_of_xlate) #8
  %163 = getelementptr inbounds %struct.phy_gmii_sel_priv, ptr %9, i32 0, i32 3
  store ptr %162, ptr %163, align 4
  %164 = icmp ugt ptr %162, inttoptr (i32 -4096 to ptr)
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = ptrtoint ptr %162 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef %166) #9
  br label %167

167:                                              ; preds = %165, %159, %153, %142, %113, %83, %47, %43, %42, %22, %8, %1
  %168 = phi i32 [ %23, %22 ], [ %166, %165 ], [ -22, %1 ], [ -12, %8 ], [ 0, %159 ], [ -12, %43 ], [ -12, %47 ], [ -22, %42 ], [ %84, %83 ], [ %114, %113 ], [ %143, %142 ], [ %154, %153 ]
  ret i32 %168
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal ptr @phy_gmii_sel_of_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %45, label %10

10:                                               ; preds = %2
  %11 = icmp eq ptr %4, null
  br i1 %11, label %45, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.phy_gmii_sel_priv, ptr %4, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %45, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.phy_gmii_sel_priv, ptr %4, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.phy_gmii_sel_soc_data, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 4
  %22 = icmp ne i32 %21, 0
  %23 = icmp ult i32 %8, 2
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %45, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.phy_gmii_sel_priv, ptr %4, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %6, %27
  br i1 %28, label %45, label %29

29:                                               ; preds = %25
  %30 = add i32 %6, -1
  %31 = getelementptr %struct.phy_gmii_sel_phy_priv, ptr %14, i32 %30, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %6, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = icmp eq i32 %21, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %34
  %37 = getelementptr %struct.of_phandle_args, ptr %1, i32 0, i32 2, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr %struct.phy_gmii_sel_phy_priv, ptr %14, i32 %30, i32 3
  store i32 %38, ptr %39, align 4
  %40 = load ptr, ptr %13, align 4
  br label %41

41:                                               ; preds = %36, %34
  %42 = phi ptr [ %40, %36 ], [ %14, %34 ]
  %43 = getelementptr %struct.phy_gmii_sel_phy_priv, ptr %42, i32 %30, i32 2
  %44 = load ptr, ptr %43, align 4
  br label %45

45:                                               ; preds = %41, %29, %25, %16, %12, %10, %2
  %46 = phi ptr [ %44, %41 ], [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -19 to ptr), %12 ], [ inttoptr (i32 -19 to ptr), %10 ], [ inttoptr (i32 -22 to ptr), %16 ], [ inttoptr (i32 -22 to ptr), %25 ], [ inttoptr (i32 -22 to ptr), %29 ]
  ret ptr %46
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_gmii_sel_mode(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.phy_gmii_sel_priv, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = icmp eq i32 %1, 15
  br i1 %10, label %11, label %62

11:                                               ; preds = %3
  %12 = add i32 %2, -2
  %13 = icmp ult i32 %12, 11
  br i1 %13, label %18, label %14

14:                                               ; preds = %18, %11
  %15 = getelementptr inbounds %struct.phy_gmii_sel_phy_priv, ptr %5, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = tail call fastcc ptr @phy_modes(i32 noundef %2)
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.4, i32 noundef %16, ptr noundef nonnull %17) #9
  br label %62

18:                                               ; preds = %11
  %19 = trunc i32 %12 to i16
  %20 = lshr i16 1955, %19
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %14, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds [11 x i32], ptr @switch.table.phy_gmii_sel_mode, i32 0, i32 %12
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds [11 x i32], ptr @switch.table.phy_gmii_sel_mode.37, i32 0, i32 %12
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.phy_gmii_sel_phy_priv, ptr %5, i32 0, i32 4
  store i32 %2, ptr %28, align 4
  %29 = getelementptr inbounds %struct.phy_gmii_sel_phy_priv, ptr %5, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @regmap_field_update_bits_base(ptr noundef %30, i32 noundef -1, i32 noundef %27, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.phy_gmii_sel_phy_priv, ptr %5, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.5, i32 noundef %35, i32 noundef %31) #9
  br label %62

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.phy_gmii_sel_soc_data, ptr %8, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %36
  %42 = getelementptr %struct.phy_gmii_sel_phy_priv, ptr %5, i32 0, i32 5, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = tail call i32 @regmap_field_update_bits_base(ptr noundef nonnull %43, i32 noundef -1, i32 noundef %25, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %45
  %49 = load i32, ptr %37, align 4
  br label %50

50:                                               ; preds = %48, %41, %36
  %51 = phi i32 [ %49, %48 ], [ %38, %41 ], [ %38, %36 ]
  %52 = and i32 %51, 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %50
  %55 = getelementptr %struct.phy_gmii_sel_phy_priv, ptr %5, i32 0, i32 5, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.phy_gmii_sel_phy_priv, ptr %5, i32 0, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = tail call i32 @regmap_field_update_bits_base(ptr noundef nonnull %56, i32 noundef -1, i32 noundef %60, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %62

62:                                               ; preds = %58, %54, %50, %45, %33, %14, %3
  %63 = phi i32 [ -22, %14 ], [ %31, %33 ], [ -22, %3 ], [ %46, %45 ], [ 0, %58 ], [ 0, %54 ], [ 0, %50 ]
  ret i32 %63
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @phy_modes(i32 noundef %0) unnamed_addr #7 {
  %2 = icmp ult i32 %0, 30
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = getelementptr inbounds [30 x ptr], ptr @switch.table.phy_modes, i32 0, i32 %0
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ @.str.36, %1 ]
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
