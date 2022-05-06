; ModuleID = '/llk/IR/drivers/phy/broadcom/phy-brcm-usb.c_pt.bc'
source_filename = "../drivers/phy/broadcom/phy-brcm-usb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.value_to_name_map = type { i32, ptr }
%struct.lock_class_key = type {}
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.match_chip_info = type { ptr, [7 x i8], i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.brcm_usb_init_params = type { [6 x ptr], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8 }
%struct.brcm_usb_phy_data = type { %struct.brcm_usb_init_params, i8, i8, ptr, ptr, ptr, %struct.mutex, i32, i32, [2 x %struct.brcm_usb_phy], %struct.notifier_block, i8 }
%struct.brcm_usb_phy = type { ptr, i32, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.brcm_usb_init_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_phy_brcm_usb_dvr__248_666_brcm_usb_driver_init6 = internal global ptr @brcm_usb_driver_init, section ".initcall6.init", align 4
@brcm_usb_driver = internal global %struct.platform_driver { ptr @brcm_usb_phy_probe, ptr @brcm_usb_phy_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @brcm_usb_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcm_usb_phy_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_brcm_usb_driver_exit = internal global ptr @brcm_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias249 = internal constant [48 x i8] c"phy_brcm_usb_dvr.alias=platform:brcmstb-usb-phy\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [57 x i8] c"phy_brcm_usb_dvr.author=Al Cooper <acooper@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [49 x i8] c"phy_brcm_usb_dvr.description=BRCM USB PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [60 x i8] c"phy_brcm_usb_dvr.file=drivers/phy/broadcom/phy-brcm-usb-dvr\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [32 x i8] c"phy_brcm_usb_dvr.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [16 x i8] c"brcmstb-usb-phy\00", align 1
@brcm_usb_dt_ids = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm4908-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @chip_info_7445 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7216-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @chip_info_7216 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7211-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @chip_info_7211b0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @chip_info_7445 }, %struct.of_device_id zeroinitializer], align 4
@brcm_usb_phy_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcm_usb_phy_suspend, ptr @brcm_usb_phy_resume, ptr @brcm_usb_phy_suspend, ptr @brcm_usb_phy_resume, ptr @brcm_usb_phy_suspend, ptr @brcm_usb_phy_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"brcm,ipp\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"brcm,ioc\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"dr_mode\00", align 1
@brcm_dr_mode_to_name = internal unnamed_addr constant [4 x %struct.value_to_name_map] [%struct.value_to_name_map { i32 0, ptr @.str.10 }, %struct.value_to_name_map { i32 1, ptr @.str.11 }, %struct.value_to_name_map { i32 2, ptr @.str.12 }, %struct.value_to_name_map { i32 3, ptr @.str.13 }], align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"brcm,has-xhci\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"brcm,has-eohci\00", align 1
@brcm_usb_phy_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"&priv->mutex\00", align 1
@brcm_usb_phy_attrs = internal global [3 x ptr] [ptr @dev_attr_dr_mode, ptr @dev_attr_dual_select, ptr null], align 4
@brcm_usb_phy_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @brcm_usb_phy_attrs, ptr null }, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"Error creating sysfs attributes\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"syscon-piarbctl\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"brcm,syscon-piarbctl\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"peripheral\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"drd\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"typec-pd\00", align 1
@node_reg_names = internal unnamed_addr constant [6 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], align 4
@.str.14 = private unnamed_addr constant [24 x i8] c"can't get %s base addr\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"can't map %s register space\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"crtl\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"xhci_ec\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"xhci_gbl\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"usb_phy\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"usb_mdio\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"bdc_ec\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"sw_usb\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"Clock not found in Device Tree\0A\00", align 1
@brcm_usb_phy_ops = internal constant %struct.phy_ops { ptr @brcm_usb_phy_init, ptr @brcm_usb_phy_exit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.24 = private unnamed_addr constant [32 x i8] c"failed to create EHCI/OHCI PHY\0A\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"failed to create XHCI PHY\0A\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"sw_usb3\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"USB3.0 clock not found in Device Tree\0A\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"usb0_freerun\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"Suspend Clock not found in Device Tree\0A\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"wake\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"wakeup\00", align 1
@.str.32 = private unnamed_addr constant [51 x i8] c"Wake interrupt missing, system wake not supported\0A\00", align 1
@dev_attr_dr_mode = internal global %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292 }, ptr @dr_mode_show, ptr null }, align 4
@dev_attr_dual_select = internal global %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420 }, ptr @dual_select_show, ptr @dual_select_store }, align 4
@.str.33 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"dual_select\00", align 1
@sysfs_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sysfs_lock, i64 12), ptr getelementptr (i8, ptr @sysfs_lock, i64 12) } }, align 4
@brcm_dual_mode_to_name = internal unnamed_addr constant [3 x %struct.value_to_name_map] [%struct.value_to_name_map { i32 0, ptr @.str.10 }, %struct.value_to_name_map { i32 1, ptr @.str.36 }, %struct.value_to_name_map { i32 2, ptr @.str.37 }], align 4
@.str.36 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"Error, 2.0 Phy not found\0A\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"Error, 3.0 Phy not found\0A\00", align 1
@chip_info_7445 = internal constant %struct.match_chip_info { ptr @brcm_usb_dvr_init_7445, [7 x i8] c"\00\01\FF\00\00\00\00", i8 0 }, align 4
@chip_info_7216 = internal constant %struct.match_chip_info { ptr @brcm_usb_dvr_init_7216, [7 x i8] c"\00\01\02\FF\00\00\00", i8 0 }, align 4
@chip_info_7211b0 = internal constant %struct.match_chip_info { ptr @brcm_usb_dvr_init_7211b0, [7 x i8] c"\00\01\02\03\04\FF\00", i8 5 }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias249, ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__exitcall_brcm_usb_driver_exit, ptr @__initcall__kmod_phy_brcm_usb_dvr__248_666_brcm_usb_driver_init6, ptr @brcm_usb_driver_exit], section "llvm.metadata"
@switch.table.brcm_pm_notifier = private unnamed_addr constant [6 x i8] c"\01\00\01\00\01\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @brcm_usb_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @brcm_usb_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @brcm_usb_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @brcm_usb_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_usb_phy_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store ptr null, ptr %2, align 4, !annotation !8
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 152, i32 noundef 3520) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %247, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %9, align 8
  %10 = tail call i32 @brcmstb_get_family_id() #8
  %11 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %6, i32 0, i32 4
  store i32 %10, ptr %11, align 4
  %12 = tail call i32 @brcmstb_get_product_id() #8
  %13 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %6, i32 0, i32 5
  store i32 %12, ptr %13, align 4
  %14 = tail call ptr @of_device_get_match_data(ptr noundef %3) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %247, label %16

16:                                               ; preds = %8
  %17 = load ptr, ptr %14, align 4
  tail call void %17(ptr noundef nonnull %6) #8
  %18 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %6, i32 0, i32 2
  %19 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef %18, i32 noundef 1, i32 noundef 0) #8
  %20 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %6, i32 0, i32 1
  %21 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.2, ptr noundef %20, i32 noundef 1, i32 noundef 0) #8
  %22 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %6, i32 0, i32 3
  store i32 0, ptr %22, align 4
  %23 = call i32 @of_property_read_string(ptr noundef %5, ptr noundef nonnull @.str.3, ptr noundef nonnull %2) #8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %16
  %26 = load ptr, ptr %2, align 4
  store i32 0, ptr %22, align 4
  %27 = call zeroext i1 @sysfs_streq(ptr noundef %26, ptr noundef nonnull @.str.10) #8
  br i1 %27, label %28, label %30

28:                                               ; preds = %34, %32, %30, %25
  %29 = phi i32 [ 0, %25 ], [ 1, %30 ], [ 2, %32 ], [ 3, %34 ]
  store i32 %29, ptr %22, align 4
  br label %36

30:                                               ; preds = %25
  %31 = call zeroext i1 @sysfs_streq(ptr noundef %26, ptr noundef nonnull @.str.11) #8
  br i1 %31, label %28, label %32

32:                                               ; preds = %30
  %33 = call zeroext i1 @sysfs_streq(ptr noundef %26, ptr noundef nonnull @.str.12) #8
  br i1 %33, label %28, label %34

34:                                               ; preds = %32
  %35 = call zeroext i1 @sysfs_streq(ptr noundef %26, ptr noundef nonnull @.str.13) #8
  br i1 %35, label %28, label %36

36:                                               ; preds = %34, %28, %16
  %37 = call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef null) #8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %6, i32 0, i32 2
  store i8 1, ptr %40, align 1
  br label %41

41:                                               ; preds = %39, %36
  %42 = call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.5, ptr noundef null) #8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %6, i32 0, i32 1
  store i8 1, ptr %45, align 4
  br label %46

46:                                               ; preds = %44, %41
  %47 = getelementptr %struct.match_chip_info, ptr %14, i32 0, i32 1, i32 0
  %48 = load i8, ptr %47, align 1
  %49 = icmp ugt i8 %48, 5
  br i1 %49, label %94, label %90

50:                                               ; preds = %90
  %51 = getelementptr %struct.match_chip_info, ptr %14, i32 0, i32 1, i32 1
  %52 = load i8, ptr %51, align 1
  %53 = icmp ugt i8 %52, 5
  br i1 %53, label %94, label %54

54:                                               ; preds = %50
  %55 = zext i8 %52 to i32
  %56 = call fastcc i32 @brcm_usb_get_regs(ptr noundef %0, i32 noundef %55, ptr noundef nonnull %6, i1 noundef zeroext false)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %247

58:                                               ; preds = %54
  %59 = getelementptr %struct.match_chip_info, ptr %14, i32 0, i32 1, i32 2
  %60 = load i8, ptr %59, align 1
  %61 = icmp ugt i8 %60, 5
  br i1 %61, label %94, label %62

62:                                               ; preds = %58
  %63 = zext i8 %60 to i32
  %64 = call fastcc i32 @brcm_usb_get_regs(ptr noundef %0, i32 noundef %63, ptr noundef nonnull %6, i1 noundef zeroext false)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %247

66:                                               ; preds = %62
  %67 = getelementptr %struct.match_chip_info, ptr %14, i32 0, i32 1, i32 3
  %68 = load i8, ptr %67, align 1
  %69 = icmp ugt i8 %68, 5
  br i1 %69, label %94, label %70

70:                                               ; preds = %66
  %71 = zext i8 %68 to i32
  %72 = call fastcc i32 @brcm_usb_get_regs(ptr noundef %0, i32 noundef %71, ptr noundef nonnull %6, i1 noundef zeroext false)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %247

74:                                               ; preds = %70
  %75 = getelementptr %struct.match_chip_info, ptr %14, i32 0, i32 1, i32 4
  %76 = load i8, ptr %75, align 1
  %77 = icmp ugt i8 %76, 5
  br i1 %77, label %94, label %78

78:                                               ; preds = %74
  %79 = zext i8 %76 to i32
  %80 = call fastcc i32 @brcm_usb_get_regs(ptr noundef %0, i32 noundef %79, ptr noundef nonnull %6, i1 noundef zeroext false)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %247

82:                                               ; preds = %78
  %83 = getelementptr %struct.match_chip_info, ptr %14, i32 0, i32 1, i32 5
  %84 = load i8, ptr %83, align 1
  %85 = icmp ugt i8 %84, 5
  br i1 %85, label %94, label %86

86:                                               ; preds = %82
  %87 = zext i8 %84 to i32
  %88 = call fastcc i32 @brcm_usb_get_regs(ptr noundef %0, i32 noundef %87, ptr noundef nonnull %6, i1 noundef zeroext false)
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %94, label %247

90:                                               ; preds = %46
  %91 = zext i8 %48 to i32
  %92 = call fastcc i32 @brcm_usb_get_regs(ptr noundef %0, i32 noundef %91, ptr noundef nonnull %6, i1 noundef zeroext false)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %50, label %247

94:                                               ; preds = %86, %82, %74, %66, %58, %50, %46
  %95 = getelementptr inbounds %struct.match_chip_info, ptr %14, i32 0, i32 2
  %96 = load i8, ptr %95, align 1
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = zext i8 %96 to i32
  %100 = call fastcc i32 @brcm_usb_get_regs(ptr noundef %0, i32 noundef %99, ptr noundef nonnull %6, i1 noundef zeroext true)
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %247

102:                                              ; preds = %98, %94
  %103 = call ptr @of_clk_get_by_name(ptr noundef %5, ptr noundef nonnull @.str.22) #8
  %104 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %6, i32 0, i32 3
  store ptr %103, ptr %104, align 4
  %105 = icmp ugt ptr %103, inttoptr (i32 -4096 to ptr)
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = icmp eq ptr %103, inttoptr (i32 -517 to ptr)
  br i1 %107, label %247, label %108

108:                                              ; preds = %106
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.23) #9
  store ptr null, ptr %104, align 4
  br label %109

109:                                              ; preds = %108, %102
  %110 = phi ptr [ null, %108 ], [ %103, %102 ]
  %111 = call i32 @clk_prepare(ptr noundef %110) #8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %247

113:                                              ; preds = %109
  %114 = call i32 @clk_enable(ptr noundef %110) #8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  call void @clk_unprepare(ptr noundef %110) #8
  br label %247

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %6, i32 0, i32 1
  %119 = load i8, ptr %118, align 4, !range !9
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %117
  %122 = call ptr @devm_phy_create(ptr noundef %3, ptr noundef null, ptr noundef nonnull @brcm_usb_phy_ops) #8
  %123 = icmp ugt ptr %122, inttoptr (i32 -4096 to ptr)
  br i1 %123, label %182, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %6, i32 0, i32 9
  store ptr %122, ptr %125, align 4
  %126 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %6, i32 0, i32 9, i32 0, i32 1
  store i32 0, ptr %126, align 4
  %127 = getelementptr inbounds %struct.device, ptr %122, i32 0, i32 8
  store ptr %125, ptr %127, align 8
  br label %128

128:                                              ; preds = %124, %117
  %129 = phi ptr [ %122, %124 ], [ null, %117 ]
  %130 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %6, i32 0, i32 2
  %131 = load i8, ptr %130, align 1, !range !9
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %154, label %133

133:                                              ; preds = %128
  %134 = call ptr @devm_phy_create(ptr noundef %3, ptr noundef null, ptr noundef nonnull @brcm_usb_phy_ops) #8
  %135 = icmp ugt ptr %134, inttoptr (i32 -4096 to ptr)
  br i1 %135, label %182, label %136

136:                                              ; preds = %133
  %137 = getelementptr %struct.brcm_usb_phy_data, ptr %6, i32 0, i32 9, i32 1
  store ptr %134, ptr %137, align 4
  %138 = getelementptr %struct.brcm_usb_phy_data, ptr %6, i32 0, i32 9, i32 1, i32 1
  store i32 1, ptr %138, align 4
  %139 = getelementptr inbounds %struct.device, ptr %134, i32 0, i32 8
  store ptr %137, ptr %139, align 8
  %140 = call ptr @of_clk_get_by_name(ptr noundef %5, ptr noundef nonnull @.str.26) #8
  %141 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %6, i32 0, i32 4
  store ptr %140, ptr %141, align 4
  %142 = icmp ugt ptr %140, inttoptr (i32 -4096 to ptr)
  br i1 %142, label %143, label %146

143:                                              ; preds = %136
  %144 = icmp eq ptr %140, inttoptr (i32 -517 to ptr)
  br i1 %144, label %247, label %145

145:                                              ; preds = %143
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.27) #9
  store ptr null, ptr %141, align 4
  br label %146

146:                                              ; preds = %145, %136
  %147 = phi ptr [ null, %145 ], [ %140, %136 ]
  %148 = call i32 @clk_prepare(ptr noundef %147) #8
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %247

150:                                              ; preds = %146
  %151 = call i32 @clk_enable(ptr noundef %147) #8
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %150
  call void @clk_unprepare(ptr noundef %147) #8
  br label %247

154:                                              ; preds = %150, %128
  %155 = phi ptr [ %129, %128 ], [ %134, %150 ]
  %156 = call ptr @clk_get(ptr noundef %3, ptr noundef nonnull @.str.28) #8
  %157 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %6, i32 0, i32 5
  store ptr %156, ptr %157, align 4
  %158 = icmp ugt ptr %156, inttoptr (i32 -4096 to ptr)
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = icmp eq ptr %156, inttoptr (i32 -517 to ptr)
  br i1 %160, label %247, label %161

161:                                              ; preds = %159
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.29) #9
  store ptr null, ptr %157, align 4
  br label %162

162:                                              ; preds = %161, %154
  %163 = call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.30) #8
  %164 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %6, i32 0, i32 8
  store i32 %163, ptr %164, align 4
  %165 = icmp slt i32 %163, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.31) #8
  store i32 %167, ptr %164, align 4
  %168 = icmp sgt i32 %167, -1
  br i1 %168, label %169, label %181

169:                                              ; preds = %166, %162
  %170 = phi i32 [ %167, %166 ], [ %163, %162 ]
  %171 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %169
  %175 = load ptr, ptr %3, align 4
  br label %176

176:                                              ; preds = %174, %169
  %177 = phi ptr [ %175, %174 ], [ %172, %169 ]
  %178 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %170, ptr noundef nonnull @brcm_usb_phy_wake_isr, ptr noundef null, i32 noundef 0, ptr noundef %177, ptr noundef %155) #8
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %247, label %180

180:                                              ; preds = %176
  call void @device_set_wakeup_capable(ptr noundef %3, i1 noundef zeroext true) #8
  br label %186

181:                                              ; preds = %166
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.32) #9
  br label %186

182:                                              ; preds = %133, %121
  %183 = phi ptr [ @.str.24, %121 ], [ @.str.25, %133 ]
  %184 = phi ptr [ %122, %121 ], [ %134, %133 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull %183) #9
  %185 = ptrtoint ptr %184 to i32
  br label %247

186:                                              ; preds = %181, %180
  %187 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %6, i32 0, i32 10
  store ptr @brcm_pm_notifier, ptr %187, align 4
  %188 = call i32 @register_pm_notifier(ptr noundef %187) #8
  %189 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %6, i32 0, i32 6
  call void @__mutex_init(ptr noundef %189, ptr noundef nonnull @.str.6, ptr noundef nonnull @brcm_usb_phy_probe.__key) #8
  %190 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %6, i32 0, i32 9
  %191 = load ptr, ptr %190, align 4
  %192 = load ptr, ptr %191, align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %195, label %194

194:                                              ; preds = %186
  call void %192(ptr noundef nonnull %6) #8
  br label %195

195:                                              ; preds = %194, %186
  %196 = load i32, ptr %22, align 4
  %197 = icmp eq i32 %196, 2
  br i1 %197, label %199, label %198

198:                                              ; preds = %195
  store ptr null, ptr getelementptr inbounds ([3 x ptr], ptr @brcm_usb_phy_attrs, i32 0, i32 1), align 4
  br label %199

199:                                              ; preds = %198, %195
  %200 = call i32 @sysfs_create_group(ptr noundef %3, ptr noundef nonnull @brcm_usb_phy_group) #8
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %199
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.7) #9
  br label %203

203:                                              ; preds = %202, %199
  %204 = load ptr, ptr %4, align 8
  %205 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %204, ptr noundef nonnull @.str.8) #8
  %206 = icmp ugt ptr %205, inttoptr (i32 -4096 to ptr)
  br i1 %206, label %207, label %210

207:                                              ; preds = %203
  %208 = load ptr, ptr %4, align 8
  %209 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %208, ptr noundef nonnull @.str.9) #8
  br label %210

210:                                              ; preds = %207, %203
  %211 = phi ptr [ %209, %207 ], [ %205, %203 ]
  %212 = icmp ugt ptr %211, inttoptr (i32 -4096 to ptr)
  br i1 %212, label %215, label %213

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %6, i32 0, i32 10
  store ptr %211, ptr %214, align 4
  br label %215

215:                                              ; preds = %213, %210
  %216 = load i8, ptr %130, align 1, !range !9
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %224, label %218

218:                                              ; preds = %215
  %219 = load ptr, ptr %190, align 4
  %220 = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %219, i32 0, i32 6
  %221 = load ptr, ptr %220, align 4
  %222 = icmp eq ptr %221, null
  br i1 %222, label %224, label %223

223:                                              ; preds = %218
  call void %221(ptr noundef nonnull %6) #8
  br label %224

224:                                              ; preds = %223, %218, %215
  %225 = load i8, ptr %118, align 4, !range !9
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %233, label %227

227:                                              ; preds = %224
  %228 = load ptr, ptr %190, align 4
  %229 = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %228, i32 0, i32 5
  %230 = load ptr, ptr %229, align 4
  %231 = icmp eq ptr %230, null
  br i1 %231, label %233, label %232

232:                                              ; preds = %227
  call void %230(ptr noundef nonnull %6) #8
  br label %233

233:                                              ; preds = %232, %227, %224
  %234 = load ptr, ptr %190, align 4
  %235 = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %234, i32 0, i32 4
  %236 = load ptr, ptr %235, align 4
  %237 = icmp eq ptr %236, null
  br i1 %237, label %239, label %238

238:                                              ; preds = %233
  call void %236(ptr noundef nonnull %6) #8
  br label %239

239:                                              ; preds = %238, %233
  %240 = load ptr, ptr %104, align 4
  call void @clk_disable(ptr noundef %240) #8
  call void @clk_unprepare(ptr noundef %240) #8
  %241 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %6, i32 0, i32 4
  %242 = load ptr, ptr %241, align 4
  call void @clk_disable(ptr noundef %242) #8
  call void @clk_unprepare(ptr noundef %242) #8
  %243 = call ptr @__devm_of_phy_provider_register(ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef nonnull @brcm_usb_phy_xlate) #8
  %244 = icmp ugt ptr %243, inttoptr (i32 -4096 to ptr)
  %245 = ptrtoint ptr %243 to i32
  %246 = select i1 %244, i32 %245, i32 0
  br label %247

247:                                              ; preds = %239, %182, %176, %159, %153, %146, %143, %116, %109, %106, %98, %90, %86, %78, %70, %62, %54, %8, %1
  %248 = phi i32 [ %246, %239 ], [ -12, %1 ], [ -2, %8 ], [ -22, %98 ], [ %185, %182 ], [ %148, %146 ], [ %151, %153 ], [ %111, %109 ], [ %114, %116 ], [ %178, %176 ], [ -517, %159 ], [ -517, %143 ], [ -517, %106 ], [ -22, %86 ], [ -22, %78 ], [ -22, %70 ], [ -22, %62 ], [ -22, %54 ], [ -22, %90 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %248
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_usb_phy_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call void @sysfs_remove_group(ptr noundef %2, ptr noundef nonnull @brcm_usb_phy_group) #8
  %5 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %4, i32 0, i32 10
  %6 = tail call i32 @unregister_pm_notifier(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmstb_get_family_id() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmstb_get_product_id() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcm_usb_get_regs(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i1 noundef zeroext %3) unnamed_addr #2 {
  %5 = getelementptr [6 x ptr], ptr @node_reg_names, i32 0, i32 %1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef %6) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %4
  switch i32 %1, label %16 [
    i32 0, label %13
    i32 1, label %10
  ]

10:                                               ; preds = %9
  %11 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 1) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %19

13:                                               ; preds = %9
  %14 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13, %9
  br i1 %3, label %26, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.14, ptr noundef %6) #9
  br label %26

19:                                               ; preds = %13, %10, %4
  %20 = phi ptr [ %14, %13 ], [ %7, %4 ], [ %11, %10 ]
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %22 = tail call ptr @devm_ioremap_resource(ptr noundef %21, ptr noundef nonnull %20) #8
  %23 = getelementptr [6 x ptr], ptr %2, i32 0, i32 %1
  store ptr %22, ptr %23, align 4
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.15, ptr noundef %6) #9
  br label %26

26:                                               ; preds = %25, %19, %17, %16, %10
  %27 = phi i32 [ 1, %17 ], [ 1, %25 ], [ 0, %10 ], [ 0, %16 ], [ 0, %19 ]
  ret i32 %27
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @brcm_pm_notifier(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #4 {
  %4 = add i32 %1, -1
  %5 = icmp ult i32 %4, 6
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = trunc i32 %4 to i8
  %8 = lshr i8 47, %7
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds [6 x i8], ptr @switch.table.brcm_pm_notifier, i32 0, i32 %4
  %13 = load i8, ptr %12, align 1
  %14 = getelementptr i8, ptr %0, i32 12
  store i8 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %6, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pm_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @brcm_usb_phy_xlate(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %17 [
    i32 0, label %7
    i32 3, label %7
    i32 1, label %11
    i32 4, label %11
  ]

7:                                                ; preds = %2, %2
  %8 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %4, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %17

11:                                               ; preds = %2, %2
  %12 = getelementptr %struct.brcm_usb_phy_data, ptr %4, i32 0, i32 9, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %7
  %16 = phi ptr [ @.str.38, %7 ], [ @.str.39, %11 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull %16) #9
  br label %17

17:                                               ; preds = %15, %11, %7, %2
  %18 = phi ptr [ %9, %7 ], [ %13, %11 ], [ inttoptr (i32 -19 to ptr), %2 ], [ inttoptr (i32 -19 to ptr), %15 ]
  ret ptr %18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_usb_phy_wake_isr(i32 noundef %0, ptr noundef %1) #2 {
  tail call void @pm_wakeup_dev_event(ptr noundef %1, i32 noundef 0, i1 noundef zeroext false) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_usb_phy_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.brcm_usb_phy, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %5, -12
  %7 = add i32 %6, -112
  %8 = getelementptr i8, ptr %3, i32 %7
  %9 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %8, i32 0, i32 11
  %10 = load i8, ptr %9, align 4, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %70

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %8, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %13) #8
  %14 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %8, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %8, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @clk_prepare(ptr noundef %20) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = tail call i32 @clk_enable(ptr noundef %20) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @clk_unprepare(ptr noundef %20) #8
  br label %27

27:                                               ; preds = %26, %23, %18
  %28 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %8, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @clk_prepare(ptr noundef %29) #8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = tail call i32 @clk_enable(ptr noundef %29) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @clk_unprepare(ptr noundef %29) #8
  br label %36

36:                                               ; preds = %35, %32, %27
  %37 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %8, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @clk_prepare(ptr noundef %38) #8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = tail call i32 @clk_enable(ptr noundef %38) #8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call void @clk_unprepare(ptr noundef %38) #8
  br label %45

45:                                               ; preds = %44, %41, %36
  %46 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %8, i32 0, i32 9
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  tail call void %49(ptr noundef %8) #8
  br label %52

52:                                               ; preds = %51, %45, %12
  tail call void @mutex_unlock(ptr noundef %13) #8
  %53 = load i32, ptr %4, align 4
  switch i32 %53, label %68 [
    i32 0, label %54
    i32 1, label %60
  ]

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %8, i32 0, i32 9
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %68, label %66

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %8, i32 0, i32 9
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %62, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %60, %54
  %67 = phi ptr [ %58, %54 ], [ %64, %60 ]
  tail call void %67(ptr noundef %8) #8
  br label %68

68:                                               ; preds = %66, %60, %54, %52
  %69 = getelementptr inbounds %struct.brcm_usb_phy, ptr %3, i32 0, i32 2
  store i8 1, ptr %69, align 4
  br label %70

70:                                               ; preds = %68, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_usb_phy_exit(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.brcm_usb_phy, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %5, -12
  %7 = add i32 %6, -112
  %8 = getelementptr i8, ptr %3, i32 %7
  %9 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %8, i32 0, i32 11
  %10 = load i8, ptr %9, align 4, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %54

12:                                               ; preds = %1
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %8, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %14
  tail call void %18(ptr noundef %8) #8
  %21 = load i32, ptr %4, align 4
  br label %22

22:                                               ; preds = %20, %12
  %23 = phi i32 [ %21, %20 ], [ %5, %12 ]
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %8, i32 0, i32 9
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %27, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  tail call void %29(ptr noundef %8) #8
  br label %32

32:                                               ; preds = %31, %25, %22, %14
  %33 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %8, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %33) #8
  %34 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %8, i32 0, i32 7
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -1
  store i32 %36, ptr %34, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %8, i32 0, i32 9
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %40, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  tail call void %42(ptr noundef %8) #8
  br label %45

45:                                               ; preds = %44, %38
  %46 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %8, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  tail call void @clk_disable(ptr noundef %47) #8
  tail call void @clk_unprepare(ptr noundef %47) #8
  %48 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %8, i32 0, i32 4
  %49 = load ptr, ptr %48, align 4
  tail call void @clk_disable(ptr noundef %49) #8
  tail call void @clk_unprepare(ptr noundef %49) #8
  %50 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %8, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  tail call void @clk_disable(ptr noundef %51) #8
  tail call void @clk_unprepare(ptr noundef %51) #8
  br label %52

52:                                               ; preds = %45, %32
  tail call void @mutex_unlock(ptr noundef %33) #8
  %53 = getelementptr inbounds %struct.brcm_usb_phy, ptr %3, i32 0, i32 2
  store i8 0, ptr %53, align 4
  br label %54

54:                                               ; preds = %52, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dr_mode_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr %struct.value_to_name_map, ptr @brcm_dr_mode_to_name, i32 %7, i32 1
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi ptr [ %11, %9 ], [ @.str.34, %3 ]
  %14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.33, ptr noundef %13)
  ret i32 %14
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dual_select_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call void @mutex_lock(ptr noundef nonnull @sysfs_lock) #8
  %6 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @mutex_unlock(ptr noundef nonnull @sysfs_lock) #8
  br label %15

12:                                               ; preds = %3
  %13 = tail call i32 %9(ptr noundef %5) #8
  tail call void @mutex_unlock(ptr noundef nonnull @sysfs_lock) #8
  %14 = icmp slt i32 %13, 3
  br i1 %14, label %15, label %19

15:                                               ; preds = %12, %11
  %16 = phi i32 [ 0, %11 ], [ %13, %12 ]
  %17 = getelementptr %struct.value_to_name_map, ptr @brcm_dual_mode_to_name, i32 %16, i32 1
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi ptr [ %18, %15 ], [ @.str.34, %12 ]
  %21 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.33, ptr noundef %20)
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dual_select_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  tail call void @mutex_lock(ptr noundef nonnull @sysfs_lock) #8
  %7 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.10) #8
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.36) #8
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.37) #8
  br i1 %11, label %12, label %20

12:                                               ; preds = %10, %8, %4
  %13 = phi i32 [ 0, %4 ], [ 1, %8 ], [ 2, %10 ]
  %14 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %6, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %15, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  tail call void %17(ptr noundef %6, i32 noundef %13) #8
  br label %20

20:                                               ; preds = %19, %12, %10
  %21 = phi i32 [ %3, %12 ], [ %3, %19 ], [ -22, %10 ]
  tail call void @mutex_unlock(ptr noundef nonnull @sysfs_lock) #8
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_pm_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcm_usb_dvr_init_7445(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcm_usb_dvr_init_7216(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcm_usb_dvr_init_7211b0(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_usb_phy_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %3, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %74, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = icmp ne ptr %14, null
  br label %16

16:                                               ; preds = %12, %7
  %17 = phi i1 [ false, %7 ], [ %15, %12 ]
  %18 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %3, i32 0, i32 11
  %19 = zext i1 %17 to i8
  store i8 %19, ptr %18, align 4
  %20 = getelementptr %struct.brcm_usb_phy_data, ptr %3, i32 0, i32 9, i32 1, i32 2
  %21 = load i8, ptr %20, align 4, !range !9
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %3, i32 0, i32 9
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %25, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  tail call void %27(ptr noundef %3) #8
  br label %30

30:                                               ; preds = %29, %23, %16
  %31 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %3, i32 0, i32 9, i32 0, i32 2
  %32 = load i8, ptr %31, align 4, !range !9
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %3, i32 0, i32 9
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %36, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  tail call void %38(ptr noundef %3) #8
  br label %41

41:                                               ; preds = %40, %34, %30
  %42 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %3, i32 0, i32 9
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %43, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  tail call void %45(ptr noundef %3) #8
  br label %48

48:                                               ; preds = %47, %41
  %49 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %3, i32 0, i32 12
  %50 = load i8, ptr %49, align 1, !range !9
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = load i8, ptr %20, align 4, !range !9
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %3, i32 0, i32 4
  %57 = load ptr, ptr %56, align 4
  tail call void @clk_disable(ptr noundef %57) #8
  tail call void @clk_unprepare(ptr noundef %57) #8
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i8, ptr %31, align 4, !range !9
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %3, i32 0, i32 1
  %63 = load i8, ptr %62, align 4, !range !9
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61, %58
  %66 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %3, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  tail call void @clk_disable(ptr noundef %67) #8
  tail call void @clk_unprepare(ptr noundef %67) #8
  br label %68

68:                                               ; preds = %65, %61, %48
  %69 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %3, i32 0, i32 8
  %70 = load i32, ptr %69, align 4
  %71 = icmp sgt i32 %70, -1
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = tail call i32 @irq_set_irq_wake(i32 noundef %70, i32 noundef 1) #8
  br label %74

74:                                               ; preds = %72, %68, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_usb_phy_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %12

12:                                               ; preds = %11, %8, %1
  %13 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %3, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @clk_prepare(ptr noundef %14) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = tail call i32 @clk_enable(ptr noundef %14) #8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @clk_unprepare(ptr noundef %14) #8
  br label %21

21:                                               ; preds = %20, %17, %12
  %22 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %3, i32 0, i32 9
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void %24(ptr noundef %3) #8
  br label %27

27:                                               ; preds = %26, %21
  %28 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %3, i32 0, i32 7
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %92, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %3, i32 0, i32 8
  %33 = load i32, ptr %32, align 4
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = tail call i32 @irq_set_irq_wake(i32 noundef %33, i32 noundef 0) #8
  br label %37

37:                                               ; preds = %35, %31
  %38 = load ptr, ptr %22, align 4
  %39 = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  tail call void %40(ptr noundef %3) #8
  br label %43

43:                                               ; preds = %42, %37
  %44 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %3, i32 0, i32 9, i32 0, i32 2
  %45 = load i8, ptr %44, align 4, !range !9
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %22, align 4
  %49 = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %65, label %52

52:                                               ; preds = %47
  tail call void %50(ptr noundef %3) #8
  br label %65

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %3, i32 0, i32 1
  %55 = load i8, ptr %54, align 4, !range !9
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %22, align 4
  %59 = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %58, i32 0, i32 5
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  tail call void %60(ptr noundef %3) #8
  br label %63

63:                                               ; preds = %62, %57
  %64 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %64) #8
  tail call void @clk_unprepare(ptr noundef %64) #8
  br label %65

65:                                               ; preds = %63, %53, %52, %47
  %66 = getelementptr %struct.brcm_usb_phy_data, ptr %3, i32 0, i32 9, i32 1, i32 2
  %67 = load i8, ptr %66, align 4, !range !9
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %22, align 4
  %71 = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %70, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %121, label %74

74:                                               ; preds = %69
  tail call void %72(ptr noundef %3) #8
  br label %121

75:                                               ; preds = %65
  %76 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %3, i32 0, i32 2
  %77 = load i8, ptr %76, align 1, !range !9
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %121, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr %22, align 4
  %81 = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %80, i32 0, i32 6
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  tail call void %82(ptr noundef %3) #8
  br label %85

85:                                               ; preds = %84, %79
  %86 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %86) #8
  tail call void @clk_unprepare(ptr noundef %86) #8
  %87 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %3, i32 0, i32 1
  %88 = load i8, ptr %87, align 4, !range !9
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %121

90:                                               ; preds = %85
  %91 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %91) #8
  tail call void @clk_unprepare(ptr noundef %91) #8
  br label %121

92:                                               ; preds = %27
  %93 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %3, i32 0, i32 2
  %94 = load i8, ptr %93, align 1, !range !9
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr %22, align 4
  %98 = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %97, i32 0, i32 6
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  tail call void %99(ptr noundef %3) #8
  br label %102

102:                                              ; preds = %101, %96, %92
  %103 = getelementptr inbounds %struct.brcm_usb_phy_data, ptr %3, i32 0, i32 1
  %104 = load i8, ptr %103, align 4, !range !9
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr %22, align 4
  %108 = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %107, i32 0, i32 5
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %106
  tail call void %109(ptr noundef %3) #8
  br label %112

112:                                              ; preds = %111, %106, %102
  %113 = load ptr, ptr %22, align 4
  %114 = getelementptr inbounds %struct.brcm_usb_init_ops, ptr %113, i32 0, i32 4
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %112
  tail call void %115(ptr noundef %3) #8
  br label %118

118:                                              ; preds = %117, %112
  %119 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %119) #8
  tail call void @clk_unprepare(ptr noundef %119) #8
  %120 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %120) #8
  tail call void @clk_unprepare(ptr noundef %120) #8
  br label %121

121:                                              ; preds = %118, %90, %85, %75, %74, %69
  %122 = getelementptr inbounds %struct.brcm_usb_init_params, ptr %3, i32 0, i32 11
  store i8 0, ptr %122, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!9 = !{i8 0, i8 2}
