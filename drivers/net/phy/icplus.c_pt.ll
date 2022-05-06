; ModuleID = '/llk/IR/drivers/net/phy/icplus.c_pt.bc'
source_filename = "../drivers/net/phy/icplus.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.ip101a_g_phy_priv = type { i32, [2 x i64] }

@__UNIQUE_ID_description330 = internal constant [66 x i8] c"icplus.description=ICPlus IP175C/IP101A/IP101G/IC1001 PHY drivers\00", section ".modinfo", align 1
@__UNIQUE_ID_author331 = internal constant [32 x i8] c"icplus.author=Michael Barkowski\00", section ".modinfo", align 1
@__UNIQUE_ID_file332 = internal constant [35 x i8] c"icplus.file=drivers/net/phy/icplus\00", section ".modinfo", align 1
@__UNIQUE_ID_license333 = internal constant [19 x i8] c"icplus.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_icplus__334_625_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@icplus_driver = internal global [4 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 37948800, ptr @.str, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @ip175c_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @ip175c_config_aneg, ptr null, ptr @ip175c_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 37948816, ptr @.str.1, i32 -16, ptr null, i32 0, ptr null, ptr @genphy_soft_reset, ptr @ip1001_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 0, ptr @.str.2, i32 0, ptr null, i32 0, ptr null, ptr @genphy_soft_reset, ptr @ip101a_config_init, ptr @ip101a_g_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @ip101a_g_config_aneg, ptr null, ptr @ip101a_g_read_status, ptr @ip101a_g_config_intr, ptr @ip101a_g_handle_interrupt, ptr null, ptr @ip101a_match_phy_device, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip101a_read_page, ptr @ip101a_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 0, ptr @.str.3, i32 0, ptr null, i32 0, ptr null, ptr @genphy_soft_reset, ptr @ip101g_config_init, ptr @ip101a_g_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @ip101a_g_config_aneg, ptr null, ptr @ip101a_g_read_status, ptr @ip101a_g_config_intr, ptr @ip101a_g_handle_interrupt, ptr null, ptr @ip101g_match_phy_device, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip101g_read_page, ptr @ip101g_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip101g_get_sset_count, ptr @ip101g_get_strings, ptr @ip101g_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }], align 4
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@.str = private unnamed_addr constant [14 x i8] c"ICPlus IP175C\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ICPlus IP1001\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ICPlus IP101A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"ICPlus IP101G\00", align 1
@ip175c_config_init.full_reset_performed = internal unnamed_addr global i1 false, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"icplus,select-rx-error\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"icplus,select-interrupt\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"RXER and INTR mode cannot be selected together\0A\00", align 1
@ip101a_write_page.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"drivers/net/phy/icplus.c\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"wrong page selected\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"phy_crc_errors\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"phy_symbol_errors\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author331, ptr @__UNIQUE_ID_description330, ptr @__UNIQUE_ID_file332, ptr @__UNIQUE_ID_license333, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_icplus__334_625_phy_module_init6, ptr @phy_module_exit], section "llvm.metadata"
@switch.table.ip101a_g_config_aneg = private unnamed_addr constant [3 x i16] [i16 2048, i16 2048, i16 0], align 2
@switch.table.ip101a_g_config_aneg.11 = private unnamed_addr constant [3 x i16] [i16 0, i16 8, i16 0], align 2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" {
  %1 = tail call i32 @phy_drivers_register(ptr noundef nonnull @icplus_driver, i32 noundef 4, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" {
  tail call void @phy_drivers_unregister(ptr noundef nonnull @icplus_driver, i32 noundef 4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip175c_config_init(ptr nocapture noundef %0) #2 {
  %2 = load i1, ptr @ip175c_config_init.full_reset_performed, align 4
  br i1 %2, label %51, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @mdiobus_write(ptr noundef %5, i32 noundef 30, i32 noundef 0, i16 noundef zeroext 5980) #6
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %64, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8
  %10 = tail call i32 @mdiobus_read(ptr noundef %9, i32 noundef 30, i32 noundef 0) #6
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 429496000) #6
  %12 = load ptr, ptr %4, align 8
  %13 = tail call i32 @mdiobus_write(ptr noundef %12, i32 noundef 29, i32 noundef 31, i16 noundef zeroext 5980) #6
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %64, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %4, align 8
  %17 = tail call i32 @mdiobus_write(ptr noundef %16, i32 noundef 29, i32 noundef 22, i16 noundef zeroext 1056) #6
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %64, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %4, align 8
  %21 = tail call i32 @mdiobus_write(ptr noundef %20, i32 noundef 0, i32 noundef 0, i16 noundef zeroext -32768) #6
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %64, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %4, align 8
  %25 = tail call i32 @mdiobus_write(ptr noundef %24, i32 noundef 1, i32 noundef 0, i16 noundef zeroext -32768) #6
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %64, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %4, align 8
  %29 = tail call i32 @mdiobus_write(ptr noundef %28, i32 noundef 2, i32 noundef 0, i16 noundef zeroext -32768) #6
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %64, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %4, align 8
  %33 = tail call i32 @mdiobus_write(ptr noundef %32, i32 noundef 3, i32 noundef 0, i16 noundef zeroext -32768) #6
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %64, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %4, align 8
  %37 = tail call i32 @mdiobus_write(ptr noundef %36, i32 noundef 4, i32 noundef 0, i16 noundef zeroext -32768) #6
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %64, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %4, align 8
  %41 = tail call i32 @mdiobus_read(ptr noundef %40, i32 noundef 0, i32 noundef 0) #6
  %42 = load ptr, ptr %4, align 8
  %43 = tail call i32 @mdiobus_read(ptr noundef %42, i32 noundef 1, i32 noundef 0) #6
  %44 = load ptr, ptr %4, align 8
  %45 = tail call i32 @mdiobus_read(ptr noundef %44, i32 noundef 2, i32 noundef 0) #6
  %46 = load ptr, ptr %4, align 8
  %47 = tail call i32 @mdiobus_read(ptr noundef %46, i32 noundef 3, i32 noundef 0) #6
  %48 = load ptr, ptr %4, align 8
  %49 = tail call i32 @mdiobus_read(ptr noundef %48, i32 noundef 4, i32 noundef 0) #6
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 429496000) #6
  store i1 true, ptr @ip175c_config_init.full_reset_performed, align 4
  br label %51

51:                                               ; preds = %39, %1
  %52 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %53 = load i32, ptr %52, align 8
  %54 = icmp eq i32 %53, 4
  br i1 %54, label %64, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 5
  store i32 4, ptr %56, align 4
  %57 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  store i32 100, ptr %57, align 8
  %58 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 9
  store i32 1, ptr %58, align 4
  %59 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %60 = load i16, ptr %59, align 8
  %61 = or i16 %60, 8192
  store i16 %61, ptr %59, align 8
  %62 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 32
  %63 = load ptr, ptr %62, align 8
  tail call void @netif_carrier_on(ptr noundef %63) #6
  br label %64

64:                                               ; preds = %55, %51, %35, %31, %27, %23, %19, %15, %8, %3
  %65 = phi i32 [ %6, %3 ], [ %13, %8 ], [ %17, %15 ], [ 0, %55 ], [ 0, %51 ], [ %21, %19 ], [ %25, %23 ], [ %29, %27 ], [ %33, %31 ], [ %37, %35 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip175c_config_aneg(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 @__genphy_config_aneg(ptr noundef %0, i1 noundef zeroext false) #6
  br label %7

7:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip175c_read_status(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 @genphy_read_status(ptr noundef %0) #6
  br label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 21
  store i32 -2, ptr %8, align 4
  br label %9

9:                                                ; preds = %7, %5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_soft_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip1001_config_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 20) #6
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %42, label %8

8:                                                ; preds = %1
  %9 = trunc i32 %6 to i16
  %10 = or i16 %9, 11
  %11 = load ptr, ptr %2, align 8
  %12 = load i32, ptr %4, align 8
  %13 = tail call i32 @mdiobus_write(ptr noundef %11, i32 noundef %12, i32 noundef 20, i16 noundef zeroext %10) #6
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %42, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, -9
  %19 = icmp ult i32 %18, 4
  br i1 %19, label %20, label %41

20:                                               ; preds = %15
  %21 = load ptr, ptr %2, align 8
  %22 = load i32, ptr %4, align 8
  %23 = tail call i32 @mdiobus_read(ptr noundef %21, i32 noundef %22, i32 noundef 16) #6
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %42, label %25

25:                                               ; preds = %20
  %26 = and i32 %23, -4
  %27 = load i32, ptr %16, align 4
  switch i32 %27, label %34 [
    i32 10, label %28
    i32 11, label %30
    i32 12, label %32
  ]

28:                                               ; preds = %25
  %29 = or i32 %23, 3
  br label %34

30:                                               ; preds = %25
  %31 = or i32 %26, 1
  br label %34

32:                                               ; preds = %25
  %33 = or i32 %26, 2
  br label %34

34:                                               ; preds = %32, %30, %28, %25
  %35 = phi i32 [ %29, %28 ], [ %31, %30 ], [ %33, %32 ], [ %26, %25 ]
  %36 = trunc i32 %35 to i16
  %37 = load ptr, ptr %2, align 8
  %38 = load i32, ptr %4, align 8
  %39 = tail call i32 @mdiobus_write(ptr noundef %37, i32 noundef %38, i32 noundef 16, i16 noundef zeroext %36) #6
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34, %15
  br label %42

42:                                               ; preds = %41, %34, %20, %8, %1
  %43 = phi i32 [ 0, %41 ], [ %6, %1 ], [ %13, %8 ], [ %23, %20 ], [ %39, %34 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip101a_config_init(ptr noundef %0) #2 {
  %2 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 0, i16 noundef zeroext 2) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %18

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @phy_select_page(ptr noundef %0, i32 noundef 16) #6
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %4
  %10 = load i32, ptr %6, align 8
  switch i32 %10, label %15 [
    i32 2, label %12
    i32 1, label %11
  ]

11:                                               ; preds = %9
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i16 [ 4, %11 ], [ 0, %9 ]
  %14 = tail call i32 @__phy_modify(ptr noundef %0, i32 noundef 29, i16 noundef zeroext 4, i16 noundef zeroext %13) #6
  br label %15

15:                                               ; preds = %12, %9, %4
  %16 = phi i32 [ 0, %4 ], [ 0, %9 ], [ %14, %12 ]
  %17 = tail call i32 @phy_restore_page(ptr noundef %0, i32 noundef %7, i32 noundef %16) #6
  br label %18

18:                                               ; preds = %15, %1
  %19 = phi i32 [ %17, %15 ], [ %2, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip101a_g_probe(ptr noundef %0) #2 {
  %2 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 24, i32 noundef 3520) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = tail call zeroext i1 @device_property_present(ptr noundef %0, ptr noundef nonnull @.str.4) #6
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = tail call zeroext i1 @device_property_present(ptr noundef %0, ptr noundef nonnull @.str.5) #6
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6) #7
  br label %17

9:                                                ; preds = %6, %4
  %10 = tail call zeroext i1 @device_property_present(ptr noundef %0, ptr noundef nonnull @.str.4) #6
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = tail call zeroext i1 @device_property_present(ptr noundef %0, ptr noundef nonnull @.str.5) #6
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %11, %9
  %15 = phi i32 [ 2, %9 ], [ %13, %11 ]
  store i32 %15, ptr %2, align 8
  %16 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  store ptr %2, ptr %16, align 8
  br label %17

17:                                               ; preds = %14, %8, %1
  %18 = phi i32 [ -22, %8 ], [ 0, %14 ], [ -12, %1 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip101a_g_config_aneg(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 35
  %3 = load i8, ptr %2, align 1
  %4 = add i8 %3, -1
  %5 = icmp ult i8 %4, 3
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = sext i8 %4 to i32
  %8 = getelementptr inbounds [3 x i16], ptr @switch.table.ip101a_g_config_aneg, i32 0, i32 %7
  %9 = load i16, ptr %8, align 2
  %10 = sext i8 %4 to i32
  %11 = getelementptr inbounds [3 x i16], ptr @switch.table.ip101a_g_config_aneg.11, i32 0, i32 %10
  %12 = load i16, ptr %11, align 2
  %13 = tail call i32 @phy_select_page(ptr noundef %0, i32 noundef 16) #6
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %6
  %16 = tail call i32 @__phy_modify(ptr noundef %0, i32 noundef 16, i16 noundef zeroext 2048, i16 noundef zeroext %9) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call i32 @__phy_modify(ptr noundef %0, i32 noundef 30, i16 noundef zeroext 8, i16 noundef zeroext %12) #6
  br label %20

20:                                               ; preds = %18, %15, %6
  %21 = phi i32 [ 0, %6 ], [ %16, %15 ], [ %19, %18 ]
  %22 = tail call i32 @phy_restore_page(ptr noundef %0, i32 noundef %13, i32 noundef %21) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %1
  %25 = tail call i32 @__genphy_config_aneg(ptr noundef %0, i1 noundef zeroext false) #6
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi i32 [ %25, %24 ], [ %22, %20 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip101a_g_read_status(ptr noundef %0) #2 {
  %2 = tail call i32 @genphy_read_status(ptr noundef %0) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %38

4:                                                ; preds = %1
  %5 = tail call i32 @phy_select_page(ptr noundef %0, i32 noundef 16) #6
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %35, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = tail call i32 @__mdiobus_read(ptr noundef %9, i32 noundef %11, i32 noundef 16) #6
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %7
  %15 = load ptr, ptr %8, align 8
  %16 = load i32, ptr %10, align 8
  %17 = tail call i32 @__mdiobus_read(ptr noundef %15, i32 noundef %16, i32 noundef 30) #6
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %14
  %20 = and i32 %12, 2048
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = and i32 %17, 8
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 35
  br i1 %24, label %27, label %26

26:                                               ; preds = %22
  store i8 2, ptr %25, align 1
  br label %30

27:                                               ; preds = %22
  store i8 1, ptr %25, align 1
  br label %30

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 35
  store i8 3, ptr %29, align 1
  br label %30

30:                                               ; preds = %28, %27, %26
  %31 = and i32 %17, 512
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 34
  %34 = select i1 %32, i8 1, i8 2
  store i8 %34, ptr %33, align 8
  br label %35

35:                                               ; preds = %30, %14, %7, %4
  %36 = phi i32 [ 0, %4 ], [ %12, %7 ], [ %17, %14 ], [ 0, %30 ]
  %37 = tail call i32 @phy_restore_page(ptr noundef %0, i32 noundef %5, i32 noundef %36) #6
  br label %38

38:                                               ; preds = %35, %1
  %39 = phi i32 [ %37, %35 ], [ %2, %1 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip101a_g_config_intr(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = icmp slt i16 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = tail call i32 @phy_read_paged(ptr noundef %0, i32 noundef 16, i32 noundef 17) #6
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 0) #6
  %8 = icmp sgt i32 %6, -1
  br i1 %8, label %9, label %17

9:                                                ; preds = %5
  %10 = tail call i32 @phy_write_paged(ptr noundef %0, i32 noundef 16, i32 noundef 17, i16 noundef zeroext -32768) #6
  br label %17

11:                                               ; preds = %1
  %12 = tail call i32 @phy_write_paged(ptr noundef %0, i32 noundef 16, i32 noundef 17, i16 noundef zeroext 2048) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = tail call i32 @phy_read_paged(ptr noundef %0, i32 noundef 16, i32 noundef 17) #6
  %16 = tail call i32 @llvm.smin.i32(i32 %15, i32 0) #6
  br label %17

17:                                               ; preds = %14, %11, %9, %5
  %18 = phi i32 [ %7, %5 ], [ %12, %11 ], [ %10, %9 ], [ %16, %14 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip101a_g_handle_interrupt(ptr noundef %0) #2 {
  %2 = tail call i32 @phy_read_paged(ptr noundef %0, i32 noundef 16, i32 noundef 17) #6
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @phy_error(ptr noundef %0) #6
  br label %9

5:                                                ; preds = %1
  %6 = and i32 %2, 7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @phy_trigger_machine(ptr noundef %0) #6
  br label %9

9:                                                ; preds = %8, %5, %4
  %10 = phi i32 [ 0, %4 ], [ 1, %8 ], [ 0, %5 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip101a_match_phy_device(ptr nocapture noundef readonly %0) #2 {
  %2 = tail call fastcc i32 @ip101a_g_match_phy_device(ptr noundef %0, i1 noundef zeroext true)
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ip101a_read_page(ptr nocapture noundef readnone %0) #3 {
  ret i32 16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip101a_write_page(ptr nocapture noundef readnone %0, i32 noundef %1) #2 {
  %3 = icmp ne i32 %1, 16
  %4 = load i1, ptr @ip101a_write_page.__already_done, align 1
  %5 = xor i1 %4, true
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %2
  store i1 true, ptr @ip101a_write_page.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 466, i32 noundef 9, ptr noundef nonnull @.str.8) #6
  br label %8

8:                                                ; preds = %7, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip101g_config_init(ptr noundef %0) #2 {
  %2 = tail call i32 @phy_modify_paged(ptr noundef %0, i32 noundef 1, i32 noundef 17, i16 noundef zeroext 8192, i16 noundef zeroext 8192) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %21

4:                                                ; preds = %1
  %5 = tail call i32 @phy_modify_paged(ptr noundef %0, i32 noundef 8, i32 noundef 17, i16 noundef zeroext -32768, i16 noundef zeroext -32768) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @phy_select_page(ptr noundef %0, i32 noundef 16) #6
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = load i32, ptr %9, align 8
  switch i32 %13, label %18 [
    i32 2, label %15
    i32 1, label %14
  ]

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i16 [ 4, %14 ], [ 0, %12 ]
  %17 = tail call i32 @__phy_modify(ptr noundef %0, i32 noundef 29, i16 noundef zeroext 4, i16 noundef zeroext %16) #6
  br label %18

18:                                               ; preds = %15, %12, %7
  %19 = phi i32 [ 0, %7 ], [ 0, %12 ], [ %17, %15 ]
  %20 = tail call i32 @phy_restore_page(ptr noundef %0, i32 noundef %10, i32 noundef %19) #6
  br label %21

21:                                               ; preds = %18, %4, %1
  %22 = phi i32 [ %20, %18 ], [ %2, %1 ], [ %5, %4 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip101g_match_phy_device(ptr nocapture noundef readonly %0) #2 {
  %2 = tail call fastcc i32 @ip101a_g_match_phy_device(ptr noundef %0, i1 noundef zeroext false)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip101g_read_page(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @__mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 20) #6
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ip101g_write_page(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = trunc i32 %1 to i16
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 20, i16 noundef zeroext %3) #6
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ip101g_get_sset_count(ptr nocapture noundef readnone %0) #3 {
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ip101g_get_strings(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = tail call i32 @strscpy(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef 32) #6
  %4 = getelementptr i8, ptr %1, i32 32
  %5 = tail call i32 @strscpy(ptr noundef %4, ptr noundef nonnull @.str.10, i32 noundef 32) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ip101g_get_stats(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @phy_read_paged(ptr noundef %0, i32 noundef 1, i32 noundef 18) #6
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = zext i32 %6 to i64
  %10 = getelementptr %struct.ip101a_g_phy_priv, ptr %5, i32 0, i32 1, i32 0
  %11 = load i64, ptr %10, align 8
  %12 = add i64 %11, %9
  store i64 %12, ptr %10, align 8
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i64 [ %12, %8 ], [ -1, %3 ]
  store i64 %14, ptr %2, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = tail call i32 @phy_read_paged(ptr noundef %0, i32 noundef 11, i32 noundef 18) #6
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = zext i32 %16 to i64
  %20 = getelementptr %struct.ip101a_g_phy_priv, ptr %15, i32 0, i32 1, i32 1
  %21 = load i64, ptr %20, align 8
  %22 = add i64 %21, %19
  store i64 %22, ptr %20, align 8
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi i64 [ %22, %18 ], [ -1, %13 ]
  %25 = getelementptr i64, ptr %2, i32 1
  store i64 %24, ptr %25, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__genphy_config_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_select_page(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_restore_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_paged(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_paged(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ip101a_g_match_phy_device(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 37948500
  br i1 %5, label %6, label %40

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  %11 = tail call i32 @mdiobus_read(ptr noundef %8, i32 noundef %10, i32 noundef 20) #6
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %40, label %13

13:                                               ; preds = %6
  %14 = load ptr, ptr %7, align 8
  %15 = load i32, ptr %9, align 8
  %16 = tail call i32 @mdiobus_write(ptr noundef %14, i32 noundef %15, i32 noundef 20, i16 noundef zeroext -1) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = load ptr, ptr %7, align 8
  %20 = load i32, ptr %9, align 8
  %21 = tail call i32 @mdiobus_read(ptr noundef %19, i32 noundef %20, i32 noundef 20) #6
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %18
  %24 = trunc i32 %11 to i16
  %25 = load ptr, ptr %7, align 8
  %26 = load i32, ptr %9, align 8
  %27 = tail call i32 @mdiobus_write(ptr noundef %25, i32 noundef %26, i32 noundef 20, i16 noundef zeroext %24) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = icmp eq i32 %21, 31
  %31 = zext i1 %30 to i32
  br label %35

32:                                               ; preds = %23, %13
  %33 = phi i32 [ %16, %13 ], [ %27, %23 ]
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32, %29
  %36 = phi i32 [ %31, %29 ], [ %33, %32 ]
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, %1
  %39 = zext i1 %38 to i32
  br label %40

40:                                               ; preds = %35, %32, %18, %6, %2
  %41 = phi i32 [ %39, %35 ], [ 0, %2 ], [ %33, %32 ], [ %21, %18 ], [ %11, %6 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_paged(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
