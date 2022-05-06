; ModuleID = '/llk/IR/drivers/net/phy/realtek.c_pt.bc'
source_filename = "../drivers/net/phy/realtek.c"
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
%struct.rtl821x_priv = type { i16, i16 }

@__UNIQUE_ID_description273 = internal constant [39 x i8] c"realtek.description=Realtek PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author274 = internal constant [29 x i8] c"realtek.author=Johnson Leung\00", section ".modinfo", align 1
@__UNIQUE_ID_file275 = internal constant [37 x i8] c"realtek.file=drivers/net/phy/realtek\00", section ".modinfo", align 1
@__UNIQUE_ID_license276 = internal constant [20 x i8] c"realtek.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_realtek__277_1037_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@realtek_drvs = internal global [19 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 33281, ptr @.str, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886230, ptr @.str.1, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @rtl8201_config_intr, ptr @rtl8201_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886336, ptr @.str.2, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_read_mmd_unsupported, ptr @genphy_write_mmd_unsupported, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886480, ptr @.str.3, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl8211_config_aneg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_read_mmd_unsupported, ptr @genphy_write_mmd_unsupported, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886482, ptr @.str.4, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl8211b_suspend, ptr @rtl8211b_resume, ptr null, ptr null, ptr null, ptr @rtl8211b_config_intr, ptr @rtl821x_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_read_mmd_unsupported, ptr @genphy_write_mmd_unsupported, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886483, ptr @.str.5, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr @rtl8211c_config_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_read_mmd_unsupported, ptr @genphy_write_mmd_unsupported, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886484, ptr @.str.6, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @rtl8211e_config_intr, ptr @rtl821x_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886485, ptr @.str.7, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr @rtl8211e_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @rtl8211e_config_intr, ptr @rtl821x_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886486, ptr @.str.8, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr @rtl8211f_config_init, ptr @rtl821x_probe, ptr null, ptr @genphy_suspend, ptr @rtl821x_resume, ptr null, ptr null, ptr @rtlgen_read_status, ptr @rtl8211f_config_intr, ptr @rtl8211f_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 0, ptr @.str.9, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_suspend, ptr @rtlgen_resume, ptr null, ptr null, ptr @rtlgen_read_status, ptr null, ptr null, ptr null, ptr @rtlgen_match_phy_device, ptr null, ptr null, ptr null, ptr @rtlgen_read_mmd, ptr @rtlgen_write_mmd, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 0, ptr @.str.10, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @rtl822x_get_features, ptr @genphy_suspend, ptr @rtlgen_resume, ptr @rtl822x_config_aneg, ptr null, ptr @rtl822x_read_status, ptr null, ptr null, ptr null, ptr @rtl8226_match_phy_device, ptr null, ptr null, ptr null, ptr @rtl822x_read_mmd, ptr @rtl822x_write_mmd, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886272, ptr @.str.11, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @rtl822x_get_features, ptr @genphy_suspend, ptr @rtlgen_resume, ptr @rtl822x_config_aneg, ptr null, ptr @rtl822x_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl822x_read_mmd, ptr @rtl822x_write_mmd, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886264, ptr @.str.12, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @rtl822x_get_features, ptr @genphy_suspend, ptr @rtlgen_resume, ptr @rtl822x_config_aneg, ptr null, ptr @rtl822x_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886280, ptr @.str.13, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @rtl822x_get_features, ptr @genphy_suspend, ptr @rtlgen_resume, ptr @rtl822x_config_aneg, ptr null, ptr @rtl822x_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886281, ptr @.str.14, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @rtl822x_get_features, ptr @genphy_suspend, ptr @rtlgen_resume, ptr @rtl822x_config_aneg, ptr null, ptr @rtl822x_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886282, ptr @.str.15, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @rtl822x_get_features, ptr @genphy_suspend, ptr @rtlgen_resume, ptr @rtl822x_config_aneg, ptr null, ptr @rtl822x_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886561, ptr @.str.16, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr @rtl8366rb_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @genphy_no_config_intr, ptr @genphy_handle_interrupt_no_ack, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886976, ptr @.str.17, i32 -1, ptr @phy_basic_t1_features, i32 0, ptr null, ptr null, ptr @rtl9000a_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @rtl9000a_config_aneg, ptr null, ptr @rtl9000a_read_status, ptr @rtl9000a_config_intr, ptr @rtl9000a_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl821x_read_page, ptr @rtl821x_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 1886530, ptr @.str.18, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @genphy_no_config_intr, ptr @genphy_handle_interrupt_no_ack, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], align 4
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@.str = private unnamed_addr constant [19 x i8] c"RTL8201CP Ethernet\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"RTL8201F Fast Ethernet\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"RTL8208 Fast Ethernet\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"RTL8211 Gigabit Ethernet\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"RTL8211B Gigabit Ethernet\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"RTL8211C Gigabit Ethernet\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"RTL8211DN Gigabit Ethernet\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"RTL8211E Gigabit Ethernet\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"RTL8211F Gigabit Ethernet\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Generic FE-GE Realtek PHY\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"RTL8226 2.5Gbps PHY\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"RTL8226B_RTL8221B 2.5Gbps PHY\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"RTL8226-CG 2.5Gbps PHY\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"RTL8226B-CG_RTL8221B-CG 2.5Gbps PHY\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"RTL8221B-VB-CG 2.5Gbps PHY\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"RTL8221B-VM-CG 2.5Gbps PHY\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"RTL8366RB Gigabit Ethernet\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"RTL9000AA_RTL9000AN Ethernet\00", align 1
@phy_basic_t1_features = external dso_local global [3 x i32], section ".data..ro_after_init", align 4
@.str.18 = private unnamed_addr constant [30 x i8] c"RTL8365MB-VC Gigabit Ethernet\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"aldps mode  configuration failed: %pe\0A\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"Failed to update the TX delay register\0A\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"Failed to update the RX delay register\0A\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"clkout configuration failed: %pe\0A\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"realtek,aldps-enable\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"realtek,clkout-disable\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"error enabling power management\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Unsupported Master/Slave mode\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author274, ptr @__UNIQUE_ID_description273, ptr @__UNIQUE_ID_file275, ptr @__UNIQUE_ID_license276, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_realtek__277_1037_phy_module_init6, ptr @phy_module_exit], section "llvm.metadata"
@switch.table.rtl8211e_config_init = private unnamed_addr constant [4 x i16] [i16 8192, i16 14336, i16 10240, i16 12288], align 2
@switch.table.rtl8211f_config_init = private unnamed_addr constant [4 x i16] [i16 0, i16 256, i16 0, i16 256], align 2
@switch.table.rtl8211f_config_init.27 = private unnamed_addr constant [4 x i16] [i16 0, i16 8, i16 8, i16 0], align 2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" {
  %1 = tail call i32 @phy_drivers_register(ptr noundef nonnull @realtek_drvs, i32 noundef 19, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" {
  tail call void @phy_drivers_unregister(ptr noundef nonnull @realtek_drvs, i32 noundef 19) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl821x_read_page(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @__mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 31) #7
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl821x_write_page(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = trunc i32 %1 to i16
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 31, i16 noundef zeroext %3) #7
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl8201_config_intr(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = icmp slt i16 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = tail call i32 @mdiobus_read(ptr noundef %7, i32 noundef %9, i32 noundef 30) #7
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 0) #7
  %12 = icmp sgt i32 %10, -1
  br i1 %12, label %13, label %25

13:                                               ; preds = %5
  %14 = tail call i32 @phy_write_paged(ptr noundef %0, i32 noundef 7, i32 noundef 19, i16 noundef zeroext 14336) #7
  br label %25

15:                                               ; preds = %1
  %16 = tail call i32 @phy_write_paged(ptr noundef %0, i32 noundef 7, i32 noundef 19, i16 noundef zeroext 0) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %22 = load i32, ptr %21, align 8
  %23 = tail call i32 @mdiobus_read(ptr noundef %20, i32 noundef %22, i32 noundef 30) #7
  %24 = tail call i32 @llvm.smin.i32(i32 %23, i32 0) #7
  br label %25

25:                                               ; preds = %18, %15, %13, %5
  %26 = phi i32 [ %11, %5 ], [ %16, %15 ], [ %14, %13 ], [ %24, %18 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl8201_handle_interrupt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 30) #7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @phy_error(ptr noundef %0) #7
  br label %13

9:                                                ; preds = %1
  %10 = and i32 %6, 43008
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @phy_trigger_machine(ptr noundef %0) #7
  br label %13

13:                                               ; preds = %12, %9, %8
  %14 = phi i32 [ 0, %8 ], [ 1, %12 ], [ 0, %9 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_mmd_unsupported(ptr noundef, i32 noundef, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_write_mmd_unsupported(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl8211_config_aneg(ptr noundef %0) #2 {
  %2 = tail call i32 @__genphy_config_aneg(ptr noundef %0, i1 noundef zeroext false) #7
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %32, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 100
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %10 = load i16, ptr %9, align 8
  %11 = and i16 %10, 4096
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %17 = load i32, ptr %16, align 8
  %18 = tail call i32 @mdiobus_write(ptr noundef %15, i32 noundef %17, i32 noundef 23, i16 noundef zeroext 8504) #7
  br label %25

19:                                               ; preds = %8, %4
  %20 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %23 = load i32, ptr %22, align 8
  %24 = tail call i32 @mdiobus_write(ptr noundef %21, i32 noundef %23, i32 noundef 23, i16 noundef zeroext 8456) #7
  br label %25

25:                                               ; preds = %19, %13
  %26 = phi ptr [ %14, %13 ], [ %20, %19 ]
  %27 = phi ptr [ %16, %13 ], [ %22, %19 ]
  %28 = phi i16 [ 608, %13 ], [ 0, %19 ]
  %29 = load ptr, ptr %26, align 8
  %30 = load i32, ptr %27, align 8
  %31 = tail call i32 @mdiobus_write(ptr noundef %29, i32 noundef %30, i32 noundef 14, i16 noundef zeroext %28) #7
  br label %32

32:                                               ; preds = %25, %1
  %33 = phi i32 [ %2, %1 ], [ 0, %25 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl8211b_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_write(ptr noundef %3, i32 noundef %5, i32 noundef 14, i16 noundef zeroext 512) #7
  %7 = tail call i32 @genphy_suspend(ptr noundef %0) #7
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl8211b_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_write(ptr noundef %3, i32 noundef %5, i32 noundef 14, i16 noundef zeroext 0) #7
  %7 = tail call i32 @genphy_resume(ptr noundef %0) #7
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl8211b_config_intr(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = icmp slt i16 %3, 0
  %5 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  br i1 %4, label %9, label %17

9:                                                ; preds = %1
  %10 = tail call i32 @mdiobus_read(ptr noundef %6, i32 noundef %8, i32 noundef 19) #7
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 0) #7
  %12 = icmp sgt i32 %10, -1
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8
  %15 = load i32, ptr %7, align 8
  %16 = tail call i32 @mdiobus_write(ptr noundef %14, i32 noundef %15, i32 noundef 18, i16 noundef zeroext 25600) #7
  br label %25

17:                                               ; preds = %1
  %18 = tail call i32 @mdiobus_write(ptr noundef %6, i32 noundef %8, i32 noundef 18, i16 noundef zeroext 0) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load ptr, ptr %5, align 8
  %22 = load i32, ptr %7, align 8
  %23 = tail call i32 @mdiobus_read(ptr noundef %21, i32 noundef %22, i32 noundef 19) #7
  %24 = tail call i32 @llvm.smin.i32(i32 %23, i32 0) #7
  br label %25

25:                                               ; preds = %20, %17, %13, %9
  %26 = phi i32 [ %11, %9 ], [ %18, %17 ], [ %16, %13 ], [ %24, %20 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl821x_handle_interrupt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 19) #7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @phy_error(ptr noundef %0) #7
  br label %19

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8
  %11 = load i32, ptr %4, align 8
  %12 = tail call i32 @mdiobus_read(ptr noundef %10, i32 noundef %11, i32 noundef 18) #7
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call void @phy_error(ptr noundef %0) #7
  br label %19

15:                                               ; preds = %9
  %16 = and i32 %12, %6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @phy_trigger_machine(ptr noundef %0) #7
  br label %19

19:                                               ; preds = %18, %15, %14, %8
  %20 = phi i32 [ 0, %8 ], [ 0, %14 ], [ 1, %18 ], [ 0, %15 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl8211c_config_init(ptr noundef %0) #2 {
  %2 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 9, i16 noundef zeroext 0, i16 noundef zeroext 6144) #7
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl8211e_config_intr(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = icmp slt i16 %3, 0
  %5 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  br i1 %4, label %9, label %17

9:                                                ; preds = %1
  %10 = tail call i32 @mdiobus_read(ptr noundef %6, i32 noundef %8, i32 noundef 19) #7
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 0) #7
  %12 = icmp sgt i32 %10, -1
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load ptr, ptr %5, align 8
  %15 = load i32, ptr %7, align 8
  %16 = tail call i32 @mdiobus_write(ptr noundef %14, i32 noundef %15, i32 noundef 18, i16 noundef zeroext 1024) #7
  br label %25

17:                                               ; preds = %1
  %18 = tail call i32 @mdiobus_write(ptr noundef %6, i32 noundef %8, i32 noundef 18, i16 noundef zeroext 0) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load ptr, ptr %5, align 8
  %22 = load i32, ptr %7, align 8
  %23 = tail call i32 @mdiobus_read(ptr noundef %21, i32 noundef %22, i32 noundef 19) #7
  %24 = tail call i32 @llvm.smin.i32(i32 %23, i32 0) #7
  br label %25

25:                                               ; preds = %20, %17, %13, %9
  %26 = phi i32 [ %11, %9 ], [ %18, %17 ], [ %16, %13 ], [ %24, %20 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl8211e_config_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, -9
  %5 = icmp ult i32 %4, 4
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = getelementptr inbounds [4 x i16], ptr @switch.table.rtl8211e_config_init, i32 0, i32 %4
  %8 = load i16, ptr %7, align 2
  %9 = tail call i32 @phy_select_page(ptr noundef %0, i32 noundef 7) #7
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 8
  %16 = tail call i32 @__mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 30, i16 noundef zeroext 164) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = tail call i32 @__phy_modify(ptr noundef %0, i32 noundef 28, i16 noundef zeroext 14336, i16 noundef zeroext %8) #7
  br label %20

20:                                               ; preds = %18, %11, %6
  %21 = phi i32 [ 0, %6 ], [ %16, %11 ], [ %19, %18 ]
  %22 = tail call i32 @phy_restore_page(ptr noundef %0, i32 noundef %9, i32 noundef %21) #7
  br label %23

23:                                               ; preds = %20, %1
  %24 = phi i32 [ %22, %20 ], [ 0, %1 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl8211f_config_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 8
  %4 = load i16, ptr %3, align 2
  %5 = tail call i32 @phy_modify_paged_changed(ptr noundef %0, i32 noundef 2627, i32 noundef 24, i16 noundef zeroext 4102, i16 noundef zeroext %4) #7
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = inttoptr i32 %5 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %8) #8
  br label %35

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -9
  %13 = icmp ult i32 %12, 4
  br i1 %13, label %14, label %35

14:                                               ; preds = %9
  %15 = getelementptr inbounds [4 x i16], ptr @switch.table.rtl8211f_config_init, i32 0, i32 %12
  %16 = load i16, ptr %15, align 2
  %17 = getelementptr inbounds [4 x i16], ptr @switch.table.rtl8211f_config_init.27, i32 0, i32 %12
  %18 = load i16, ptr %17, align 2
  %19 = tail call i32 @phy_modify_paged_changed(ptr noundef %0, i32 noundef 3336, i32 noundef 17, i16 noundef zeroext 256, i16 noundef zeroext %16) #7
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.20) #8
  br label %35

22:                                               ; preds = %14
  %23 = tail call i32 @phy_modify_paged_changed(ptr noundef %0, i32 noundef 3336, i32 noundef 21, i16 noundef zeroext 8, i16 noundef zeroext %18) #7
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.21) #8
  br label %35

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.rtl821x_priv, ptr %3, i32 0, i32 1
  %28 = load i16, ptr %27, align 2
  %29 = tail call i32 @phy_modify_paged(ptr noundef %0, i32 noundef 2627, i32 noundef 25, i16 noundef zeroext 1, i16 noundef zeroext %28) #7
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = inttoptr i32 %29 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef nonnull %32) #8
  br label %35

33:                                               ; preds = %26
  %34 = tail call i32 @genphy_soft_reset(ptr noundef %0) #7
  br label %35

35:                                               ; preds = %33, %31, %25, %21, %9, %7
  %36 = phi i32 [ %5, %7 ], [ %19, %21 ], [ %23, %25 ], [ %29, %31 ], [ %34, %33 ], [ 0, %9 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl821x_probe(ptr noundef %0) #2 {
  %2 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 4, i32 noundef 3520) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @phy_read_paged(ptr noundef %0, i32 noundef 2627, i32 noundef 24) #7
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %4
  %8 = trunc i32 %5 to i16
  %9 = and i16 %8, 4102
  store i16 %9, ptr %2, align 2
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = tail call ptr @of_find_property(ptr noundef %11, ptr noundef nonnull @.str.23, ptr noundef null) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  store i16 4102, ptr %2, align 2
  br label %15

15:                                               ; preds = %14, %7
  %16 = tail call i32 @phy_read_paged(ptr noundef %0, i32 noundef 2627, i32 noundef 25) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = trunc i32 %16 to i16
  %20 = and i16 %19, 1
  %21 = getelementptr inbounds %struct.rtl821x_priv, ptr %2, i32 0, i32 1
  store i16 %20, ptr %21, align 2
  %22 = load ptr, ptr %10, align 8
  %23 = tail call ptr @of_find_property(ptr noundef %22, ptr noundef nonnull @.str.24, ptr noundef null) #7
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store i16 0, ptr %21, align 2
  br label %26

26:                                               ; preds = %25, %18
  %27 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  store ptr %2, ptr %27, align 8
  br label %28

28:                                               ; preds = %26, %15, %4, %1
  %29 = phi i32 [ 0, %26 ], [ -12, %1 ], [ %5, %4 ], [ %16, %15 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl821x_resume(ptr noundef %0) #2 {
  %2 = tail call i32 @genphy_resume(ptr noundef %0) #7
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @msleep(i32 noundef 20) #7
  br label %5

5:                                                ; preds = %4, %1
  %6 = phi i32 [ 0, %4 ], [ %2, %1 ]
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtlgen_read_status(ptr noundef %0) #2 {
  %2 = tail call i32 @genphy_read_status(ptr noundef %0) #7
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %6 = load i16, ptr %5, align 8
  %7 = and i16 %6, 8192
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @phy_read_paged(ptr noundef %0, i32 noundef 2627, i32 noundef 18) #7
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %9
  %13 = and i32 %10, 1584
  switch i32 %13, label %22 [
    i32 0, label %19
    i32 16, label %14
    i32 32, label %15
    i32 512, label %16
    i32 528, label %17
    i32 544, label %18
  ]

14:                                               ; preds = %12
  br label %19

15:                                               ; preds = %12
  br label %19

16:                                               ; preds = %12
  br label %19

17:                                               ; preds = %12
  br label %19

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18, %17, %16, %15, %14, %12
  %20 = phi i32 [ 100, %14 ], [ 1000, %15 ], [ 10000, %16 ], [ 2500, %17 ], [ 5000, %18 ], [ 10, %12 ]
  %21 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  store i32 %20, ptr %21, align 8
  br label %22

22:                                               ; preds = %19, %12, %9, %4, %1
  %23 = phi i32 [ %2, %1 ], [ 0, %4 ], [ %10, %9 ], [ 0, %12 ], [ 0, %19 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl8211f_config_intr(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = icmp slt i16 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = tail call i32 @phy_read_paged(ptr noundef %0, i32 noundef 2627, i32 noundef 29) #7
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 0) #7
  %8 = icmp sgt i32 %6, -1
  br i1 %8, label %9, label %17

9:                                                ; preds = %5
  %10 = tail call i32 @phy_write_paged(ptr noundef %0, i32 noundef 2626, i32 noundef 18, i16 noundef zeroext 16) #7
  br label %17

11:                                               ; preds = %1
  %12 = tail call i32 @phy_write_paged(ptr noundef %0, i32 noundef 2626, i32 noundef 18, i16 noundef zeroext 0) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = tail call i32 @phy_read_paged(ptr noundef %0, i32 noundef 2627, i32 noundef 29) #7
  %16 = tail call i32 @llvm.smin.i32(i32 %15, i32 0) #7
  br label %17

17:                                               ; preds = %14, %11, %9, %5
  %18 = phi i32 [ %7, %5 ], [ %12, %11 ], [ %10, %9 ], [ %16, %14 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl8211f_handle_interrupt(ptr noundef %0) #2 {
  %2 = tail call i32 @phy_read_paged(ptr noundef %0, i32 noundef 2627, i32 noundef 29) #7
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @phy_error(ptr noundef %0) #7
  br label %9

5:                                                ; preds = %1
  %6 = and i32 %2, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @phy_trigger_machine(ptr noundef %0) #7
  br label %9

9:                                                ; preds = %8, %5, %4
  %10 = phi i32 [ 0, %4 ], [ 1, %8 ], [ 0, %5 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtlgen_resume(ptr noundef %0) #2 {
  %2 = tail call i32 @genphy_resume(ptr noundef %0) #7
  tail call void @msleep(i32 noundef 20) #7
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtlgen_match_phy_device(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1886208
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = tail call i32 @mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 31, i16 noundef zeroext 2657) #7
  %11 = load ptr, ptr %6, align 8
  %12 = load i32, ptr %8, align 8
  %13 = tail call i32 @mdiobus_read(ptr noundef %11, i32 noundef %12, i32 noundef 19) #7
  %14 = load ptr, ptr %6, align 8
  %15 = load i32, ptr %8, align 8
  %16 = tail call i32 @mdiobus_write(ptr noundef %14, i32 noundef %15, i32 noundef 31, i16 noundef zeroext 0) #7
  %17 = and i32 %13, -2147475456
  %18 = icmp ne i32 %17, 8192
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %5, %1
  %21 = phi i32 [ 0, %1 ], [ %19, %5 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtlgen_read_mmd(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2) #2 {
  %4 = icmp eq i32 %1, 3
  %5 = icmp eq i16 %2, 20
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = tail call i32 @__mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 31, i16 noundef zeroext 2652) #7
  br label %32

13:                                               ; preds = %3
  %14 = icmp eq i32 %1, 7
  %15 = icmp eq i16 %2, 60
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %21 = load i32, ptr %20, align 8
  %22 = tail call i32 @__mdiobus_write(ptr noundef %19, i32 noundef %21, i32 noundef 31, i16 noundef zeroext 2653) #7
  br label %32

23:                                               ; preds = %13
  %24 = icmp eq i16 %2, 61
  %25 = and i1 %14, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %30 = load i32, ptr %29, align 8
  %31 = tail call i32 @__mdiobus_write(ptr noundef %28, i32 noundef %30, i32 noundef 31, i16 noundef zeroext 2653) #7
  br label %32

32:                                               ; preds = %26, %17, %7
  %33 = phi ptr [ %18, %17 ], [ %27, %26 ], [ %8, %7 ]
  %34 = phi ptr [ %20, %17 ], [ %29, %26 ], [ %10, %7 ]
  %35 = phi i32 [ 16, %17 ], [ 17, %26 ], [ 18, %7 ]
  %36 = load ptr, ptr %33, align 8
  %37 = load i32, ptr %34, align 8
  %38 = tail call i32 @__mdiobus_read(ptr noundef %36, i32 noundef %37, i32 noundef %35) #7
  %39 = load ptr, ptr %33, align 8
  %40 = load i32, ptr %34, align 8
  %41 = tail call i32 @__mdiobus_write(ptr noundef %39, i32 noundef %40, i32 noundef 31, i16 noundef zeroext 0) #7
  br label %42

42:                                               ; preds = %32, %23
  %43 = phi i32 [ -95, %23 ], [ %38, %32 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtlgen_write_mmd(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #2 {
  %5 = icmp eq i32 %1, 7
  %6 = icmp eq i16 %2, 60
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 @__mdiobus_write(ptr noundef %10, i32 noundef %12, i32 noundef 31, i16 noundef zeroext 2653) #7
  %14 = load ptr, ptr %9, align 8
  %15 = load i32, ptr %11, align 8
  %16 = tail call i32 @__mdiobus_write(ptr noundef %14, i32 noundef %15, i32 noundef 16, i16 noundef zeroext %3) #7
  %17 = load ptr, ptr %9, align 8
  %18 = load i32, ptr %11, align 8
  %19 = tail call i32 @__mdiobus_write(ptr noundef %17, i32 noundef %18, i32 noundef 31, i16 noundef zeroext 0) #7
  br label %20

20:                                               ; preds = %8, %4
  %21 = phi i32 [ %16, %8 ], [ -95, %4 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl822x_get_features(ptr noundef %0) #2 {
  %2 = tail call i32 @phy_read_paged(ptr noundef %0, i32 noundef 2657, i32 noundef 19) #7
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16
  %6 = getelementptr %struct.phy_device, ptr %0, i32 0, i32 16, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, -98305
  %9 = shl i32 %2, 2
  %10 = and i32 %9, 32768
  %11 = or i32 %8, %10
  %12 = shl i32 %2, 2
  %13 = and i32 %12, 65536
  %14 = or i32 %11, %13
  store i32 %14, ptr %6, align 4
  %15 = load i32, ptr %5, align 4
  %16 = and i32 %15, -4097
  %17 = shl i32 %2, 12
  %18 = and i32 %17, 4096
  %19 = or i32 %16, %18
  store i32 %19, ptr %5, align 4
  %20 = tail call i32 @genphy_read_abilities(ptr noundef %0) #7
  br label %21

21:                                               ; preds = %4, %1
  %22 = phi i32 [ %20, %4 ], [ %2, %1 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl822x_config_aneg(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 4096
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr %struct.phy_device, ptr %0, i32 0, i32 17, i32 1
  %8 = load volatile i32, ptr %7, align 4
  %9 = trunc i32 %8 to i16
  %10 = lshr i16 %9, 8
  %11 = and i16 %10, 128
  %12 = tail call i32 @phy_modify_paged_changed(ptr noundef %0, i32 noundef 2653, i32 noundef 18, i16 noundef zeroext 128, i16 noundef zeroext %11) #7
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %6, %1
  %15 = phi i32 [ %12, %6 ], [ 0, %1 ]
  %16 = icmp ne i32 %15, 0
  %17 = tail call i32 @__genphy_config_aneg(ptr noundef %0, i1 noundef zeroext %16) #7
  br label %18

18:                                               ; preds = %14, %6
  %19 = phi i32 [ %17, %14 ], [ %12, %6 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl822x_read_status(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 4096
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @phy_read_paged(ptr noundef %0, i32 noundef 2653, i32 noundef 19) #7
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %45, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 18
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, -4097
  %13 = shl i32 %7, 1
  %14 = and i32 %13, 4096
  %15 = or i32 %12, %14
  store i32 %15, ptr %10, align 4
  %16 = getelementptr %struct.phy_device, ptr %0, i32 0, i32 18, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, -98305
  %19 = shl i32 %7, 10
  %20 = and i32 %19, 65536
  %21 = or i32 %18, %20
  %22 = shl i32 %7, 10
  %23 = and i32 %22, 32768
  %24 = or i32 %21, %23
  store i32 %24, ptr %16, align 4
  br label %25

25:                                               ; preds = %9, %1
  %26 = tail call i32 @genphy_read_status(ptr noundef %0) #7
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %25
  %29 = load i16, ptr %2, align 8
  %30 = and i16 %29, 8192
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %28
  %33 = tail call i32 @phy_read_paged(ptr noundef %0, i32 noundef 2627, i32 noundef 18) #7
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = and i32 %33, 1584
  switch i32 %36, label %45 [
    i32 0, label %42
    i32 16, label %37
    i32 32, label %38
    i32 512, label %39
    i32 528, label %40
    i32 544, label %41
  ]

37:                                               ; preds = %35
  br label %42

38:                                               ; preds = %35
  br label %42

39:                                               ; preds = %35
  br label %42

40:                                               ; preds = %35
  br label %42

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %40, %39, %38, %37, %35
  %43 = phi i32 [ 100, %37 ], [ 1000, %38 ], [ 10000, %39 ], [ 2500, %40 ], [ 5000, %41 ], [ 10, %35 ]
  %44 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  store i32 %43, ptr %44, align 8
  br label %45

45:                                               ; preds = %42, %35, %32, %28, %25, %6
  %46 = phi i32 [ %26, %25 ], [ %7, %6 ], [ 0, %28 ], [ %33, %32 ], [ 0, %35 ], [ 0, %42 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl8226_match_phy_device(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1886208
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = tail call i32 @mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 31, i16 noundef zeroext 2657) #7
  %11 = load ptr, ptr %6, align 8
  %12 = load i32, ptr %8, align 8
  %13 = tail call i32 @mdiobus_read(ptr noundef %11, i32 noundef %12, i32 noundef 19) #7
  %14 = load ptr, ptr %6, align 8
  %15 = load i32, ptr %8, align 8
  %16 = tail call i32 @mdiobus_write(ptr noundef %14, i32 noundef %15, i32 noundef 31, i16 noundef zeroext 0) #7
  %17 = and i32 %13, -2147475456
  %18 = icmp eq i32 %17, 8192
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %5, %1
  %21 = phi i32 [ 0, %1 ], [ %19, %5 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl822x_read_mmd(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2) #2 {
  %4 = tail call i32 @rtlgen_read_mmd(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2)
  %5 = icmp eq i32 %4, -95
  br i1 %5, label %6, label %45

6:                                                ; preds = %3
  %7 = icmp eq i32 %1, 3
  %8 = icmp eq i16 %2, 21
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 8
  %15 = tail call i32 @__mdiobus_write(ptr noundef %12, i32 noundef %14, i32 noundef 31, i16 noundef zeroext 2670) #7
  br label %35

16:                                               ; preds = %6
  %17 = icmp eq i32 %1, 7
  %18 = icmp eq i16 %2, 62
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %24 = load i32, ptr %23, align 8
  %25 = tail call i32 @__mdiobus_write(ptr noundef %22, i32 noundef %24, i32 noundef 31, i16 noundef zeroext 2669) #7
  br label %35

26:                                               ; preds = %16
  %27 = icmp eq i16 %2, 63
  %28 = and i1 %17, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %33 = load i32, ptr %32, align 8
  %34 = tail call i32 @__mdiobus_write(ptr noundef %31, i32 noundef %33, i32 noundef 31, i16 noundef zeroext 2669) #7
  br label %35

35:                                               ; preds = %29, %20, %10
  %36 = phi ptr [ %11, %10 ], [ %30, %29 ], [ %21, %20 ]
  %37 = phi ptr [ %13, %10 ], [ %32, %29 ], [ %23, %20 ]
  %38 = phi i32 [ 22, %10 ], [ 16, %29 ], [ 18, %20 ]
  %39 = load ptr, ptr %36, align 8
  %40 = load i32, ptr %37, align 8
  %41 = tail call i32 @__mdiobus_read(ptr noundef %39, i32 noundef %40, i32 noundef %38) #7
  %42 = load ptr, ptr %36, align 8
  %43 = load i32, ptr %37, align 8
  %44 = tail call i32 @__mdiobus_write(ptr noundef %42, i32 noundef %43, i32 noundef 31, i16 noundef zeroext 0) #7
  br label %45

45:                                               ; preds = %35, %26, %3
  %46 = phi i32 [ %4, %3 ], [ -95, %26 ], [ %41, %35 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl822x_write_mmd(ptr nocapture noundef readonly %0, i32 noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #2 {
  %5 = icmp eq i32 %1, 7
  %6 = icmp eq i16 %2, 60
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 @__mdiobus_write(ptr noundef %10, i32 noundef %12, i32 noundef 31, i16 noundef zeroext 2653) #7
  br label %23

14:                                               ; preds = %4
  %15 = icmp eq i16 %2, 62
  %16 = and i1 %5, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %21 = load i32, ptr %20, align 8
  %22 = tail call i32 @__mdiobus_write(ptr noundef %19, i32 noundef %21, i32 noundef 31, i16 noundef zeroext 2669) #7
  br label %23

23:                                               ; preds = %17, %8
  %24 = phi ptr [ %9, %8 ], [ %18, %17 ]
  %25 = phi ptr [ %11, %8 ], [ %20, %17 ]
  %26 = phi i32 [ 16, %8 ], [ 18, %17 ]
  %27 = load ptr, ptr %24, align 8
  %28 = load i32, ptr %25, align 8
  %29 = tail call i32 @__mdiobus_write(ptr noundef %27, i32 noundef %28, i32 noundef %26, i16 noundef zeroext %3) #7
  %30 = load ptr, ptr %24, align 8
  %31 = load i32, ptr %25, align 8
  %32 = tail call i32 @__mdiobus_write(ptr noundef %30, i32 noundef %31, i32 noundef 31, i16 noundef zeroext 0) #7
  br label %33

33:                                               ; preds = %23, %14
  %34 = phi i32 [ -95, %14 ], [ %29, %23 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl8366rb_config_init(ptr noundef %0) #2 {
  %2 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 21, i16 noundef zeroext 0, i16 noundef zeroext 4096) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.25) #8
  br label %5

5:                                                ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @genphy_no_config_intr(ptr nocapture noundef readnone %0) #3 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_handle_interrupt_no_ack(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rtl9000a_config_init(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, -4097
  store i16 %4, ptr %2, align 8
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  store i32 100, ptr %5, align 8
  %6 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 9
  store i32 1, ptr %6, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl9000a_config_aneg(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 14
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %5 [
    i8 4, label %4
    i8 5, label %6
    i8 1, label %12
    i8 0, label %12
  ]

4:                                                ; preds = %1
  br label %6

5:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.26) #8
  br label %12

6:                                                ; preds = %4, %1
  %7 = phi i16 [ 0, %1 ], [ 2048, %4 ]
  %8 = tail call i32 @phy_modify_changed(ptr noundef %0, i32 noundef 9, i16 noundef zeroext 2048, i16 noundef zeroext %7) #7
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call i32 @genphy_soft_reset(ptr noundef %0) #7
  br label %12

12:                                               ; preds = %10, %6, %5, %1, %1
  %13 = phi i32 [ -95, %5 ], [ 0, %1 ], [ 0, %1 ], [ %11, %10 ], [ %8, %6 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl9000a_read_status(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 13
  store i8 1, ptr %2, align 4
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 15
  store i8 1, ptr %3, align 2
  %4 = tail call i32 @genphy_update_link(ptr noundef %0) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  %11 = tail call i32 @mdiobus_read(ptr noundef %8, i32 noundef %10, i32 noundef 9) #7
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %6
  %14 = and i32 %11, 2048
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i8 5, i8 4
  store i8 %16, ptr %2, align 4
  %17 = load ptr, ptr %7, align 8
  %18 = load i32, ptr %9, align 8
  %19 = tail call i32 @mdiobus_read(ptr noundef %17, i32 noundef %18, i32 noundef 10) #7
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %13
  %22 = and i32 %19, 16384
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i8 3, i8 2
  store i8 %24, ptr %3, align 2
  br label %25

25:                                               ; preds = %21, %13, %6, %1
  %26 = phi i32 [ 0, %21 ], [ %4, %1 ], [ %11, %6 ], [ %19, %13 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl9000a_config_intr(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = icmp slt i16 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = tail call i32 @mdiobus_read(ptr noundef %7, i32 noundef %9, i32 noundef 29) #7
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 0) #7
  %12 = icmp sgt i32 %10, -1
  br i1 %12, label %13, label %27

13:                                               ; preds = %5
  %14 = tail call i32 @phy_write_paged(ptr noundef %0, i32 noundef 2626, i32 noundef 20, i16 noundef zeroext -17) #7
  br label %24

15:                                               ; preds = %1
  %16 = tail call i32 @phy_write_paged(ptr noundef %0, i32 noundef 2626, i32 noundef 20, i16 noundef zeroext -1) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %22 = load i32, ptr %21, align 8
  %23 = tail call i32 @mdiobus_read(ptr noundef %20, i32 noundef %22, i32 noundef 29) #7
  br label %24

24:                                               ; preds = %18, %13
  %25 = phi i16 [ -17, %13 ], [ -1, %18 ]
  %26 = tail call i32 @phy_write_paged(ptr noundef %0, i32 noundef 2626, i32 noundef 20, i16 noundef zeroext %25) #7
  br label %27

27:                                               ; preds = %24, %15, %5
  %28 = phi i32 [ %26, %24 ], [ %11, %5 ], [ %16, %15 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rtl9000a_handle_interrupt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 29) #7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @phy_error(ptr noundef %0) #7
  br label %13

9:                                                ; preds = %1
  %10 = and i32 %6, 16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @phy_trigger_machine(ptr noundef %0) #7
  br label %13

13:                                               ; preds = %12, %9, %8
  %14 = phi i32 [ 0, %8 ], [ 1, %12 ], [ 0, %9 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_paged(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__genphy_config_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_select_page(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_restore_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_paged_changed(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_paged(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_soft_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_paged(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_abilities(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_changed(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_update_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
