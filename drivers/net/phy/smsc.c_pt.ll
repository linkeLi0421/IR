; ModuleID = '/llk/IR/drivers/net/phy/smsc.c_pt.bc'
source_filename = "../drivers/net/phy/smsc.c"
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
%struct.smsc_phy_priv = type { i8, ptr }

@__initcall__kmod_smsc__328_488_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@smsc_phy_driver = internal global [6 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 508064, ptr @.str, i32 -16, ptr null, i32 0, ptr null, ptr @smsc_phy_reset, ptr @smsc_phy_config_init, ptr @smsc_phy_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @smsc_phy_config_intr, ptr @smsc_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 508080, ptr @.str.1, i32 -16, ptr null, i32 0, ptr null, ptr @smsc_phy_reset, ptr @smsc_phy_config_init, ptr @smsc_phy_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @smsc_phy_config_intr, ptr @smsc_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smsc_get_sset_count, ptr @smsc_get_strings, ptr @smsc_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 508096, ptr @.str.2, i32 -16, ptr null, i32 0, ptr null, ptr @smsc_phy_reset, ptr @smsc_phy_config_init, ptr @smsc_phy_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @lan87xx_config_aneg, ptr null, ptr @lan87xx_read_status, ptr @smsc_phy_config_intr, ptr @smsc_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smsc_get_sset_count, ptr @smsc_get_strings, ptr @smsc_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 508112, ptr @.str.3, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @lan911x_config_init, ptr @smsc_phy_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr @smsc_phy_config_intr, ptr @smsc_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 508144, ptr @.str.4, i32 -16, ptr null, i32 0, ptr null, ptr @smsc_phy_reset, ptr @smsc_phy_config_init, ptr @smsc_phy_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @lan95xx_config_aneg_ext, ptr null, ptr @lan87xx_read_status, ptr @smsc_phy_config_intr, ptr @smsc_phy_handle_interrupt, ptr @smsc_phy_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smsc_get_sset_count, ptr @smsc_get_strings, ptr @smsc_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 508176, ptr @.str.5, i32 -16, ptr null, i32 2, ptr null, ptr @smsc_phy_reset, ptr @smsc_phy_config_init, ptr @smsc_phy_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr @lan87xx_read_status, ptr @smsc_phy_config_intr, ptr @smsc_phy_handle_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smsc_get_sset_count, ptr @smsc_get_strings, ptr @smsc_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }], align 4
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description329 = internal constant [33 x i8] c"smsc.description=SMSC PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author330 = internal constant [35 x i8] c"smsc.author=Herbert Valerio Riedel\00", section ".modinfo", align 1
@__UNIQUE_ID_file331 = internal constant [31 x i8] c"smsc.file=drivers/net/phy/smsc\00", section ".modinfo", align 1
@__UNIQUE_ID_license332 = internal constant [17 x i8] c"smsc.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"SMSC LAN83C185\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"SMSC LAN8187\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"SMSC LAN8700\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"SMSC LAN911x Internal PHY\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"SMSC LAN8710/LAN8720\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"SMSC LAN8740\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"smsc,disable-energy-detect\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Failed to request clock\0A\00", align 1
@str = private unnamed_addr constant [33 x i8] c"phy_symbol_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author330, ptr @__UNIQUE_ID_description329, ptr @__UNIQUE_ID_file331, ptr @__UNIQUE_ID_license332, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_smsc__328_488_phy_module_init6, ptr @phy_module_exit], section "llvm.metadata"
@switch.table.lan95xx_config_aneg_ext.9 = private unnamed_addr constant [3 x i32] [i32 32768, i32 40960, i32 16384], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" {
  %1 = tail call i32 @phy_drivers_register(ptr noundef nonnull @smsc_phy_driver, i32 noundef 6, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" {
  tail call void @phy_drivers_unregister(ptr noundef nonnull @smsc_phy_driver, i32 noundef 6) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc_phy_reset(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 18) #7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = and i32 %6, 224
  %10 = icmp eq i32 %9, 192
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = trunc i32 %6 to i16
  %13 = or i16 %12, 224
  %14 = load ptr, ptr %2, align 8
  %15 = load i32, ptr %4, align 8
  %16 = tail call i32 @mdiobus_write(ptr noundef %14, i32 noundef %15, i32 noundef 18, i16 noundef zeroext %13) #7
  br label %17

17:                                               ; preds = %11, %8
  %18 = tail call i32 @genphy_soft_reset(ptr noundef %0) #7
  br label %19

19:                                               ; preds = %17, %1
  %20 = phi i32 [ %18, %17 ], [ %6, %1 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc_phy_config_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 8
  %4 = load i8, ptr %3, align 4, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  %11 = tail call i32 @mdiobus_read(ptr noundef %8, i32 noundef %10, i32 noundef 17) #7
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %6
  %14 = trunc i32 %11 to i16
  %15 = or i16 %14, 8192
  %16 = load ptr, ptr %7, align 8
  %17 = load i32, ptr %9, align 8
  %18 = tail call i32 @mdiobus_write(ptr noundef %16, i32 noundef %17, i32 noundef 17, i16 noundef zeroext %15) #7
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %7, align 8
  %22 = load i32, ptr %9, align 8
  %23 = tail call i32 @mdiobus_read(ptr noundef %21, i32 noundef %22, i32 noundef 29) #7
  %24 = tail call i32 @llvm.smin.i32(i32 %23, i32 0) #7
  br label %25

25:                                               ; preds = %20, %13, %6, %1
  %26 = phi i32 [ %24, %20 ], [ 0, %1 ], [ %11, %6 ], [ %18, %13 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc_phy_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 8, i32 noundef 3520) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %1
  store i8 1, ptr %4, align 4
  %7 = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef null) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  store i8 0, ptr %4, align 4
  br label %10

10:                                               ; preds = %9, %6
  %11 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  store ptr %4, ptr %11, align 8
  %12 = tail call ptr @clk_get(ptr noundef %0, ptr noundef null) #7
  %13 = icmp eq ptr %12, inttoptr (i32 -2 to ptr)
  %14 = select i1 %13, ptr null, ptr %12
  %15 = getelementptr inbounds %struct.smsc_phy_priv, ptr %4, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = ptrtoint ptr %14 to i32
  %19 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %0, i32 noundef %18, ptr noundef nonnull @.str.7) #7
  br label %33

20:                                               ; preds = %10
  %21 = tail call i32 @clk_prepare(ptr noundef %14) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = tail call i32 @clk_enable(ptr noundef %14) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @clk_unprepare(ptr noundef %14) #7
  br label %33

27:                                               ; preds = %23
  %28 = load ptr, ptr %15, align 4
  %29 = tail call i32 @clk_set_rate(ptr noundef %28, i32 noundef 50000000) #7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %32) #7
  tail call void @clk_unprepare(ptr noundef %32) #7
  br label %33

33:                                               ; preds = %31, %27, %26, %20, %17, %1
  %34 = phi i32 [ %19, %17 ], [ %29, %31 ], [ -12, %1 ], [ 0, %27 ], [ %24, %26 ], [ %21, %20 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc_phy_config_intr(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %5 = load i16, ptr %4, align 8
  %6 = icmp slt i16 %5, 0
  %7 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  br i1 %6, label %11, label %22

11:                                               ; preds = %1
  %12 = tail call i32 @mdiobus_read(ptr noundef %8, i32 noundef %10, i32 noundef 29) #7
  %13 = tail call i32 @llvm.smin.i32(i32 %12, i32 0) #7
  %14 = icmp sgt i32 %12, -1
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = load i8, ptr %3, align 4, !range !8
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, i16 80, i16 208
  %19 = load ptr, ptr %7, align 8
  %20 = load i32, ptr %9, align 8
  %21 = tail call i32 @mdiobus_write(ptr noundef %19, i32 noundef %20, i32 noundef 30, i16 noundef zeroext %18) #7
  br label %30

22:                                               ; preds = %1
  %23 = tail call i32 @mdiobus_write(ptr noundef %8, i32 noundef %10, i32 noundef 30, i16 noundef zeroext 0) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load ptr, ptr %7, align 8
  %27 = load i32, ptr %9, align 8
  %28 = tail call i32 @mdiobus_read(ptr noundef %26, i32 noundef %27, i32 noundef 29) #7
  %29 = tail call i32 @llvm.smin.i32(i32 %28, i32 0) #7
  br label %30

30:                                               ; preds = %25, %15
  %31 = phi i32 [ %21, %15 ], [ %29, %25 ]
  %32 = tail call i32 @llvm.smin.i32(i32 %31, i32 0)
  br label %33

33:                                               ; preds = %30, %22, %11
  %34 = phi i32 [ %32, %30 ], [ %13, %11 ], [ %23, %22 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @smsc_phy_handle_interrupt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 30) #7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @phy_error(ptr noundef %0) #7
  br label %19

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8
  %11 = load i32, ptr %4, align 8
  %12 = tail call i32 @mdiobus_read(ptr noundef %10, i32 noundef %11, i32 noundef 29) #7
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @smsc_get_sset_count(ptr nocapture noundef readnone %0) #3 {
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @smsc_get_strings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #4 {
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(32) @str, i32 noundef 32, i1 false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @smsc_get_stats(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 26) #7
  %9 = tail call i32 @llvm.smax.i32(i32 %8, i32 -1) #7
  %10 = sext i32 %9 to i64
  store i64 %10, ptr %2, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan87xx_config_aneg(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 35
  %3 = load i8, ptr %2, align 1
  %4 = add i8 %3, -1
  %5 = icmp ult i8 %4, 3
  br i1 %5, label %6, label %25

6:                                                ; preds = %1
  %7 = sext i8 %4 to i32
  %8 = getelementptr inbounds [3 x i32], ptr @switch.table.lan95xx_config_aneg_ext.9, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 8
  %14 = tail call i32 @mdiobus_read(ptr noundef %11, i32 noundef %13, i32 noundef 27) #7
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %6
  %17 = and i32 %14, 8191
  %18 = or i32 %17, %9
  %19 = trunc i32 %18 to i16
  %20 = load ptr, ptr %10, align 8
  %21 = load i32, ptr %12, align 8
  %22 = tail call i32 @mdiobus_write(ptr noundef %20, i32 noundef %21, i32 noundef 27, i16 noundef zeroext %19) #7
  %23 = load i8, ptr %2, align 1
  %24 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 34
  store i8 %23, ptr %24, align 8
  br label %25

25:                                               ; preds = %16, %1
  %26 = tail call i32 @__genphy_config_aneg(ptr noundef %0, i1 noundef zeroext false) #7
  br label %27

27:                                               ; preds = %25, %6
  %28 = phi i32 [ %14, %6 ], [ %26, %25 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan87xx_read_status(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @genphy_read_status(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %6 = load i16, ptr %5, align 8
  %7 = and i16 %6, 8192
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %62

9:                                                ; preds = %1
  %10 = load i8, ptr %3, align 4, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %62, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %16 = load i32, ptr %15, align 8
  %17 = tail call i32 @mdiobus_read(ptr noundef %14, i32 noundef %16, i32 noundef 17) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %63, label %19

19:                                               ; preds = %12
  %20 = trunc i32 %17 to i16
  %21 = and i16 %20, -8193
  %22 = load ptr, ptr %13, align 8
  %23 = load i32, ptr %15, align 8
  %24 = tail call i32 @mdiobus_write(ptr noundef %22, i32 noundef %23, i32 noundef 17, i16 noundef zeroext %21) #7
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %63, label %26

26:                                               ; preds = %19
  %27 = tail call i64 @ktime_get() #7
  %28 = add i64 %27, 640000000
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #7
  %29 = load ptr, ptr %13, align 8
  %30 = load i32, ptr %15, align 8
  %31 = tail call i32 @mdiobus_read(ptr noundef %29, i32 noundef %30, i32 noundef 17) #7
  %32 = and i32 %31, -2147483646
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %41, %26
  %35 = tail call i64 @ktime_get() #7
  %36 = icmp sgt i64 %35, %28
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load ptr, ptr %13, align 8
  %39 = load i32, ptr %15, align 8
  %40 = tail call i32 @mdiobus_read(ptr noundef %38, i32 noundef %39, i32 noundef 17) #7
  br label %47

41:                                               ; preds = %34
  tail call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #7
  %42 = load ptr, ptr %13, align 8
  %43 = load i32, ptr %15, align 8
  %44 = tail call i32 @mdiobus_read(ptr noundef %42, i32 noundef %43, i32 noundef 17) #7
  %45 = and i32 %44, -2147483646
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %34, label %47

47:                                               ; preds = %41, %37, %26
  %48 = phi i32 [ %40, %37 ], [ %31, %26 ], [ %44, %41 ]
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %13, align 8
  %52 = load i32, ptr %15, align 8
  %53 = tail call i32 @mdiobus_read(ptr noundef %51, i32 noundef %52, i32 noundef 17) #7
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %50
  %56 = trunc i32 %53 to i16
  %57 = or i16 %56, 8192
  %58 = load ptr, ptr %13, align 8
  %59 = load i32, ptr %15, align 8
  %60 = tail call i32 @mdiobus_write(ptr noundef %58, i32 noundef %59, i32 noundef 17, i16 noundef zeroext %57) #7
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %55, %9, %1
  br label %63

63:                                               ; preds = %62, %55, %50, %47, %19, %12
  %64 = phi i32 [ %4, %62 ], [ %60, %55 ], [ %53, %50 ], [ %48, %47 ], [ %24, %19 ], [ %17, %12 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan911x_config_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 29) #7
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 0) #7
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan95xx_config_aneg_ext(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 508144
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 35
  %7 = load i8, ptr %6, align 1
  %8 = add i8 %7, -1
  %9 = icmp ult i8 %8, 3
  br i1 %9, label %10, label %59

10:                                               ; preds = %5
  %11 = sext i8 %8 to i32
  %12 = getelementptr inbounds [3 x i32], ptr @switch.table.lan95xx_config_aneg_ext.9, i32 0, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %17 = load i32, ptr %16, align 8
  %18 = tail call i32 @mdiobus_read(ptr noundef %15, i32 noundef %17, i32 noundef 27) #7
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %61, label %45

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %24 = load i32, ptr %23, align 8
  %25 = tail call i32 @mdiobus_read(ptr noundef %22, i32 noundef %24, i32 noundef 16) #7
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %61, label %27

27:                                               ; preds = %20
  %28 = trunc i32 %25 to i16
  %29 = or i16 %28, 1
  %30 = load ptr, ptr %21, align 8
  %31 = load i32, ptr %23, align 8
  %32 = tail call i32 @mdiobus_write(ptr noundef %30, i32 noundef %31, i32 noundef 16, i16 noundef zeroext %29) #7
  %33 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 35
  %34 = load i8, ptr %33, align 1
  %35 = add i8 %34, -1
  %36 = icmp ult i8 %35, 3
  br i1 %36, label %37, label %59

37:                                               ; preds = %27
  %38 = sext i8 %35 to i32
  %39 = getelementptr inbounds [3 x i32], ptr @switch.table.lan95xx_config_aneg_ext.9, i32 0, i32 %38
  %40 = load i32, ptr %39, align 4
  %41 = load ptr, ptr %21, align 8
  %42 = load i32, ptr %23, align 8
  %43 = tail call i32 @mdiobus_read(ptr noundef %41, i32 noundef %42, i32 noundef 27) #7
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %61, label %45

45:                                               ; preds = %37, %10
  %46 = phi i32 [ %18, %10 ], [ %43, %37 ]
  %47 = phi i32 [ %13, %10 ], [ %40, %37 ]
  %48 = phi ptr [ %14, %10 ], [ %21, %37 ]
  %49 = phi ptr [ %16, %10 ], [ %23, %37 ]
  %50 = phi ptr [ %6, %10 ], [ %33, %37 ]
  %51 = and i32 %46, 8191
  %52 = or i32 %51, %47
  %53 = trunc i32 %52 to i16
  %54 = load ptr, ptr %48, align 8
  %55 = load i32, ptr %49, align 8
  %56 = tail call i32 @mdiobus_write(ptr noundef %54, i32 noundef %55, i32 noundef 27, i16 noundef zeroext %53) #7
  %57 = load i8, ptr %50, align 1
  %58 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 34
  store i8 %57, ptr %58, align 8
  br label %59

59:                                               ; preds = %45, %27, %5
  %60 = tail call i32 @__genphy_config_aneg(ptr noundef %0, i1 noundef zeroext false) #7
  br label %61

61:                                               ; preds = %59, %37, %20, %10
  %62 = phi i32 [ %25, %20 ], [ %18, %10 ], [ %43, %37 ], [ %60, %59 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @smsc_phy_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.smsc_phy_priv, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  %6 = load ptr, ptr %4, align 4
  tail call void @clk_put(ptr noundef %6) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_soft_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__genphy_config_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

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
