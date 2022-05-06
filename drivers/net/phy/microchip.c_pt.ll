; ModuleID = '/llk/IR/drivers/net/phy/microchip.c_pt.bc'
source_filename = "../drivers/net/phy/microchip.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mdio_device_id = type { i32, i32 }
%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lan88xx_priv = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }

@__mod_mdio__microchip_tbl_device_table = dso_local local_unnamed_addr global [2 x %struct.mdio_device_id] [%struct.mdio_device_id { i32 508208, i32 -16 }, %struct.mdio_device_id zeroinitializer], align 4
@__UNIQUE_ID_author273 = internal constant [47 x i8] c"author=WOOJUNG HUH <woojung.huh@microchip.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description274 = internal constant [41 x i8] c"description=Microchip LAN88XX PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license275 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@microchip_phy_driver = internal global [1 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 508208, ptr @.str, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @lan88xx_config_init, ptr @lan88xx_probe, ptr null, ptr @lan88xx_suspend, ptr @genphy_resume, ptr @lan88xx_config_aneg, ptr null, ptr null, ptr @lan88xx_phy_config_intr, ptr @lan88xx_handle_interrupt, ptr @lan88xx_remove, ptr null, ptr @lan88xx_set_wol, ptr null, ptr null, ptr null, ptr null, ptr @lan88xx_read_page, ptr @lan88xx_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [18 x i8] c"Microchip LAN88xx\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to Set Register[0x0F82]\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to Set Register[0x168C]\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to Set Register[0x17A2]\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to Set Register[0x16A0]\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to Set Register[0x16A6]\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Failed to Set Register[0x16A4]\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Failed to Set Register[0x16A8]\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Failed to Set Register[0x0FE8]\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Failed to Set Register[0x0FFC]\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Failed to Set Register[0x0FEA]\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Failed to Set Register[0x1686]\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Failed to get current page\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Failed to write TR low data\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Failed to write TR high data\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"Failed to write data in reg\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"TR Register[0x%X] configuration failed\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"microchip,led-modes\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author273, ptr @__UNIQUE_ID_description274, ptr @__UNIQUE_ID_license275], section "llvm.metadata"
@switch.table.lan88xx_config_aneg = private unnamed_addr constant [3 x i32] [i32 8, i32 12, i32 0], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @phy_drivers_register(ptr noundef nonnull @microchip_phy_driver, i32 noundef 1, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @phy_drivers_unregister(ptr noundef nonnull @microchip_phy_driver, i32 noundef 1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan88xx_config_init(ptr noundef %0) #2 {
  %2 = tail call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 32874) #8
  %3 = trunc i32 %2 to i16
  %4 = or i16 %3, 8192
  %5 = tail call i32 @phy_write_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 32874, i16 noundef zeroext %4) #8
  %6 = tail call fastcc i32 @lan88xx_TR_reg_set(ptr noundef %0, i16 noundef zeroext 3970, i32 noundef 1224714) #8
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.1) #9
  br label %9

9:                                                ; preds = %8, %1
  %10 = tail call fastcc i32 @lan88xx_TR_reg_set(ptr noundef %0, i16 noundef zeroext 5772, i32 noundef 13812847) #8
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.2) #9
  br label %13

13:                                               ; preds = %12, %9
  %14 = tail call fastcc i32 @lan88xx_TR_reg_set(ptr noundef %0, i16 noundef zeroext 6050, i32 noundef 1568) #8
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.3) #9
  br label %17

17:                                               ; preds = %16, %13
  %18 = tail call fastcc i32 @lan88xx_TR_reg_set(ptr noundef %0, i16 noundef zeroext 5792, i32 noundef 15663069) #8
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.4) #9
  br label %21

21:                                               ; preds = %20, %17
  %22 = tail call fastcc i32 @lan88xx_TR_reg_set(ptr noundef %0, i16 noundef zeroext 5798, i32 noundef 463944) #8
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.5) #9
  br label %25

25:                                               ; preds = %24, %21
  %26 = tail call fastcc i32 @lan88xx_TR_reg_set(ptr noundef %0, i16 noundef zeroext 5796, i32 noundef 1250095) #8
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.6) #9
  br label %29

29:                                               ; preds = %28, %25
  %30 = tail call fastcc i32 @lan88xx_TR_reg_set(ptr noundef %0, i16 noundef zeroext 5800, i32 noundef 0) #8
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.7) #9
  br label %33

33:                                               ; preds = %32, %29
  %34 = tail call fastcc i32 @lan88xx_TR_reg_set(ptr noundef %0, i16 noundef zeroext 4072, i32 noundef 9547884) #8
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.8) #9
  br label %37

37:                                               ; preds = %36, %33
  %38 = tail call fastcc i32 @lan88xx_TR_reg_set(ptr noundef %0, i16 noundef zeroext 4092, i32 noundef 12623912) #8
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.9) #9
  br label %41

41:                                               ; preds = %40, %37
  %42 = tail call fastcc i32 @lan88xx_TR_reg_set(ptr noundef %0, i16 noundef zeroext 4074, i32 noundef 267776) #8
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.10) #9
  br label %45

45:                                               ; preds = %44, %41
  %46 = tail call fastcc i32 @lan88xx_TR_reg_set(ptr noundef %0, i16 noundef zeroext 5766, i32 noundef 4) #8
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.11) #9
  br label %49

49:                                               ; preds = %48, %45
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan88xx_probe(ptr noundef %0) #2 {
  %2 = alloca [4 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !8
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 12, i32 noundef 3520) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %53, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.lan88xx_priv, ptr %3, i32 0, i32 2
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.17, ptr noundef nonnull %2, i32 noundef 0, i32 noundef 4) #8
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %46

11:                                               ; preds = %5
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %15, label %18

13:                                               ; preds = %24
  %14 = icmp ult i32 %9, 4
  br i1 %14, label %15, label %38

15:                                               ; preds = %13, %11
  %16 = phi i32 [ 0, %11 ], [ %9, %13 ]
  %17 = phi i32 [ 0, %11 ], [ %27, %13 ]
  br label %30

18:                                               ; preds = %24, %11
  %19 = phi i32 [ %28, %24 ], [ 0, %11 ]
  %20 = phi i32 [ %27, %24 ], [ 0, %11 ]
  %21 = getelementptr [4 x i32], ptr %2, i32 0, i32 %19
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, 15
  br i1 %23, label %53, label %24

24:                                               ; preds = %18
  %25 = shl i32 %19, 2
  %26 = shl i32 %22, %25
  %27 = or i32 %26, %20
  %28 = add nuw nsw i32 %19, 1
  %29 = icmp eq i32 %28, %9
  br i1 %29, label %13, label %18

30:                                               ; preds = %30, %15
  %31 = phi i32 [ %36, %30 ], [ %16, %15 ]
  %32 = phi i32 [ %35, %30 ], [ %17, %15 ]
  %33 = shl nuw nsw i32 %31, 2
  %34 = shl nuw nsw i32 14, %33
  %35 = or i32 %34, %32
  %36 = add i32 %31, 1
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %38, label %30

38:                                               ; preds = %30, %13
  %39 = phi i32 [ %27, %13 ], [ %35, %30 ]
  %40 = trunc i32 %39 to i16
  %41 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %44 = load i32, ptr %43, align 8
  %45 = call i32 @mdiobus_write(ptr noundef %42, i32 noundef %44, i32 noundef 29, i16 noundef zeroext %40) #8
  br label %48

46:                                               ; preds = %5
  %47 = icmp eq i32 %9, -75
  br i1 %47, label %53, label %48

48:                                               ; preds = %46, %38
  %49 = call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 32877) #8
  store i32 %49, ptr %3, align 4
  %50 = call i32 @phy_read_mmd(ptr noundef %0, i32 noundef 3, i32 noundef 32878) #8
  %51 = getelementptr inbounds %struct.lan88xx_priv, ptr %3, i32 0, i32 1
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  store ptr %3, ptr %52, align 8
  br label %53

53:                                               ; preds = %48, %46, %18, %1
  %54 = phi i32 [ 0, %48 ], [ -12, %1 ], [ -22, %46 ], [ -22, %18 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan88xx_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.lan88xx_priv, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 @genphy_suspend(ptr noundef %0) #8
  br label %9

9:                                                ; preds = %7, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan88xx_config_aneg(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 35
  %3 = load i8, ptr %2, align 1
  %4 = add i8 %3, -1
  %5 = icmp ult i8 %4, 3
  br i1 %5, label %6, label %27

6:                                                ; preds = %1
  %7 = sext i8 %4 to i32
  %8 = getelementptr inbounds [3 x i32], ptr @switch.table.lan88xx_config_aneg, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 8
  %14 = tail call i32 @mdiobus_write(ptr noundef %11, i32 noundef %13, i32 noundef 31, i16 noundef zeroext 1) #8
  %15 = load ptr, ptr %10, align 8
  %16 = load i32, ptr %12, align 8
  %17 = tail call i32 @mdiobus_read(ptr noundef %15, i32 noundef %16, i32 noundef 19) #8
  %18 = and i32 %17, 65523
  %19 = or i32 %18, %9
  %20 = trunc i32 %19 to i16
  %21 = load ptr, ptr %10, align 8
  %22 = load i32, ptr %12, align 8
  %23 = tail call i32 @mdiobus_write(ptr noundef %21, i32 noundef %22, i32 noundef 19, i16 noundef zeroext %20) #8
  %24 = load ptr, ptr %10, align 8
  %25 = load i32, ptr %12, align 8
  %26 = tail call i32 @mdiobus_write(ptr noundef %24, i32 noundef %25, i32 noundef 31, i16 noundef zeroext 0) #8
  br label %27

27:                                               ; preds = %6, %1
  %28 = tail call i32 @__genphy_config_aneg(ptr noundef %0, i1 noundef zeroext false) #8
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan88xx_phy_config_intr(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = icmp slt i16 %3, 0
  %5 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  br i1 %4, label %9, label %17

9:                                                ; preds = %1
  %10 = tail call i32 @mdiobus_write(ptr noundef %6, i32 noundef %8, i32 noundef 25, i16 noundef zeroext 32767) #8
  %11 = load ptr, ptr %5, align 8
  %12 = load i32, ptr %7, align 8
  %13 = tail call i32 @mdiobus_read(ptr noundef %11, i32 noundef %12, i32 noundef 26) #8
  %14 = load ptr, ptr %5, align 8
  %15 = load i32, ptr %7, align 8
  %16 = tail call i32 @mdiobus_write(ptr noundef %14, i32 noundef %15, i32 noundef 25, i16 noundef zeroext -24576) #8
  br label %24

17:                                               ; preds = %1
  %18 = tail call i32 @mdiobus_write(ptr noundef %6, i32 noundef %8, i32 noundef 25, i16 noundef zeroext 0) #8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load ptr, ptr %5, align 8
  %22 = load i32, ptr %7, align 8
  %23 = tail call i32 @mdiobus_read(ptr noundef %21, i32 noundef %22, i32 noundef 26) #8
  br label %24

24:                                               ; preds = %20, %9
  %25 = phi i32 [ %16, %9 ], [ %23, %20 ]
  %26 = tail call i32 @llvm.smin.i32(i32 %25, i32 0)
  br label %27

27:                                               ; preds = %24, %17
  %28 = phi i32 [ %26, %24 ], [ %18, %17 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan88xx_handle_interrupt(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 26) #8
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void @phy_error(ptr noundef %0) #8
  br label %13

9:                                                ; preds = %1
  %10 = and i32 %6, 8192
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @phy_trigger_machine(ptr noundef %0) #8
  br label %13

13:                                               ; preds = %12, %9, %8
  %14 = phi i32 [ 0, %8 ], [ 1, %12 ], [ 0, %9 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lan88xx_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @devm_kfree(ptr noundef %0, ptr noundef nonnull %3) #8
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @lan88xx_set_wol(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 22
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.lan88xx_priv, ptr %4, i32 0, i32 2
  store i32 %6, ptr %7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan88xx_read_page(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @__mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 31) #8
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lan88xx_write_page(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = trunc i32 %1 to i16
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 31, i16 noundef zeroext %3) #8
  ret i32 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_mmd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lan88xx_TR_reg_set(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) unnamed_addr #2 {
  %4 = tail call i32 @phy_save_page(ptr noundef %0) #8
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.12) #9
  br label %44

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = tail call i32 @__mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 31, i16 noundef zeroext 21173) #8
  %13 = trunc i32 %2 to i16
  %14 = load ptr, ptr %8, align 8
  %15 = load i32, ptr %10, align 8
  %16 = tail call i32 @__mdiobus_write(ptr noundef %14, i32 noundef %15, i32 noundef 17, i16 noundef zeroext %13) #8
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.13) #9
  br label %44

19:                                               ; preds = %7
  %20 = lshr i32 %2, 16
  %21 = trunc i32 %20 to i16
  %22 = and i16 %21, 255
  %23 = load ptr, ptr %8, align 8
  %24 = load i32, ptr %10, align 8
  %25 = tail call i32 @__mdiobus_write(ptr noundef %23, i32 noundef %24, i32 noundef 18, i16 noundef zeroext %22) #8
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.14) #9
  br label %44

28:                                               ; preds = %19
  %29 = zext i16 %1 to i32
  %30 = and i16 %1, 8191
  %31 = or i16 %30, -32768
  %32 = load ptr, ptr %8, align 8
  %33 = load i32, ptr %10, align 8
  %34 = tail call i32 @__mdiobus_write(ptr noundef %32, i32 noundef %33, i32 noundef 16, i16 noundef zeroext %31) #8
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.15) #9
  br label %44

37:                                               ; preds = %28
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %38 = load ptr, ptr %8, align 8
  %39 = load i32, ptr %10, align 8
  %40 = tail call i32 @__mdiobus_read(ptr noundef %38, i32 noundef %39, i32 noundef 16) #8
  %41 = and i32 %40, 32768
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %29) #9
  br label %44

44:                                               ; preds = %43, %37, %36, %27, %18, %6
  %45 = phi i32 [ 0, %6 ], [ %16, %18 ], [ %25, %27 ], [ %34, %36 ], [ %34, %37 ], [ %34, %43 ]
  %46 = tail call i32 @phy_restore_page(ptr noundef %0, i32 noundef %4, i32 noundef %45) #8
  ret i32 %46
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_save_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_restore_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__genphy_config_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
