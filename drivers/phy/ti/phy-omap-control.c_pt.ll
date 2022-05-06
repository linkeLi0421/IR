; ModuleID = '/llk/IR/drivers/phy/ti/phy-omap-control.c_pt.bc'
source_filename = "../drivers/phy/ti/phy-omap-control.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_control_pcie_pcs:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_control_pcie_pcs\22\09\09\09\09\09"
module asm "__kstrtabns_omap_control_pcie_pcs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_control_phy_power:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_control_phy_power\22\09\09\09\09\09"
module asm "__kstrtabns_omap_control_phy_power:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_control_usb_set_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_control_usb_set_mode\22\09\09\09\09\09"
module asm "__kstrtabns_omap_control_usb_set_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.omap_control_phy = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = private unnamed_addr constant [22 x i8] c"\013%s: invalid device\0A\00", align 1
@__func__.omap_control_pcie_pcs = private unnamed_addr constant [22 x i8] c"omap_control_pcie_pcs\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: invalid control phy device\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: unsupported operation\0A\00", align 1
@__kstrtab_omap_control_pcie_pcs = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_control_pcie_pcs = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_control_pcie_pcs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_control_pcie_pcs to i32), ptr @__kstrtab_omap_control_pcie_pcs, ptr @__kstrtabns_omap_control_pcie_pcs }, section "___ksymtab_gpl+omap_control_pcie_pcs", align 4
@__func__.omap_control_phy_power = private unnamed_addr constant [23 x i8] c"omap_control_phy_power\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%s: type %d not recognized\0A\00", align 1
@__kstrtab_omap_control_phy_power = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_control_phy_power = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_control_phy_power = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_control_phy_power to i32), ptr @__kstrtab_omap_control_phy_power, ptr @__kstrtabns_omap_control_phy_power }, section "___ksymtab_gpl+omap_control_phy_power", align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Invalid control phy device\0A\00", align 1
@__kstrtab_omap_control_usb_set_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_control_usb_set_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_control_usb_set_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_control_usb_set_mode to i32), ptr @__kstrtab_omap_control_usb_set_mode, ptr @__kstrtabns_omap_control_usb_set_mode }, section "___ksymtab_gpl+omap_control_usb_set_mode", align 4
@__initcall__kmod_phy_omap_control__166_334_omap_control_phy_init4 = internal global ptr @omap_control_phy_init, section ".initcall4.init", align 4
@omap_control_phy_driver = internal global %struct.platform_driver { ptr @omap_control_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_control_phy_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_omap_control_phy_exit = internal global ptr @omap_control_phy_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias167 = internal constant [49 x i8] c"phy_omap_control.alias=platform:omap_control_phy\00", section ".modinfo", align 1
@__UNIQUE_ID_author168 = internal constant [47 x i8] c"phy_omap_control.author=Texas Instruments Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description169 = internal constant [60 x i8] c"phy_omap_control.description=OMAP Control Module PHY Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file170 = internal constant [54 x i8] c"phy_omap_control.file=drivers/phy/ti/phy-omap-control\00", section ".modinfo", align 1
@__UNIQUE_ID_license171 = internal constant [32 x i8] c"phy_omap_control.license=GPL v2\00", section ".modinfo", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"omap-control-phy\00", align 1
@omap_control_phy_id_table = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,control-phy-otghs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @otghs_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,control-phy-usb2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usb2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,control-phy-pipe3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pipe3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,control-phy-pcie\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pcie_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,control-phy-usb2-dra7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra7usb2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,control-phy-usb2-am437\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am437usb2_data }, %struct.of_device_id zeroinitializer], align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"otghs_control\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Couldn't get power register\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"sys_clkin\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"\013%s: unable to get sys_clkin\0A\00", align 1
@__func__.omap_control_phy_probe = private unnamed_addr constant [23 x i8] c"omap_control_phy_probe\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"pcie_pcs\00", align 1
@otghs_data = internal constant i32 1, align 4
@usb2_data = internal constant i32 2, align 4
@pipe3_data = internal constant i32 3, align 4
@pcie_data = internal constant i32 4, align 4
@dra7usb2_data = internal constant i32 5, align 4
@am437usb2_data = internal constant i32 6, align 4
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias167, ptr @__UNIQUE_ID_author168, ptr @__UNIQUE_ID_description169, ptr @__UNIQUE_ID_file170, ptr @__UNIQUE_ID_license171, ptr @__exitcall_omap_control_phy_exit, ptr @__initcall__kmod_phy_omap_control__166_334_omap_control_phy_init4, ptr @__ksymtab_omap_control_pcie_pcs, ptr @__ksymtab_omap_control_phy_power, ptr @__ksymtab_omap_control_usb_set_mode, ptr @omap_control_phy_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_control_pcie_pcs(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.omap_control_pcie_pcs) #4
  br label %27

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap_control_pcie_pcs) #4
  br label %27

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.omap_control_phy, ptr %10, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.omap_control_pcie_pcs) #4
  br label %27

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.omap_control_phy, ptr %10, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %22 = and i32 %21, -16711681
  %23 = zext i8 %1 to i32
  %24 = shl nuw nsw i32 %23, 16
  %25 = or i32 %22, %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %26 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %25) #5, !srcloc !11
  br label %27

27:                                               ; preds = %18, %17, %12, %6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_control_phy_power(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.omap_control_phy_power) #4
  br label %58

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap_control_phy_power) #4
  br label %58

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.omap_control_phy, ptr %10, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %58, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.omap_control_phy, ptr %10, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %21 = load i32, ptr %14, align 4
  switch i32 %21, label %54 [
    i32 2, label %22
    i32 4, label %28
    i32 3, label %28
    i32 5, label %41
    i32 6, label %47
  ]

22:                                               ; preds = %17
  %23 = icmp eq i32 %1, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = and i32 %20, -2
  br label %55

26:                                               ; preds = %22
  %27 = or i32 %20, 1
  br label %55

28:                                               ; preds = %17, %17
  %29 = getelementptr inbounds %struct.omap_control_phy, ptr %10, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @clk_get_rate(ptr noundef %30) #5
  %32 = icmp eq i32 %1, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = udiv i32 %31, 1000000
  %35 = and i32 %20, 16383
  %36 = shl i32 %34, 22
  %37 = or i32 %36, %35
  %38 = or i32 %37, 49152
  br label %55

39:                                               ; preds = %28
  %40 = and i32 %20, -4177921
  br label %55

41:                                               ; preds = %17
  %42 = icmp eq i32 %1, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %41
  %44 = and i32 %20, -268435457
  br label %55

45:                                               ; preds = %41
  %46 = or i32 %20, 268435456
  br label %55

47:                                               ; preds = %17
  %48 = icmp eq i32 %1, 0
  %49 = and i32 %20, -1572868
  br i1 %48, label %52, label %50

50:                                               ; preds = %47
  %51 = or i32 %49, 1572864
  br label %55

52:                                               ; preds = %47
  %53 = or i32 %49, 3
  br label %55

54:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.omap_control_phy_power, i32 noundef %21) #4
  br label %55

55:                                               ; preds = %54, %52, %50, %45, %43, %39, %33, %26, %24
  %56 = phi i32 [ %20, %54 ], [ %51, %50 ], [ %53, %52 ], [ %44, %43 ], [ %46, %45 ], [ %38, %33 ], [ %40, %39 ], [ %25, %24 ], [ %27, %26 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %57 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %56) #5, !srcloc !11
  br label %58

58:                                               ; preds = %55, %13, %12, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_control_usb_set_mode(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %37, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #4
  br label %37

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.omap_control_phy, ptr %8, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %37

15:                                               ; preds = %11
  switch i32 %1, label %37 [
    i32 1, label %16
    i32 2, label %23
    i32 3, label %30
  ]

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.omap_control_phy, ptr %8, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  %20 = and i32 %19, -30
  %21 = or i32 %20, 5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %22 = load ptr, ptr %17, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %21) #5, !srcloc !11
  br label %37

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.omap_control_phy, ptr %8, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %27 = and i32 %26, -30
  %28 = or i32 %27, 21
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %29 = load ptr, ptr %24, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %28) #5, !srcloc !11
  br label %37

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.omap_control_phy, ptr %8, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !18
  %34 = and i32 %33, -30
  %35 = or i32 %34, 24
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  %36 = load ptr, ptr %31, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %35) #5, !srcloc !11
  br label %37

37:                                               ; preds = %30, %23, %16, %15, %11, %10, %2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @omap_control_phy_init() #3 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_control_phy_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap_control_phy_exit() #3 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_control_phy_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_control_phy_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_match_device(ptr noundef nonnull @omap_control_phy_id_table, ptr noundef %2) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %1
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 28, i32 noundef 3520) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %45, label %8

8:                                                ; preds = %5
  store ptr %2, ptr %6, align 4
  %9 = getelementptr inbounds %struct.of_device_id, ptr %3, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.omap_control_phy, ptr %6, i32 0, i32 6
  store i32 %11, ptr %12, align 4
  %13 = icmp eq i32 %11, 1
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.6) #5
  %16 = getelementptr inbounds %struct.omap_control_phy, ptr %6, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %43

18:                                               ; preds = %14
  %19 = ptrtoint ptr %15 to i32
  br label %45

20:                                               ; preds = %8
  %21 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.7) #5
  %22 = getelementptr inbounds %struct.omap_control_phy, ptr %6, i32 0, i32 2
  store ptr %21, ptr %22, align 4
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8) #4
  %25 = ptrtoint ptr %21 to i32
  br label %45

26:                                               ; preds = %20
  %27 = add i32 %11, -3
  %28 = icmp ult i32 %27, 2
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.9) #5
  %31 = getelementptr inbounds %struct.omap_control_phy, ptr %6, i32 0, i32 5
  store ptr %30, ptr %31, align 4
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.omap_control_phy_probe) #4
  br label %45

35:                                               ; preds = %29
  %36 = icmp eq i32 %11, 4
  br i1 %36, label %37, label %43

37:                                               ; preds = %35
  %38 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef nonnull @.str.11) #5
  %39 = getelementptr inbounds %struct.omap_control_phy, ptr %6, i32 0, i32 4
  store ptr %38, ptr %39, align 4
  %40 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = ptrtoint ptr %38 to i32
  br label %45

43:                                               ; preds = %37, %35, %26, %14
  %44 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %44, align 8
  br label %45

45:                                               ; preds = %43, %41, %33, %24, %18, %5, %1
  %46 = phi i32 [ %19, %18 ], [ -22, %33 ], [ %42, %41 ], [ 0, %43 ], [ %25, %24 ], [ -22, %1 ], [ -12, %5 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind }
attributes #5 = { nounwind }

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
!8 = !{i64 3900879}
!9 = !{i64 2151486313}
!10 = !{i64 2151486513}
!11 = !{i64 3900461}
!12 = !{i64 2151489352}
!13 = !{i64 2151491202}
!14 = !{i64 2151493063}
!15 = !{i64 2151493582}
!16 = !{i64 2151494069}
!17 = !{i64 2151494588}
!18 = !{i64 2151495075}
!19 = !{i64 2151495594}
