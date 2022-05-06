; ModuleID = '/llk/IR/drivers/bcma/core.c_pt.bc'
source_filename = "../drivers/bcma/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_core_is_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_core_is_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_core_is_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_core_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_core_disable\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_core_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_core_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_core_enable\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_core_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_core_set_clockmode:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_core_set_clockmode\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_core_set_clockmode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_core_pll_ctl:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_core_pll_ctl\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_core_pll_ctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_core_dma_translation:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_core_dma_translation\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_core_dma_translation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bcma_drv_cc = type { ptr, i32, i32, i32, i8, i16, %struct.bcma_chipcommon_pmu, %struct.bcma_sflash, i32, ptr, %struct.spinlock, %struct.gpio_chip }
%struct.bcma_chipcommon_pmu = type { ptr, i8, i32 }
%struct.bcma_sflash = type { i8, i32, i16, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.61, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.61 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.62, %struct.anon.63, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.62 = type { i8, i8, i8, i8 }
%struct.anon.63 = type { %struct.anon.64, %struct.anon.65 }
%struct.anon.64 = type { i8, i8, i8, i8, i8 }
%struct.anon.65 = type { i8, i8, i8, i8, i8 }
%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bcma_device = type { ptr, %struct.bcma_device_id, %struct.device, ptr, i32, i8, i8, i8, i32, [8 x i32], i32, ptr, ptr, ptr, %struct.list_head }
%struct.bcma_device_id = type { i16, i16, i8, i8 }
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

@__kstrtab_bcma_core_is_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_core_is_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_core_is_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_core_is_enabled to i32), ptr @__kstrtab_bcma_core_is_enabled, ptr @__kstrtabns_bcma_core_is_enabled }, section "___ksymtab_gpl+bcma_core_is_enabled", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__kstrtab_bcma_core_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_core_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_core_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_core_disable to i32), ptr @__kstrtab_bcma_core_disable, ptr @__kstrtabns_bcma_core_disable }, section "___ksymtab_gpl+bcma_core_disable", align 4
@__kstrtab_bcma_core_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_core_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_core_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_core_enable to i32), ptr @__kstrtab_bcma_core_enable, ptr @__kstrtabns_bcma_core_enable }, section "___ksymtab_gpl+bcma_core_enable", align 4
@.str = private unnamed_addr constant [20 x i8] c"drivers/bcma/core.c\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"bus%d: HT force timeout\0A\00", align 1
@__kstrtab_bcma_core_set_clockmode = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_core_set_clockmode = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_core_set_clockmode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_core_set_clockmode to i32), ptr @__kstrtab_bcma_core_set_clockmode, ptr @__kstrtabns_bcma_core_set_clockmode }, section "___ksymtab_gpl+bcma_core_set_clockmode", align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"bus%d: PLL enable timeout\0A\00", align 1
@__kstrtab_bcma_core_pll_ctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_core_pll_ctl = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_core_pll_ctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_core_pll_ctl to i32), ptr @__kstrtab_bcma_core_pll_ctl, ptr @__kstrtabns_bcma_core_pll_ctl }, section "___ksymtab_gpl+bcma_core_pll_ctl", align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"bus%d: DMA translation unknown for host %d\0A\00", align 1
@__kstrtab_bcma_core_dma_translation = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_core_dma_translation = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_core_dma_translation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_core_dma_translation to i32), ptr @__kstrtab_bcma_core_dma_translation, ptr @__kstrtabns_bcma_core_dma_translation }, section "___ksymtab+bcma_core_dma_translation", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.4 = private unnamed_addr constant [45 x i8] c"bus%d: Timeout waiting for register 0x%04X!\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_bcma_core_disable, ptr @__ksymtab_bcma_core_dma_translation, ptr @__ksymtab_bcma_core_enable, ptr @__ksymtab_bcma_core_is_enabled, ptr @__ksymtab_bcma_core_pll_ctl, ptr @__ksymtab_bcma_core_set_clockmode], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @bcma_core_is_enabled(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.bcma_bus, ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bcma_host_ops, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0, i16 noundef zeroext 1032) #3
  %8 = and i32 %7, 3
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.bcma_bus, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.bcma_host_ops, ptr %13, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %0, i16 noundef zeroext 2048) #3
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br label %19

19:                                               ; preds = %10, %1
  %20 = phi i1 [ false, %1 ], [ %18, %10 ]
  ret i1 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcma_core_disable(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0, i16 noundef zeroext 2048) #3
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %58

11:                                               ; preds = %2
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = sub i32 -300, %12
  br label %14

14:                                               ; preds = %22, %11
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds %struct.bcma_bus, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.bcma_host_ops, ptr %17, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %0, i16 noundef zeroext 2052) #3
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !9
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 2147480) #3
  %24 = load volatile i32, ptr @jiffies, align 64
  %25 = add i32 %13, %24
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %14, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %0, align 8
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 11
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.4, i32 noundef %32, i32 noundef 2052) #4
  br label %33

33:                                               ; preds = %27, %14
  %34 = load ptr, ptr %0, align 8
  %35 = getelementptr inbounds %struct.bcma_bus, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.bcma_host_ops, ptr %36, i32 0, i32 7
  %38 = load ptr, ptr %37, align 4
  tail call void %38(ptr noundef %0, i16 noundef zeroext 2048, i32 noundef 1) #3
  %39 = load ptr, ptr %0, align 8
  %40 = getelementptr inbounds %struct.bcma_bus, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.bcma_host_ops, ptr %41, i32 0, i32 6
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 %43(ptr noundef %0, i16 noundef zeroext 2048) #3
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748) #3
  %46 = load ptr, ptr %0, align 8
  %47 = getelementptr inbounds %struct.bcma_bus, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.bcma_host_ops, ptr %48, i32 0, i32 7
  %50 = load ptr, ptr %49, align 4
  tail call void %50(ptr noundef %0, i16 noundef zeroext 1032, i32 noundef %1) #3
  %51 = load ptr, ptr %0, align 8
  %52 = getelementptr inbounds %struct.bcma_bus, ptr %51, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.bcma_host_ops, ptr %53, i32 0, i32 6
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 %55(ptr noundef %0, i16 noundef zeroext 1032) #3
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 2147480) #3
  br label %58

58:                                               ; preds = %33, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcma_core_enable(ptr noundef %0, i32 noundef %1) #0 {
  tail call void @bcma_core_disable(ptr noundef %0, i32 noundef %1)
  %3 = or i32 %1, 3
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.bcma_bus, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bcma_host_ops, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  tail call void %8(ptr noundef %0, i16 noundef zeroext 1032, i32 noundef %3) #3
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.bcma_bus, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.bcma_host_ops, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %0, i16 noundef zeroext 1032) #3
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds %struct.bcma_bus, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.bcma_host_ops, ptr %17, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  tail call void %19(ptr noundef %0, i16 noundef zeroext 2048, i32 noundef 0) #3
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr inbounds %struct.bcma_bus, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.bcma_host_ops, ptr %22, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef %0, i16 noundef zeroext 2048) #3
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #3
  %27 = or i32 %1, 1
  %28 = load ptr, ptr %0, align 8
  %29 = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.bcma_host_ops, ptr %30, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  tail call void %32(ptr noundef %0, i16 noundef zeroext 1032, i32 noundef %27) #3
  %33 = load ptr, ptr %0, align 8
  %34 = getelementptr inbounds %struct.bcma_bus, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.bcma_host_ops, ptr %35, i32 0, i32 6
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 %37(ptr noundef %0, i16 noundef zeroext 1032) #3
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcma_core_set_clockmode(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.bcma_device, ptr %0, i32 0, i32 1, i32 1
  %4 = load i16, ptr %3, align 2
  switch i16 %4, label %5 [
    i16 2048, label %6
    i16 2080, label %6
    i16 2066, label %6
  ]

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 85, i32 noundef 9, ptr noundef null) #3
  br label %6

6:                                                ; preds = %5, %2, %2, %2
  switch i32 %1, label %53 [
    i32 0, label %7
    i32 1, label %40
  ]

7:                                                ; preds = %6
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.bcma_bus, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.bcma_host_ops, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %0, i16 noundef zeroext 480) #3
  %14 = or i32 %13, 2
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds %struct.bcma_bus, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.bcma_host_ops, ptr %17, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  tail call void %19(ptr noundef %0, i16 noundef zeroext 480, i32 noundef %14) #3
  tail call void @usleep_range_state(i32 noundef 64, i32 noundef 300, i32 noundef 2) #3
  br label %20

20:                                               ; preds = %30, %7
  %21 = phi i16 [ 0, %7 ], [ %32, %30 ]
  %22 = load ptr, ptr %0, align 8
  %23 = getelementptr inbounds %struct.bcma_bus, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.bcma_host_ops, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef %0, i16 noundef zeroext 480) #3
  %28 = and i32 %27, 131072
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %20
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 2147480) #3
  %32 = add nuw nsw i16 %21, 1
  %33 = icmp ult i16 %21, 1499
  br i1 %33, label %20, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %0, align 8
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.bcma_bus, ptr %35, i32 0, i32 11
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.1, i32 noundef %39) #4
  br label %53

40:                                               ; preds = %6
  %41 = load ptr, ptr %0, align 8
  %42 = getelementptr inbounds %struct.bcma_bus, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.bcma_host_ops, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 %45(ptr noundef %0, i16 noundef zeroext 480) #3
  %47 = or i32 %46, -3
  %48 = load ptr, ptr %0, align 8
  %49 = getelementptr inbounds %struct.bcma_bus, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.bcma_host_ops, ptr %50, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  tail call void %52(ptr noundef %0, i16 noundef zeroext 480, i32 noundef %47) #3
  br label %53

53:                                               ; preds = %40, %34, %20, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcma_core_pll_ctl(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = and i32 %1, -1793
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !10

7:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 113, i32 noundef 9, ptr noundef null) #3
  br label %8

8:                                                ; preds = %7, %4
  %9 = and i32 %2, -117440513
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !10

11:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 114, i32 noundef 9, ptr noundef null) #3
  br label %12

12:                                               ; preds = %11, %8
  br i1 %3, label %13, label %46

13:                                               ; preds = %12
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr inbounds %struct.bcma_bus, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.bcma_host_ops, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %0, i16 noundef zeroext 480) #3
  %20 = or i32 %19, %1
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr inbounds %struct.bcma_bus, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.bcma_host_ops, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  tail call void %25(ptr noundef %0, i16 noundef zeroext 480, i32 noundef %20) #3
  br label %26

26:                                               ; preds = %36, %13
  %27 = phi i16 [ 0, %13 ], [ %38, %36 ]
  %28 = load ptr, ptr %0, align 8
  %29 = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.bcma_host_ops, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %32(ptr noundef %0, i16 noundef zeroext 480) #3
  %34 = and i32 %33, %2
  %35 = icmp eq i32 %34, %2
  br i1 %35, label %66, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 2147480) #3
  %38 = add nuw nsw i16 %27, 1
  %39 = icmp ult i16 %27, 9999
  br i1 %39, label %26, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %0, align 8
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.bcma_bus, ptr %41, i32 0, i32 11
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.2, i32 noundef %45) #4
  br label %66

46:                                               ; preds = %12
  %47 = xor i32 %1, -1
  %48 = load ptr, ptr %0, align 8
  %49 = getelementptr inbounds %struct.bcma_bus, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.bcma_host_ops, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 %52(ptr noundef %0, i16 noundef zeroext 480) #3
  %54 = and i32 %53, %47
  %55 = load ptr, ptr %0, align 8
  %56 = getelementptr inbounds %struct.bcma_bus, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.bcma_host_ops, ptr %57, i32 0, i32 5
  %59 = load ptr, ptr %58, align 4
  tail call void %59(ptr noundef %0, i16 noundef zeroext 480, i32 noundef %54) #3
  %60 = load ptr, ptr %0, align 8
  %61 = getelementptr inbounds %struct.bcma_bus, ptr %60, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.bcma_host_ops, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = tail call i32 %64(ptr noundef %0, i16 noundef zeroext 480) #3
  br label %66

66:                                               ; preds = %46, %40, %26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcma_core_dma_translation(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.bcma_bus, ptr %2, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %14 [
    i32 2, label %19
    i32 0, label %5
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bcma_bus, ptr %2, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bcma_host_ops, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %0, i16 noundef zeroext 1280) #3
  %11 = and i32 %10, 4096
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 1073741824, i32 -2147483648
  br label %19

14:                                               ; preds = %1
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr inbounds %struct.bcma_bus, ptr %2, i32 0, i32 11
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.3, i32 noundef %18, i32 noundef %4) #4
  br label %19

19:                                               ; preds = %14, %5, %1
  %20 = phi i32 [ 0, %14 ], [ 0, %1 ], [ %13, %5 ]
  ret i32 %20
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
!8 = !{i64 2153584994}
!9 = !{i64 2153584836}
!10 = !{!"branch_weights", i32 2000, i32 1}
