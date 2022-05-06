; ModuleID = '/llk/IR/drivers/usb/dwc2/platform.c_pt.bc'
source_filename = "../drivers/usb/dwc2/platform.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dwc2_hsotg = type { ptr, ptr, %struct.dwc2_hw_params, %struct.dwc2_core_params, i32, i32, ptr, i32, i8, i8, i8, i16, ptr, ptr, ptr, [2 x %struct.regulator_bulk_data], ptr, ptr, %struct.spinlock, ptr, i32, ptr, ptr, ptr, i8, ptr, %struct.work_struct, %struct.timer_list, i32, %struct.dwc2_gregs_backup, %struct.dwc2_dregs_backup, %struct.dwc2_hregs_backup, ptr, ptr, i8, %union.dwc2_hcd_internal_flags, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i16, [25 x i32], i16, i8, i16, %struct.list_head, i32, i32, i32, [16 x ptr], ptr, i32, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, i8, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i8, i8, i32, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i32], [2 x ptr], i32, ptr, i32, ptr, %struct.usb_gadget, i8, [16 x ptr], [16 x ptr] }
%struct.dwc2_hw_params = type <{ i24, i64, i32, i32, i32, i32, i32, [16 x i32] }>
%struct.dwc2_core_params = type { %struct.usb_otg_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i8, i8, i32, i32, [16 x i32], i8 }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.dwc2_gregs_backup = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.dwc2_dregs_backup = type { i32, i32, i32, i32, i32, [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], i8 }
%struct.dwc2_hregs_backup = type { i32, i32, [16 x i32], i32, i32, i32, i8 }
%union.dwc2_hcd_internal_flags = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
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
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.dwc2_hsotg_plat = type { i32, i8, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = private unnamed_addr constant [31 x i8] c"Bad value for GSNPSID: 0x%08x\0A\00", align 1
@__initcall__kmod_dwc2__254_762_dwc2_platform_driver_init6 = internal global ptr @dwc2_platform_driver_init, section ".initcall6.init", align 4
@dwc2_platform_driver = internal global %struct.platform_driver { ptr @dwc2_driver_probe, ptr @dwc2_driver_remove, ptr @dwc2_driver_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.10, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dwc2_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwc2_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_dwc2_platform_driver_exit = internal global ptr @dwc2_platform_driver_exit, section ".exitcall.exit", align 4
@dwc2_of_match_table = external dso_local constant [0 x %struct.of_device_id], align 4
@dwc2_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @dwc2_suspend, ptr @dwc2_resume, ptr @dwc2_suspend, ptr @dwc2_resume, ptr @dwc2_suspend, ptr @dwc2_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"can't set coherent DMA mask: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"snps,need-phy-for-wake\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"usb33d\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to request usb33d supply\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"failed to enable usb33d supply\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"failed to initialize dual-role\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"snps,reset-phy-on-wake\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"Quirk reset-phy-on-wake only supports generic PHYs\0A\00", align 1
@.str.10 = private constant [5 x i8] c"dwc2\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"error getting reset control\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"dwc2-ecc\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"error getting reset control for ecc\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"usb2-phy\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"error getting phy\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"error getting usb phy\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"otg\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"cannot get otg clock\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"failed to request supplies\0A\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"vusb_d\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"vusb_a\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"Configuration mismatch. dr_mode forced to %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"exit hibernation failed.\0A\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"exit partial_power_down failed\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__exitcall_dwc2_platform_driver_exit, ptr @__initcall__kmod_dwc2__254_762_dwc2_platform_driver_init6, ptr @dwc2_platform_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_lowlevel_hw_enable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @__dwc2_lowlevel_hw_enable(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 8
  %6 = load i8, ptr %5, align 8
  %7 = or i8 %6, 4
  store i8 %7, ptr %5, align 8
  br label %8

8:                                                ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__dwc2_lowlevel_hw_enable(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 -16
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 15
  %5 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %4) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %53

7:                                                ; preds = %1
  %8 = tail call i32 @devm_add_action(ptr noundef %2, ptr noundef nonnull @__dwc2_disable_regulators, ptr noundef %0) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %4) #7
  br label %53

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 21
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @clk_prepare(ptr noundef nonnull %14) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %16
  %20 = tail call i32 @clk_enable(ptr noundef nonnull %14) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @clk_unprepare(ptr noundef nonnull %14) #7
  br label %53

23:                                               ; preds = %19, %12
  %24 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 13
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.usb_phy, ptr %25, i32 0, i32 22
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %53, label %31

31:                                               ; preds = %27
  %32 = tail call i32 %29(ptr noundef nonnull %25) #7
  br label %53

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 14
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.dwc2_hsotg_plat, ptr %35, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.dwc2_hsotg_plat, ptr %35, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = tail call i32 %39(ptr noundef %3, i32 noundef %43) #7
  br label %53

45:                                               ; preds = %37, %33
  %46 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 12
  %47 = load ptr, ptr %46, align 8
  %48 = tail call i32 @phy_power_on(ptr noundef %47) #7
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load ptr, ptr %46, align 8
  %52 = tail call i32 @phy_init(ptr noundef %51) #7
  br label %53

53:                                               ; preds = %50, %45, %41, %31, %27, %22, %16, %10, %1
  %54 = phi i32 [ %5, %1 ], [ %8, %10 ], [ %44, %41 ], [ %52, %50 ], [ %48, %45 ], [ %32, %31 ], [ 0, %27 ], [ %20, %22 ], [ %17, %16 ]
  ret i32 %54
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_lowlevel_hw_disable(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @__dwc2_lowlevel_hw_disable(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 8
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, -5
  store i8 %7, ptr %5, align 8
  br label %8

8:                                                ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__dwc2_lowlevel_hw_disable(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %2, i32 -16
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.usb_phy, ptr %5, i32 0, i32 23
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %35, label %11

11:                                               ; preds = %7
  tail call void %9(ptr noundef nonnull %5) #7
  br label %35

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 14
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.dwc2_hsotg_plat, ptr %14, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.dwc2_hsotg_plat, ptr %14, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 %18(ptr noundef %3, i32 noundef %22) #7
  br label %32

24:                                               ; preds = %16, %12
  %25 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 12
  %26 = load ptr, ptr %25, align 8
  %27 = tail call i32 @phy_exit(ptr noundef %26) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load ptr, ptr %25, align 8
  %31 = tail call i32 @phy_power_off(ptr noundef %30) #7
  br label %32

32:                                               ; preds = %29, %20
  %33 = phi i32 [ %23, %20 ], [ %31, %29 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32, %11, %7
  %36 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 21
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void @clk_disable(ptr noundef nonnull %37) #7
  tail call void @clk_unprepare(ptr noundef nonnull %37) #7
  br label %40

40:                                               ; preds = %39, %35, %32, %24
  %41 = phi i32 [ %33, %32 ], [ 0, %39 ], [ 0, %35 ], [ %27, %24 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dwc2_check_core_version(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 64
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %6 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %7 = load i8, ptr %6, align 8, !range !10
  %8 = icmp eq i8 %7, 0
  %9 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  %10 = select i1 %8, i32 %5, i32 %9
  %11 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 2, i32 5
  store i32 %10, ptr %11, align 4
  %12 = and i32 %10, -65536
  switch i32 %12, label %13 [
    i32 1330905088, label %15
    i32 1429274624, label %15
    i32 1429340160, label %15
  ]

13:                                               ; preds = %1
  %14 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str, i32 noundef %10) #8
  br label %15

15:                                               ; preds = %13, %1, %1, %1
  %16 = phi i32 [ -19, %13 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ]
  ret i32 %16
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dwc2_platform_driver_init() #3 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @dwc2_platform_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @dwc2_platform_driver_exit() #3 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @dwc2_platform_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__dwc2_disable_regulators(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 15
  %3 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc2_driver_probe(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store ptr null, ptr %2, align 4, !annotation !11
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 2200, i32 noundef 3520) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %281, label %6

6:                                                ; preds = %1
  store ptr %3, ptr %4, align 8
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 17
  store ptr %11, ptr %7, align 4
  br label %12

12:                                               ; preds = %10, %6
  %13 = tail call i32 @dma_set_coherent_mask(ptr noundef %3, i64 noundef 4294967295) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %13) #8
  br label %281

16:                                               ; preds = %12
  %17 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #7
  %18 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = ptrtoint ptr %17 to i32
  br label %281

22:                                               ; preds = %16
  %23 = load ptr, ptr %4, align 8
  %24 = call ptr @__devm_reset_control_get(ptr noundef %23, ptr noundef nonnull @.str.10, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #7
  %25 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 22
  store ptr %24, ptr %25, align 4
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load ptr, ptr %4, align 8
  %29 = ptrtoint ptr %24 to i32
  %30 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %28, i32 noundef %29, ptr noundef nonnull @.str.11) #7
  br label %87

31:                                               ; preds = %22
  %32 = call i32 @reset_control_deassert(ptr noundef %24) #7
  %33 = load ptr, ptr %4, align 8
  %34 = call ptr @__devm_reset_control_get(ptr noundef %33, ptr noundef nonnull @.str.12, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #7
  %35 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 23
  store ptr %34, ptr %35, align 8
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load ptr, ptr %4, align 8
  %39 = ptrtoint ptr %34 to i32
  %40 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %38, i32 noundef %39, ptr noundef nonnull @.str.13) #7
  br label %87

41:                                               ; preds = %31
  %42 = call i32 @reset_control_deassert(ptr noundef %34) #7
  %43 = load ptr, ptr %4, align 8
  %44 = call ptr @devm_phy_get(ptr noundef %43, ptr noundef nonnull @.str.14) #7
  %45 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 12
  store ptr %44, ptr %45, align 8
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = ptrtoint ptr %44 to i32
  switch i32 %48, label %50 [
    i32 -19, label %49
    i32 -38, label %49
  ]

49:                                               ; preds = %47, %47
  store ptr null, ptr %45, align 8
  br label %55

50:                                               ; preds = %47
  %51 = load ptr, ptr %4, align 8
  %52 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %51, i32 noundef %48, ptr noundef nonnull @.str.15) #7
  br label %87

53:                                               ; preds = %41
  %54 = icmp eq ptr %44, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %53, %49
  %56 = load ptr, ptr %4, align 8
  %57 = call ptr @devm_usb_get_phy(ptr noundef %56, i32 noundef 1) #7
  %58 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 13
  store ptr %57, ptr %58, align 4
  %59 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = ptrtoint ptr %57 to i32
  switch i32 %61, label %63 [
    i32 -19, label %62
    i32 -6, label %62
  ]

62:                                               ; preds = %60, %60
  store ptr null, ptr %58, align 4
  br label %66

63:                                               ; preds = %60
  %64 = load ptr, ptr %4, align 8
  %65 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %64, i32 noundef %61, ptr noundef nonnull @.str.16) #7
  br label %87

66:                                               ; preds = %62, %55, %53
  %67 = load ptr, ptr %4, align 8
  %68 = getelementptr inbounds %struct.device, ptr %67, i32 0, i32 7
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 14
  store ptr %69, ptr %70, align 8
  %71 = call ptr @devm_clk_get_optional(ptr noundef %67, ptr noundef nonnull @.str.17) #7
  %72 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 21
  store ptr %71, ptr %72, align 8
  %73 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %73, label %80, label %74

74:                                               ; preds = %66
  %75 = getelementptr %struct.dwc2_hsotg, ptr %4, i32 0, i32 15, i32 0
  store ptr @.str.20, ptr %75, align 4
  %76 = getelementptr %struct.dwc2_hsotg, ptr %4, i32 0, i32 15, i32 1
  store ptr @.str.21, ptr %76, align 4
  %77 = load ptr, ptr %4, align 8
  %78 = call i32 @devm_regulator_bulk_get(ptr noundef %77, i32 noundef 2, ptr noundef %75) #7
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %90, label %84

80:                                               ; preds = %66
  %81 = load ptr, ptr %4, align 8
  %82 = ptrtoint ptr %71 to i32
  %83 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %81, i32 noundef %82, ptr noundef nonnull @.str.18) #7
  br label %87

84:                                               ; preds = %74
  %85 = load ptr, ptr %4, align 8
  %86 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %85, i32 noundef %78, ptr noundef nonnull @.str.19) #7
  br label %87

87:                                               ; preds = %84, %80, %63, %50, %37, %27
  %88 = phi i32 [ %30, %27 ], [ %40, %37 ], [ %52, %50 ], [ %83, %80 ], [ %86, %84 ], [ %65, %63 ]
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %281

90:                                               ; preds = %87, %74
  %91 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 18
  store i32 0, ptr %91, align 4
  %92 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %93 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 20
  store i32 %92, ptr %93, align 4
  %94 = icmp slt i32 %92, 0
  br i1 %94, label %281, label %95

95:                                               ; preds = %90
  %96 = load ptr, ptr %4, align 8
  %97 = getelementptr inbounds %struct.device, ptr %96, i32 0, i32 3
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load ptr, ptr %96, align 4
  br label %102

102:                                              ; preds = %100, %95
  %103 = phi ptr [ %101, %100 ], [ %98, %95 ]
  %104 = call i32 @devm_request_threaded_irq(ptr noundef %96, i32 noundef %92, ptr noundef nonnull @dwc2_handle_common_intr, ptr noundef null, i32 noundef 128, ptr noundef %103, ptr noundef nonnull %4) #7
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %281

106:                                              ; preds = %102
  %107 = load ptr, ptr %4, align 8
  %108 = call ptr @devm_regulator_get_optional(ptr noundef %107, ptr noundef nonnull @.str.2) #7
  %109 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 16
  store ptr %108, ptr %109, align 4
  %110 = icmp ugt ptr %108, inttoptr (i32 -4096 to ptr)
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = ptrtoint ptr %108 to i32
  store ptr null, ptr %109, align 4
  %113 = icmp eq ptr %108, inttoptr (i32 -19 to ptr)
  br i1 %113, label %114, label %281

114:                                              ; preds = %111, %106
  %115 = call fastcc i32 @__dwc2_lowlevel_hw_enable(ptr noundef nonnull %4) #7
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %281

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 8
  %119 = load i8, ptr %118, align 8
  %120 = or i8 %119, 4
  store i8 %120, ptr %118, align 8
  %121 = load ptr, ptr %18, align 4
  %122 = getelementptr i8, ptr %121, i32 64
  %123 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #7, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %124 = and i32 %123, -65536
  switch i32 %124, label %125 [
    i32 1330905088, label %126
    i32 1429274624, label %126
    i32 1429340160, label %126
  ]

125:                                              ; preds = %117
  br label %126

126:                                              ; preds = %125, %117, %117, %117
  %127 = phi i1 [ true, %125 ], [ false, %117 ], [ false, %117 ], [ false, %117 ]
  %128 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 34
  %129 = zext i1 %127 to i8
  store i8 %129, ptr %128, align 8
  call fastcc void @dwc2_get_dr_mode(ptr noundef nonnull %4)
  %130 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %131 = load ptr, ptr %130, align 8
  %132 = call ptr @of_find_property(ptr noundef %131, ptr noundef nonnull @.str.3, ptr noundef null) #7
  %133 = icmp eq ptr %132, null
  %134 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 10
  %135 = load i8, ptr %134, align 2
  %136 = select i1 %133, i8 0, i8 2
  %137 = and i8 %135, -3
  %138 = or i8 %137, %136
  store i8 %138, ptr %134, align 2
  %139 = call i32 @dwc2_check_core_version(ptr noundef nonnull %4)
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %270

141:                                              ; preds = %126
  %142 = call i32 @dwc2_core_reset(ptr noundef nonnull %4, i1 noundef zeroext false) #7
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %270

144:                                              ; preds = %141
  %145 = call i32 @dwc2_get_hwparams(ptr noundef nonnull %4) #7
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %270

147:                                              ; preds = %144
  call void @dwc2_force_dr_mode(ptr noundef nonnull %4) #7
  %148 = call i32 @dwc2_init_params(ptr noundef nonnull %4) #7
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %270

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 3, i32 24
  %152 = load i8, ptr %151, align 8, !range !10
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %178, label %154

154:                                              ; preds = %150
  %155 = load ptr, ptr %4, align 8
  %156 = call ptr @devm_regulator_get(ptr noundef %155, ptr noundef nonnull @.str.4) #7
  %157 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 17
  store ptr %156, ptr %157, align 8
  %158 = icmp ugt ptr %156, inttoptr (i32 -4096 to ptr)
  br i1 %158, label %159, label %163

159:                                              ; preds = %154
  %160 = ptrtoint ptr %156 to i32
  %161 = load ptr, ptr %4, align 8
  %162 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %161, i32 noundef %160, ptr noundef nonnull @.str.5) #7
  br label %270

163:                                              ; preds = %154
  %164 = call i32 @regulator_enable(ptr noundef %156) #7
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  %167 = load ptr, ptr %4, align 8
  %168 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %167, i32 noundef %164, ptr noundef nonnull @.str.6) #7
  br label %270

169:                                              ; preds = %163
  %170 = load ptr, ptr %18, align 4
  %171 = getelementptr i8, ptr %170, i32 56
  %172 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %171) #7, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %173 = load i8, ptr %128, align 8, !range !10
  %174 = icmp eq i8 %173, 0
  %175 = call i32 @llvm.bswap.i32(i32 %172) #7
  %176 = select i1 %174, i32 %172, i32 %175
  %177 = or i32 %176, 6291456
  call fastcc void @dwc2_writel(ptr noundef nonnull %4, i32 noundef %177, i32 noundef 56)
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 7000, i32 noundef 2) #7
  br label %178

178:                                              ; preds = %169, %150
  %179 = call i32 @dwc2_drd_init(ptr noundef nonnull %4) #7
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %178
  %182 = load ptr, ptr %4, align 8
  %183 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %182, i32 noundef %179, ptr noundef nonnull @.str.7) #7
  br label %262

184:                                              ; preds = %178
  %185 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 5
  %186 = load i32, ptr %185, align 4
  %187 = icmp eq i32 %186, 1
  br i1 %187, label %194, label %188

188:                                              ; preds = %184
  %189 = call i32 @dwc2_gadget_init(ptr noundef nonnull %4) #7
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %260

191:                                              ; preds = %188
  %192 = load i8, ptr %118, align 8
  %193 = or i8 %192, 2
  store i8 %193, ptr %118, align 8
  br label %194

194:                                              ; preds = %191, %184
  %195 = load i8, ptr %134, align 2
  %196 = and i8 %195, 2
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %194
  call void @device_set_wakeup_capable(ptr noundef %3, i1 noundef zeroext true) #7
  br label %199

199:                                              ; preds = %198, %194
  %200 = load ptr, ptr %130, align 8
  %201 = call ptr @of_find_property(ptr noundef %200, ptr noundef nonnull @.str.8, ptr noundef null) #7
  %202 = icmp ne ptr %201, null
  %203 = zext i1 %202 to i8
  %204 = load i8, ptr %134, align 2
  %205 = and i8 %204, -2
  %206 = or i8 %205, %203
  store i8 %206, ptr %134, align 2
  br i1 %202, label %207, label %215

207:                                              ; preds = %199
  %208 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 12
  %209 = load ptr, ptr %208, align 8
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %215

211:                                              ; preds = %207
  %212 = load ptr, ptr %4, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %212, ptr noundef nonnull @.str.9) #8
  %213 = load i8, ptr %134, align 2
  %214 = and i8 %213, -2
  store i8 %214, ptr %134, align 2
  br label %215

215:                                              ; preds = %211, %207, %199
  %216 = load i32, ptr %185, align 4
  %217 = icmp eq i32 %216, 2
  br i1 %217, label %218, label %220

218:                                              ; preds = %215
  %219 = load i8, ptr %118, align 8
  br label %231

220:                                              ; preds = %215
  %221 = call i32 @dwc2_hcd_init(ptr noundef nonnull %4) #7
  %222 = icmp eq i32 %221, 0
  %223 = load i8, ptr %118, align 8
  br i1 %222, label %229, label %224

224:                                              ; preds = %220
  %225 = and i8 %223, 2
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %260, label %227

227:                                              ; preds = %224
  %228 = call i32 @dwc2_hsotg_remove(ptr noundef nonnull %4) #7
  br label %260

229:                                              ; preds = %220
  %230 = or i8 %223, 1
  br label %231

231:                                              ; preds = %229, %218
  %232 = phi i8 [ %219, %218 ], [ %230, %229 ]
  %233 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %233, align 8
  %234 = and i8 %232, -9
  store i8 %234, ptr %118, align 8
  %235 = call i32 @dwc2_debugfs_init(ptr noundef nonnull %4) #7
  %236 = load i32, ptr %185, align 4
  %237 = icmp eq i32 %236, 2
  br i1 %237, label %238, label %244

238:                                              ; preds = %231
  %239 = call fastcc i32 @__dwc2_lowlevel_hw_disable(ptr noundef nonnull %4) #7
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %238
  %242 = load i8, ptr %118, align 8
  %243 = and i8 %242, -5
  store i8 %243, ptr %118, align 8
  br label %244

244:                                              ; preds = %241, %238, %231
  %245 = load i8, ptr %118, align 8
  %246 = and i8 %245, 2
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %281, label %248

248:                                              ; preds = %244
  %249 = load ptr, ptr %4, align 8
  %250 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 85
  %251 = call i32 @usb_add_gadget_udc(ptr noundef %249, ptr noundef %250) #7
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %281, label %253

253:                                              ; preds = %248
  %254 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 85, i32 1
  store ptr null, ptr %254, align 8
  %255 = call i32 @dwc2_hsotg_remove(ptr noundef nonnull %4) #7
  call void @dwc2_debugfs_exit(ptr noundef nonnull %4) #7
  %256 = load i8, ptr %118, align 8
  %257 = and i8 %256, 1
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %260, label %259

259:                                              ; preds = %253
  call void @dwc2_hcd_remove(ptr noundef nonnull %4) #7
  br label %260

260:                                              ; preds = %259, %253, %227, %224, %188
  %261 = phi i32 [ %189, %188 ], [ %221, %227 ], [ %221, %224 ], [ %251, %259 ], [ %251, %253 ]
  call void @dwc2_drd_exit(ptr noundef nonnull %4) #7
  br label %262

262:                                              ; preds = %260, %181
  %263 = phi i32 [ %179, %181 ], [ %261, %260 ]
  %264 = load i8, ptr %151, align 8, !range !10
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %270, label %266

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 17
  %268 = load ptr, ptr %267, align 8
  %269 = call i32 @regulator_disable(ptr noundef %268) #7
  br label %270

270:                                              ; preds = %266, %262, %166, %159, %147, %144, %141, %126
  %271 = phi i32 [ %139, %126 ], [ %142, %141 ], [ %145, %144 ], [ %148, %147 ], [ %263, %266 ], [ %263, %262 ], [ %164, %166 ], [ %160, %159 ]
  %272 = getelementptr inbounds %struct.dwc2_hsotg, ptr %4, i32 0, i32 5
  %273 = load i32, ptr %272, align 4
  %274 = icmp eq i32 %273, 2
  br i1 %274, label %281, label %275

275:                                              ; preds = %270
  %276 = call fastcc i32 @__dwc2_lowlevel_hw_disable(ptr noundef nonnull %4) #7
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %275
  %279 = load i8, ptr %118, align 8
  %280 = and i8 %279, -5
  store i8 %280, ptr %118, align 8
  br label %281

281:                                              ; preds = %278, %275, %270, %248, %244, %114, %111, %102, %90, %87, %20, %15, %1
  %282 = phi i32 [ %13, %15 ], [ %21, %20 ], [ -12, %1 ], [ %88, %87 ], [ %92, %90 ], [ %104, %102 ], [ %112, %111 ], [ 0, %248 ], [ 0, %244 ], [ %271, %270 ], [ %115, %114 ], [ %271, %275 ], [ %271, %278 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %282
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc2_driver_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 8
  %5 = load i8, ptr %4, align 8
  %6 = and i8 %5, 8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 29
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 21
  %12 = and i32 %11, 1
  %13 = tail call i32 @dwc2_exit_hibernation(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef %12) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.25) #8
  br label %17

17:                                               ; preds = %15, %8, %1
  %18 = phi i32 [ %13, %15 ], [ 0, %8 ], [ 0, %1 ]
  %19 = load i8, ptr %4, align 8
  %20 = and i8 %19, 16
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = tail call i32 @dwc2_exit_partial_power_down(ptr noundef %3, i32 noundef 0, i1 noundef zeroext true) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.26) #8
  br label %27

27:                                               ; preds = %25, %22, %17
  %28 = phi i32 [ %23, %25 ], [ 0, %22 ], [ %18, %17 ]
  %29 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 3, i32 15
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 9
  %34 = load i8, ptr %33, align 1, !range !10
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 20
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %41 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 34
  %42 = load i8, ptr %41, align 8, !range !10
  %43 = icmp eq i8 %42, 0
  %44 = lshr i32 %40, 24
  %45 = select i1 %43, i32 %40, i32 %44
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  tail call void @dwc2_gadget_exit_clock_gating(ptr noundef %3, i32 noundef 0) #7
  br label %50

49:                                               ; preds = %36
  tail call void @dwc2_host_exit_clock_gating(ptr noundef %3, i32 noundef 0) #7
  br label %50

50:                                               ; preds = %49, %48, %32, %27
  tail call void @dwc2_debugfs_exit(ptr noundef %3) #7
  %51 = load i8, ptr %4, align 8
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  tail call void @dwc2_hcd_remove(ptr noundef %3) #7
  %55 = load i8, ptr %4, align 8
  br label %56

56:                                               ; preds = %54, %50
  %57 = phi i8 [ %55, %54 ], [ %51, %50 ]
  %58 = and i8 %57, 2
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = tail call i32 @dwc2_hsotg_remove(ptr noundef %3) #7
  br label %62

62:                                               ; preds = %60, %56
  tail call void @dwc2_drd_exit(ptr noundef %3) #7
  %63 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 3, i32 24
  %64 = load i8, ptr %63, align 8, !range !10
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 17
  %68 = load ptr, ptr %67, align 8
  %69 = tail call i32 @regulator_disable(ptr noundef %68) #7
  br label %70

70:                                               ; preds = %66, %62
  %71 = load i8, ptr %4, align 8
  %72 = and i8 %71, 4
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %70
  %75 = tail call fastcc i32 @__dwc2_lowlevel_hw_disable(ptr noundef %3) #7
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i8, ptr %4, align 8
  %79 = and i8 %78, -5
  store i8 %79, ptr %4, align 8
  br label %80

80:                                               ; preds = %77, %74, %70
  %81 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 22
  %82 = load ptr, ptr %81, align 4
  %83 = tail call i32 @reset_control_assert(ptr noundef %82) #7
  %84 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 23
  %85 = load ptr, ptr %84, align 8
  %86 = tail call i32 @reset_control_assert(ptr noundef %85) #7
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dwc2_driver_shutdown(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @dwc2_disable_global_interrupts(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 20
  %5 = load i32, ptr %4, align 4
  tail call void @synchronize_irq(i32 noundef %5) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_handle_common_intr(i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_get_dr_mode(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = tail call i32 @usb_get_dr_mode(ptr noundef %2) #7
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 5
  %5 = icmp eq i32 %3, 0
  %6 = select i1 %5, i32 3, i32 %3
  store i32 %6, ptr %4, align 4
  %7 = tail call zeroext i1 @dwc2_hw_is_device(ptr noundef %0) #7
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = tail call zeroext i1 @dwc2_hw_is_host(ptr noundef %0) #7
  %10 = select i1 %9, i32 1, i32 %6
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi i32 [ 2, %1 ], [ %10, %8 ]
  %13 = load i32, ptr %4, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8
  %17 = icmp eq i32 %12, 1
  %18 = select i1 %17, ptr @.str.23, ptr @.str.24
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.22, ptr noundef nonnull %18) #8
  store i32 %12, ptr %4, align 4
  br label %19

19:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_core_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_get_hwparams(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_force_dr_mode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_init_params(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dwc2_writel(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 34
  %5 = load i8, ptr %4, align 8, !range !10
  %6 = icmp eq i8 %5, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @llvm.bswap.i32(i32 %1)
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %8) #7, !srcloc !13
  br label %16

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.dwc2_hsotg, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %1) #7, !srcloc !13
  br label %16

16:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_drd_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_gadget_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hcd_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hsotg_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_debugfs_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_gadget_udc(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_debugfs_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_drd_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_dr_mode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dwc2_hw_is_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dwc2_hw_is_host(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_exit_hibernation(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_exit_partial_power_down(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_gadget_exit_clock_gating(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_host_exit_clock_gating(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_disable_global_interrupts(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc2_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %8 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 34
  %9 = load i8, ptr %8, align 8, !range !10
  %10 = icmp eq i8 %9, 0
  %11 = lshr i32 %7, 24
  %12 = select i1 %10, i32 %7, i32 %11
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = tail call i32 @dwc2_hsotg_suspend(ptr noundef %3) #7
  br label %17

17:                                               ; preds = %15, %1
  tail call void @dwc2_drd_suspend(ptr noundef %3) #7
  %18 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 3, i32 24
  %19 = load i8, ptr %18, align 8, !range !10
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %62, label %21

21:                                               ; preds = %17
  tail call void @dwc2_force_mode(ptr noundef %3, i1 noundef zeroext %14) #7
  %22 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 18
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #7
  %24 = load ptr, ptr %4, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %26 = load i8, ptr %8, align 8, !range !10
  %27 = icmp eq i8 %26, 0
  %28 = tail call i32 @llvm.bswap.i32(i32 %25) #7
  %29 = select i1 %27, i32 %25, i32 %28
  %30 = and i32 %29, 262144
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 32848, i32 32880
  %33 = lshr i32 %29, 12
  %34 = and i32 %33, 128
  %35 = or i32 %34, %29
  %36 = or i32 %35, %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  br i1 %27, label %40, label %37

37:                                               ; preds = %21
  %38 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  %39 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %38) #7, !srcloc !13
  br label %42

40:                                               ; preds = %21
  %41 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %36) #7, !srcloc !13
  br label %42

42:                                               ; preds = %40, %37
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %23) #7
  %43 = load ptr, ptr %4, align 4
  %44 = getelementptr i8, ptr %43, i32 56
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %46 = load i8, ptr %8, align 8, !range !10
  %47 = icmp eq i8 %46, 0
  %48 = tail call i32 @llvm.bswap.i32(i32 %45) #7
  %49 = select i1 %47, i32 %45, i32 %48
  %50 = and i32 %49, -6291457
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  br i1 %47, label %55, label %51

51:                                               ; preds = %42
  %52 = tail call i32 @llvm.bswap.i32(i32 %50) #7
  %53 = load ptr, ptr %4, align 4
  %54 = getelementptr i8, ptr %53, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #7, !srcloc !13
  br label %58

55:                                               ; preds = %42
  %56 = load ptr, ptr %4, align 4
  %57 = getelementptr i8, ptr %56, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %50) #7, !srcloc !13
  br label %58

58:                                               ; preds = %55, %51
  %59 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 17
  %60 = load ptr, ptr %59, align 8
  %61 = tail call i32 @regulator_disable(ptr noundef %60) #7
  br label %62

62:                                               ; preds = %58, %17
  %63 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 8
  %64 = load i8, ptr %63, align 8
  %65 = and i8 %64, 4
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %62
  br i1 %14, label %68, label %70

68:                                               ; preds = %67
  %69 = tail call zeroext i1 @dwc2_host_can_poweroff_phy(ptr noundef %3) #7
  br i1 %69, label %70, label %75

70:                                               ; preds = %68, %67
  %71 = tail call fastcc i32 @__dwc2_lowlevel_hw_disable(ptr noundef %3)
  %72 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 10
  %73 = load i8, ptr %72, align 2
  %74 = or i8 %73, 4
  store i8 %74, ptr %72, align 2
  br label %75

75:                                               ; preds = %70, %68, %62
  %76 = phi i32 [ %71, %70 ], [ 0, %68 ], [ 0, %62 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc2_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 10
  %5 = load i8, ptr %4, align 2
  %6 = and i8 %5, 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 8
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, 4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = tail call fastcc i32 @__dwc2_lowlevel_hw_enable(ptr noundef %3)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %83

16:                                               ; preds = %13
  %17 = load i8, ptr %4, align 2
  br label %18

18:                                               ; preds = %16, %8, %1
  %19 = phi i8 [ %17, %16 ], [ %5, %8 ], [ %5, %1 ]
  %20 = and i8 %19, -5
  store i8 %20, ptr %4, align 2
  %21 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 3, i32 24
  %22 = load i8, ptr %21, align 8, !range !10
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %63, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 17
  %26 = load ptr, ptr %25, align 8
  %27 = tail call i32 @regulator_enable(ptr noundef %26) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %83

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 56
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %34 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 34
  %35 = load i8, ptr %34, align 8, !range !10
  %36 = icmp eq i8 %35, 0
  %37 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  %38 = select i1 %36, i32 %33, i32 %37
  %39 = or i32 %38, 6291456
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  br i1 %36, label %44, label %40

40:                                               ; preds = %29
  %41 = tail call i32 @llvm.bswap.i32(i32 %39) #7
  %42 = load ptr, ptr %30, align 4
  %43 = getelementptr i8, ptr %42, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #7, !srcloc !13
  br label %47

44:                                               ; preds = %29
  %45 = load ptr, ptr %30, align 4
  %46 = getelementptr i8, ptr %45, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %39) #7, !srcloc !13
  br label %47

47:                                               ; preds = %44, %40
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 7000, i32 noundef 2) #7
  %48 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 18
  %49 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %48) #7
  %50 = load ptr, ptr %30, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %52 = load i8, ptr %34, align 8, !range !10
  %53 = icmp eq i8 %52, 0
  %54 = tail call i32 @llvm.bswap.i32(i32 %51) #7
  %55 = select i1 %53, i32 %51, i32 %54
  %56 = and i32 %55, -33009
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  br i1 %53, label %60, label %57

57:                                               ; preds = %47
  %58 = tail call i32 @llvm.bswap.i32(i32 %56) #7
  %59 = load ptr, ptr %30, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %58) #7, !srcloc !13
  br label %62

60:                                               ; preds = %47
  %61 = load ptr, ptr %30, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %56) #7, !srcloc !13
  br label %62

62:                                               ; preds = %60, %57
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %48, i32 noundef %49) #7
  br label %63

63:                                               ; preds = %62, %18
  %64 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 6
  %65 = load ptr, ptr %64, align 8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  tail call void @dwc2_force_dr_mode(ptr noundef %3) #7
  br label %69

68:                                               ; preds = %63
  tail call void @dwc2_drd_resume(ptr noundef %3) #7
  br label %69

69:                                               ; preds = %68, %67
  %70 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr i8, ptr %71, i32 20
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %74 = getelementptr inbounds %struct.dwc2_hsotg, ptr %3, i32 0, i32 34
  %75 = load i8, ptr %74, align 8, !range !10
  %76 = icmp eq i8 %75, 0
  %77 = lshr i32 %73, 24
  %78 = select i1 %76, i32 %73, i32 %77
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %69
  %82 = tail call i32 @dwc2_hsotg_resume(ptr noundef %3) #7
  br label %83

83:                                               ; preds = %81, %69, %24, %13
  %84 = phi i32 [ %14, %13 ], [ %82, %81 ], [ 0, %69 ], [ %27, %24 ]
  ret i32 %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hsotg_suspend(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_drd_suspend(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_force_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dwc2_host_can_poweroff_phy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_drd_resume(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hsotg_resume(ptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 5048809}
!9 = !{i64 2154549565}
!10 = !{i8 0, i8 2}
!11 = !{!"auto-init"}
!12 = !{i64 2152588262}
!13 = !{i64 5048391}
