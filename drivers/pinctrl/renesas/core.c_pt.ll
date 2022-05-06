; ModuleID = '/llk/IR/drivers/pinctrl/renesas/core.c_pt.bc'
source_filename = "../drivers/pinctrl/renesas/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.psci_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sh_pfc_soc_info = type { ptr, ptr, %struct.pinmux_range, %struct.pinmux_range, ptr, i32, %struct.pinmux_range, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.pinmux_range = type { i16, i16, i16 }
%struct.sh_pfc = type { ptr, ptr, %struct.spinlock, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.sh_pfc_pin_range = type { i16, i16 }
%struct.sh_pfc_window = type { i32, ptr, i32 }
%struct.pinmux_cfg_reg = type { i32, i8, i8, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pinmux_drive_reg = type { i32, [8 x %struct.pinmux_drive_reg_field] }
%struct.pinmux_drive_reg_field = type { i16, i8, i8 }
%struct.pinmux_bias_reg = type { i32, i32, [32 x i16] }
%struct.pinmux_ioctrl_reg = type { i32 }
%struct.sh_pfc_pin = type { ptr, i32, i16, i16 }

@__initcall__kmod_core__166_1261_sh_pfc_init2 = internal global ptr @sh_pfc_init, section ".initcall2.init", align 4
@.str = private unnamed_addr constant [45 x i8] c"cannot locate data/mark enum_id for mark %d\0A\00", align 1
@sh_pfc_driver = internal global %struct.platform_driver { ptr @sh_pfc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sh_pfc_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_pfc_pm, ptr null, ptr null }, ptr @sh_pfc_id_table, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"sh-pfc\00", align 1
@sh_pfc_of_table = internal constant [17 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-emev2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @emev2_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a73a4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a73a4_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a7740\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7740_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a7742\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7742_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a7743\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7743_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a7744\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7744_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a7745\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7745_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a77470\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a77470_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a7778\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7778_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a7779\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7779_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7790_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7791_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a7792\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7792_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a7793\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7793_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a7794\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7794_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-sh73a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sh73a0_pinmux_info }, %struct.of_device_id zeroinitializer], align 4
@sh_pfc_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_pfc_suspend_noirq, ptr @sh_pfc_resume_noirq, ptr @sh_pfc_suspend_noirq, ptr @sh_pfc_resume_noirq, ptr @sh_pfc_suspend_noirq, ptr @sh_pfc_resume_noirq, ptr null, ptr null, ptr null }, align 4
@sh_pfc_id_table = internal constant [1 x %struct.platform_device_id] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to init GPIO chip, ignoring...\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"%s support registered\0A\00", align 1
@psci_ops = external dso_local local_unnamed_addr global %struct.psci_operations, align 4
@of_root = external dso_local local_unnamed_addr global ptr, align 4
@emev2_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a73a4_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a7740_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a7742_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a7743_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a7744_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a7745_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a77470_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a7778_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a7779_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a7790_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a7791_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a7792_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a7793_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a7794_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@sh73a0_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_core__166_1261_sh_pfc_init2], section "llvm.metadata"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @sh_pfc_get_pin_index(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %31, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %25, %6
  %10 = phi i32 [ 0, %6 ], [ %29, %25 ]
  %11 = phi i32 [ 0, %6 ], [ %28, %25 ]
  %12 = getelementptr %struct.sh_pfc_pin_range, ptr %8, i32 %10
  %13 = getelementptr %struct.sh_pfc_pin_range, ptr %8, i32 %10, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = icmp ult i32 %15, %1
  %17 = load i16, ptr %12, align 2
  %18 = zext i16 %17 to i32
  br i1 %16, label %25, label %19

19:                                               ; preds = %9
  %20 = zext i16 %17 to i32
  %21 = icmp ugt i32 %20, %1
  %22 = add i32 %11, %1
  %23 = sub i32 %22, %20
  %24 = select i1 %21, i32 -1, i32 %23
  br label %31

25:                                               ; preds = %9
  %26 = add i32 %11, 1
  %27 = add i32 %26, %15
  %28 = sub i32 %27, %18
  %29 = add nuw i32 %10, 1
  %30 = icmp eq i32 %29, %4
  br i1 %30, label %31, label %9

31:                                               ; preds = %25, %19, %2
  %32 = phi i32 [ %24, %19 ], [ -22, %2 ], [ -22, %25 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sh_pfc_read_raw_reg(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  switch i32 %1, label %11 [
    i32 8, label %3
    i32 16, label %6
    i32 32, label %9
  ]

3:                                                ; preds = %2
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %0) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %5 = zext i8 %4 to i32
  br label %12

6:                                                ; preds = %2
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %0) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %8 = zext i16 %7 to i32
  br label %12

9:                                                ; preds = %2
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  br label %12

11:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/renesas/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 151, 0\0A.popsection", ""() #6, !srcloc !14
  unreachable

12:                                               ; preds = %9, %6, %3
  %13 = phi i32 [ %10, %9 ], [ %8, %6 ], [ %5, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sh_pfc_write_raw_reg(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  switch i32 %1, label %9 [
    i32 8, label %4
    i32 16, label %6
    i32 32, label %8
  ]

4:                                                ; preds = %3
  %5 = trunc i32 %2 to i8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %0, i8 %5) #6, !srcloc !16
  br label %10

6:                                                ; preds = %3
  %7 = trunc i32 %2 to i16
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %0, i16 %7) #6, !srcloc !18
  br label %10

8:                                                ; preds = %3
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %2) #6, !srcloc !20
  br label %10

9:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/renesas/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 170, 0\0A.popsection", ""() #6, !srcloc !21
  unreachable

10:                                               ; preds = %8, %6, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sh_pfc_read(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %19, %6
  %10 = phi i32 [ 0, %6 ], [ %20, %19 ]
  %11 = getelementptr %struct.sh_pfc_window, ptr %8, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, %1
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = getelementptr %struct.sh_pfc_window, ptr %8, i32 %10, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %12
  %18 = icmp ugt i32 %17, %1
  br i1 %18, label %23, label %19

19:                                               ; preds = %14, %9
  %20 = add nuw i32 %10, 1
  %21 = icmp eq i32 %20, %4
  br i1 %21, label %22, label %9

22:                                               ; preds = %19, %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/renesas/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #6, !srcloc !22
  unreachable

23:                                               ; preds = %14
  %24 = getelementptr %struct.sh_pfc_window, ptr %8, i32 %10, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = sub i32 %1, %12
  %27 = getelementptr i8, ptr %25, i32 %26
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sh_pfc_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %5, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %40, label %9

9:                                                ; preds = %3
  %10 = icmp slt i32 %7, 0
  %11 = xor i32 %7, -1
  %12 = and i32 %11, %1
  %13 = select i1 %10, i32 %7, i32 %12
  %14 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  br label %20

20:                                               ; preds = %30, %17
  %21 = phi i32 [ 0, %17 ], [ %31, %30 ]
  %22 = getelementptr %struct.sh_pfc_window, ptr %19, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = icmp ult i32 %13, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = getelementptr %struct.sh_pfc_window, ptr %19, i32 %21, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %23
  %29 = icmp ugt i32 %28, %13
  br i1 %29, label %34, label %30

30:                                               ; preds = %25, %20
  %31 = add nuw i32 %21, 1
  %32 = icmp eq i32 %31, %15
  br i1 %32, label %33, label %20

33:                                               ; preds = %30, %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/renesas/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #6, !srcloc !22
  unreachable

34:                                               ; preds = %25
  %35 = getelementptr %struct.sh_pfc_window, ptr %19, i32 %21, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = sub i32 %13, %23
  %38 = getelementptr i8, ptr %36, i32 %37
  %39 = xor i32 %2, -1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %39) #6, !srcloc !20
  br label %40

40:                                               ; preds = %34, %3
  %41 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %60, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 4
  %46 = load ptr, ptr %45, align 4
  br label %47

47:                                               ; preds = %57, %44
  %48 = phi i32 [ 0, %44 ], [ %58, %57 ]
  %49 = getelementptr %struct.sh_pfc_window, ptr %46, i32 %48
  %50 = load i32, ptr %49, align 4
  %51 = icmp ugt i32 %50, %1
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = getelementptr %struct.sh_pfc_window, ptr %46, i32 %48, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, %50
  %56 = icmp ugt i32 %55, %1
  br i1 %56, label %61, label %57

57:                                               ; preds = %52, %47
  %58 = add nuw i32 %48, 1
  %59 = icmp eq i32 %58, %42
  br i1 %59, label %60, label %47

60:                                               ; preds = %57, %40
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/renesas/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #6, !srcloc !22
  unreachable

61:                                               ; preds = %52
  %62 = getelementptr %struct.sh_pfc_window, ptr %46, i32 %48, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = sub i32 %1, %50
  %65 = getelementptr i8, ptr %63, i32 %64
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %2) #6, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sh_pfc_config_mux(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  switch i32 %2, label %231 [
    i32 2, label %12
    i32 1, label %12
    i32 3, label %4
    i32 4, label %8
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %6, i32 0, i32 3
  br label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %10, i32 0, i32 2
  br label %12

12:                                               ; preds = %8, %4, %3, %3
  %13 = phi ptr [ %11, %8 ], [ %7, %4 ], [ null, %3 ], [ null, %3 ]
  %14 = trunc i32 %1 to i16
  %15 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 1
  %16 = getelementptr inbounds %struct.pinmux_range, ptr %13, i32 0, i32 1
  %17 = getelementptr inbounds %struct.pinmux_range, ptr %13, i32 0, i32 2
  %18 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 3
  %19 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 4
  br label %20

20:                                               ; preds = %58, %12
  %21 = phi i32 [ 0, %12 ], [ %43, %58 ]
  %22 = load ptr, ptr %15, align 4
  %23 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %22, i32 0, i32 18
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq i32 %21, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %22, i32 0, i32 19
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %35, %26
  %31 = phi i32 [ %36, %35 ], [ 0, %26 ]
  %32 = getelementptr i16, ptr %24, i32 %31
  %33 = load i16, ptr %32, align 2
  %34 = icmp eq i16 %33, %14
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = add nuw i32 %31, 1
  %37 = icmp eq i32 %36, %28
  br i1 %37, label %38, label %30

38:                                               ; preds = %35, %26
  %39 = load ptr, ptr %0, align 4
  %40 = and i32 %1, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str, i32 noundef %40) #7
  br label %231

41:                                               ; preds = %30, %20
  %42 = phi i32 [ %21, %20 ], [ %31, %30 ]
  %43 = add i32 %42, 1
  %44 = getelementptr i16, ptr %24, i32 %43
  %45 = load i16, ptr %44, align 2
  %46 = icmp slt i32 %43, 0
  br i1 %46, label %231, label %47

47:                                               ; preds = %41
  %48 = icmp eq i16 %45, 0
  br i1 %48, label %231, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %22, i32 0, i32 6
  %51 = load i16, ptr %50, align 2
  %52 = icmp ugt i16 %51, %45
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %22, i32 0, i32 6, i32 1
  %55 = load i16, ptr %54, align 2
  %56 = icmp ult i16 %55, %45
  br i1 %56, label %57, label %68

57:                                               ; preds = %53, %49
  switch i32 %2, label %59 [
    i32 1, label %68
    i32 2, label %58
  ]

58:                                               ; preds = %229, %227, %225, %65, %62, %59, %57
  br label %20

59:                                               ; preds = %57
  %60 = load i16, ptr %13, align 2
  %61 = icmp ugt i16 %60, %45
  br i1 %61, label %58, label %62

62:                                               ; preds = %59
  %63 = load i16, ptr %16, align 2
  %64 = icmp ult i16 %63, %45
  br i1 %64, label %58, label %65

65:                                               ; preds = %62
  %66 = load i16, ptr %17, align 2
  %67 = icmp eq i16 %45, %66
  br i1 %67, label %58, label %68

68:                                               ; preds = %65, %57, %53
  %69 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %22, i32 0, i32 13
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr %struct.pinmux_cfg_reg, ptr %70, i32 0, i32 1
  %72 = load i8, ptr %71, align 4
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %231, label %74

74:                                               ; preds = %68
  %75 = getelementptr %struct.pinmux_cfg_reg, ptr %70, i32 0, i32 2
  br label %76

76:                                               ; preds = %112, %74
  %77 = phi ptr [ %116, %112 ], [ %75, %74 ]
  %78 = phi i8 [ %115, %112 ], [ %72, %74 ]
  %79 = phi i32 [ %113, %112 ], [ 0, %74 ]
  %80 = zext i8 %78 to i32
  %81 = load i8, ptr %77, align 1
  %82 = icmp eq i8 %81, 0
  %83 = getelementptr %struct.pinmux_cfg_reg, ptr %70, i32 %79, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr %struct.pinmux_cfg_reg, ptr %70, i32 %79, i32 4
  br label %86

86:                                               ; preds = %107, %76
  %87 = phi i32 [ 0, %76 ], [ %109, %107 ]
  %88 = phi i32 [ 0, %76 ], [ %108, %107 ]
  %89 = phi i32 [ 0, %76 ], [ %110, %107 ]
  br i1 %82, label %90, label %94

90:                                               ; preds = %86
  %91 = load ptr, ptr %85, align 4
  %92 = getelementptr i8, ptr %91, i32 %87
  %93 = load i8, ptr %92, align 1
  br label %94

94:                                               ; preds = %90, %86
  %95 = phi i8 [ %93, %90 ], [ %81, %86 ]
  %96 = zext i8 %95 to i32
  %97 = shl nuw i32 1, %96
  br label %98

98:                                               ; preds = %104, %94
  %99 = phi i32 [ 0, %94 ], [ %105, %104 ]
  %100 = add i32 %99, %88
  %101 = getelementptr i16, ptr %84, i32 %100
  %102 = load i16, ptr %101, align 2
  %103 = icmp eq i16 %102, %45
  br i1 %103, label %118, label %104

104:                                              ; preds = %98
  %105 = add nuw i32 %99, 1
  %106 = icmp eq i32 %105, %97
  br i1 %106, label %107, label %98

107:                                              ; preds = %104
  %108 = add i32 %97, %88
  %109 = add i32 %87, 1
  %110 = add i32 %89, %96
  %111 = icmp ult i32 %110, %80
  br i1 %111, label %86, label %112

112:                                              ; preds = %107
  %113 = add i32 %79, 1
  %114 = getelementptr %struct.pinmux_cfg_reg, ptr %70, i32 %113, i32 1
  %115 = load i8, ptr %114, align 4
  %116 = getelementptr %struct.pinmux_cfg_reg, ptr %70, i32 %113, i32 2
  %117 = icmp eq i8 %115, 0
  br i1 %117, label %231, label %76

118:                                              ; preds = %98
  %119 = getelementptr %struct.pinmux_cfg_reg, ptr %70, i32 %79
  %120 = load i32, ptr %119, align 4
  %121 = load i32, ptr %18, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %138, label %123

123:                                              ; preds = %118
  %124 = load ptr, ptr %19, align 4
  br label %125

125:                                              ; preds = %135, %123
  %126 = phi i32 [ 0, %123 ], [ %136, %135 ]
  %127 = getelementptr %struct.sh_pfc_window, ptr %124, i32 %126
  %128 = load i32, ptr %127, align 4
  %129 = icmp ult i32 %120, %128
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = getelementptr %struct.sh_pfc_window, ptr %124, i32 %126, i32 2
  %132 = load i32, ptr %131, align 4
  %133 = add i32 %132, %128
  %134 = icmp ugt i32 %133, %120
  br i1 %134, label %139, label %135

135:                                              ; preds = %130, %125
  %136 = add nuw i32 %126, 1
  %137 = icmp eq i32 %136, %121
  br i1 %137, label %138, label %125

138:                                              ; preds = %135, %118
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/renesas/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #6, !srcloc !22
  unreachable

139:                                              ; preds = %130
  %140 = getelementptr %struct.sh_pfc_window, ptr %124, i32 %126, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = sub i32 %120, %128
  %143 = getelementptr i8, ptr %141, i32 %142
  %144 = getelementptr %struct.pinmux_cfg_reg, ptr %70, i32 %79, i32 2
  %145 = load i8, ptr %144, align 1
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %139
  %148 = zext i8 %145 to i32
  %149 = xor i32 %87, -1
  %150 = mul i32 %148, %149
  %151 = add i32 %150, %80
  br label %167

152:                                              ; preds = %139
  %153 = load ptr, ptr %85, align 4
  %154 = getelementptr i8, ptr %153, i32 %87
  %155 = load i8, ptr %154, align 1
  br label %156

156:                                              ; preds = %156, %152
  %157 = phi i32 [ %80, %152 ], [ %162, %156 ]
  %158 = phi i32 [ 0, %152 ], [ %163, %156 ]
  %159 = getelementptr i8, ptr %153, i32 %158
  %160 = load i8, ptr %159, align 1
  %161 = zext i8 %160 to i32
  %162 = sub i32 %157, %161
  %163 = add i32 %158, 1
  %164 = icmp ugt i32 %163, %87
  br i1 %164, label %165, label %156

165:                                              ; preds = %156
  %166 = zext i8 %155 to i32
  br label %167

167:                                              ; preds = %165, %147
  %168 = phi i32 [ %151, %147 ], [ %162, %165 ]
  %169 = phi i32 [ %148, %147 ], [ %166, %165 ]
  %170 = shl nsw i32 -1, %169
  %171 = xor i32 %170, -1
  %172 = shl i32 %171, %168
  %173 = xor i32 %172, -1
  %174 = shl i32 %99, %168
  %175 = getelementptr %struct.pinmux_cfg_reg, ptr %70, i32 %79, i32 1
  switch i8 %78, label %184 [
    i8 8, label %176
    i8 16, label %179
    i8 32, label %182
  ]

176:                                              ; preds = %167
  %177 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %143) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %178 = zext i8 %177 to i32
  br label %185

179:                                              ; preds = %167
  %180 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %143) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %181 = zext i16 %180 to i32
  br label %185

182:                                              ; preds = %167
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %143) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  br label %185

184:                                              ; preds = %167
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/renesas/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 151, 0\0A.popsection", ""() #6, !srcloc !14
  unreachable

185:                                              ; preds = %182, %179, %176
  %186 = phi i32 [ %183, %182 ], [ %181, %179 ], [ %178, %176 ]
  %187 = and i32 %186, %173
  %188 = or i32 %187, %174
  %189 = load ptr, ptr %15, align 4
  %190 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %189, i32 0, i32 20
  %191 = load i32, ptr %190, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %223, label %193

193:                                              ; preds = %185
  %194 = load i32, ptr %119, align 4
  %195 = icmp slt i32 %191, 0
  %196 = xor i32 %191, -1
  %197 = and i32 %194, %196
  %198 = select i1 %195, i32 %191, i32 %197
  %199 = load i32, ptr %18, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %216, label %201

201:                                              ; preds = %193
  %202 = load ptr, ptr %19, align 4
  br label %203

203:                                              ; preds = %213, %201
  %204 = phi i32 [ 0, %201 ], [ %214, %213 ]
  %205 = getelementptr %struct.sh_pfc_window, ptr %202, i32 %204
  %206 = load i32, ptr %205, align 4
  %207 = icmp ult i32 %198, %206
  br i1 %207, label %213, label %208

208:                                              ; preds = %203
  %209 = getelementptr %struct.sh_pfc_window, ptr %202, i32 %204, i32 2
  %210 = load i32, ptr %209, align 4
  %211 = add i32 %210, %206
  %212 = icmp ugt i32 %211, %198
  br i1 %212, label %217, label %213

213:                                              ; preds = %208, %203
  %214 = add nuw i32 %204, 1
  %215 = icmp eq i32 %214, %199
  br i1 %215, label %216, label %203

216:                                              ; preds = %213, %193
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/renesas/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #6, !srcloc !22
  unreachable

217:                                              ; preds = %208
  %218 = getelementptr %struct.sh_pfc_window, ptr %202, i32 %204, i32 1
  %219 = load ptr, ptr %218, align 4
  %220 = sub i32 %198, %206
  %221 = getelementptr i8, ptr %219, i32 %220
  %222 = xor i32 %188, -1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %221, i32 %222) #6, !srcloc !20
  br label %223

223:                                              ; preds = %217, %185
  %224 = load i8, ptr %175, align 4
  switch i8 %224, label %230 [
    i8 8, label %225
    i8 16, label %227
    i8 32, label %229
  ]

225:                                              ; preds = %223
  %226 = trunc i32 %188 to i8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %143, i8 %226) #6, !srcloc !16
  br label %58

227:                                              ; preds = %223
  %228 = trunc i32 %188 to i16
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %143, i16 %228) #6, !srcloc !18
  br label %58

229:                                              ; preds = %223
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %188) #6, !srcloc !20
  br label %58

230:                                              ; preds = %223
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/renesas/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 170, 0\0A.popsection", ""() #6, !srcloc !21
  unreachable

231:                                              ; preds = %112, %68, %47, %41, %38, %3
  %232 = phi i32 [ -22, %3 ], [ -22, %38 ], [ -22, %112 ], [ -22, %68 ], [ %43, %41 ], [ 0, %47 ]
  ret i32 %232
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sh_pfc_init() #2 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sh_pfc_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_pfc_probe(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @of_device_get_match_data(ptr noundef %2) #6
  br label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.platform_device_id, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = inttoptr i32 %12 to ptr
  br label %14

14:                                               ; preds = %8, %6
  %15 = phi ptr [ %7, %6 ], [ %13, %8 ]
  %16 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 48, i32 noundef 3520) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %324, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.sh_pfc, ptr %16, i32 0, i32 1
  store ptr %15, ptr %19, align 4
  store ptr %2, ptr %16, align 4
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi i32 [ 0, %18 ], [ %24, %20 ]
  %22 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef %21) #6
  %23 = icmp eq ptr %22, null
  %24 = add i32 %21, 1
  br i1 %23, label %25, label %20

25:                                               ; preds = %20
  %26 = icmp eq i32 %21, 0
  br i1 %26, label %324, label %27

27:                                               ; preds = %25
  %28 = tail call i32 @platform_irq_count(ptr noundef %0) #6
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %324, label %30

30:                                               ; preds = %27
  %31 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %21, i32 12) #6
  %32 = extractvalue { i32, i1 } %31, 1
  br i1 %32, label %324, label %33, !prof !23

33:                                               ; preds = %30
  %34 = load ptr, ptr %16, align 4
  %35 = extractvalue { i32, i1 } %31, 0
  %36 = tail call noalias ptr @devm_kmalloc(ptr noundef %34, i32 noundef %35, i32 noundef 3520) #6
  %37 = icmp eq ptr %36, null
  br i1 %37, label %324, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.sh_pfc, ptr %16, i32 0, i32 3
  store i32 %21, ptr %39, align 4
  %40 = getelementptr inbounds %struct.sh_pfc, ptr %16, i32 0, i32 4
  store ptr %36, ptr %40, align 4
  %41 = icmp eq i32 %28, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %38
  %43 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %28, i32 4) #6
  %44 = extractvalue { i32, i1 } %43, 1
  br i1 %44, label %324, label %45, !prof !23

45:                                               ; preds = %42
  %46 = load ptr, ptr %16, align 4
  %47 = extractvalue { i32, i1 } %43, 0
  %48 = tail call noalias ptr @devm_kmalloc(ptr noundef %46, i32 noundef %47, i32 noundef 3520) #6
  %49 = icmp eq ptr %48, null
  br i1 %49, label %324, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.sh_pfc, ptr %16, i32 0, i32 5
  store i32 %28, ptr %51, align 4
  %52 = getelementptr inbounds %struct.sh_pfc, ptr %16, i32 0, i32 6
  store ptr %48, ptr %52, align 4
  br label %53

53:                                               ; preds = %50, %38
  %54 = phi ptr [ %48, %50 ], [ null, %38 ]
  br label %56

55:                                               ; preds = %71
  br i1 %41, label %82, label %75

56:                                               ; preds = %71, %53
  %57 = phi i32 [ %73, %71 ], [ 0, %53 ]
  %58 = phi ptr [ %72, %71 ], [ %36, %53 ]
  %59 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef %57) #6
  %60 = load i32, ptr %59, align 4
  store i32 %60, ptr %58, align 4
  %61 = getelementptr inbounds %struct.resource, ptr %59, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr %59, align 4
  %64 = add i32 %62, 1
  %65 = sub i32 %64, %63
  %66 = getelementptr inbounds %struct.sh_pfc_window, ptr %58, i32 0, i32 2
  store i32 %65, ptr %66, align 4
  %67 = load ptr, ptr %16, align 4
  %68 = tail call ptr @devm_ioremap_resource(ptr noundef %67, ptr noundef %59) #6
  %69 = getelementptr inbounds %struct.sh_pfc_window, ptr %58, i32 0, i32 1
  store ptr %68, ptr %69, align 4
  %70 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %324, label %71

71:                                               ; preds = %56
  %72 = getelementptr %struct.sh_pfc_window, ptr %58, i32 1
  %73 = add nuw i32 %57, 1
  %74 = icmp eq i32 %73, %21
  br i1 %74, label %55, label %56

75:                                               ; preds = %75, %55
  %76 = phi i32 [ %80, %75 ], [ 0, %55 ]
  %77 = phi ptr [ %79, %75 ], [ %54, %55 ]
  %78 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef %76) #6
  %79 = getelementptr i32, ptr %77, i32 1
  store i32 %78, ptr %77, align 4
  %80 = add nuw i32 %76, 1
  %81 = icmp eq i32 %80, %28
  br i1 %81, label %82, label %75

82:                                               ; preds = %75, %55
  %83 = getelementptr inbounds %struct.sh_pfc, ptr %16, i32 0, i32 2
  store i32 0, ptr %83, align 4
  %84 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %15, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %82
  %88 = load ptr, ptr %85, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %87
  %91 = tail call i32 %88(ptr noundef nonnull %16) #6
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %324, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr %19, align 4
  br label %95

95:                                               ; preds = %93, %87, %82
  %96 = phi ptr [ %94, %93 ], [ %15, %87 ], [ %15, %82 ]
  %97 = load ptr, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 1), align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %185, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr %19, align 4
  %101 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %100, i32 0, i32 13
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %113, label %104

104:                                              ; preds = %99
  %105 = load i32, ptr %102, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %107, %104
  %108 = phi i32 [ %109, %107 ], [ 0, %104 ]
  %109 = add i32 %108, 1
  %110 = getelementptr %struct.pinmux_cfg_reg, ptr %102, i32 %109
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %107

113:                                              ; preds = %107, %104, %99
  %114 = phi i32 [ 0, %99 ], [ 0, %104 ], [ %109, %107 ]
  %115 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %100, i32 0, i32 14
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %129, label %118

118:                                              ; preds = %113
  %119 = load i32, ptr %116, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %121, %118
  %122 = phi i32 [ %124, %121 ], [ %114, %118 ]
  %123 = phi i32 [ %125, %121 ], [ 0, %118 ]
  %124 = add i32 %122, 1
  %125 = add i32 %123, 1
  %126 = getelementptr %struct.pinmux_drive_reg, ptr %116, i32 %125
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %121

129:                                              ; preds = %121, %118, %113
  %130 = phi i32 [ %114, %113 ], [ %114, %118 ], [ %124, %121 ]
  %131 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %100, i32 0, i32 15
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %155, label %134

134:                                              ; preds = %152, %129
  %135 = phi i32 [ %154, %152 ], [ 0, %129 ]
  %136 = phi i32 [ %153, %152 ], [ %130, %129 ]
  %137 = getelementptr %struct.pinmux_bias_reg, ptr %132, i32 %135
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = getelementptr %struct.pinmux_bias_reg, ptr %132, i32 %135, i32 1
  %142 = load i32, ptr %141, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %155, label %149

144:                                              ; preds = %134
  %145 = add i32 %136, 1
  %146 = getelementptr %struct.pinmux_bias_reg, ptr %132, i32 %135, i32 1
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %144, %140
  %150 = phi i32 [ %145, %144 ], [ %136, %140 ]
  %151 = add i32 %150, 1
  br label %152

152:                                              ; preds = %149, %144
  %153 = phi i32 [ %151, %149 ], [ %145, %144 ]
  %154 = add i32 %135, 1
  br label %134

155:                                              ; preds = %140, %129
  %156 = phi i32 [ %130, %129 ], [ %136, %140 ]
  %157 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %100, i32 0, i32 16
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %171, label %160

160:                                              ; preds = %155
  %161 = load i32, ptr %158, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %171, label %163

163:                                              ; preds = %163, %160
  %164 = phi i32 [ %166, %163 ], [ %156, %160 ]
  %165 = phi i32 [ %167, %163 ], [ 0, %160 ]
  %166 = add i32 %164, 1
  %167 = add i32 %165, 1
  %168 = getelementptr %struct.pinmux_ioctrl_reg, ptr %158, i32 %167
  %169 = load i32, ptr %168, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %163

171:                                              ; preds = %163, %160, %155
  %172 = phi i32 [ %156, %155 ], [ %156, %160 ], [ %166, %163 ]
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %185, label %174

174:                                              ; preds = %171
  %175 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %172, i32 4) #6
  %176 = extractvalue { i32, i1 } %175, 1
  br i1 %176, label %177, label %179, !prof !23

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.sh_pfc, ptr %16, i32 0, i32 11
  store ptr null, ptr %178, align 4
  br label %324

179:                                              ; preds = %174
  %180 = load ptr, ptr %16, align 4
  %181 = extractvalue { i32, i1 } %175, 0
  %182 = tail call noalias ptr @devm_kmalloc(ptr noundef %180, i32 noundef %181, i32 noundef 3264) #6
  %183 = getelementptr inbounds %struct.sh_pfc, ptr %16, i32 0, i32 11
  store ptr %182, ptr %183, align 4
  %184 = icmp eq ptr %182, null
  br i1 %184, label %324, label %185

185:                                              ; preds = %179, %171, %95
  %186 = load ptr, ptr @of_root, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  tail call void @pinctrl_provide_dummies() #6
  br label %189

189:                                              ; preds = %188, %185
  %190 = load ptr, ptr %19, align 4
  %191 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %190, i32 0, i32 7
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr inbounds %struct.sh_pfc_pin, ptr %192, i32 0, i32 2
  %194 = load i16, ptr %193, align 4
  %195 = icmp eq i16 %194, -1
  br i1 %195, label %200, label %196

196:                                              ; preds = %189
  %197 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %190, i32 0, i32 8
  %198 = load i32, ptr %197, align 4
  %199 = icmp ugt i32 %198, 1
  br i1 %199, label %214, label %228

200:                                              ; preds = %189
  %201 = getelementptr inbounds %struct.sh_pfc, ptr %16, i32 0, i32 8
  store i32 1, ptr %201, align 4
  %202 = load ptr, ptr %16, align 4
  %203 = tail call noalias ptr @devm_kmalloc(ptr noundef %202, i32 noundef 4, i32 noundef 3520) #6
  %204 = getelementptr inbounds %struct.sh_pfc, ptr %16, i32 0, i32 7
  store ptr %203, ptr %204, align 4
  %205 = icmp eq ptr %203, null
  br i1 %205, label %324, label %206

206:                                              ; preds = %200
  store i16 0, ptr %203, align 2
  %207 = load ptr, ptr %19, align 4
  %208 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %207, i32 0, i32 8
  %209 = load i32, ptr %208, align 4
  %210 = trunc i32 %209 to i16
  %211 = add i16 %210, -1
  %212 = getelementptr inbounds %struct.sh_pfc_pin_range, ptr %203, i32 0, i32 1
  store i16 %211, ptr %212, align 2
  %213 = load i32, ptr %208, align 4
  br label %309

214:                                              ; preds = %214, %196
  %215 = phi i16 [ %220, %214 ], [ %194, %196 ]
  %216 = phi i32 [ %226, %214 ], [ 1, %196 ]
  %217 = phi i32 [ %225, %214 ], [ 1, %196 ]
  %218 = zext i16 %215 to i32
  %219 = getelementptr %struct.sh_pfc_pin, ptr %192, i32 %216, i32 2
  %220 = load i16, ptr %219, align 4
  %221 = zext i16 %220 to i32
  %222 = add nsw i32 %221, -1
  %223 = icmp ne i32 %222, %218
  %224 = zext i1 %223 to i32
  %225 = add i32 %217, %224
  %226 = add nuw i32 %216, 1
  %227 = icmp eq i32 %226, %198
  br i1 %227, label %228, label %214

228:                                              ; preds = %214, %196
  %229 = phi i32 [ 1, %196 ], [ %225, %214 ]
  %230 = getelementptr inbounds %struct.sh_pfc, ptr %16, i32 0, i32 8
  store i32 %229, ptr %230, align 4
  %231 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %229, i32 4) #6
  %232 = extractvalue { i32, i1 } %231, 1
  br i1 %232, label %233, label %235, !prof !23

233:                                              ; preds = %228
  %234 = getelementptr inbounds %struct.sh_pfc, ptr %16, i32 0, i32 7
  store ptr null, ptr %234, align 4
  br label %324

235:                                              ; preds = %228
  %236 = load ptr, ptr %16, align 4
  %237 = extractvalue { i32, i1 } %231, 0
  %238 = tail call noalias ptr @devm_kmalloc(ptr noundef %236, i32 noundef %237, i32 noundef 3520) #6
  %239 = getelementptr inbounds %struct.sh_pfc, ptr %16, i32 0, i32 7
  store ptr %238, ptr %239, align 4
  %240 = icmp eq ptr %238, null
  br i1 %240, label %324, label %241

241:                                              ; preds = %235
  %242 = load ptr, ptr %19, align 4
  %243 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %242, i32 0, i32 7
  %244 = load ptr, ptr %243, align 4
  %245 = getelementptr inbounds %struct.sh_pfc_pin, ptr %244, i32 0, i32 2
  %246 = load i16, ptr %245, align 4
  store i16 %246, ptr %238, align 2
  %247 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %242, i32 0, i32 8
  %248 = load i32, ptr %247, align 4
  %249 = icmp ugt i32 %248, 1
  br i1 %249, label %250, label %291

250:                                              ; preds = %241
  %251 = getelementptr inbounds %struct.sh_pfc, ptr %16, i32 0, i32 9
  br label %252

252:                                              ; preds = %284, %250
  %253 = phi ptr [ %242, %250 ], [ %285, %284 ]
  %254 = phi i32 [ 1, %250 ], [ %287, %284 ]
  %255 = phi ptr [ %238, %250 ], [ %286, %284 ]
  %256 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %253, i32 0, i32 7
  %257 = load ptr, ptr %256, align 4
  %258 = add i32 %254, -1
  %259 = getelementptr %struct.sh_pfc_pin, ptr %257, i32 %258, i32 2
  %260 = load i16, ptr %259, align 4
  %261 = zext i16 %260 to i32
  %262 = getelementptr %struct.sh_pfc_pin, ptr %257, i32 %254, i32 2
  %263 = load i16, ptr %262, align 4
  %264 = zext i16 %263 to i32
  %265 = add nsw i32 %264, -1
  %266 = icmp eq i32 %265, %261
  br i1 %266, label %284, label %267

267:                                              ; preds = %252
  %268 = getelementptr inbounds %struct.sh_pfc_pin_range, ptr %255, i32 0, i32 1
  store i16 %260, ptr %268, align 2
  %269 = load ptr, ptr %19, align 4
  %270 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %269, i32 0, i32 7
  %271 = load ptr, ptr %270, align 4
  %272 = getelementptr %struct.sh_pfc_pin, ptr %271, i32 %258, i32 1
  %273 = load i32, ptr %272, align 4
  %274 = icmp sgt i32 %273, -1
  br i1 %274, label %275, label %278

275:                                              ; preds = %267
  %276 = add nuw nsw i32 %261, 1
  store i32 %276, ptr %251, align 4
  %277 = load ptr, ptr %270, align 4
  br label %278

278:                                              ; preds = %275, %267
  %279 = phi ptr [ %277, %275 ], [ %271, %267 ]
  %280 = getelementptr %struct.sh_pfc_pin_range, ptr %255, i32 1
  %281 = getelementptr %struct.sh_pfc_pin, ptr %279, i32 %254, i32 2
  %282 = load i16, ptr %281, align 4
  store i16 %282, ptr %280, align 2
  %283 = load ptr, ptr %19, align 4
  br label %284

284:                                              ; preds = %278, %252
  %285 = phi ptr [ %253, %252 ], [ %283, %278 ]
  %286 = phi ptr [ %255, %252 ], [ %280, %278 ]
  %287 = add nuw i32 %254, 1
  %288 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %285, i32 0, i32 8
  %289 = load i32, ptr %288, align 4
  %290 = icmp ult i32 %287, %289
  br i1 %290, label %252, label %291

291:                                              ; preds = %284, %241
  %292 = phi ptr [ %238, %241 ], [ %286, %284 ]
  %293 = phi i32 [ 0, %241 ], [ %254, %284 ]
  %294 = phi ptr [ %242, %241 ], [ %285, %284 ]
  %295 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %294, i32 0, i32 7
  %296 = load ptr, ptr %295, align 4
  %297 = getelementptr %struct.sh_pfc_pin, ptr %296, i32 %293, i32 2
  %298 = load i16, ptr %297, align 4
  %299 = getelementptr inbounds %struct.sh_pfc_pin_range, ptr %292, i32 0, i32 1
  store i16 %298, ptr %299, align 2
  %300 = load ptr, ptr %19, align 4
  %301 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %300, i32 0, i32 7
  %302 = load ptr, ptr %301, align 4
  %303 = getelementptr %struct.sh_pfc_pin, ptr %302, i32 %293, i32 1
  %304 = load i32, ptr %303, align 4
  %305 = icmp sgt i32 %304, -1
  br i1 %305, label %306, label %312

306:                                              ; preds = %291
  %307 = zext i16 %298 to i32
  %308 = add nuw nsw i32 %307, 1
  br label %309

309:                                              ; preds = %306, %206
  %310 = phi i32 [ %308, %306 ], [ %213, %206 ]
  %311 = getelementptr inbounds %struct.sh_pfc, ptr %16, i32 0, i32 9
  store i32 %310, ptr %311, align 4
  br label %312

312:                                              ; preds = %309, %291
  %313 = tail call i32 @sh_pfc_register_pinctrl(ptr noundef nonnull %16) #6
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %324, !prof !24

315:                                              ; preds = %312
  %316 = tail call i32 @sh_pfc_register_gpiochip(ptr noundef nonnull %16) #6
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %320, label %318, !prof !24

318:                                              ; preds = %315
  %319 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %319, ptr noundef nonnull @.str.2) #7
  br label %320

320:                                              ; preds = %318, %315
  %321 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %16, ptr %321, align 8
  %322 = load ptr, ptr %16, align 4
  %323 = load ptr, ptr %96, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %322, ptr noundef nonnull @.str.3, ptr noundef %323) #7
  br label %324

324:                                              ; preds = %320, %312, %235, %233, %200, %179, %177, %90, %56, %45, %42, %33, %30, %27, %25, %14
  %325 = phi i32 [ 0, %320 ], [ -12, %14 ], [ %91, %90 ], [ %313, %312 ], [ -12, %179 ], [ -12, %42 ], [ -12, %30 ], [ -12, %45 ], [ -12, %33 ], [ %28, %27 ], [ -22, %25 ], [ -12, %177 ], [ -12, %200 ], [ -12, %235 ], [ -12, %233 ], [ -12, %56 ]
  ret i32 %325
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_provide_dummies() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sh_pfc_register_pinctrl(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sh_pfc_register_gpiochip(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sh_pfc_walk_regs(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %4, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = load i32, ptr %6, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %11, %8
  %12 = phi i32 [ %19, %11 ], [ %9, %8 ]
  %13 = phi i32 [ %14, %11 ], [ 0, %8 ]
  %14 = add i32 %13, 1
  tail call void %1(ptr noundef %0, i32 noundef %12, i32 noundef %13) #6, !callees !25
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %15, i32 0, i32 13
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.pinmux_cfg_reg, ptr %17, i32 %14
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %11

21:                                               ; preds = %11, %8, %2
  %22 = phi ptr [ %4, %2 ], [ %4, %8 ], [ %15, %11 ]
  %23 = phi i32 [ 0, %2 ], [ 0, %8 ], [ %14, %11 ]
  %24 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %22, i32 0, i32 14
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %21
  %28 = load i32, ptr %25, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %30, %27
  %31 = phi i32 [ %40, %30 ], [ %28, %27 ]
  %32 = phi i32 [ %34, %30 ], [ %23, %27 ]
  %33 = phi i32 [ %35, %30 ], [ 0, %27 ]
  %34 = add i32 %32, 1
  tail call void %1(ptr noundef %0, i32 noundef %31, i32 noundef %32) #6, !callees !25
  %35 = add i32 %33, 1
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %36, i32 0, i32 14
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr %struct.pinmux_drive_reg, ptr %38, i32 %35
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %30

42:                                               ; preds = %30, %27, %21
  %43 = phi ptr [ %22, %21 ], [ %22, %27 ], [ %36, %30 ]
  %44 = phi i32 [ %23, %21 ], [ %23, %27 ], [ %34, %30 ]
  %45 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %43, i32 0, i32 15
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %80, label %48

48:                                               ; preds = %75, %42
  %49 = phi ptr [ %76, %75 ], [ %46, %42 ]
  %50 = phi ptr [ %77, %75 ], [ %43, %42 ]
  %51 = phi i32 [ %79, %75 ], [ 0, %42 ]
  %52 = phi i32 [ %78, %75 ], [ %44, %42 ]
  %53 = getelementptr %struct.pinmux_bias_reg, ptr %49, i32 %51
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = getelementptr %struct.pinmux_bias_reg, ptr %49, i32 %51, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %80, label %68

60:                                               ; preds = %48
  %61 = add i32 %52, 1
  tail call void %1(ptr noundef %0, i32 noundef %54, i32 noundef %52) #6, !callees !25
  %62 = load ptr, ptr %3, align 4
  %63 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %62, i32 0, i32 15
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr %struct.pinmux_bias_reg, ptr %64, i32 %51, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %60, %56
  %69 = phi i32 [ %61, %60 ], [ %52, %56 ]
  %70 = phi i32 [ %66, %60 ], [ %58, %56 ]
  %71 = add i32 %69, 1
  tail call void %1(ptr noundef %0, i32 noundef %70, i32 noundef %69) #6, !callees !25
  %72 = load ptr, ptr %3, align 4
  %73 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %72, i32 0, i32 15
  %74 = load ptr, ptr %73, align 4
  br label %75

75:                                               ; preds = %68, %60
  %76 = phi ptr [ %74, %68 ], [ %64, %60 ]
  %77 = phi ptr [ %72, %68 ], [ %62, %60 ]
  %78 = phi i32 [ %71, %68 ], [ %61, %60 ]
  %79 = add i32 %51, 1
  br label %48

80:                                               ; preds = %56, %42
  %81 = phi ptr [ %43, %42 ], [ %50, %56 ]
  %82 = phi i32 [ %44, %42 ], [ %52, %56 ]
  %83 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %81, i32 0, i32 16
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %101, label %86

86:                                               ; preds = %80
  %87 = load i32, ptr %84, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %89, %86
  %90 = phi i32 [ %99, %89 ], [ %87, %86 ]
  %91 = phi i32 [ %93, %89 ], [ %82, %86 ]
  %92 = phi i32 [ %94, %89 ], [ 0, %86 ]
  %93 = add i32 %91, 1
  tail call void %1(ptr noundef %0, i32 noundef %90, i32 noundef %91) #6, !callees !25
  %94 = add i32 %92, 1
  %95 = load ptr, ptr %3, align 4
  %96 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %95, i32 0, i32 16
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr %struct.pinmux_ioctrl_reg, ptr %97, i32 %94
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %89

101:                                              ; preds = %89, %86, %80
  %102 = phi i32 [ %82, %80 ], [ %82, %86 ], [ %93, %89 ]
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_pfc_suspend_noirq(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sh_pfc, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call fastcc i32 @sh_pfc_walk_regs(ptr noundef %3, ptr noundef nonnull @sh_pfc_save_reg)
  br label %9

9:                                                ; preds = %7, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_pfc_resume_noirq(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sh_pfc, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %129, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sh_pfc, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %9, i32 0, i32 13
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %37, label %13

13:                                               ; preds = %7
  %14 = load i32, ptr %11, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %37, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %5, align 4
  tail call void @sh_pfc_write(ptr noundef %3, i32 noundef %14, i32 noundef %17) #6
  %18 = load ptr, ptr %8, align 4
  %19 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %18, i32 0, i32 13
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr %struct.pinmux_cfg_reg, ptr %20, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %24, %16
  %25 = phi i32 [ %35, %24 ], [ %22, %16 ]
  %26 = phi i32 [ %28, %24 ], [ 1, %16 ]
  %27 = load ptr, ptr %4, align 4
  %28 = add i32 %26, 1
  %29 = getelementptr i32, ptr %27, i32 %26
  %30 = load i32, ptr %29, align 4
  tail call void @sh_pfc_write(ptr noundef %3, i32 noundef %25, i32 noundef %30) #6
  %31 = load ptr, ptr %8, align 4
  %32 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %31, i32 0, i32 13
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr %struct.pinmux_cfg_reg, ptr %33, i32 %28
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %24

37:                                               ; preds = %24, %16, %13, %7
  %38 = phi ptr [ %9, %7 ], [ %9, %13 ], [ %18, %16 ], [ %31, %24 ]
  %39 = phi i32 [ 0, %7 ], [ 0, %13 ], [ 1, %16 ], [ %28, %24 ]
  %40 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %38, i32 0, i32 14
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %61, label %43

43:                                               ; preds = %37
  %44 = load i32, ptr %41, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %46, %43
  %47 = phi i32 [ %59, %46 ], [ %44, %43 ]
  %48 = phi i32 [ %50, %46 ], [ %39, %43 ]
  %49 = phi i32 [ %54, %46 ], [ 0, %43 ]
  %50 = add i32 %48, 1
  %51 = load ptr, ptr %4, align 4
  %52 = getelementptr i32, ptr %51, i32 %48
  %53 = load i32, ptr %52, align 4
  tail call void @sh_pfc_write(ptr noundef %3, i32 noundef %47, i32 noundef %53) #6
  %54 = add i32 %49, 1
  %55 = load ptr, ptr %8, align 4
  %56 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %55, i32 0, i32 14
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr %struct.pinmux_drive_reg, ptr %57, i32 %54
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %46

61:                                               ; preds = %46, %43, %37
  %62 = phi ptr [ %38, %37 ], [ %38, %43 ], [ %55, %46 ]
  %63 = phi i32 [ %39, %37 ], [ %39, %43 ], [ %50, %46 ]
  %64 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %62, i32 0, i32 15
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %105, label %67

67:                                               ; preds = %100, %61
  %68 = phi ptr [ %101, %100 ], [ %65, %61 ]
  %69 = phi ptr [ %102, %100 ], [ %62, %61 ]
  %70 = phi i32 [ %104, %100 ], [ 0, %61 ]
  %71 = phi i32 [ %103, %100 ], [ %63, %61 ]
  %72 = getelementptr %struct.pinmux_bias_reg, ptr %68, i32 %70
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = getelementptr %struct.pinmux_bias_reg, ptr %68, i32 %70, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %105, label %90

79:                                               ; preds = %67
  %80 = add i32 %71, 1
  %81 = load ptr, ptr %4, align 4
  %82 = getelementptr i32, ptr %81, i32 %71
  %83 = load i32, ptr %82, align 4
  tail call void @sh_pfc_write(ptr noundef %3, i32 noundef %73, i32 noundef %83) #6
  %84 = load ptr, ptr %8, align 4
  %85 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %84, i32 0, i32 15
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr %struct.pinmux_bias_reg, ptr %86, i32 %70, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %79, %75
  %91 = phi i32 [ %80, %79 ], [ %71, %75 ]
  %92 = phi i32 [ %88, %79 ], [ %77, %75 ]
  %93 = add i32 %91, 1
  %94 = load ptr, ptr %4, align 4
  %95 = getelementptr i32, ptr %94, i32 %91
  %96 = load i32, ptr %95, align 4
  tail call void @sh_pfc_write(ptr noundef %3, i32 noundef %92, i32 noundef %96) #6
  %97 = load ptr, ptr %8, align 4
  %98 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %97, i32 0, i32 15
  %99 = load ptr, ptr %98, align 4
  br label %100

100:                                              ; preds = %90, %79
  %101 = phi ptr [ %99, %90 ], [ %86, %79 ]
  %102 = phi ptr [ %97, %90 ], [ %84, %79 ]
  %103 = phi i32 [ %93, %90 ], [ %80, %79 ]
  %104 = add i32 %70, 1
  br label %67

105:                                              ; preds = %75, %61
  %106 = phi ptr [ %62, %61 ], [ %69, %75 ]
  %107 = phi i32 [ %63, %61 ], [ %71, %75 ]
  %108 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %106, i32 0, i32 16
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %129, label %111

111:                                              ; preds = %105
  %112 = load i32, ptr %109, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %129, label %114

114:                                              ; preds = %114, %111
  %115 = phi i32 [ %127, %114 ], [ %112, %111 ]
  %116 = phi i32 [ %118, %114 ], [ %107, %111 ]
  %117 = phi i32 [ %122, %114 ], [ 0, %111 ]
  %118 = add i32 %116, 1
  %119 = load ptr, ptr %4, align 4
  %120 = getelementptr i32, ptr %119, i32 %116
  %121 = load i32, ptr %120, align 4
  tail call void @sh_pfc_write(ptr noundef %3, i32 noundef %115, i32 noundef %121) #6
  %122 = add i32 %117, 1
  %123 = load ptr, ptr %8, align 4
  %124 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %123, i32 0, i32 16
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr %struct.pinmux_ioctrl_reg, ptr %125, i32 %122
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %114

129:                                              ; preds = %114, %111, %105, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_pfc_save_reg(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %20, %7
  %11 = phi i32 [ 0, %7 ], [ %21, %20 ]
  %12 = getelementptr %struct.sh_pfc_window, ptr %9, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, %1
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = getelementptr %struct.sh_pfc_window, ptr %9, i32 %11, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %13
  %19 = icmp ugt i32 %18, %1
  br i1 %19, label %24, label %20

20:                                               ; preds = %15, %10
  %21 = add nuw i32 %11, 1
  %22 = icmp eq i32 %21, %5
  br i1 %22, label %23, label %10

23:                                               ; preds = %20, %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/renesas/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #6, !srcloc !22
  unreachable

24:                                               ; preds = %15
  %25 = getelementptr %struct.sh_pfc_window, ptr %9, i32 %11, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = sub i32 %1, %13
  %28 = getelementptr i8, ptr %26, i32 %27
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #6, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %30 = getelementptr inbounds %struct.sh_pfc, ptr %0, i32 0, i32 11
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i32, ptr %31, i32 %2
  store i32 %29, ptr %32, align 4
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 908621}
!9 = !{i64 2148599615}
!10 = !{i64 908003}
!11 = !{i64 2148600088}
!12 = !{i64 908841}
!13 = !{i64 2148600561}
!14 = !{i64 2151540430, i64 2151540925, i64 2151540467, i64 2151540523, i64 2151540557, i64 2151540581, i64 2151540622, i64 2151540643, i64 2151540671, i64 2151540705}
!15 = !{i64 2148600913}
!16 = !{i64 908226}
!17 = !{i64 2148601310}
!18 = !{i64 907803}
!19 = !{i64 2148601783}
!20 = !{i64 908423}
!21 = !{i64 2151541406, i64 2151541901, i64 2151541443, i64 2151541499, i64 2151541533, i64 2151541557, i64 2151541598, i64 2151541619, i64 2151541647, i64 2151541681}
!22 = !{i64 2151539442, i64 2151539937, i64 2151539479, i64 2151539535, i64 2151539569, i64 2151539593, i64 2151539634, i64 2151539655, i64 2151539683, i64 2151539717}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = distinct !{null, null, ptr @sh_pfc_save_reg}
