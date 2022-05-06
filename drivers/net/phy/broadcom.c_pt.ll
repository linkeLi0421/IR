; ModuleID = '/llk/IR/drivers/net/phy/broadcom.c_pt.bc'
source_filename = "../drivers/net/phy/broadcom.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
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
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__UNIQUE_ID_description273 = internal constant [41 x i8] c"broadcom.description=Broadcom PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author274 = internal constant [34 x i8] c"broadcom.author=Maciej W. Rozycki\00", section ".modinfo", align 1
@__UNIQUE_ID_file275 = internal constant [39 x i8] c"broadcom.file=drivers/net/phy/broadcom\00", section ".modinfo", align 1
@__UNIQUE_ID_license276 = internal constant [21 x i8] c"broadcom.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_broadcom__277_1038_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@broadcom_drivers = internal global [19 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2121840, ptr @.str, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @bcm54xx_config_init, ptr @bcm54xx_phy_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2121952, ptr @.str.1, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @bcm54xx_config_init, ptr @bcm54xx_phy_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1611498656, ptr @.str.2, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @bcm54xx_config_init, ptr @bcm54xx_phy_probe, ptr null, ptr @bcm54xx_suspend, ptr @bcm54xx_resume, ptr null, ptr null, ptr null, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2121920, ptr @.str.3, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @bcm54xx_config_init, ptr @bcm54xx_phy_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 56778336, ptr @.str.4, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @bcm54xx_config_init, ptr @bcm54xx_phy_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 56778000, ptr @.str.5, i32 -16, ptr null, i32 0, ptr null, ptr @genphy_soft_reset, ptr @bcm54xx_config_init, ptr @bcm54616s_probe, ptr null, ptr null, ptr null, ptr @bcm54616s_config_aneg, ptr null, ptr @bcm54616s_read_status, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 2121904, ptr @.str.6, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @bcm54xx_config_init, ptr @bcm54xx_phy_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21216416, ptr @.str.7, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @bcm54xx_config_init, ptr @bcm54xx_phy_probe, ptr null, ptr null, ptr null, ptr @bcm5481_config_aneg, ptr null, ptr null, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 56777984, ptr @.str.8, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @bcm54xx_config_init, ptr @bcm54xx_phy_probe, ptr null, ptr @bcm54xx_suspend, ptr @bcm54xx_resume, ptr @bcm5481_config_aneg, ptr null, ptr null, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 56777920, ptr @.str.9, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @bcm54811_config_init, ptr @bcm54xx_phy_probe, ptr null, ptr @bcm54xx_suspend, ptr @bcm54xx_resume, ptr @bcm5481_config_aneg, ptr null, ptr null, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21216432, ptr @.str.10, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @bcm54xx_config_init, ptr @bcm54xx_phy_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21216608, ptr @.str.11, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @bcm54xx_config_init, ptr @bcm54xx_phy_probe, ptr null, ptr @bcm54xx_suspend, ptr @bcm54xx_resume, ptr null, ptr null, ptr null, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21216624, ptr @.str.12, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @bcm54xx_config_init, ptr @bcm54xx_phy_probe, ptr null, ptr @bcm54xx_suspend, ptr @bcm54xx_resume, ptr null, ptr null, ptr null, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 56778128, ptr @.str.13, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @bcm54xx_config_init, ptr @bcm54xx_phy_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21216368, ptr @.str.14, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @brcm_fet_config_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcm_fet_config_intr, ptr @brcm_fet_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21216304, ptr @.str.15, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @brcm_fet_config_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcm_fet_config_intr, ptr @brcm_fet_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 21216496, ptr @.str.16, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr null, ptr @bcm54xx_phy_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 56778528, ptr @.str.17, i32 -16, ptr null, i32 1, ptr null, ptr null, ptr @bcm54xx_config_init, ptr @bcm54xx_phy_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 56777936, ptr @.str.18, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @bcm54xx_config_init, ptr @bcm54xx_phy_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_config_intr, ptr @bcm_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr @bcm54xx_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_phy_get_sset_count, ptr @bcm_phy_get_strings, ptr @bcm54xx_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }], align 4
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@.str = private unnamed_addr constant [17 x i8] c"Broadcom BCM5411\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Broadcom BCM5421\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Broadcom BCM54210E\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Broadcom BCM5461\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Broadcom BCM54612E\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Broadcom BCM54616S\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Broadcom BCM5464\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Broadcom BCM5481\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Broadcom BCM54810\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Broadcom BCM54811\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Broadcom BCM5482\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Broadcom BCM50610\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"Broadcom BCM50610M\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Broadcom BCM57780\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Broadcom BCMAC131\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"Broadcom BCM5241\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"Broadcom BCM5395\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"Broadcom BCM53125\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"Broadcom BCM89610\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"enet-phy-lane-swap\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author274, ptr @__UNIQUE_ID_description273, ptr @__UNIQUE_ID_file275, ptr @__UNIQUE_ID_license276, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_broadcom__277_1038_phy_module_init6, ptr @phy_module_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" {
  %1 = tail call i32 @phy_drivers_register(ptr noundef nonnull @broadcom_drivers, i32 noundef 19, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" {
  tail call void @phy_drivers_unregister(ptr noundef nonnull @broadcom_drivers, i32 noundef 19) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm54xx_config_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 16) #4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %261, label %8

8:                                                ; preds = %1
  %9 = trunc i32 %6 to i16
  %10 = or i16 %9, 4096
  %11 = load ptr, ptr %2, align 8
  %12 = load i32, ptr %4, align 8
  %13 = tail call i32 @mdiobus_write(ptr noundef %11, i32 noundef %12, i32 noundef 16, i16 noundef zeroext %10) #4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %261, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %2, align 8
  %17 = load i32, ptr %4, align 8
  %18 = tail call i32 @mdiobus_write(ptr noundef %16, i32 noundef %17, i32 noundef 27, i16 noundef zeroext -15) #4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %261, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.phy_driver, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.phy_driver, ptr %22, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, %24
  switch i32 %27, label %41 [
    i32 21216608, label %28
    i32 21216624, label %28
  ]

28:                                               ; preds = %20, %20
  %29 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 6
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = tail call i32 @bcm_phy_write_shadow(ptr noundef %0, i16 noundef zeroext 11, i16 noundef zeroext 0) #4
  %35 = load ptr, ptr %21, align 8
  %36 = getelementptr inbounds %struct.phy_driver, ptr %35, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.phy_driver, ptr %35, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, %37
  br label %41

41:                                               ; preds = %33, %28, %20
  %42 = phi i32 [ %27, %20 ], [ %40, %33 ], [ %27, %28 ]
  switch i32 %42, label %115 [
    i32 56778128, label %43
    i32 21216608, label %43
    i32 21216624, label %43
    i32 1611498656, label %43
    i32 56777984, label %43
    i32 56777920, label %43
  ]

43:                                               ; preds = %41, %41, %41, %41, %41, %41
  %44 = tail call i32 @bcm_phy_read_shadow(ptr noundef %0, i16 noundef zeroext 5) #4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %115, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %21, align 8
  %48 = getelementptr inbounds %struct.phy_driver, ptr %47, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.phy_driver, ptr %47, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, %49
  switch i32 %52, label %60 [
    i32 21216608, label %53
    i32 21216624, label %53
  ]

53:                                               ; preds = %46, %46
  %54 = xor i32 %51, -1
  %55 = and i32 %49, %54
  %56 = icmp ugt i32 %55, 2
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 6
  %59 = load i32, ptr %58, align 8
  br label %72

60:                                               ; preds = %53, %46
  %61 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 6
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 2
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = icmp eq i32 %52, 56777920
  %67 = and i32 %44, -2
  %68 = select i1 %66, i32 %44, i32 %67
  br label %72

69:                                               ; preds = %60
  %70 = and i32 %62, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %69, %65, %57
  %73 = phi i32 [ %62, %69 ], [ %62, %65 ], [ %59, %57 ]
  %74 = phi i1 [ true, %69 ], [ false, %65 ], [ false, %57 ]
  %75 = phi i32 [ %44, %69 ], [ %68, %65 ], [ %44, %57 ]
  %76 = and i32 %75, -3
  br label %79

77:                                               ; preds = %69
  %78 = or i32 %44, 2
  br label %79

79:                                               ; preds = %77, %72
  %80 = phi i32 [ %73, %72 ], [ %62, %77 ]
  %81 = phi i1 [ %74, %72 ], [ true, %77 ]
  %82 = phi i32 [ %76, %72 ], [ %78, %77 ]
  %83 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 6
  %84 = and i32 %80, 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %79
  switch i32 %52, label %89 [
    i32 1611498656, label %87
    i32 56777984, label %87
    i32 56777920, label %87
  ]

87:                                               ; preds = %86, %86, %86
  %88 = or i32 %82, 256
  br label %91

89:                                               ; preds = %86
  %90 = or i32 %82, 4
  br label %91

91:                                               ; preds = %89, %87, %79
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ], [ %82, %79 ]
  %93 = icmp eq i32 %44, %92
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = trunc i32 %92 to i16
  %96 = tail call i32 @bcm_phy_write_shadow(ptr noundef %0, i16 noundef zeroext 5, i16 noundef zeroext %95) #4
  br label %97

97:                                               ; preds = %94, %91
  %98 = tail call i32 @bcm_phy_read_shadow(ptr noundef %0, i16 noundef zeroext 10) #4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %115, label %100

100:                                              ; preds = %97
  br i1 %81, label %101, label %105

101:                                              ; preds = %100
  %102 = load i32, ptr %83, align 8
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %101, %100
  %106 = or i32 %98, 32
  br label %109

107:                                              ; preds = %101
  %108 = and i32 %98, -33
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  %111 = icmp eq i32 %98, %110
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = trunc i32 %110 to i16
  %114 = tail call i32 @bcm_phy_write_shadow(ptr noundef %0, i16 noundef zeroext 10, i16 noundef zeroext %113) #4
  br label %115

115:                                              ; preds = %112, %109, %97, %43, %41
  %116 = load ptr, ptr %21, align 8
  %117 = getelementptr inbounds %struct.phy_driver, ptr %116, i32 0, i32 1
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr inbounds %struct.phy_driver, ptr %116, i32 0, i32 3
  %120 = load i32, ptr %119, align 4
  %121 = and i32 %120, %118
  switch i32 %121, label %197 [
    i32 21216608, label %122
    i32 21216624, label %122
    i32 1611498656, label %124
    i32 56778336, label %139
    i32 56778000, label %151
    i32 56777984, label %192
  ]

122:                                              ; preds = %115, %115
  %123 = tail call fastcc i32 @bcm54xx_config_clock_delay(ptr noundef %0)
  br label %197

124:                                              ; preds = %115
  %125 = tail call fastcc i32 @bcm54xx_config_clock_delay(ptr noundef %0) #4
  %126 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 6
  %127 = load i32, ptr %126, align 8
  %128 = and i32 %127, 16
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %200, label %130

130:                                              ; preds = %124
  %131 = load ptr, ptr %2, align 8
  %132 = load i32, ptr %4, align 8
  %133 = tail call i32 @mdiobus_read(ptr noundef %131, i32 noundef %132, i32 noundef 9) #4
  %134 = trunc i32 %133 to i16
  %135 = or i16 %134, 6144
  %136 = load ptr, ptr %2, align 8
  %137 = load i32, ptr %4, align 8
  %138 = tail call i32 @mdiobus_write(ptr noundef %136, i32 noundef %137, i32 noundef 9, i16 noundef zeroext %135) #4
  br label %200

139:                                              ; preds = %115
  %140 = tail call fastcc i32 @bcm54xx_config_clock_delay(ptr noundef %0) #4
  %141 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 6
  %142 = load i32, ptr %141, align 8
  %143 = and i32 %142, 2
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %200

145:                                              ; preds = %139
  %146 = tail call i32 @bcm_phy_read_exp(ptr noundef %0, i16 noundef zeroext 3380) #4
  %147 = trunc i32 %146 to i16
  %148 = or i16 %147, 2
  %149 = tail call i32 @bcm_phy_write_exp(ptr noundef %0, i16 noundef zeroext 3380, i16 noundef zeroext %148) #4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %261, label %200

151:                                              ; preds = %115
  %152 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 7
  %153 = load i32, ptr %152, align 4
  switch i32 %153, label %200 [
    i32 4, label %154
    i32 21, label %154
  ]

154:                                              ; preds = %151, %151
  %155 = tail call i32 @bcm54xx_auxctl_read(ptr noundef %0, i16 noundef zeroext 7) #4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %261, label %157

157:                                              ; preds = %154
  %158 = trunc i32 %155 to i16
  %159 = and i16 %158, 32639
  %160 = or i16 %159, -32768
  %161 = tail call i32 @bcm54xx_auxctl_write(ptr noundef %0, i16 noundef zeroext 7, i16 noundef zeroext %160) #4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %261, label %163

163:                                              ; preds = %157
  %164 = tail call i32 @bcm_phy_read_shadow(ptr noundef %0, i16 noundef zeroext 31) #4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %261, label %166

166:                                              ; preds = %163
  %167 = or i32 %164, 1
  %168 = trunc i32 %167 to i16
  %169 = tail call i32 @bcm_phy_write_shadow(ptr noundef %0, i16 noundef zeroext 31, i16 noundef zeroext %168) #4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %261, label %171

171:                                              ; preds = %166
  %172 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 0, i16 noundef zeroext 0, i16 noundef zeroext 2048) #4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %261, label %174

174:                                              ; preds = %171
  %175 = and i32 %167, 65529
  %176 = load i32, ptr %152, align 4
  %177 = icmp eq i32 %176, 4
  %178 = select i1 %177, i32 4, i32 6
  %179 = or i32 %178, %175
  %180 = trunc i32 %179 to i16
  %181 = tail call i32 @bcm_phy_write_shadow(ptr noundef %0, i16 noundef zeroext 31, i16 noundef zeroext %180) #4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %261, label %183

183:                                              ; preds = %174
  %184 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 0, i16 noundef zeroext 2048, i16 noundef zeroext 0) #4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %261, label %186

186:                                              ; preds = %183
  %187 = and i16 %180, -2
  %188 = tail call i32 @bcm_phy_write_shadow(ptr noundef %0, i16 noundef zeroext 31, i16 noundef zeroext %187) #4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %261, label %190

190:                                              ; preds = %186
  %191 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 0, i16 noundef zeroext 2048, i16 noundef zeroext 0) #4
  br label %197

192:                                              ; preds = %115
  %193 = tail call i32 @bcm_phy_read_exp(ptr noundef %0, i16 noundef zeroext 3984) #4
  %194 = trunc i32 %193 to i16
  %195 = and i16 %194, -2
  %196 = tail call i32 @bcm_phy_write_exp(ptr noundef %0, i16 noundef zeroext 3984, i16 noundef zeroext %195) #4
  br label %197

197:                                              ; preds = %192, %190, %122, %115
  %198 = phi i32 [ %18, %115 ], [ %196, %192 ], [ %123, %122 ], [ %191, %190 ]
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %261

200:                                              ; preds = %197, %151, %145, %139, %130, %124
  %201 = tail call i32 @bcm54xx_auxctl_write(ptr noundef %0, i16 noundef zeroext 0, i16 noundef zeroext 3072) #4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %253, label %203

203:                                              ; preds = %200
  %204 = load ptr, ptr %21, align 8
  %205 = getelementptr inbounds %struct.phy_driver, ptr %204, i32 0, i32 1
  %206 = load i32, ptr %205, align 4
  %207 = getelementptr inbounds %struct.phy_driver, ptr %204, i32 0, i32 3
  %208 = load i32, ptr %207, align 4
  %209 = and i32 %208, %206
  switch i32 %209, label %237 [
    i32 21216608, label %210
    i32 21216624, label %210
  ]

210:                                              ; preds = %203, %203
  %211 = tail call i32 @bcm_phy_write_exp(ptr noundef %0, i16 noundef zeroext 3848, i16 noundef zeroext 1) #4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %251, label %213

213:                                              ; preds = %210
  %214 = load ptr, ptr %21, align 8
  %215 = getelementptr inbounds %struct.phy_driver, ptr %214, i32 0, i32 1
  %216 = load i32, ptr %215, align 4
  %217 = icmp eq i32 %216, 21216608
  br i1 %217, label %218, label %237

218:                                              ; preds = %213
  %219 = tail call i32 @bcm_phy_write_exp(ptr noundef %0, i16 noundef zeroext 31, i16 noundef zeroext 768) #4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %251, label %221

221:                                              ; preds = %218
  %222 = tail call i32 @bcm_phy_write_exp(ptr noundef %0, i16 noundef zeroext 24607, i16 noundef zeroext 2) #4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %251, label %224

224:                                              ; preds = %221
  %225 = tail call i32 @bcm_phy_write_exp(ptr noundef %0, i16 noundef zeroext 3957, i16 noundef zeroext 60) #4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %251, label %227

227:                                              ; preds = %224
  %228 = tail call i32 @bcm_phy_write_exp(ptr noundef %0, i16 noundef zeroext 3990, i16 noundef zeroext 16) #4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %251, label %230

230:                                              ; preds = %227
  %231 = tail call i32 @bcm_phy_write_exp(ptr noundef %0, i16 noundef zeroext 3991, i16 noundef zeroext 3084) #4
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %251, label %233

233:                                              ; preds = %230
  %234 = load ptr, ptr %21, align 8
  %235 = getelementptr inbounds %struct.phy_driver, ptr %234, i32 0, i32 1
  %236 = load i32, ptr %235, align 4
  br label %237

237:                                              ; preds = %233, %213, %203
  %238 = phi i32 [ %236, %233 ], [ %206, %203 ], [ %216, %213 ]
  %239 = phi ptr [ %234, %233 ], [ %204, %203 ], [ %214, %213 ]
  %240 = getelementptr inbounds %struct.phy_driver, ptr %239, i32 0, i32 3
  %241 = load i32, ptr %240, align 4
  %242 = and i32 %241, %238
  %243 = icmp eq i32 %242, 56778128
  br i1 %243, label %244, label %251

244:                                              ; preds = %237
  %245 = tail call i32 @bcm_phy_read_exp(ptr noundef %0, i16 noundef zeroext 3957) #4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %251, label %247

247:                                              ; preds = %244
  %248 = trunc i32 %245 to i16
  %249 = or i16 %248, 1
  %250 = tail call i32 @bcm_phy_write_exp(ptr noundef %0, i16 noundef zeroext 3957, i16 noundef zeroext %249) #4
  br label %251

251:                                              ; preds = %247, %244, %237, %230, %227, %224, %221, %218, %210
  %252 = tail call i32 @bcm54xx_auxctl_write(ptr noundef %0, i16 noundef zeroext 0, i16 noundef zeroext 1024) #4
  br label %253

253:                                              ; preds = %251, %200
  %254 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %255 = load i16, ptr %254, align 8
  %256 = and i16 %255, 1024
  %257 = icmp eq i16 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %253
  %259 = tail call i32 @bcm_phy_write_shadow(ptr noundef %0, i16 noundef zeroext 13, i16 noundef zeroext 170) #4
  %260 = tail call i32 @bcm_phy_write_exp(ptr noundef %0, i16 noundef zeroext 3844, i16 noundef zeroext 256) #4
  br label %261

261:                                              ; preds = %258, %253, %197, %186, %183, %174, %171, %166, %163, %157, %154, %145, %15, %8, %1
  %262 = phi i32 [ %6, %1 ], [ %13, %8 ], [ %18, %15 ], [ %198, %197 ], [ 0, %258 ], [ 0, %253 ], [ %188, %186 ], [ %184, %183 ], [ %181, %174 ], [ %172, %171 ], [ %169, %166 ], [ %164, %163 ], [ %161, %157 ], [ %155, %154 ], [ %149, %145 ]
  ret i32 %262
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm54xx_phy_probe(ptr noundef %0) #2 {
  %2 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 4, i32 noundef 3520) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  store ptr %2, ptr %5, align 8
  %6 = tail call i32 @bcm_phy_get_sset_count(ptr noundef %0) #4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 8) #4
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %12, label %9, !prof !8

9:                                                ; preds = %4
  %10 = extractvalue { i32, i1 } %7, 0
  %11 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %10, i32 noundef 3520) #4
  br label %12

12:                                               ; preds = %9, %4
  %13 = phi ptr [ %11, %9 ], [ null, %4 ]
  store ptr %13, ptr %2, align 4
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, i32 -12, i32 0
  br label %16

16:                                               ; preds = %12, %1
  %17 = phi i32 [ -12, %1 ], [ %15, %12 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_config_intr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_handle_interrupt(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm54xx_link_change_notify(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %5
  %11 = tail call i32 @bcm_phy_read_exp(ptr noundef %0, i16 noundef zeroext 3848) #4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 10
  %17 = and i32 %11, 64767
  %18 = select i1 %16, i32 768, i32 0
  %19 = or i32 %18, %17
  %20 = trunc i32 %19 to i16
  %21 = tail call i32 @bcm_phy_write_exp(ptr noundef %0, i16 noundef zeroext 3848, i16 noundef zeroext %20) #4
  br label %22

22:                                               ; preds = %13, %10, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_get_sset_count(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcm_phy_get_strings(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bcm54xx_get_stats(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  tail call void @bcm_phy_get_stats(ptr noundef %0, ptr noundef %6, ptr noundef %1, ptr noundef %2) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm54xx_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_write(ptr noundef %3, i32 noundef %5, i32 noundef 0, i16 noundef zeroext 2048) #4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @bcm_phy_read_exp(ptr noundef %0, i16 noundef zeroext 3334) #4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = trunc i32 %14 to i16
  %18 = or i16 %17, 9
  %19 = tail call i32 @bcm_phy_write_exp(ptr noundef %0, i16 noundef zeroext 3334, i16 noundef zeroext %18) #4
  br label %20

20:                                               ; preds = %16, %13, %8, %1
  %21 = phi i32 [ %6, %1 ], [ 0, %8 ], [ %14, %13 ], [ %19, %16 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm54xx_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @bcm_phy_read_exp(ptr noundef %0, i16 noundef zeroext 3334) #4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %6
  %10 = trunc i32 %7 to i16
  %11 = and i16 %10, -10
  %12 = tail call i32 @bcm_phy_write_exp(ptr noundef %0, i16 noundef zeroext 3334, i16 noundef zeroext %11) #4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %9, %1
  %15 = tail call i32 @genphy_resume(ptr noundef %0) #4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  tail call void @usleep_range_state(i32 noundef 40, i32 noundef 80, i32 noundef 2) #4
  %18 = load i32, ptr %2, align 8
  %19 = and i32 %18, 32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @genphy_soft_reset(ptr noundef %0) #4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21, %17
  %25 = tail call i32 @bcm54xx_config_init(ptr noundef %0)
  br label %26

26:                                               ; preds = %24, %21, %14, %9, %6
  %27 = phi i32 [ %25, %24 ], [ %12, %9 ], [ %15, %14 ], [ %22, %21 ], [ %7, %6 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_soft_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm54616s_probe(ptr noundef %0) #2 {
  %2 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 1, i32 noundef 3520) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  store ptr %2, ptr %5, align 8
  %6 = tail call i32 @bcm_phy_read_shadow(ptr noundef %0, i16 noundef zeroext 31) #4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %4
  %9 = and i32 %6, 6
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = tail call i32 @bcm_phy_read_shadow(ptr noundef %0, i16 noundef zeroext 19) #4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = and i32 %12, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i8 1, ptr %2, align 1
  br label %18

18:                                               ; preds = %17, %14
  %19 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 10
  store i32 3, ptr %19, align 8
  br label %20

20:                                               ; preds = %18, %11, %8, %4, %1
  %21 = phi i32 [ -12, %1 ], [ %6, %4 ], [ %12, %11 ], [ 0, %18 ], [ 0, %8 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm54616s_config_aneg(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 8
  %4 = load i8, ptr %3, align 1, !range !9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @genphy_c37_config_aneg(ptr noundef %0) #4
  br label %10

8:                                                ; preds = %1
  %9 = tail call i32 @__genphy_config_aneg(ptr noundef %0, i1 noundef zeroext false) #4
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = tail call fastcc i32 @bcm54xx_config_clock_delay(ptr noundef %0)
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm54616s_read_status(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 8
  %4 = load i8, ptr %3, align 1, !range !9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @genphy_c37_read_status(ptr noundef %0) #4
  br label %10

8:                                                ; preds = %1
  %9 = tail call i32 @genphy_read_status(ptr noundef %0) #4
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm5481_config_aneg(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @__genphy_config_aneg(ptr noundef %0, i1 noundef zeroext false) #4
  %5 = tail call fastcc i32 @bcm54xx_config_clock_delay(ptr noundef %0)
  %6 = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.19, ptr noundef null) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @bcm_phy_write_exp(ptr noundef %0, i16 noundef zeroext 3849, i16 noundef zeroext 283) #4
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi i32 [ %9, %8 ], [ %4, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm54811_config_init(ptr noundef %0) #2 {
  %2 = tail call i32 @bcm_phy_read_exp(ptr noundef %0, i16 noundef zeroext 3984) #4
  %3 = trunc i32 %2 to i16
  %4 = and i16 %3, -2
  %5 = tail call i32 @bcm_phy_write_exp(ptr noundef %0, i16 noundef zeroext 3984, i16 noundef zeroext %4) #4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @bcm54xx_config_init(ptr noundef %0)
  %9 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = tail call i32 @bcm_phy_read_exp(ptr noundef %0, i16 noundef zeroext 3380) #4
  %15 = trunc i32 %14 to i16
  %16 = or i16 %15, 2
  %17 = tail call i32 @bcm_phy_write_exp(ptr noundef %0, i16 noundef zeroext 3380, i16 noundef zeroext %16) #4
  br label %18

18:                                               ; preds = %13, %7, %1
  %19 = phi i32 [ %5, %1 ], [ %8, %7 ], [ %17, %13 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_fet_config_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_write(ptr noundef %3, i32 noundef %5, i32 noundef 0, i16 noundef zeroext -32768) #4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %69, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8
  %10 = load i32, ptr %4, align 8
  %11 = tail call i32 @mdiobus_read(ptr noundef %9, i32 noundef %10, i32 noundef 26) #4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %69, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr %2, align 8
  %15 = load i32, ptr %4, align 8
  %16 = tail call i32 @mdiobus_write(ptr noundef %14, i32 noundef %15, i32 noundef 26, i16 noundef zeroext 20224) #4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %69, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %2, align 8
  %20 = load i32, ptr %4, align 8
  %21 = tail call i32 @mdiobus_read(ptr noundef %19, i32 noundef %20, i32 noundef 31) #4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %69, label %23

23:                                               ; preds = %18
  %24 = trunc i32 %21 to i16
  %25 = or i16 %24, 128
  %26 = load ptr, ptr %2, align 8
  %27 = load i32, ptr %4, align 8
  %28 = tail call i32 @mdiobus_write(ptr noundef %26, i32 noundef %27, i32 noundef 31, i16 noundef zeroext %25) #4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %69, label %30

30:                                               ; preds = %23
  %31 = load ptr, ptr %2, align 8
  %32 = load i32, ptr %4, align 8
  %33 = tail call i32 @mdiobus_read(ptr noundef %31, i32 noundef %32, i32 noundef 26) #4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %62, label %35

35:                                               ; preds = %30
  %36 = trunc i32 %33 to i16
  %37 = and i16 %36, -4
  %38 = or i16 %37, 1
  %39 = load ptr, ptr %2, align 8
  %40 = load i32, ptr %4, align 8
  %41 = tail call i32 @mdiobus_write(ptr noundef %39, i32 noundef %40, i32 noundef 26, i16 noundef zeroext %38) #4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %62, label %43

43:                                               ; preds = %35
  %44 = load ptr, ptr %2, align 8
  %45 = load i32, ptr %4, align 8
  %46 = tail call i32 @mdiobus_read(ptr noundef %44, i32 noundef %45, i32 noundef 16) #4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %43
  %49 = trunc i32 %46 to i16
  %50 = or i16 %49, 16384
  %51 = load ptr, ptr %2, align 8
  %52 = load i32, ptr %4, align 8
  %53 = tail call i32 @mdiobus_write(ptr noundef %51, i32 noundef %52, i32 noundef 16, i16 noundef zeroext %50) #4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 6
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = tail call fastcc i32 @brcm_phy_setbits(ptr noundef %0, i32 noundef 27, i32 noundef 32)
  br label %62

62:                                               ; preds = %60, %55, %48, %43, %35, %30
  %63 = phi i32 [ %41, %35 ], [ %53, %48 ], [ %61, %60 ], [ %53, %55 ], [ %33, %30 ], [ %46, %43 ]
  %64 = load ptr, ptr %2, align 8
  %65 = load i32, ptr %4, align 8
  %66 = tail call i32 @mdiobus_write(ptr noundef %64, i32 noundef %65, i32 noundef 31, i16 noundef zeroext %24) #4
  %67 = icmp eq i32 %63, 0
  %68 = select i1 %67, i32 %66, i32 %63
  br label %69

69:                                               ; preds = %62, %23, %18, %13, %8, %1
  %70 = phi i32 [ %68, %62 ], [ %6, %1 ], [ %11, %8 ], [ %16, %13 ], [ %21, %18 ], [ %28, %23 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_fet_config_intr(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 26) #4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %36, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %10 = load i16, ptr %9, align 8
  %11 = icmp slt i16 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = load ptr, ptr %2, align 8
  %14 = load i32, ptr %4, align 8
  %15 = tail call i32 @mdiobus_read(ptr noundef %13, i32 noundef %14, i32 noundef 26) #4
  %16 = tail call i32 @llvm.smin.i32(i32 %15, i32 0) #4
  %17 = icmp sgt i32 %15, -1
  br i1 %17, label %18, label %36

18:                                               ; preds = %12
  %19 = trunc i32 %6 to i16
  %20 = and i16 %19, -257
  %21 = load ptr, ptr %2, align 8
  %22 = load i32, ptr %4, align 8
  %23 = tail call i32 @mdiobus_write(ptr noundef %21, i32 noundef %22, i32 noundef 26, i16 noundef zeroext %20) #4
  br label %36

24:                                               ; preds = %8
  %25 = trunc i32 %6 to i16
  %26 = or i16 %25, 256
  %27 = load ptr, ptr %2, align 8
  %28 = load i32, ptr %4, align 8
  %29 = tail call i32 @mdiobus_write(ptr noundef %27, i32 noundef %28, i32 noundef 26, i16 noundef zeroext %26) #4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load ptr, ptr %2, align 8
  %33 = load i32, ptr %4, align 8
  %34 = tail call i32 @mdiobus_read(ptr noundef %32, i32 noundef %33, i32 noundef 26) #4
  %35 = tail call i32 @llvm.smin.i32(i32 %34, i32 0) #4
  br label %36

36:                                               ; preds = %31, %24, %18, %12, %1
  %37 = phi i32 [ %6, %1 ], [ %16, %12 ], [ %29, %24 ], [ %23, %18 ], [ %35, %31 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_fet_handle_interrupt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 26) #4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @phy_error(ptr noundef %0) #4
  br label %12

9:                                                ; preds = %1
  %10 = icmp eq i32 %6, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  tail call void @phy_trigger_machine(ptr noundef %0) #4
  br label %12

12:                                               ; preds = %11, %9, %8
  %13 = phi i32 [ 0, %8 ], [ 1, %11 ], [ 0, %9 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_write_shadow(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcm54xx_config_clock_delay(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call i32 @bcm54xx_auxctl_read(ptr noundef %0, i16 noundef zeroext 7) #4
  %3 = or i32 %2, 32768
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %8 [
    i32 9, label %6
    i32 12, label %6
  ]

6:                                                ; preds = %1, %1
  %7 = and i32 %3, -257
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ %7, %6 ], [ %3, %1 ]
  %10 = and i32 %5, -2
  %11 = icmp eq i32 %10, 10
  %12 = or i32 %9, 256
  %13 = select i1 %11, i32 %12, i32 %9
  %14 = trunc i32 %13 to i16
  %15 = tail call i32 @bcm54xx_auxctl_write(ptr noundef %0, i16 noundef zeroext 7, i16 noundef zeroext %14) #4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %8
  %18 = tail call i32 @bcm_phy_read_shadow(ptr noundef %0, i16 noundef zeroext 3) #4
  %19 = load i32, ptr %4, align 4
  switch i32 %19, label %22 [
    i32 9, label %20
    i32 11, label %20
  ]

20:                                               ; preds = %17, %17
  %21 = and i32 %18, -513
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %21, %20 ], [ %18, %17 ]
  switch i32 %19, label %26 [
    i32 10, label %24
    i32 12, label %24
  ]

24:                                               ; preds = %22, %22
  %25 = or i32 %23, 512
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %25, %24 ], [ %23, %22 ]
  %28 = trunc i32 %27 to i16
  %29 = tail call i32 @bcm_phy_write_shadow(ptr noundef %0, i16 noundef zeroext 3, i16 noundef zeroext %28) #4
  %30 = tail call i32 @llvm.smin.i32(i32 %29, i32 0)
  br label %31

31:                                               ; preds = %26, %8
  %32 = phi i32 [ %15, %8 ], [ %30, %26 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_read_exp(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_write_exp(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm_phy_read_shadow(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm54xx_auxctl_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm54xx_auxctl_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcm_phy_get_stats(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c37_config_aneg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__genphy_config_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c37_read_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @brcm_phy_setbits(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef %1) #4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = or i32 %8, %2
  %12 = trunc i32 %11 to i16
  %13 = load ptr, ptr %4, align 8
  %14 = load i32, ptr %6, align 8
  %15 = tail call i32 @mdiobus_write(ptr noundef %13, i32 noundef %14, i32 noundef %1, i16 noundef zeroext %12) #4
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i32 [ %15, %10 ], [ %8, %3 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i8 0, i8 2}
