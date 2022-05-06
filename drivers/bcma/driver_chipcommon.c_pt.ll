; ModuleID = '/llk/IR/drivers/bcma/driver_chipcommon.c_pt.bc'
source_filename = "../drivers/bcma/driver_chipcommon.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_chipco_get_alp_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_chipco_get_alp_clock\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_chipco_get_alp_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_chipco_gpio_out:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_chipco_gpio_out\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_chipco_gpio_out:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_chipco_gpio_outen:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_chipco_gpio_outen\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_chipco_gpio_outen:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_chipco_gpio_control:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_chipco_gpio_control\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_chipco_gpio_control:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.bcm47xx_wdt = type { ptr, ptr, i32, ptr, %struct.watchdog_device, %struct.timer_list, %struct.atomic_t }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.66, %struct.anon.67, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.66 = type { i8, i8, i8, i8 }
%struct.anon.67 = type { %struct.anon.68, %struct.anon.69 }
%struct.anon.68 = type { i8, i8, i8, i8, i8 }
%struct.anon.69 = type { i8, i8, i8, i8, i8 }
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
%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_bcma_chipco_get_alp_clock = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_chipco_get_alp_clock = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_chipco_get_alp_clock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_chipco_get_alp_clock to i32), ptr @__kstrtab_bcma_chipco_get_alp_clock, ptr @__kstrtabns_bcma_chipco_get_alp_clock }, section "___ksymtab_gpl+bcma_chipco_get_alp_clock", align 4
@.str = private unnamed_addr constant [12 x i8] c"bcm47xx-wdt\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"bus%d: Power control not implemented!\0A\00", align 1
@__kstrtab_bcma_chipco_gpio_out = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_chipco_gpio_out = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_chipco_gpio_out = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_chipco_gpio_out to i32), ptr @__kstrtab_bcma_chipco_gpio_out, ptr @__kstrtabns_bcma_chipco_gpio_out }, section "___ksymtab_gpl+bcma_chipco_gpio_out", align 4
@__kstrtab_bcma_chipco_gpio_outen = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_chipco_gpio_outen = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_chipco_gpio_outen = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_chipco_gpio_outen to i32), ptr @__kstrtab_bcma_chipco_gpio_outen, ptr @__kstrtabns_bcma_chipco_gpio_outen }, section "___ksymtab_gpl+bcma_chipco_gpio_outen", align 4
@__kstrtab_bcma_chipco_gpio_control = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_chipco_gpio_control = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_chipco_gpio_control = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_chipco_gpio_control to i32), ptr @__kstrtab_bcma_chipco_gpio_control, ptr @__kstrtabns_bcma_chipco_gpio_control }, section "___ksymtab_gpl+bcma_chipco_gpio_control", align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"bus%d: Flash type not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"bus%d: Parallel flash not supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"bus%d: NAND flash not supported\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"drivers/bcma/driver_chipcommon.c\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"No watchdog available\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_bcma_chipco_get_alp_clock, ptr @__ksymtab_bcma_chipco_gpio_control, ptr @__ksymtab_bcma_chipco_gpio_out, ptr @__ksymtab_bcma_chipco_gpio_outen], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcma_chipco_get_alp_clock(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 268435456
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @bcma_pmu_get_alp_clock(ptr noundef %0) #6
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ %7, %6 ], [ 20000000, %1 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_pmu_get_alp_clock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcma_chipco_watchdog_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.platform_device_info, align 8
  %3 = alloca %struct.bcm47xx_wdt, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 148, ptr nonnull %3) #6
  %6 = getelementptr inbounds i8, ptr %3, i32 16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(148) %6, i8 0, i32 132, i1 false)
  %7 = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 6
  %8 = load i16, ptr %7, align 4
  %9 = icmp eq i16 %8, -11963
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 6, i32 1
  %12 = load i8, ptr %11, align 2
  %13 = icmp ult i8 %12, 2
  br i1 %13, label %59, label %14

14:                                               ; preds = %10, %1
  %15 = getelementptr inbounds %struct.bcm47xx_wdt, ptr %3, i32 0, i32 3
  store ptr %0, ptr %15, align 4
  store ptr @bcma_chipco_watchdog_timer_set_wdt, ptr %3, align 4
  %16 = getelementptr inbounds %struct.bcm47xx_wdt, ptr %3, i32 0, i32 1
  store ptr @bcma_chipco_watchdog_timer_set_ms_wdt, ptr %16, align 4
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 268435456
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.bcma_bus, ptr %17, i32 0, i32 6
  %24 = load i16, ptr %23, align 4
  switch i16 %24, label %30 [
    i16 -11963, label %25
    i16 21248, label %40
  ]

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.bcma_bus, ptr %17, i32 0, i32 6, i32 1
  %27 = load i8, ptr %26, align 2
  %28 = icmp ult i8 %27, 2
  br i1 %28, label %29, label %36, !prof !8

29:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 43, i32 noundef 9, ptr noundef nonnull @.str.6) #6
  br label %36

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.bcma_device, ptr %4, i32 0, i32 1, i32 2
  %32 = load i8, ptr %31, align 4
  %33 = icmp ult i8 %32, 26
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = icmp ugt i8 %32, 36
  br i1 %35, label %40, label %36

36:                                               ; preds = %34, %30, %29, %25, %14
  %37 = phi i32 [ 16, %30 ], [ 24, %34 ], [ 28, %29 ], [ 28, %25 ], [ 28, %14 ]
  %38 = shl nsw i32 -1, %37
  %39 = xor i32 %38, -1
  br label %40

40:                                               ; preds = %36, %34, %22
  %41 = phi i32 [ %39, %36 ], [ -1, %34 ], [ -1, %22 ]
  %42 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 8
  %43 = load i32, ptr %42, align 4
  %44 = udiv i32 %41, %43
  %45 = getelementptr inbounds %struct.bcm47xx_wdt, ptr %3, i32 0, i32 2
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 11
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #6
  %49 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false) #6
  store ptr @.str, ptr %49, align 4
  %50 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 4
  store i32 %48, ptr %50, align 8
  %51 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 7
  store ptr %3, ptr %51, align 4
  %52 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 8
  store i32 148, ptr %52, align 8
  %53 = call ptr @platform_device_register_full(ptr noundef nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #6
  %54 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %57

55:                                               ; preds = %40
  %56 = ptrtoint ptr %53 to i32
  br label %59

57:                                               ; preds = %40
  %58 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 9
  store ptr %53, ptr %58, align 4
  br label %59

59:                                               ; preds = %57, %55, %10
  %60 = phi i32 [ %56, %55 ], [ 0, %57 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %3) #6
  ret i32 %60
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcma_chipco_watchdog_timer_set_wdt(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.bcm47xx_wdt, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @bcma_chipco_watchdog_timer_set(ptr noundef %4, i32 noundef %1)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bcma_chipco_watchdog_timer_set_ms_wdt(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.bcm47xx_wdt, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bcma_drv_cc, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = mul i32 %6, %1
  %8 = tail call i32 @bcma_chipco_watchdog_timer_set(ptr noundef %4, i32 noundef %7)
  %9 = load i32, ptr %5, align 4
  %10 = udiv i32 %8, %9
  ret i32 %10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcma_core_chipcommon_early_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 4
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %91

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 10
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.bcma_device, ptr %2, i32 0, i32 1, i32 2
  %11 = load i8, ptr %10, align 4
  %12 = icmp ugt i8 %11, 10
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct.bcma_bus, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.bcma_host_ops, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %2, i16 noundef zeroext 44) #6
  %20 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = load ptr, ptr %0, align 4
  br label %22

22:                                               ; preds = %13, %8
  %23 = phi ptr [ %21, %13 ], [ %2, %8 ]
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.bcma_bus, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.bcma_host_ops, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef %23, i16 noundef zeroext 4) #6
  %30 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 2
  store i32 %29, ptr %30, align 4
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr inbounds %struct.bcma_device, ptr %31, i32 0, i32 1, i32 2
  %33 = load i8, ptr %32, align 4
  %34 = icmp ugt i8 %33, 34
  br i1 %34, label %35, label %44

35:                                               ; preds = %22
  %36 = load ptr, ptr %31, align 8
  %37 = getelementptr inbounds %struct.bcma_bus, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.bcma_host_ops, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 %40(ptr noundef %31, i16 noundef zeroext 172) #6
  %42 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 3
  store i32 %41, ptr %42, align 4
  %43 = load i32, ptr %30, align 4
  br label %44

44:                                               ; preds = %35, %22
  %45 = phi i32 [ %43, %35 ], [ %29, %22 ]
  %46 = and i32 %45, 268435456
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call void @bcma_pmu_early_init(ptr noundef %0) #6
  br label %49

49:                                               ; preds = %48, %44
  %50 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %88

53:                                               ; preds = %49
  %54 = load ptr, ptr %0, align 4
  %55 = load ptr, ptr %54, align 8
  %56 = load i32, ptr %30, align 4
  %57 = and i32 %56, 1792
  switch i32 %57, label %65 [
    i32 256, label %58
    i32 512, label %58
    i32 1792, label %60
  ]

58:                                               ; preds = %53, %53
  %59 = tail call i32 @bcma_sflash_init(ptr noundef %0) #6
  br label %70

60:                                               ; preds = %53
  %61 = load ptr, ptr %55, align 4
  %62 = getelementptr inbounds %struct.bcma_bus, ptr %55, i32 0, i32 11
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.3, i32 noundef %64) #7
  br label %70

65:                                               ; preds = %53
  %66 = load ptr, ptr %55, align 4
  %67 = getelementptr inbounds %struct.bcma_bus, ptr %55, i32 0, i32 11
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.2, i32 noundef %69) #7
  br label %70

70:                                               ; preds = %65, %60, %58
  %71 = load ptr, ptr %0, align 4
  %72 = getelementptr inbounds %struct.bcma_device, ptr %71, i32 0, i32 1, i32 2
  %73 = load i8, ptr %72, align 4
  %74 = icmp eq i8 %73, 38
  br i1 %74, label %79, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.bcma_bus, ptr %55, i32 0, i32 6
  %77 = load i16, ptr %76, align 4
  %78 = icmp eq i16 %77, 21248
  br i1 %78, label %79, label %88

79:                                               ; preds = %75, %70
  %80 = load i32, ptr %30, align 4
  %81 = icmp sgt i32 %80, -1
  br i1 %81, label %88, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr %71, align 8
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.bcma_bus, ptr %83, i32 0, i32 11
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.4, i32 noundef %87) #7
  br label %88

88:                                               ; preds = %82, %79, %75, %49
  %89 = load i8, ptr %4, align 4
  %90 = or i8 %89, 2
  store i8 %90, ptr %4, align 4
  br label %91

91:                                               ; preds = %88, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_pmu_early_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcma_core_chipcommon_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 4
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %90

6:                                                ; preds = %1
  tail call void @bcma_core_chipcommon_early_init(ptr noundef %0)
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.bcma_device, ptr %7, i32 0, i32 1, i32 2
  %9 = load i8, ptr %8, align 4
  %10 = icmp ugt i8 %9, 19
  br i1 %10, label %11, label %28

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8
  %13 = getelementptr inbounds %struct.bcma_bus, ptr %12, i32 0, i32 6
  %14 = load i16, ptr %13, align 4
  %15 = icmp eq i16 %14, -22394
  %16 = select i1 %15, i32 262880, i32 0
  %17 = select i1 %15, i32 132352, i32 0
  %18 = getelementptr inbounds %struct.bcma_bus, ptr %12, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.bcma_host_ops, ptr %19, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  tail call void %21(ptr noundef %7, i16 noundef zeroext 88, i32 noundef %16) #6
  %22 = load ptr, ptr %0, align 4
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.bcma_bus, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.bcma_host_ops, ptr %25, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  tail call void %27(ptr noundef %22, i16 noundef zeroext 92, i32 noundef %17) #6
  br label %28

28:                                               ; preds = %11, %6
  %29 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 268435456
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  tail call void @bcma_pmu_init(ptr noundef %0) #6
  %34 = load i32, ptr %29, align 4
  br label %35

35:                                               ; preds = %33, %28
  %36 = phi i32 [ %34, %33 ], [ %30, %28 ]
  %37 = and i32 %36, 262144
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %0, align 4
  %41 = load ptr, ptr %40, align 8
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.bcma_bus, ptr %41, i32 0, i32 11
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.1, i32 noundef %45) #7
  br label %46

46:                                               ; preds = %39, %35
  %47 = load ptr, ptr %0, align 4
  %48 = getelementptr inbounds %struct.bcma_device, ptr %47, i32 0, i32 1, i32 2
  %49 = load i8, ptr %48, align 4
  %50 = icmp ugt i8 %49, 15
  br i1 %50, label %51, label %72

51:                                               ; preds = %46
  %52 = load ptr, ptr %47, align 8
  %53 = getelementptr inbounds %struct.bcma_bus, ptr %52, i32 0, i32 18, i32 18
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp eq i8 %54, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.bcma_bus, ptr %52, i32 0, i32 18, i32 19
  %59 = load i8, ptr %58, align 4
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = zext i8 %59 to i32
  %63 = shl nuw nsw i32 %55, 16
  br label %64

64:                                               ; preds = %61, %57, %51
  %65 = phi i32 [ %63, %61 ], [ 655360, %57 ], [ 655360, %51 ]
  %66 = phi i32 [ %62, %61 ], [ 90, %57 ], [ 90, %51 ]
  %67 = or i32 %66, %65
  %68 = getelementptr inbounds %struct.bcma_bus, ptr %52, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.bcma_host_ops, ptr %69, i32 0, i32 5
  %71 = load ptr, ptr %70, align 4
  tail call void %71(ptr noundef %47, i16 noundef zeroext 136, i32 noundef %67) #6
  br label %72

72:                                               ; preds = %64, %46
  %73 = load i32, ptr %29, align 4
  %74 = and i32 %73, 268435456
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %0, align 4
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %struct.bcma_bus, ptr %78, i32 0, i32 6
  %80 = load i16, ptr %79, align 4
  %81 = icmp eq i16 %80, 21248
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = tail call i32 @bcma_pmu_get_alp_clock(ptr noundef %0) #6
  %84 = udiv i32 %83, 4000
  br label %85

85:                                               ; preds = %82, %76, %72
  %86 = phi i32 [ %84, %82 ], [ 32, %76 ], [ 20000, %72 ]
  %87 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 8
  store i32 %86, ptr %87, align 4
  %88 = load i8, ptr %2, align 4
  %89 = or i8 %88, 1
  store i8 %89, ptr %2, align 4
  br label %90

90:                                               ; preds = %85, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_pmu_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcma_chipco_watchdog_timer_set(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 268435456
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %53, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.bcma_bus, ptr %4, i32 0, i32 6
  %11 = load i16, ptr %10, align 4
  switch i16 %11, label %16 [
    i16 -11963, label %12
    i16 21248, label %30
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.bcma_bus, ptr %4, i32 0, i32 6, i32 1
  %14 = load i8, ptr %13, align 2
  %15 = icmp ult i8 %14, 2
  br i1 %15, label %26, label %22, !prof !8

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.bcma_device, ptr %3, i32 0, i32 1, i32 2
  %18 = load i8, ptr %17, align 4
  %19 = icmp ult i8 %18, 26
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = icmp ugt i8 %18, 36
  br i1 %21, label %30, label %22

22:                                               ; preds = %20, %16, %12
  %23 = phi i32 [ 28, %12 ], [ 16, %16 ], [ 24, %20 ]
  %24 = shl nsw i32 -1, %23
  %25 = xor i32 %24, -1
  br label %30

26:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 43, i32 noundef 9, ptr noundef nonnull @.str.6) #6
  %27 = load i32, ptr %5, align 4
  %28 = and i32 %27, 268435456
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %53, label %30

30:                                               ; preds = %26, %22, %20, %9
  %31 = phi i32 [ 268435455, %26 ], [ %25, %22 ], [ -1, %9 ], [ -1, %20 ]
  %32 = load ptr, ptr %0, align 4
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.bcma_bus, ptr %33, i32 0, i32 6
  %35 = load i16, ptr %34, align 4
  %36 = icmp eq i16 %35, -11963
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.bcma_bus, ptr %33, i32 0, i32 6, i32 1
  %39 = load i8, ptr %38, align 2
  %40 = icmp ult i8 %39, 2
  br i1 %40, label %41, label %53, !prof !8

41:                                               ; preds = %37
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 43, i32 noundef 9, ptr noundef nonnull @.str.6) #6
  br label %53

42:                                               ; preds = %30
  %43 = icmp eq i32 %1, 1
  %44 = tail call i32 @llvm.umin.i32(i32 %31, i32 %1)
  %45 = select i1 %43, i32 2, i32 %44
  %46 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 6
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.bcma_bus, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.bcma_host_ops, ptr %50, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  tail call void %52(ptr noundef %47, i16 noundef zeroext 1588, i32 noundef %45) #6
  br label %72

53:                                               ; preds = %41, %37, %26, %2
  %54 = phi i32 [ %31, %41 ], [ %31, %37 ], [ 268435455, %26 ], [ 268435455, %2 ]
  %55 = load ptr, ptr %0, align 4
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.bcma_bus, ptr %56, i32 0, i32 6
  %58 = load i16, ptr %57, align 4
  switch i16 %58, label %59 [
    i16 -12526, label %64
    i16 -12506, label %64
    i16 -12518, label %64
  ]

59:                                               ; preds = %53
  %60 = icmp eq i32 %1, 0
  %61 = zext i1 %60 to i32
  tail call void @bcma_core_set_clockmode(ptr noundef %55, i32 noundef %61) #6
  %62 = load ptr, ptr %0, align 4
  %63 = load ptr, ptr %62, align 8
  br label %64

64:                                               ; preds = %59, %53, %53, %53
  %65 = phi ptr [ %56, %53 ], [ %56, %53 ], [ %56, %53 ], [ %63, %59 ]
  %66 = phi ptr [ %55, %53 ], [ %55, %53 ], [ %55, %53 ], [ %62, %59 ]
  %67 = tail call i32 @llvm.umin.i32(i32 %54, i32 %1)
  %68 = getelementptr inbounds %struct.bcma_bus, ptr %65, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.bcma_host_ops, ptr %69, i32 0, i32 5
  %71 = load ptr, ptr %70, align 4
  tail call void %71(ptr noundef %66, i16 noundef zeroext 128, i32 noundef %67) #6
  br label %72

72:                                               ; preds = %64, %42
  %73 = phi i32 [ %45, %42 ], [ %67, %64 ]
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_core_set_clockmode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcma_chipco_irq_mask(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = and i32 %2, %1
  %5 = load ptr, ptr %0, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.bcma_bus, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bcma_host_ops, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %5, i16 noundef zeroext 36) #6
  %12 = xor i32 %1, -1
  %13 = and i32 %11, %12
  %14 = or i32 %13, %4
  %15 = load ptr, ptr %0, align 4
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.bcma_bus, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.bcma_host_ops, ptr %18, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  tail call void %20(ptr noundef %15, i16 noundef zeroext 36, i32 noundef %14) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcma_chipco_irq_status(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.bcma_bus, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bcma_host_ops, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %3, i16 noundef zeroext 32) #6
  %10 = and i32 %9, %1
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcma_chipco_gpio_in(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.bcma_bus, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bcma_host_ops, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %3, i16 noundef zeroext 96) #6
  %10 = and i32 %9, %1
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcma_chipco_gpio_out(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 10
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #6
  %6 = and i32 %2, %1
  %7 = load ptr, ptr %0, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.bcma_bus, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.bcma_host_ops, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %7, i16 noundef zeroext 100) #6
  %14 = xor i32 %1, -1
  %15 = and i32 %13, %14
  %16 = or i32 %15, %6
  %17 = load ptr, ptr %0, align 4
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.bcma_bus, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.bcma_host_ops, ptr %20, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef %17, i16 noundef zeroext 100, i32 noundef %16) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #6
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcma_chipco_gpio_outen(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 10
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #6
  %6 = and i32 %2, %1
  %7 = load ptr, ptr %0, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.bcma_bus, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.bcma_host_ops, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %7, i16 noundef zeroext 104) #6
  %14 = xor i32 %1, -1
  %15 = and i32 %13, %14
  %16 = or i32 %15, %6
  %17 = load ptr, ptr %0, align 4
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.bcma_bus, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.bcma_host_ops, ptr %20, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef %17, i16 noundef zeroext 104, i32 noundef %16) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #6
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcma_chipco_gpio_control(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 10
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #6
  %6 = and i32 %2, %1
  %7 = load ptr, ptr %0, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.bcma_bus, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.bcma_host_ops, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %7, i16 noundef zeroext 108) #6
  %14 = xor i32 %1, -1
  %15 = and i32 %13, %14
  %16 = or i32 %15, %6
  %17 = load ptr, ptr %0, align 4
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.bcma_bus, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.bcma_host_ops, ptr %20, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef %17, i16 noundef zeroext 108, i32 noundef %16) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #6
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcma_chipco_gpio_intmask(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 10
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #6
  %6 = and i32 %2, %1
  %7 = load ptr, ptr %0, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.bcma_bus, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.bcma_host_ops, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %7, i16 noundef zeroext 116) #6
  %14 = xor i32 %1, -1
  %15 = and i32 %13, %14
  %16 = or i32 %15, %6
  %17 = load ptr, ptr %0, align 4
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.bcma_bus, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.bcma_host_ops, ptr %20, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef %17, i16 noundef zeroext 116, i32 noundef %16) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #6
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcma_chipco_gpio_polarity(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 10
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #6
  %6 = and i32 %2, %1
  %7 = load ptr, ptr %0, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.bcma_bus, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.bcma_host_ops, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %7, i16 noundef zeroext 112) #6
  %14 = xor i32 %1, -1
  %15 = and i32 %13, %14
  %16 = or i32 %15, %6
  %17 = load ptr, ptr %0, align 4
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.bcma_bus, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.bcma_host_ops, ptr %20, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef %17, i16 noundef zeroext 112, i32 noundef %16) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #6
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcma_chipco_gpio_pullup(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.bcma_device, ptr %4, i32 0, i32 1, i32 2
  %6 = load i8, ptr %5, align 4
  %7 = icmp ult i8 %6, 20
  br i1 %7, label %28, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 10
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #6
  %11 = and i32 %2, %1
  %12 = load ptr, ptr %0, align 4
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.bcma_bus, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.bcma_host_ops, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %12, i16 noundef zeroext 88) #6
  %19 = xor i32 %1, -1
  %20 = and i32 %18, %19
  %21 = or i32 %20, %11
  %22 = load ptr, ptr %0, align 4
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.bcma_bus, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.bcma_host_ops, ptr %25, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  tail call void %27(ptr noundef %22, i16 noundef zeroext 88, i32 noundef %21) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #6
  br label %28

28:                                               ; preds = %8, %3
  %29 = phi i32 [ %21, %8 ], [ 0, %3 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcma_chipco_gpio_pulldown(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.bcma_device, ptr %4, i32 0, i32 1, i32 2
  %6 = load i8, ptr %5, align 4
  %7 = icmp ult i8 %6, 20
  br i1 %7, label %28, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 10
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #6
  %11 = and i32 %2, %1
  %12 = load ptr, ptr %0, align 4
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.bcma_bus, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.bcma_host_ops, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %12, i16 noundef zeroext 92) #6
  %19 = xor i32 %1, -1
  %20 = and i32 %18, %19
  %21 = or i32 %20, %11
  %22 = load ptr, ptr %0, align 4
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.bcma_bus, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.bcma_host_ops, ptr %25, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  tail call void %27(ptr noundef %22, i16 noundef zeroext 92, i32 noundef %21) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #6
  br label %28

28:                                               ; preds = %8, %3
  %29 = phi i32 [ %21, %8 ], [ 0, %3 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_sflash_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
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
