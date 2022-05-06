; ModuleID = '/llk/IR/drivers/phy/broadcom/phy-bcm-sr-usb.c_pt.bc'
source_filename = "../drivers/phy/broadcom/phy-bcm-sr-usb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.bcm_usb_phy_cfg = type { i32, i32, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_phy_bcm_sr_usb__248_334_bcm_usb_phy_driver_init6 = internal global ptr @bcm_usb_phy_driver_init, section ".initcall6.init", align 4
@bcm_usb_phy_driver = internal global %struct.platform_driver { ptr @bcm_usb_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm_usb_phy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_bcm_usb_phy_driver_exit = internal global ptr @bcm_usb_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author249 = internal constant [31 x i8] c"phy_bcm_sr_usb.author=Broadcom\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [60 x i8] c"phy_bcm_sr_usb.description=Broadcom stingray USB Phy driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [56 x i8] c"phy_bcm_sr_usb.file=drivers/phy/broadcom/phy-bcm-sr-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [30 x i8] c"phy_bcm_sr_usb.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"phy-bcm-sr-usb\00", align 1
@bcm_usb_phy_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,sr-usb-combo-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,sr-usb-hs-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@bcm_usb_combo_phy_hs = internal constant [2 x i8] c"\0C\10", align 1
@bcm_usb_combo_phy_ss = internal constant [2 x i8] c"\18\14", align 1
@sr_phy_ops = internal constant %struct.phy_ops { ptr @bcm_usb_phy_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm_usb_phy_reset, ptr null, ptr null, ptr null }, align 4
@bcm_usb_hs_phy = internal constant [2 x i8] c"\08\0C", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"\013%s: FAIL\0A\00", align 1
@__func__.bcm_usb_pll_lock_check = private unnamed_addr constant [23 x i8] c"bcm_usb_pll_lock_check\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"drivers/phy/broadcom/phy-bcm-sr-usb.c\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_bcm_usb_phy_driver_exit, ptr @__initcall__kmod_phy_bcm_sr_usb__248_334_bcm_usb_phy_driver_init6, ptr @bcm_usb_phy_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bcm_usb_phy_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm_usb_phy_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @bcm_usb_phy_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm_usb_phy_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_usb_phy_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = ptrtoint ptr %5 to i32
  br label %60

9:                                                ; preds = %1
  %10 = tail call ptr @of_match_node(ptr noundef nonnull @bcm_usb_phy_of_match, ptr noundef %4) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %60, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.of_device_id, ptr %10, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = ptrtoint ptr %14 to i32
  switch i32 %15, label %60 [
    i32 0, label %16
    i32 1, label %35
  ]

16:                                               ; preds = %12
  %17 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 40, i32 noundef 3520) #4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %60, label %19

19:                                               ; preds = %16
  %20 = getelementptr %struct.bcm_usb_phy_cfg, ptr %17, i32 0, i32 2
  store ptr %5, ptr %20, align 4
  %21 = getelementptr %struct.bcm_usb_phy_cfg, ptr %17, i32 0, i32 1
  store i32 0, ptr %21, align 4
  %22 = getelementptr %struct.bcm_usb_phy_cfg, ptr %17, i32 0, i32 4
  store ptr @bcm_usb_combo_phy_hs, ptr %22, align 4
  store i32 0, ptr %17, align 4
  %23 = tail call ptr @devm_phy_create(ptr noundef %2, ptr noundef %4, ptr noundef nonnull @sr_phy_ops) #4
  %24 = getelementptr %struct.bcm_usb_phy_cfg, ptr %17, i32 0, i32 3
  store ptr %23, ptr %24, align 4
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %51, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 8
  store ptr %17, ptr %27, align 8
  %28 = getelementptr %struct.bcm_usb_phy_cfg, ptr %17, i32 1
  %29 = getelementptr %struct.bcm_usb_phy_cfg, ptr %17, i32 1, i32 2
  store ptr %5, ptr %29, align 4
  %30 = getelementptr %struct.bcm_usb_phy_cfg, ptr %17, i32 1, i32 1
  store i32 0, ptr %30, align 4
  %31 = getelementptr %struct.bcm_usb_phy_cfg, ptr %17, i32 1, i32 4
  store ptr @bcm_usb_combo_phy_ss, ptr %31, align 4
  store i32 1, ptr %28, align 4
  %32 = tail call ptr @devm_phy_create(ptr noundef %2, ptr noundef %4, ptr noundef nonnull @sr_phy_ops) #4
  %33 = getelementptr %struct.bcm_usb_phy_cfg, ptr %17, i32 1, i32 3
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %51, label %45

35:                                               ; preds = %12
  %36 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 20, i32 noundef 3520) #4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %60, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.bcm_usb_phy_cfg, ptr %36, i32 0, i32 2
  store ptr %5, ptr %39, align 4
  %40 = getelementptr inbounds %struct.bcm_usb_phy_cfg, ptr %36, i32 0, i32 1
  store i32 1, ptr %40, align 4
  %41 = getelementptr inbounds %struct.bcm_usb_phy_cfg, ptr %36, i32 0, i32 4
  store ptr @bcm_usb_hs_phy, ptr %41, align 4
  store i32 0, ptr %36, align 4
  %42 = tail call ptr @devm_phy_create(ptr noundef %2, ptr noundef %4, ptr noundef nonnull @sr_phy_ops) #4
  %43 = getelementptr inbounds %struct.bcm_usb_phy_cfg, ptr %36, i32 0, i32 3
  store ptr %42, ptr %43, align 4
  %44 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %51, label %45

45:                                               ; preds = %38, %26
  %46 = phi ptr [ %32, %26 ], [ %42, %38 ]
  %47 = phi ptr [ %28, %26 ], [ %36, %38 ]
  %48 = phi ptr [ %17, %26 ], [ %36, %38 ]
  %49 = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 8
  store ptr %47, ptr %49, align 8
  %50 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %48, ptr %50, align 8
  br label %55

51:                                               ; preds = %38, %26, %19
  %52 = phi ptr [ %23, %19 ], [ %32, %26 ], [ %42, %38 ]
  %53 = ptrtoint ptr %52 to i32
  %54 = icmp eq ptr %52, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %51, %45
  %56 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef nonnull @bcm_usb_phy_xlate) #4
  %57 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  %58 = ptrtoint ptr %56 to i32
  %59 = select i1 %57, i32 %58, i32 0
  br label %60

60:                                               ; preds = %55, %51, %35, %16, %12, %9, %7
  %61 = phi i32 [ %8, %7 ], [ %59, %55 ], [ -19, %9 ], [ %53, %51 ], [ -19, %12 ], [ -12, %35 ], [ -12, %16 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @bcm_usb_phy_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bcm_usb_phy_cfg, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 224, i32 noundef 9, ptr noundef null) #4
  br label %21

15:                                               ; preds = %10
  %16 = getelementptr %struct.bcm_usb_phy_cfg, ptr %4, i32 %12, i32 3
  %17 = load ptr, ptr %16, align 4
  br label %21

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.bcm_usb_phy_cfg, ptr %4, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %15, %14, %2
  %22 = phi ptr [ inttoptr (i32 -19 to ptr), %14 ], [ %17, %15 ], [ %20, %18 ], [ inttoptr (i32 -22 to ptr), %2 ]
  ret ptr %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_usb_phy_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %96 [
    i32 1, label %5
    i32 0, label %57
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bcm_usb_phy_cfg, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bcm_usb_phy_cfg, ptr %3, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr i8, ptr %7, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %15 = and i32 %14, -262141
  %16 = or i32 %15, 24
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %17 = load i8, ptr %10, align 1
  %18 = zext i8 %17 to i32
  %19 = getelementptr i8, ptr %7, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %16) #4, !srcloc !12
  %20 = load i8, ptr %9, align 1
  %21 = zext i8 %20 to i32
  %22 = getelementptr i8, ptr %7, i32 %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !14
  %24 = and i32 %23, -3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %24) #4, !srcloc !12
  %25 = load i8, ptr %9, align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr i8, ptr %7, i32 %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !16
  %29 = or i32 %28, 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %29) #4, !srcloc !12
  %30 = load i8, ptr %9, align 1
  %31 = zext i8 %30 to i32
  %32 = getelementptr i8, ptr %7, i32 %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !16
  %34 = or i32 %33, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %34) #4, !srcloc !12
  tail call void @msleep(i32 noundef 30) #4
  %35 = load i8, ptr %9, align 1
  %36 = zext i8 %35 to i32
  %37 = getelementptr i8, ptr %7, i32 %36
  %38 = tail call i64 @ktime_get() #4
  %39 = add i64 %38, 1000000
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !17
  %41 = and i32 %40, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %48, %5
  %44 = tail call i64 @ktime_get() #4
  %45 = icmp sgt i64 %44, %39
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !18
  br label %53

48:                                               ; preds = %43
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748) #4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !17
  %51 = and i32 %50, 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %43, label %53

53:                                               ; preds = %48, %46, %5
  %54 = phi i32 [ %47, %46 ], [ %40, %5 ], [ %50, %48 ]
  %55 = and i32 %54, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %94, label %96

57:                                               ; preds = %1
  %58 = getelementptr inbounds %struct.bcm_usb_phy_cfg, ptr %3, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.bcm_usb_phy_cfg, ptr %3, i32 0, i32 4
  %61 = load ptr, ptr %60, align 4
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = getelementptr i8, ptr %59, i32 %63
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !14
  %66 = and i32 %65, -33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %66) #4, !srcloc !12
  %67 = load i8, ptr %61, align 1
  %68 = zext i8 %67 to i32
  %69 = getelementptr i8, ptr %59, i32 %68
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !16
  %71 = or i32 %70, 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %71) #4, !srcloc !12
  %72 = load i8, ptr %61, align 1
  %73 = zext i8 %72 to i32
  %74 = getelementptr i8, ptr %59, i32 %73
  %75 = tail call i64 @ktime_get() #4
  %76 = add i64 %75, 1000000
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !17
  %78 = and i32 %77, 64
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %85, %57
  %81 = tail call i64 @ktime_get() #4
  %82 = icmp sgt i64 %81, %76
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !18
  br label %90

85:                                               ; preds = %80
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 214748) #4
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !17
  %88 = and i32 %87, 64
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %80, label %90

90:                                               ; preds = %85, %83, %57
  %91 = phi i32 [ %84, %83 ], [ %77, %57 ], [ %87, %85 ]
  %92 = and i32 %91, 64
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90, %53
  %95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.bcm_usb_pll_lock_check) #5
  br label %96

96:                                               ; preds = %94, %90, %53, %1
  %97 = phi i32 [ -22, %1 ], [ 0, %53 ], [ 0, %90 ], [ -110, %94 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcm_usb_phy_reset(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bcm_usb_phy_cfg, ptr %3, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bcm_usb_phy_cfg, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %8, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr i8, ptr %10, i32 %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !14
  %16 = and i32 %15, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %16) #4, !srcloc !12
  %17 = load i8, ptr %11, align 1
  %18 = zext i8 %17 to i32
  %19 = getelementptr i8, ptr %10, i32 %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !16
  %21 = or i32 %20, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %21) #4, !srcloc !12
  br label %22

22:                                               ; preds = %6, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!9 = !{i64 2389219}
!10 = !{i64 2153560251}
!11 = !{i64 2153560460}
!12 = !{i64 2388801}
!13 = !{i64 2153555301}
!14 = !{i64 2153555742}
!15 = !{i64 2153556554}
!16 = !{i64 2153556992}
!17 = !{i64 2153558648}
!18 = !{i64 2153558943}
