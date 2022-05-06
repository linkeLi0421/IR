; ModuleID = '/llk/IR/drivers/bcma/driver_chipcommon_pmu.c_pt.bc'
source_filename = "../drivers/bcma/driver_chipcommon_pmu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_chipco_pll_read:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_chipco_pll_read\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_chipco_pll_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_chipco_pll_write:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_chipco_pll_write\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_chipco_pll_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_chipco_pll_maskset:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_chipco_pll_maskset\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_chipco_pll_maskset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_chipco_chipctl_maskset:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_chipco_chipctl_maskset\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_chipco_chipctl_maskset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_chipco_regctl_maskset:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_chipco_regctl_maskset\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_chipco_regctl_maskset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_pmu_get_bus_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_pmu_get_bus_clock\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_pmu_get_bus_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_pmu_spuravoid_pllupdate:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_pmu_spuravoid_pllupdate\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_pmu_spuravoid_pllupdate:\09\09\09\09\09"
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
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.66, %struct.anon.67, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.66 = type { i8, i8, i8, i8 }
%struct.anon.67 = type { %struct.anon.68, %struct.anon.69 }
%struct.anon.68 = type { i8, i8, i8, i8, i8 }
%struct.anon.69 = type { i8, i8, i8, i8, i8 }
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

@__kstrtab_bcma_chipco_pll_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_chipco_pll_read = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_chipco_pll_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_chipco_pll_read to i32), ptr @__kstrtab_bcma_chipco_pll_read, ptr @__kstrtabns_bcma_chipco_pll_read }, section "___ksymtab_gpl+bcma_chipco_pll_read", align 4
@__kstrtab_bcma_chipco_pll_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_chipco_pll_write = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_chipco_pll_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_chipco_pll_write to i32), ptr @__kstrtab_bcma_chipco_pll_write, ptr @__kstrtabns_bcma_chipco_pll_write }, section "___ksymtab_gpl+bcma_chipco_pll_write", align 4
@__kstrtab_bcma_chipco_pll_maskset = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_chipco_pll_maskset = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_chipco_pll_maskset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_chipco_pll_maskset to i32), ptr @__kstrtab_bcma_chipco_pll_maskset, ptr @__kstrtabns_bcma_chipco_pll_maskset }, section "___ksymtab_gpl+bcma_chipco_pll_maskset", align 4
@__kstrtab_bcma_chipco_chipctl_maskset = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_chipco_chipctl_maskset = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_chipco_chipctl_maskset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_chipco_chipctl_maskset to i32), ptr @__kstrtab_bcma_chipco_chipctl_maskset, ptr @__kstrtabns_bcma_chipco_chipctl_maskset }, section "___ksymtab_gpl+bcma_chipco_chipctl_maskset", align 4
@__kstrtab_bcma_chipco_regctl_maskset = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_chipco_regctl_maskset = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_chipco_regctl_maskset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_chipco_regctl_maskset to i32), ptr @__kstrtab_bcma_chipco_regctl_maskset, ptr @__kstrtabns_bcma_chipco_regctl_maskset }, section "___ksymtab_gpl+bcma_chipco_regctl_maskset", align 4
@.str = private unnamed_addr constant [39 x i8] c"bus%d: Couldn't find expected PMU core\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"bus%d: No ALP clock specified for %04X device, pmu rev. %d, using default %d Hz\0A\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"bus%d: No bus clock specified for %04X device, pmu rev. %d, using default %d Hz\0A\00", align 1
@__kstrtab_bcma_pmu_get_bus_clock = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_pmu_get_bus_clock = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_pmu_get_bus_clock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_pmu_get_bus_clock to i32), ptr @__kstrtab_bcma_pmu_get_bus_clock, ptr @__kstrtabns_bcma_pmu_get_bus_clock }, section "___ksymtab_gpl+bcma_pmu_get_bus_clock", align 4
@__const.bcma_pmu_spuravoid_pllupdate.bcm5357_bcm43236_p1div = private unnamed_addr constant [3 x i8] c"\01\05\05", align 1
@__const.bcma_pmu_spuravoid_pllupdate.bcm5357_bcm43236_ndiv = private unnamed_addr constant [3 x i8] c"0\F6\FC", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"bus%d: Unknown spuravoidance settings for chip 0x%04X, not changing PLL\0A\00", align 1
@__kstrtab_bcma_pmu_spuravoid_pllupdate = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_pmu_spuravoid_pllupdate = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_pmu_spuravoid_pllupdate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_pmu_spuravoid_pllupdate to i32), ptr @__kstrtab_bcma_pmu_spuravoid_pllupdate, ptr @__kstrtabns_bcma_pmu_spuravoid_pllupdate }, section "___ksymtab_gpl+bcma_pmu_spuravoid_pllupdate", align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"bus%d: Unknown TGT frequency for xtalfreq %d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_bcma_chipco_chipctl_maskset, ptr @__ksymtab_bcma_chipco_pll_maskset, ptr @__ksymtab_bcma_chipco_pll_read, ptr @__ksymtab_bcma_chipco_pll_write, ptr @__ksymtab_bcma_chipco_regctl_maskset, ptr @__ksymtab_bcma_pmu_get_bus_clock, ptr @__ksymtab_bcma_pmu_spuravoid_pllupdate], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcma_chipco_pll_read(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bcma_host_ops, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %4, i16 noundef zeroext 1632, i32 noundef %1) #3
  %10 = load ptr, ptr %3, align 4
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.bcma_bus, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.bcma_host_ops, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %10, i16 noundef zeroext 1632) #3
  %17 = load ptr, ptr %3, align 4
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.bcma_bus, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.bcma_host_ops, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %22(ptr noundef %17, i16 noundef zeroext 1636) #3
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcma_chipco_pll_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.bcma_bus, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bcma_host_ops, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  tail call void %10(ptr noundef %5, i16 noundef zeroext 1632, i32 noundef %1) #3
  %11 = load ptr, ptr %4, align 4
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.bcma_bus, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.bcma_host_ops, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %11, i16 noundef zeroext 1632) #3
  %18 = load ptr, ptr %4, align 4
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.bcma_bus, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.bcma_host_ops, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  tail call void %23(ptr noundef %18, i16 noundef zeroext 1636, i32 noundef %2) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcma_chipco_pll_maskset(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.bcma_host_ops, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %6, i16 noundef zeroext 1632, i32 noundef %1) #3
  %12 = load ptr, ptr %5, align 4
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.bcma_bus, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.bcma_host_ops, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %12, i16 noundef zeroext 1632) #3
  %19 = load ptr, ptr %5, align 4
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.bcma_bus, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.bcma_host_ops, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef %19, i16 noundef zeroext 1636) #3
  %26 = and i32 %25, %2
  %27 = or i32 %26, %3
  %28 = load ptr, ptr %19, align 8
  %29 = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.bcma_host_ops, ptr %30, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  tail call void %32(ptr noundef %19, i16 noundef zeroext 1636, i32 noundef %27) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcma_chipco_chipctl_maskset(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.bcma_host_ops, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %6, i16 noundef zeroext 1616, i32 noundef %1) #3
  %12 = load ptr, ptr %5, align 4
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.bcma_bus, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.bcma_host_ops, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %12, i16 noundef zeroext 1616) #3
  %19 = load ptr, ptr %5, align 4
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.bcma_bus, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.bcma_host_ops, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef %19, i16 noundef zeroext 1620) #3
  %26 = and i32 %25, %2
  %27 = or i32 %26, %3
  %28 = load ptr, ptr %19, align 8
  %29 = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.bcma_host_ops, ptr %30, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  tail call void %32(ptr noundef %19, i16 noundef zeroext 1620, i32 noundef %27) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcma_chipco_regctl_maskset(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.bcma_host_ops, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %6, i16 noundef zeroext 1624, i32 noundef %1) #3
  %12 = load ptr, ptr %5, align 4
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.bcma_bus, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.bcma_host_ops, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %12, i16 noundef zeroext 1624) #3
  %19 = load ptr, ptr %5, align 4
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.bcma_bus, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.bcma_host_ops, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef %19, i16 noundef zeroext 1628) #3
  %26 = and i32 %25, %2
  %27 = or i32 %26, %3
  %28 = load ptr, ptr %19, align 8
  %29 = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.bcma_host_ops, ptr %30, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  tail call void %32(ptr noundef %19, i16 noundef zeroext 1628, i32 noundef %27) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcma_chipco_bcm4331_ext_pa_lines_ctl(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.bcma_bus, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bcma_host_ops, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %3, i16 noundef zeroext 40) #3
  br i1 %1, label %10, label %21

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.bcma_bus, ptr %4, i32 0, i32 6, i32 2
  %12 = load i8, ptr %11, align 1
  switch i8 %12, label %15 [
    i8 9, label %13
    i8 11, label %13
  ]

13:                                               ; preds = %10, %10
  %14 = or i32 %9, 144
  br label %23

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.bcma_bus, ptr %4, i32 0, i32 6, i32 1
  %17 = load i8, ptr %16, align 2
  %18 = icmp eq i8 %17, 0
  %19 = select i1 %18, i32 16, i32 4112
  %20 = or i32 %19, %9
  br label %23

21:                                               ; preds = %2
  %22 = and i32 %9, -4241
  br label %23

23:                                               ; preds = %21, %15, %13
  %24 = phi i32 [ %14, %13 ], [ %22, %21 ], [ %20, %15 ]
  %25 = load ptr, ptr %0, align 4
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.bcma_bus, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.bcma_host_ops, ptr %28, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  tail call void %30(ptr noundef %25, i16 noundef zeroext 40, i32 noundef %24) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcma_pmu_early_init(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcma_device, ptr %2, i32 0, i32 1, i32 2
  %5 = load i8, ptr %4, align 4
  %6 = icmp ugt i8 %5, 34
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 64
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %7
  %13 = tail call ptr @bcma_find_core_unit(ptr noundef %3, i16 noundef zeroext 2087, i8 noundef zeroext 0) #3
  %14 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 6
  store ptr %13, ptr %14, align 4
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load ptr, ptr %3, align 4
  %18 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str, i32 noundef %20) #4
  br label %21

21:                                               ; preds = %16, %12, %7, %1
  %22 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load ptr, ptr %0, align 4
  store ptr %26, ptr %22, align 4
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi ptr [ %26, %25 ], [ %23, %21 ]
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.bcma_bus, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.bcma_host_ops, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 %33(ptr noundef %28, i16 noundef zeroext 1540) #3
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 6, i32 1
  store i8 %35, ptr %36, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcma_pmu_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 6, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 1
  %6 = load ptr, ptr %2, align 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.bcma_host_ops, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %6, i16 noundef zeroext 1536) #3
  %13 = and i32 %12, -513
  %14 = select i1 %5, i32 0, i32 512
  %15 = or i32 %13, %14
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds %struct.bcma_bus, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.bcma_host_ops, ptr %18, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  tail call void %20(ptr noundef %6, i16 noundef zeroext 1536, i32 noundef %15) #3
  %21 = load ptr, ptr %0, align 4
  %22 = load ptr, ptr %21, align 8
  %23 = load ptr, ptr %2, align 4
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.bcma_bus, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.bcma_host_ops, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef %23, i16 noundef zeroext 1544) #3
  %30 = and i32 %29, 256
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %57, label %32

32:                                               ; preds = %1
  %33 = load ptr, ptr %2, align 4
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.bcma_bus, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.bcma_host_ops, ptr %36, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  tail call void %38(ptr noundef %33, i16 noundef zeroext 1644, i32 noundef -2147483648) #3
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #3
  %39 = load ptr, ptr %2, align 4
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.bcma_bus, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.bcma_host_ops, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 %44(ptr noundef %39, i16 noundef zeroext 1644) #3
  %46 = load ptr, ptr %2, align 4
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.bcma_bus, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.bcma_host_ops, ptr %49, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  tail call void %51(ptr noundef %46, i16 noundef zeroext 1644, i32 noundef 0) #3
  %52 = shl i32 %45, 13
  %53 = and i32 %52, 67100672
  %54 = add nuw nsw i32 %53, 50000
  %55 = udiv i32 %54, 100000
  %56 = mul nuw nsw i32 %55, 100
  br label %57

57:                                               ; preds = %32, %1
  %58 = phi i32 [ %56, %32 ], [ 0, %1 ]
  %59 = getelementptr inbounds %struct.bcma_bus, ptr %22, i32 0, i32 6
  %60 = load i16, ptr %59, align 4
  %61 = icmp eq i16 %60, -22394
  br i1 %61, label %62, label %176

62:                                               ; preds = %57
  %63 = icmp eq i32 %58, 0
  %64 = select i1 %63, i32 20000, i32 %58
  %65 = load ptr, ptr %0, align 4
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr inbounds %struct.bcma_bus, ptr %66, i32 0, i32 6
  %68 = load i16, ptr %67, align 4
  %69 = icmp eq i16 %68, -22394
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  switch i32 %64, label %75 [
    i32 12000, label %80
    i32 20000, label %71
    i32 26000, label %72
    i32 37400, label %73
    i32 52000, label %74
  ]

71:                                               ; preds = %70
  br label %80

72:                                               ; preds = %70
  br label %80

73:                                               ; preds = %70
  br label %80

74:                                               ; preds = %70
  br label %80

75:                                               ; preds = %70, %62
  %76 = load ptr, ptr %66, align 4
  %77 = getelementptr inbounds %struct.bcma_bus, ptr %66, i32 0, i32 11
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.4, i32 noundef %79, i32 noundef %64) #4
  br label %176

80:                                               ; preds = %74, %73, %72, %71, %70
  %81 = phi i32 [ 76405, %74 ], [ 106232, %73 ], [ 152810, %72 ], [ 198654, %71 ], [ 331090, %70 ]
  %82 = load ptr, ptr %2, align 4
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.bcma_bus, ptr %83, i32 0, i32 2
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.bcma_host_ops, ptr %85, i32 0, i32 5
  %87 = load ptr, ptr %86, align 4
  tail call void %87(ptr noundef %82, i16 noundef zeroext 1632, i32 noundef 0) #3
  %88 = load ptr, ptr %2, align 4
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds %struct.bcma_bus, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.bcma_host_ops, ptr %91, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = tail call i32 %93(ptr noundef %88, i16 noundef zeroext 1632) #3
  %95 = load ptr, ptr %2, align 4
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %struct.bcma_bus, ptr %96, i32 0, i32 2
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.bcma_host_ops, ptr %98, i32 0, i32 2
  %100 = load ptr, ptr %99, align 4
  %101 = tail call i32 %100(ptr noundef %95, i16 noundef zeroext 1636) #3
  %102 = lshr i32 %101, 2
  %103 = and i32 %102, 1048575
  %104 = icmp eq i32 %103, %81
  br i1 %104, label %176, label %105

105:                                              ; preds = %80
  %106 = load i16, ptr %67, align 4
  %107 = icmp eq i16 %106, -22394
  br i1 %107, label %108, label %137

108:                                              ; preds = %105
  %109 = load ptr, ptr %2, align 4
  %110 = load ptr, ptr %109, align 8
  %111 = getelementptr inbounds %struct.bcma_bus, ptr %110, i32 0, i32 2
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.bcma_host_ops, ptr %112, i32 0, i32 2
  %114 = load ptr, ptr %113, align 4
  %115 = tail call i32 %114(ptr noundef %109, i16 noundef zeroext 1560) #3
  %116 = and i32 %115, -805306369
  %117 = load ptr, ptr %109, align 8
  %118 = getelementptr inbounds %struct.bcma_bus, ptr %117, i32 0, i32 2
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.bcma_host_ops, ptr %119, i32 0, i32 5
  %121 = load ptr, ptr %120, align 4
  tail call void %121(ptr noundef %109, i16 noundef zeroext 1560, i32 noundef %116) #3
  %122 = load ptr, ptr %2, align 4
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr inbounds %struct.bcma_bus, ptr %123, i32 0, i32 2
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.bcma_host_ops, ptr %125, i32 0, i32 2
  %127 = load ptr, ptr %126, align 4
  %128 = tail call i32 %127(ptr noundef %122, i16 noundef zeroext 1564) #3
  %129 = and i32 %128, -805306369
  %130 = load ptr, ptr %122, align 8
  %131 = getelementptr inbounds %struct.bcma_bus, ptr %130, i32 0, i32 2
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.bcma_host_ops, ptr %132, i32 0, i32 5
  %134 = load ptr, ptr %133, align 4
  tail call void %134(ptr noundef %122, i16 noundef zeroext 1564, i32 noundef %129) #3
  %135 = load ptr, ptr %0, align 4
  %136 = tail call zeroext i1 @bcma_wait_value(ptr noundef %135, i16 noundef zeroext 480, i32 noundef 131072, i32 noundef 0, i32 noundef 20000) #3
  br label %137

137:                                              ; preds = %108, %105
  %138 = and i32 %101, -4194301
  %139 = shl nuw nsw i32 %81, 2
  %140 = or i32 %138, %139
  %141 = load ptr, ptr %2, align 4
  %142 = load ptr, ptr %141, align 8
  %143 = getelementptr inbounds %struct.bcma_bus, ptr %142, i32 0, i32 2
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.bcma_host_ops, ptr %144, i32 0, i32 5
  %146 = load ptr, ptr %145, align 4
  tail call void %146(ptr noundef %141, i16 noundef zeroext 1632, i32 noundef 0) #3
  %147 = load ptr, ptr %2, align 4
  %148 = load ptr, ptr %147, align 8
  %149 = getelementptr inbounds %struct.bcma_bus, ptr %148, i32 0, i32 2
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.bcma_host_ops, ptr %150, i32 0, i32 2
  %152 = load ptr, ptr %151, align 4
  %153 = tail call i32 %152(ptr noundef %147, i16 noundef zeroext 1632) #3
  %154 = load ptr, ptr %2, align 4
  %155 = load ptr, ptr %154, align 8
  %156 = getelementptr inbounds %struct.bcma_bus, ptr %155, i32 0, i32 2
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.bcma_host_ops, ptr %157, i32 0, i32 5
  %159 = load ptr, ptr %158, align 4
  tail call void %159(ptr noundef %154, i16 noundef zeroext 1636, i32 noundef %140) #3
  %160 = load i8, ptr %3, align 4
  %161 = icmp ugt i8 %160, 1
  br i1 %161, label %162, label %176

162:                                              ; preds = %137
  %163 = load ptr, ptr %2, align 4
  %164 = load ptr, ptr %163, align 8
  %165 = getelementptr inbounds %struct.bcma_bus, ptr %164, i32 0, i32 2
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.bcma_host_ops, ptr %166, i32 0, i32 2
  %168 = load ptr, ptr %167, align 4
  %169 = tail call i32 %168(ptr noundef %163, i16 noundef zeroext 1536) #3
  %170 = or i32 %169, 1024
  %171 = load ptr, ptr %163, align 8
  %172 = getelementptr inbounds %struct.bcma_bus, ptr %171, i32 0, i32 2
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr inbounds %struct.bcma_host_ops, ptr %173, i32 0, i32 5
  %175 = load ptr, ptr %174, align 4
  tail call void %175(ptr noundef %163, i16 noundef zeroext 1536, i32 noundef %170) #3
  br label %176

176:                                              ; preds = %162, %137, %80, %75, %57
  %177 = load ptr, ptr %0, align 4
  %178 = load ptr, ptr %177, align 8
  %179 = getelementptr inbounds %struct.bcma_bus, ptr %178, i32 0, i32 6
  %180 = load i16, ptr %179, align 4
  switch i16 %180, label %197 [
    i16 17171, label %182
    i16 -22394, label %181
  ]

181:                                              ; preds = %176
  br label %182

182:                                              ; preds = %181, %176
  %183 = phi i32 [ 259839, %181 ], [ 8205, %176 ]
  %184 = phi i32 [ 1073741823, %181 ], [ 65535, %176 ]
  %185 = load ptr, ptr %2, align 4
  %186 = load ptr, ptr %185, align 8
  %187 = getelementptr inbounds %struct.bcma_bus, ptr %186, i32 0, i32 2
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr inbounds %struct.bcma_host_ops, ptr %188, i32 0, i32 5
  %190 = load ptr, ptr %189, align 4
  tail call void %190(ptr noundef %185, i16 noundef zeroext 1560, i32 noundef %183) #3
  %191 = load ptr, ptr %2, align 4
  %192 = load ptr, ptr %191, align 8
  %193 = getelementptr inbounds %struct.bcma_bus, ptr %192, i32 0, i32 2
  %194 = load ptr, ptr %193, align 4
  %195 = getelementptr inbounds %struct.bcma_host_ops, ptr %194, i32 0, i32 5
  %196 = load ptr, ptr %195, align 4
  tail call void %196(ptr noundef %191, i16 noundef zeroext 1564, i32 noundef %184) #3
  br label %197

197:                                              ; preds = %182, %176
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2500, i32 noundef 2) #3
  %198 = load ptr, ptr %0, align 4
  %199 = load ptr, ptr %198, align 8
  %200 = getelementptr inbounds %struct.bcma_bus, ptr %199, i32 0, i32 6
  %201 = load i16, ptr %200, align 4
  switch i16 %201, label %322 [
    i16 17171, label %202
    i16 17201, label %229
    i16 -22105, label %229
    i16 -22312, label %253
    i16 -22115, label %253
  ]

202:                                              ; preds = %197
  %203 = load ptr, ptr %2, align 4
  %204 = load ptr, ptr %203, align 8
  %205 = getelementptr inbounds %struct.bcma_bus, ptr %204, i32 0, i32 2
  %206 = load ptr, ptr %205, align 4
  %207 = getelementptr inbounds %struct.bcma_host_ops, ptr %206, i32 0, i32 5
  %208 = load ptr, ptr %207, align 4
  tail call void %208(ptr noundef %203, i16 noundef zeroext 1616, i32 noundef 0) #3
  %209 = load ptr, ptr %2, align 4
  %210 = load ptr, ptr %209, align 8
  %211 = getelementptr inbounds %struct.bcma_bus, ptr %210, i32 0, i32 2
  %212 = load ptr, ptr %211, align 4
  %213 = getelementptr inbounds %struct.bcma_host_ops, ptr %212, i32 0, i32 2
  %214 = load ptr, ptr %213, align 4
  %215 = tail call i32 %214(ptr noundef %209, i16 noundef zeroext 1616) #3
  %216 = load ptr, ptr %2, align 4
  %217 = load ptr, ptr %216, align 8
  %218 = getelementptr inbounds %struct.bcma_bus, ptr %217, i32 0, i32 2
  %219 = load ptr, ptr %218, align 4
  %220 = getelementptr inbounds %struct.bcma_host_ops, ptr %219, i32 0, i32 2
  %221 = load ptr, ptr %220, align 4
  %222 = tail call i32 %221(ptr noundef %216, i16 noundef zeroext 1620) #3
  %223 = or i32 %222, 7
  %224 = load ptr, ptr %216, align 8
  %225 = getelementptr inbounds %struct.bcma_bus, ptr %224, i32 0, i32 2
  %226 = load ptr, ptr %225, align 4
  %227 = getelementptr inbounds %struct.bcma_host_ops, ptr %226, i32 0, i32 5
  %228 = load ptr, ptr %227, align 4
  tail call void %228(ptr noundef %216, i16 noundef zeroext 1620, i32 noundef %223) #3
  br label %322

229:                                              ; preds = %197, %197
  %230 = getelementptr inbounds %struct.bcma_bus, ptr %199, i32 0, i32 2
  %231 = load ptr, ptr %230, align 4
  %232 = getelementptr inbounds %struct.bcma_host_ops, ptr %231, i32 0, i32 2
  %233 = load ptr, ptr %232, align 4
  %234 = tail call i32 %233(ptr noundef %198, i16 noundef zeroext 40) #3
  %235 = getelementptr inbounds %struct.bcma_bus, ptr %199, i32 0, i32 6, i32 2
  %236 = load i8, ptr %235, align 1
  switch i8 %236, label %239 [
    i8 9, label %237
    i8 11, label %237
  ]

237:                                              ; preds = %229, %229
  %238 = or i32 %234, 144
  br label %245

239:                                              ; preds = %229
  %240 = getelementptr inbounds %struct.bcma_bus, ptr %199, i32 0, i32 6, i32 1
  %241 = load i8, ptr %240, align 2
  %242 = icmp eq i8 %241, 0
  %243 = select i1 %242, i32 16, i32 4112
  %244 = or i32 %243, %234
  br label %245

245:                                              ; preds = %239, %237
  %246 = phi i32 [ %238, %237 ], [ %244, %239 ]
  %247 = load ptr, ptr %0, align 4
  %248 = load ptr, ptr %247, align 8
  %249 = getelementptr inbounds %struct.bcma_bus, ptr %248, i32 0, i32 2
  %250 = load ptr, ptr %249, align 4
  %251 = getelementptr inbounds %struct.bcma_host_ops, ptr %250, i32 0, i32 5
  %252 = load ptr, ptr %251, align 4
  tail call void %252(ptr noundef %247, i16 noundef zeroext 40, i32 noundef %246) #3
  br label %322

253:                                              ; preds = %197, %197
  %254 = getelementptr inbounds %struct.bcma_bus, ptr %199, i32 0, i32 6, i32 1
  %255 = load i8, ptr %254, align 2
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %257, label %295

257:                                              ; preds = %253
  %258 = getelementptr inbounds %struct.bcma_bus, ptr %199, i32 0, i32 2
  %259 = load ptr, ptr %258, align 4
  %260 = getelementptr inbounds %struct.bcma_host_ops, ptr %259, i32 0, i32 2
  %261 = load ptr, ptr %260, align 4
  %262 = tail call i32 %261(ptr noundef %198, i16 noundef zeroext 40) #3
  %263 = or i32 %262, 32768
  %264 = load ptr, ptr %198, align 8
  %265 = getelementptr inbounds %struct.bcma_bus, ptr %264, i32 0, i32 2
  %266 = load ptr, ptr %265, align 4
  %267 = getelementptr inbounds %struct.bcma_host_ops, ptr %266, i32 0, i32 5
  %268 = load ptr, ptr %267, align 4
  tail call void %268(ptr noundef %198, i16 noundef zeroext 40, i32 noundef %263) #3
  %269 = load ptr, ptr %2, align 4
  %270 = load ptr, ptr %269, align 8
  %271 = getelementptr inbounds %struct.bcma_bus, ptr %270, i32 0, i32 2
  %272 = load ptr, ptr %271, align 4
  %273 = getelementptr inbounds %struct.bcma_host_ops, ptr %272, i32 0, i32 5
  %274 = load ptr, ptr %273, align 4
  tail call void %274(ptr noundef %269, i16 noundef zeroext 1616, i32 noundef 0) #3
  %275 = load ptr, ptr %2, align 4
  %276 = load ptr, ptr %275, align 8
  %277 = getelementptr inbounds %struct.bcma_bus, ptr %276, i32 0, i32 2
  %278 = load ptr, ptr %277, align 4
  %279 = getelementptr inbounds %struct.bcma_host_ops, ptr %278, i32 0, i32 2
  %280 = load ptr, ptr %279, align 4
  %281 = tail call i32 %280(ptr noundef %275, i16 noundef zeroext 1616) #3
  %282 = load ptr, ptr %2, align 4
  %283 = load ptr, ptr %282, align 8
  %284 = getelementptr inbounds %struct.bcma_bus, ptr %283, i32 0, i32 2
  %285 = load ptr, ptr %284, align 4
  %286 = getelementptr inbounds %struct.bcma_host_ops, ptr %285, i32 0, i32 2
  %287 = load ptr, ptr %286, align 4
  %288 = tail call i32 %287(ptr noundef %282, i16 noundef zeroext 1620) #3
  %289 = or i32 %288, 15728880
  %290 = load ptr, ptr %282, align 8
  %291 = getelementptr inbounds %struct.bcma_bus, ptr %290, i32 0, i32 2
  %292 = load ptr, ptr %291, align 4
  %293 = getelementptr inbounds %struct.bcma_host_ops, ptr %292, i32 0, i32 5
  %294 = load ptr, ptr %293, align 4
  tail call void %294(ptr noundef %282, i16 noundef zeroext 1620, i32 noundef %289) #3
  br label %322

295:                                              ; preds = %253
  %296 = load ptr, ptr %2, align 4
  %297 = load ptr, ptr %296, align 8
  %298 = getelementptr inbounds %struct.bcma_bus, ptr %297, i32 0, i32 2
  %299 = load ptr, ptr %298, align 4
  %300 = getelementptr inbounds %struct.bcma_host_ops, ptr %299, i32 0, i32 5
  %301 = load ptr, ptr %300, align 4
  tail call void %301(ptr noundef %296, i16 noundef zeroext 1616, i32 noundef 0) #3
  %302 = load ptr, ptr %2, align 4
  %303 = load ptr, ptr %302, align 8
  %304 = getelementptr inbounds %struct.bcma_bus, ptr %303, i32 0, i32 2
  %305 = load ptr, ptr %304, align 4
  %306 = getelementptr inbounds %struct.bcma_host_ops, ptr %305, i32 0, i32 2
  %307 = load ptr, ptr %306, align 4
  %308 = tail call i32 %307(ptr noundef %302, i16 noundef zeroext 1616) #3
  %309 = load ptr, ptr %2, align 4
  %310 = load ptr, ptr %309, align 8
  %311 = getelementptr inbounds %struct.bcma_bus, ptr %310, i32 0, i32 2
  %312 = load ptr, ptr %311, align 4
  %313 = getelementptr inbounds %struct.bcma_host_ops, ptr %312, i32 0, i32 2
  %314 = load ptr, ptr %313, align 4
  %315 = tail call i32 %314(ptr noundef %309, i16 noundef zeroext 1620) #3
  %316 = or i32 %315, 240
  %317 = load ptr, ptr %309, align 8
  %318 = getelementptr inbounds %struct.bcma_bus, ptr %317, i32 0, i32 2
  %319 = load ptr, ptr %318, align 4
  %320 = getelementptr inbounds %struct.bcma_host_ops, ptr %319, i32 0, i32 5
  %321 = load ptr, ptr %320, align 4
  tail call void %321(ptr noundef %309, i16 noundef zeroext 1620, i32 noundef %316) #3
  br label %322

322:                                              ; preds = %295, %257, %245, %202, %197
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcma_pmu_get_alp_clock(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 6
  %5 = load i16, ptr %4, align 4
  switch i16 %5, label %13 [
    i16 17171, label %22
    i16 -22312, label %22
    i16 -22311, label %22
    i16 -22309, label %22
    i16 -22308, label %22
    i16 17201, label %22
    i16 -22115, label %22
    i16 -22108, label %22
    i16 -22105, label %22
    i16 18198, label %22
    i16 -18374, label %22
    i16 18248, label %22
    i16 18249, label %22
    i16 21335, label %22
    i16 -11964, label %22
    i16 25442, label %22
    i16 21248, label %6
    i16 21334, label %6
    i16 -22076, label %7
    i16 17234, label %7
    i16 17248, label %7
  ]

6:                                                ; preds = %1, %1
  br label %22

7:                                                ; preds = %1, %1, %1
  %8 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 20000000, i32 40000000
  br label %22

13:                                               ; preds = %1
  %14 = zext i16 %5 to i32
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 6, i32 1
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.1, i32 noundef %18, i32 noundef %14, i32 noundef %21, i32 noundef 20000000) #4
  br label %22

22:                                               ; preds = %13, %7, %6, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %23 = phi i32 [ 20000000, %13 ], [ 25000000, %6 ], [ 20000000, %1 ], [ 20000000, %1 ], [ 20000000, %1 ], [ 20000000, %1 ], [ 20000000, %1 ], [ 20000000, %1 ], [ 20000000, %1 ], [ 20000000, %1 ], [ 20000000, %1 ], [ 20000000, %1 ], [ 20000000, %1 ], [ 20000000, %1 ], [ 20000000, %1 ], [ 20000000, %1 ], [ 20000000, %1 ], [ 20000000, %1 ], [ %12, %7 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcma_pmu_get_bus_clock(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 6
  %5 = load i16, ptr %4, align 4
  switch i16 %5, label %54 [
    i16 18198, label %6
    i16 18248, label %6
    i16 -18374, label %6
    i16 21334, label %8
    i16 21335, label %10
    i16 18249, label %10
    i16 21248, label %12
    i16 -11964, label %63
  ]

6:                                                ; preds = %1, %1, %1
  %7 = tail call fastcc i32 @bcma_pmu_pll_clock(ptr noundef %0, i32 noundef 12, i32 noundef 3)
  br label %63

8:                                                ; preds = %1
  %9 = tail call fastcc i32 @bcma_pmu_pll_clock(ptr noundef %0, i32 noundef 0, i32 noundef 3)
  br label %63

10:                                               ; preds = %1, %1
  %11 = tail call fastcc i32 @bcma_pmu_pll_clock(ptr noundef %0, i32 noundef 0, i32 noundef 3)
  br label %63

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.bcma_bus, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.bcma_host_ops, ptr %17, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  tail call void %19(ptr noundef %14, i16 noundef zeroext 1632, i32 noundef 4) #3
  %20 = load ptr, ptr %13, align 4
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.bcma_bus, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.bcma_host_ops, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %25(ptr noundef %20, i16 noundef zeroext 1632) #3
  %27 = load ptr, ptr %13, align 4
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.bcma_host_ops, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %32(ptr noundef %27, i16 noundef zeroext 1636) #3
  %34 = lshr i32 %33, 3
  %35 = and i32 %34, 511
  %36 = lshr i32 %33, 12
  %37 = and i32 %36, 15
  %38 = lshr i32 %33, 16
  %39 = and i32 %38, 15
  %40 = load ptr, ptr %0, align 4
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.bcma_bus, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.bcma_host_ops, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 %45(ptr noundef %40, i16 noundef zeroext 44) #3
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 12500000, i32 6250000
  %50 = mul nuw nsw i32 %39, %35
  %51 = mul i32 %50, %49
  %52 = udiv i32 %51, %37
  %53 = lshr i32 %52, 2
  br label %63

54:                                               ; preds = %1
  %55 = zext i16 %5 to i32
  %56 = load ptr, ptr %3, align 4
  %57 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 6, i32 1
  %61 = load i8, ptr %60, align 4
  %62 = zext i8 %61 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %56, ptr noundef nonnull @.str.2, i32 noundef %59, i32 noundef %55, i32 noundef %62, i32 noundef 80000000) #4
  br label %63

63:                                               ; preds = %54, %12, %10, %8, %6, %1
  %64 = phi i32 [ 80000000, %54 ], [ %53, %12 ], [ %11, %10 ], [ %9, %8 ], [ %7, %6 ], [ 75000000, %1 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bcma_pmu_pll_clock(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = and i32 %1, 3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/bcma/driver_chipcommon_pmu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 358, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 6
  %11 = load i16, ptr %10, align 4
  switch i16 %11, label %20 [
    i16 21335, label %12
    i16 18249, label %12
  ]

12:                                               ; preds = %9, %9
  %13 = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.bcma_host_ops, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %4, i16 noundef zeroext 44) #3
  %18 = and i32 %17, 262144
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %100

20:                                               ; preds = %12, %9
  %21 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.bcma_bus, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.bcma_host_ops, ptr %25, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  tail call void %27(ptr noundef %22, i16 noundef zeroext 1632, i32 noundef %1) #3
  %28 = load ptr, ptr %21, align 4
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.bcma_bus, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.bcma_host_ops, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 %33(ptr noundef %28, i16 noundef zeroext 1632) #3
  %35 = load ptr, ptr %21, align 4
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.bcma_bus, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.bcma_host_ops, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 %40(ptr noundef %35, i16 noundef zeroext 1636) #3
  %42 = lshr i32 %41, 24
  %43 = and i32 %42, 15
  %44 = lshr i32 %41, 20
  %45 = and i32 %44, 15
  %46 = add nuw i32 %1, 1
  %47 = load ptr, ptr %21, align 4
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.bcma_bus, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.bcma_host_ops, ptr %50, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  tail call void %52(ptr noundef %47, i16 noundef zeroext 1632, i32 noundef %46) #3
  %53 = load ptr, ptr %21, align 4
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.bcma_bus, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.bcma_host_ops, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 %58(ptr noundef %53, i16 noundef zeroext 1632) #3
  %60 = load ptr, ptr %21, align 4
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.bcma_bus, ptr %61, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.bcma_host_ops, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = tail call i32 %65(ptr noundef %60, i16 noundef zeroext 1636) #3
  %67 = shl i32 %2, 3
  %68 = add i32 %67, -8
  %69 = lshr i32 %66, %68
  %70 = and i32 %69, 255
  %71 = add nuw i32 %1, 2
  %72 = load ptr, ptr %21, align 4
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %struct.bcma_bus, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.bcma_host_ops, ptr %75, i32 0, i32 5
  %77 = load ptr, ptr %76, align 4
  tail call void %77(ptr noundef %72, i16 noundef zeroext 1632, i32 noundef %71) #3
  %78 = load ptr, ptr %21, align 4
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr inbounds %struct.bcma_bus, ptr %79, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.bcma_host_ops, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = tail call i32 %83(ptr noundef %78, i16 noundef zeroext 1632) #3
  %85 = load ptr, ptr %21, align 4
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.bcma_bus, ptr %86, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.bcma_host_ops, ptr %88, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  %91 = tail call i32 %90(ptr noundef %85, i16 noundef zeroext 1636) #3
  %92 = lshr i32 %91, 20
  %93 = tail call i32 @bcma_pmu_get_alp_clock(ptr noundef %0)
  %94 = udiv i32 %93, 1000000
  %95 = mul nuw nsw i32 %92, %43
  %96 = mul nuw nsw i32 %95, %94
  %97 = udiv i32 %96, %45
  %98 = udiv i32 %97, %70
  %99 = mul i32 %98, 1000000
  br label %100

100:                                              ; preds = %20, %12
  %101 = phi i32 [ %99, %20 ], [ 133000000, %12 ]
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcma_pmu_get_cpu_clock(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 6
  %5 = load i16, ptr %4, align 4
  %6 = icmp eq i16 %5, -11964
  br i1 %6, label %59, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 6, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = icmp ugt i8 %9, 4
  br i1 %10, label %11, label %57

11:                                               ; preds = %7
  switch i16 %5, label %53 [
    i16 21248, label %12
    i16 21334, label %54
    i16 21335, label %54
    i16 18249, label %54
  ]

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.bcma_bus, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.bcma_host_ops, ptr %17, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  tail call void %19(ptr noundef %14, i16 noundef zeroext 1632, i32 noundef 4) #3
  %20 = load ptr, ptr %13, align 4
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.bcma_bus, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.bcma_host_ops, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %25(ptr noundef %20, i16 noundef zeroext 1632) #3
  %27 = load ptr, ptr %13, align 4
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.bcma_host_ops, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %32(ptr noundef %27, i16 noundef zeroext 1636) #3
  %34 = lshr i32 %33, 3
  %35 = and i32 %34, 511
  %36 = lshr i32 %33, 12
  %37 = and i32 %36, 15
  %38 = lshr i32 %33, 16
  %39 = and i32 %38, 15
  %40 = load ptr, ptr %0, align 4
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.bcma_bus, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.bcma_host_ops, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 %45(ptr noundef %40, i16 noundef zeroext 44) #3
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 12500000, i32 6250000
  %50 = mul nuw nsw i32 %39, %35
  %51 = mul i32 %50, %49
  %52 = udiv i32 %51, %37
  br label %59

53:                                               ; preds = %11
  br label %54

54:                                               ; preds = %53, %11, %11, %11
  %55 = phi i32 [ 12, %53 ], [ 0, %11 ], [ 0, %11 ], [ 0, %11 ]
  %56 = tail call fastcc i32 @bcma_pmu_pll_clock(ptr noundef %0, i32 noundef %55, i32 noundef 1)
  br label %59

57:                                               ; preds = %7
  %58 = tail call i32 @bcma_pmu_get_bus_clock(ptr noundef %0)
  br label %59

59:                                               ; preds = %57, %54, %12, %1
  %60 = phi i32 [ %58, %57 ], [ 300000000, %1 ], [ %56, %54 ], [ %52, %12 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcma_pmu_spuravoid_pllupdate(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.bcma_bus, ptr %4, i32 0, i32 6
  %6 = load i16, ptr %5, align 4
  switch i16 %6, label %549 [
    i16 -22108, label %412
    i16 -22308, label %412
    i16 -22309, label %412
    i16 17201, label %59
    i16 -22105, label %59
    i16 -22312, label %138
    i16 -22311, label %138
    i16 -22115, label %138
    i16 18198, label %275
    i16 18248, label %275
    i16 -18374, label %275
    i16 -22405, label %412
    i16 -22319, label %412
    i16 21335, label %7
    i16 18249, label %7
    i16 -11964, label %7
  ]

7:                                                ; preds = %2, %2, %2
  %8 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.bcma_bus, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.bcma_host_ops, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  tail call void %14(ptr noundef %9, i16 noundef zeroext 1632, i32 noundef 6) #3
  %15 = load ptr, ptr %8, align 4
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.bcma_bus, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.bcma_host_ops, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %15, i16 noundef zeroext 1636) #3
  %22 = and i32 %21, -15728641
  %23 = getelementptr [3 x i8], ptr @__const.bcma_pmu_spuravoid_pllupdate.bcm5357_bcm43236_p1div, i32 0, i32 %1
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 20
  %27 = or i32 %26, %22
  %28 = load ptr, ptr %8, align 4
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.bcma_bus, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.bcma_host_ops, ptr %31, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  tail call void %33(ptr noundef %28, i16 noundef zeroext 1636, i32 noundef %27) #3
  %34 = load ptr, ptr %8, align 4
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.bcma_bus, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.bcma_host_ops, ptr %37, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  tail call void %39(ptr noundef %34, i16 noundef zeroext 1632, i32 noundef 8) #3
  %40 = load ptr, ptr %8, align 4
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.bcma_bus, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.bcma_host_ops, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 %45(ptr noundef %40, i16 noundef zeroext 1636) #3
  %47 = and i32 %46, -535822337
  %48 = getelementptr [3 x i8], ptr @__const.bcma_pmu_spuravoid_pllupdate.bcm5357_bcm43236_ndiv, i32 0, i32 %1
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 20
  %52 = or i32 %51, %47
  %53 = load ptr, ptr %8, align 4
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.bcma_bus, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.bcma_host_ops, ptr %56, i32 0, i32 5
  %58 = load ptr, ptr %57, align 4
  tail call void %58(ptr noundef %53, i16 noundef zeroext 1636, i32 noundef %52) #3
  br label %555

59:                                               ; preds = %2, %2
  switch i32 %1, label %112 [
    i32 2, label %60
    i32 1, label %86
  ]

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 6
  %62 = load ptr, ptr %61, align 4
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.bcma_bus, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.bcma_host_ops, ptr %65, i32 0, i32 5
  %67 = load ptr, ptr %66, align 4
  tail call void %67(ptr noundef %62, i16 noundef zeroext 1632, i32 noundef 0) #3
  %68 = load ptr, ptr %61, align 4
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.bcma_bus, ptr %69, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.bcma_host_ops, ptr %71, i32 0, i32 5
  %73 = load ptr, ptr %72, align 4
  tail call void %73(ptr noundef %68, i16 noundef zeroext 1636, i32 noundef 290455572) #3
  %74 = load ptr, ptr %61, align 4
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.bcma_bus, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.bcma_host_ops, ptr %77, i32 0, i32 5
  %79 = load ptr, ptr %78, align 4
  tail call void %79(ptr noundef %74, i16 noundef zeroext 1632, i32 noundef 2) #3
  %80 = load ptr, ptr %61, align 4
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds %struct.bcma_bus, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.bcma_host_ops, ptr %83, i32 0, i32 5
  %85 = load ptr, ptr %84, align 4
  tail call void %85(ptr noundef %80, i16 noundef zeroext 1636, i32 noundef 264243720) #3
  br label %555

86:                                               ; preds = %59
  %87 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 6
  %88 = load ptr, ptr %87, align 4
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds %struct.bcma_bus, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.bcma_host_ops, ptr %91, i32 0, i32 5
  %93 = load ptr, ptr %92, align 4
  tail call void %93(ptr noundef %88, i16 noundef zeroext 1632, i32 noundef 0) #3
  %94 = load ptr, ptr %87, align 4
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds %struct.bcma_bus, ptr %95, i32 0, i32 2
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.bcma_host_ops, ptr %97, i32 0, i32 5
  %99 = load ptr, ptr %98, align 4
  tail call void %99(ptr noundef %94, i16 noundef zeroext 1636, i32 noundef 290455572) #3
  %100 = load ptr, ptr %87, align 4
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr inbounds %struct.bcma_bus, ptr %101, i32 0, i32 2
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.bcma_host_ops, ptr %103, i32 0, i32 5
  %105 = load ptr, ptr %104, align 4
  tail call void %105(ptr noundef %100, i16 noundef zeroext 1632, i32 noundef 2) #3
  %106 = load ptr, ptr %87, align 4
  %107 = load ptr, ptr %106, align 8
  %108 = getelementptr inbounds %struct.bcma_bus, ptr %107, i32 0, i32 2
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.bcma_host_ops, ptr %109, i32 0, i32 5
  %111 = load ptr, ptr %110, align 4
  tail call void %111(ptr noundef %106, i16 noundef zeroext 1636, i32 noundef 257952264) #3
  br label %555

112:                                              ; preds = %59
  %113 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 6
  %114 = load ptr, ptr %113, align 4
  %115 = load ptr, ptr %114, align 8
  %116 = getelementptr inbounds %struct.bcma_bus, ptr %115, i32 0, i32 2
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.bcma_host_ops, ptr %117, i32 0, i32 5
  %119 = load ptr, ptr %118, align 4
  tail call void %119(ptr noundef %114, i16 noundef zeroext 1632, i32 noundef 0) #3
  %120 = load ptr, ptr %113, align 4
  %121 = load ptr, ptr %120, align 8
  %122 = getelementptr inbounds %struct.bcma_bus, ptr %121, i32 0, i32 2
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.bcma_host_ops, ptr %123, i32 0, i32 5
  %125 = load ptr, ptr %124, align 4
  tail call void %125(ptr noundef %120, i16 noundef zeroext 1636, i32 noundef 286261268) #3
  %126 = load ptr, ptr %113, align 4
  %127 = load ptr, ptr %126, align 8
  %128 = getelementptr inbounds %struct.bcma_bus, ptr %127, i32 0, i32 2
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.bcma_host_ops, ptr %129, i32 0, i32 5
  %131 = load ptr, ptr %130, align 4
  tail call void %131(ptr noundef %126, i16 noundef zeroext 1632, i32 noundef 2) #3
  %132 = load ptr, ptr %113, align 4
  %133 = load ptr, ptr %132, align 8
  %134 = getelementptr inbounds %struct.bcma_bus, ptr %133, i32 0, i32 2
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.bcma_host_ops, ptr %135, i32 0, i32 5
  %137 = load ptr, ptr %136, align 4
  tail call void %137(ptr noundef %132, i16 noundef zeroext 1636, i32 noundef 50334216) #3
  br label %555

138:                                              ; preds = %2, %2, %2
  %139 = icmp eq i32 %1, 1
  %140 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 6
  %141 = load ptr, ptr %140, align 4
  %142 = load ptr, ptr %141, align 8
  %143 = getelementptr inbounds %struct.bcma_bus, ptr %142, i32 0, i32 2
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.bcma_host_ops, ptr %144, i32 0, i32 5
  %146 = load ptr, ptr %145, align 4
  tail call void %146(ptr noundef %141, i16 noundef zeroext 1632, i32 noundef 0) #3
  %147 = load ptr, ptr %140, align 4
  %148 = load ptr, ptr %147, align 8
  %149 = getelementptr inbounds %struct.bcma_bus, ptr %148, i32 0, i32 2
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.bcma_host_ops, ptr %150, i32 0, i32 5
  %152 = load ptr, ptr %151, align 4
  br i1 %139, label %153, label %214

153:                                              ; preds = %138
  tail call void %152(ptr noundef %147, i16 noundef zeroext 1636, i32 noundef 290455568) #3
  %154 = load ptr, ptr %140, align 4
  %155 = load ptr, ptr %154, align 8
  %156 = getelementptr inbounds %struct.bcma_bus, ptr %155, i32 0, i32 2
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.bcma_host_ops, ptr %157, i32 0, i32 5
  %159 = load ptr, ptr %158, align 4
  tail call void %159(ptr noundef %154, i16 noundef zeroext 1632, i32 noundef 1) #3
  %160 = load ptr, ptr %140, align 4
  %161 = load ptr, ptr %160, align 8
  %162 = getelementptr inbounds %struct.bcma_bus, ptr %161, i32 0, i32 2
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.bcma_host_ops, ptr %163, i32 0, i32 5
  %165 = load ptr, ptr %164, align 4
  tail call void %165(ptr noundef %160, i16 noundef zeroext 1636, i32 noundef 789510) #3
  %166 = load ptr, ptr %140, align 4
  %167 = load ptr, ptr %166, align 8
  %168 = getelementptr inbounds %struct.bcma_bus, ptr %167, i32 0, i32 2
  %169 = load ptr, ptr %168, align 4
  %170 = getelementptr inbounds %struct.bcma_host_ops, ptr %169, i32 0, i32 5
  %171 = load ptr, ptr %170, align 4
  tail call void %171(ptr noundef %166, i16 noundef zeroext 1632, i32 noundef 2) #3
  %172 = load ptr, ptr %140, align 4
  %173 = load ptr, ptr %172, align 8
  %174 = getelementptr inbounds %struct.bcma_bus, ptr %173, i32 0, i32 2
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.bcma_host_ops, ptr %175, i32 0, i32 5
  %177 = load ptr, ptr %176, align 4
  tail call void %177(ptr noundef %172, i16 noundef zeroext 1636, i32 noundef 257952264) #3
  %178 = load ptr, ptr %140, align 4
  %179 = load ptr, ptr %178, align 8
  %180 = getelementptr inbounds %struct.bcma_bus, ptr %179, i32 0, i32 2
  %181 = load ptr, ptr %180, align 4
  %182 = getelementptr inbounds %struct.bcma_host_ops, ptr %181, i32 0, i32 5
  %183 = load ptr, ptr %182, align 4
  tail call void %183(ptr noundef %178, i16 noundef zeroext 1632, i32 noundef 3) #3
  %184 = load ptr, ptr %140, align 4
  %185 = load ptr, ptr %184, align 8
  %186 = getelementptr inbounds %struct.bcma_bus, ptr %185, i32 0, i32 2
  %187 = load ptr, ptr %186, align 4
  %188 = getelementptr inbounds %struct.bcma_host_ops, ptr %187, i32 0, i32 5
  %189 = load ptr, ptr %188, align 4
  tail call void %189(ptr noundef %184, i16 noundef zeroext 1636, i32 noundef 0) #3
  %190 = load ptr, ptr %140, align 4
  %191 = load ptr, ptr %190, align 8
  %192 = getelementptr inbounds %struct.bcma_bus, ptr %191, i32 0, i32 2
  %193 = load ptr, ptr %192, align 4
  %194 = getelementptr inbounds %struct.bcma_host_ops, ptr %193, i32 0, i32 5
  %195 = load ptr, ptr %194, align 4
  tail call void %195(ptr noundef %190, i16 noundef zeroext 1632, i32 noundef 4) #3
  %196 = load ptr, ptr %140, align 4
  %197 = load ptr, ptr %196, align 8
  %198 = getelementptr inbounds %struct.bcma_bus, ptr %197, i32 0, i32 2
  %199 = load ptr, ptr %198, align 4
  %200 = getelementptr inbounds %struct.bcma_host_ops, ptr %199, i32 0, i32 5
  %201 = load ptr, ptr %200, align 4
  tail call void %201(ptr noundef %196, i16 noundef zeroext 1636, i32 noundef 536996128) #3
  %202 = load ptr, ptr %140, align 4
  %203 = load ptr, ptr %202, align 8
  %204 = getelementptr inbounds %struct.bcma_bus, ptr %203, i32 0, i32 2
  %205 = load ptr, ptr %204, align 4
  %206 = getelementptr inbounds %struct.bcma_host_ops, ptr %205, i32 0, i32 5
  %207 = load ptr, ptr %206, align 4
  tail call void %207(ptr noundef %202, i16 noundef zeroext 1632, i32 noundef 5) #3
  %208 = load ptr, ptr %140, align 4
  %209 = load ptr, ptr %208, align 8
  %210 = getelementptr inbounds %struct.bcma_bus, ptr %209, i32 0, i32 2
  %211 = load ptr, ptr %210, align 4
  %212 = getelementptr inbounds %struct.bcma_host_ops, ptr %211, i32 0, i32 5
  %213 = load ptr, ptr %212, align 4
  tail call void %213(ptr noundef %208, i16 noundef zeroext 1636, i32 noundef -2004318187) #3
  br label %555

214:                                              ; preds = %138
  tail call void %152(ptr noundef %147, i16 noundef zeroext 1636, i32 noundef 286261264) #3
  %215 = load ptr, ptr %140, align 4
  %216 = load ptr, ptr %215, align 8
  %217 = getelementptr inbounds %struct.bcma_bus, ptr %216, i32 0, i32 2
  %218 = load ptr, ptr %217, align 4
  %219 = getelementptr inbounds %struct.bcma_host_ops, ptr %218, i32 0, i32 5
  %220 = load ptr, ptr %219, align 4
  tail call void %220(ptr noundef %215, i16 noundef zeroext 1632, i32 noundef 1) #3
  %221 = load ptr, ptr %140, align 4
  %222 = load ptr, ptr %221, align 8
  %223 = getelementptr inbounds %struct.bcma_bus, ptr %222, i32 0, i32 2
  %224 = load ptr, ptr %223, align 4
  %225 = getelementptr inbounds %struct.bcma_host_ops, ptr %224, i32 0, i32 5
  %226 = load ptr, ptr %225, align 4
  tail call void %226(ptr noundef %221, i16 noundef zeroext 1636, i32 noundef 789510) #3
  %227 = load ptr, ptr %140, align 4
  %228 = load ptr, ptr %227, align 8
  %229 = getelementptr inbounds %struct.bcma_bus, ptr %228, i32 0, i32 2
  %230 = load ptr, ptr %229, align 4
  %231 = getelementptr inbounds %struct.bcma_host_ops, ptr %230, i32 0, i32 5
  %232 = load ptr, ptr %231, align 4
  tail call void %232(ptr noundef %227, i16 noundef zeroext 1632, i32 noundef 2) #3
  %233 = load ptr, ptr %140, align 4
  %234 = load ptr, ptr %233, align 8
  %235 = getelementptr inbounds %struct.bcma_bus, ptr %234, i32 0, i32 2
  %236 = load ptr, ptr %235, align 4
  %237 = getelementptr inbounds %struct.bcma_host_ops, ptr %236, i32 0, i32 5
  %238 = load ptr, ptr %237, align 4
  tail call void %238(ptr noundef %233, i16 noundef zeroext 1636, i32 noundef 50334216) #3
  %239 = load ptr, ptr %140, align 4
  %240 = load ptr, ptr %239, align 8
  %241 = getelementptr inbounds %struct.bcma_bus, ptr %240, i32 0, i32 2
  %242 = load ptr, ptr %241, align 4
  %243 = getelementptr inbounds %struct.bcma_host_ops, ptr %242, i32 0, i32 5
  %244 = load ptr, ptr %243, align 4
  tail call void %244(ptr noundef %239, i16 noundef zeroext 1632, i32 noundef 3) #3
  %245 = load ptr, ptr %140, align 4
  %246 = load ptr, ptr %245, align 8
  %247 = getelementptr inbounds %struct.bcma_bus, ptr %246, i32 0, i32 2
  %248 = load ptr, ptr %247, align 4
  %249 = getelementptr inbounds %struct.bcma_host_ops, ptr %248, i32 0, i32 5
  %250 = load ptr, ptr %249, align 4
  tail call void %250(ptr noundef %245, i16 noundef zeroext 1636, i32 noundef 0) #3
  %251 = load ptr, ptr %140, align 4
  %252 = load ptr, ptr %251, align 8
  %253 = getelementptr inbounds %struct.bcma_bus, ptr %252, i32 0, i32 2
  %254 = load ptr, ptr %253, align 4
  %255 = getelementptr inbounds %struct.bcma_host_ops, ptr %254, i32 0, i32 5
  %256 = load ptr, ptr %255, align 4
  tail call void %256(ptr noundef %251, i16 noundef zeroext 1632, i32 noundef 4) #3
  %257 = load ptr, ptr %140, align 4
  %258 = load ptr, ptr %257, align 8
  %259 = getelementptr inbounds %struct.bcma_bus, ptr %258, i32 0, i32 2
  %260 = load ptr, ptr %259, align 4
  %261 = getelementptr inbounds %struct.bcma_host_ops, ptr %260, i32 0, i32 5
  %262 = load ptr, ptr %261, align 4
  tail call void %262(ptr noundef %257, i16 noundef zeroext 1636, i32 noundef 536872384) #3
  %263 = load ptr, ptr %140, align 4
  %264 = load ptr, ptr %263, align 8
  %265 = getelementptr inbounds %struct.bcma_bus, ptr %264, i32 0, i32 2
  %266 = load ptr, ptr %265, align 4
  %267 = getelementptr inbounds %struct.bcma_host_ops, ptr %266, i32 0, i32 5
  %268 = load ptr, ptr %267, align 4
  tail call void %268(ptr noundef %263, i16 noundef zeroext 1632, i32 noundef 5) #3
  %269 = load ptr, ptr %140, align 4
  %270 = load ptr, ptr %269, align 8
  %271 = getelementptr inbounds %struct.bcma_bus, ptr %270, i32 0, i32 2
  %272 = load ptr, ptr %271, align 4
  %273 = getelementptr inbounds %struct.bcma_host_ops, ptr %272, i32 0, i32 5
  %274 = load ptr, ptr %273, align 4
  tail call void %274(ptr noundef %269, i16 noundef zeroext 1636, i32 noundef -2004318187) #3
  br label %555

275:                                              ; preds = %2, %2, %2
  %276 = icmp eq i32 %1, 1
  %277 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 6
  %278 = load ptr, ptr %277, align 4
  %279 = load ptr, ptr %278, align 8
  %280 = getelementptr inbounds %struct.bcma_bus, ptr %279, i32 0, i32 2
  %281 = load ptr, ptr %280, align 4
  %282 = getelementptr inbounds %struct.bcma_host_ops, ptr %281, i32 0, i32 5
  %283 = load ptr, ptr %282, align 4
  tail call void %283(ptr noundef %278, i16 noundef zeroext 1632, i32 noundef 0) #3
  %284 = load ptr, ptr %277, align 4
  %285 = load ptr, ptr %284, align 8
  %286 = getelementptr inbounds %struct.bcma_bus, ptr %285, i32 0, i32 2
  %287 = load ptr, ptr %286, align 4
  %288 = getelementptr inbounds %struct.bcma_host_ops, ptr %287, i32 0, i32 5
  %289 = load ptr, ptr %288, align 4
  br i1 %276, label %290, label %351

290:                                              ; preds = %275
  tail call void %289(ptr noundef %284, i16 noundef zeroext 1636, i32 noundef 290455648) #3
  %291 = load ptr, ptr %277, align 4
  %292 = load ptr, ptr %291, align 8
  %293 = getelementptr inbounds %struct.bcma_bus, ptr %292, i32 0, i32 2
  %294 = load ptr, ptr %293, align 4
  %295 = getelementptr inbounds %struct.bcma_host_ops, ptr %294, i32 0, i32 5
  %296 = load ptr, ptr %295, align 4
  tail call void %296(ptr noundef %291, i16 noundef zeroext 1632, i32 noundef 1) #3
  %297 = load ptr, ptr %277, align 4
  %298 = load ptr, ptr %297, align 8
  %299 = getelementptr inbounds %struct.bcma_bus, ptr %298, i32 0, i32 2
  %300 = load ptr, ptr %299, align 4
  %301 = getelementptr inbounds %struct.bcma_host_ops, ptr %300, i32 0, i32 5
  %302 = load ptr, ptr %301, align 4
  tail call void %302(ptr noundef %297, i16 noundef zeroext 1636, i32 noundef 135007238) #3
  %303 = load ptr, ptr %277, align 4
  %304 = load ptr, ptr %303, align 8
  %305 = getelementptr inbounds %struct.bcma_bus, ptr %304, i32 0, i32 2
  %306 = load ptr, ptr %305, align 4
  %307 = getelementptr inbounds %struct.bcma_host_ops, ptr %306, i32 0, i32 5
  %308 = load ptr, ptr %307, align 4
  tail call void %308(ptr noundef %303, i16 noundef zeroext 1632, i32 noundef 2) #3
  %309 = load ptr, ptr %277, align 4
  %310 = load ptr, ptr %309, align 8
  %311 = getelementptr inbounds %struct.bcma_bus, ptr %310, i32 0, i32 2
  %312 = load ptr, ptr %311, align 4
  %313 = getelementptr inbounds %struct.bcma_host_ops, ptr %312, i32 0, i32 5
  %314 = load ptr, ptr %313, align 4
  tail call void %314(ptr noundef %309, i16 noundef zeroext 1636, i32 noundef 257949696) #3
  %315 = load ptr, ptr %277, align 4
  %316 = load ptr, ptr %315, align 8
  %317 = getelementptr inbounds %struct.bcma_bus, ptr %316, i32 0, i32 2
  %318 = load ptr, ptr %317, align 4
  %319 = getelementptr inbounds %struct.bcma_host_ops, ptr %318, i32 0, i32 5
  %320 = load ptr, ptr %319, align 4
  tail call void %320(ptr noundef %315, i16 noundef zeroext 1632, i32 noundef 3) #3
  %321 = load ptr, ptr %277, align 4
  %322 = load ptr, ptr %321, align 8
  %323 = getelementptr inbounds %struct.bcma_bus, ptr %322, i32 0, i32 2
  %324 = load ptr, ptr %323, align 4
  %325 = getelementptr inbounds %struct.bcma_host_ops, ptr %324, i32 0, i32 5
  %326 = load ptr, ptr %325, align 4
  tail call void %326(ptr noundef %321, i16 noundef zeroext 1636, i32 noundef 0) #3
  %327 = load ptr, ptr %277, align 4
  %328 = load ptr, ptr %327, align 8
  %329 = getelementptr inbounds %struct.bcma_bus, ptr %328, i32 0, i32 2
  %330 = load ptr, ptr %329, align 4
  %331 = getelementptr inbounds %struct.bcma_host_ops, ptr %330, i32 0, i32 5
  %332 = load ptr, ptr %331, align 4
  tail call void %332(ptr noundef %327, i16 noundef zeroext 1632, i32 noundef 4) #3
  %333 = load ptr, ptr %277, align 4
  %334 = load ptr, ptr %333, align 8
  %335 = getelementptr inbounds %struct.bcma_bus, ptr %334, i32 0, i32 2
  %336 = load ptr, ptr %335, align 4
  %337 = getelementptr inbounds %struct.bcma_host_ops, ptr %336, i32 0, i32 5
  %338 = load ptr, ptr %337, align 4
  tail call void %338(ptr noundef %333, i16 noundef zeroext 1636, i32 noundef 536996132) #3
  %339 = load ptr, ptr %277, align 4
  %340 = load ptr, ptr %339, align 8
  %341 = getelementptr inbounds %struct.bcma_bus, ptr %340, i32 0, i32 2
  %342 = load ptr, ptr %341, align 4
  %343 = getelementptr inbounds %struct.bcma_host_ops, ptr %342, i32 0, i32 5
  %344 = load ptr, ptr %343, align 4
  tail call void %344(ptr noundef %339, i16 noundef zeroext 1632, i32 noundef 5) #3
  %345 = load ptr, ptr %277, align 4
  %346 = load ptr, ptr %345, align 8
  %347 = getelementptr inbounds %struct.bcma_bus, ptr %346, i32 0, i32 2
  %348 = load ptr, ptr %347, align 4
  %349 = getelementptr inbounds %struct.bcma_host_ops, ptr %348, i32 0, i32 5
  %350 = load ptr, ptr %349, align 4
  tail call void %350(ptr noundef %345, i16 noundef zeroext 1636, i32 noundef -2004318187) #3
  br label %555

351:                                              ; preds = %275
  tail call void %289(ptr noundef %284, i16 noundef zeroext 1636, i32 noundef 286261344) #3
  %352 = load ptr, ptr %277, align 4
  %353 = load ptr, ptr %352, align 8
  %354 = getelementptr inbounds %struct.bcma_bus, ptr %353, i32 0, i32 2
  %355 = load ptr, ptr %354, align 4
  %356 = getelementptr inbounds %struct.bcma_host_ops, ptr %355, i32 0, i32 5
  %357 = load ptr, ptr %356, align 4
  tail call void %357(ptr noundef %352, i16 noundef zeroext 1632, i32 noundef 1) #3
  %358 = load ptr, ptr %277, align 4
  %359 = load ptr, ptr %358, align 8
  %360 = getelementptr inbounds %struct.bcma_bus, ptr %359, i32 0, i32 2
  %361 = load ptr, ptr %360, align 4
  %362 = getelementptr inbounds %struct.bcma_host_ops, ptr %361, i32 0, i32 5
  %363 = load ptr, ptr %362, align 4
  tail call void %363(ptr noundef %358, i16 noundef zeroext 1636, i32 noundef 135007238) #3
  %364 = load ptr, ptr %277, align 4
  %365 = load ptr, ptr %364, align 8
  %366 = getelementptr inbounds %struct.bcma_bus, ptr %365, i32 0, i32 2
  %367 = load ptr, ptr %366, align 4
  %368 = getelementptr inbounds %struct.bcma_host_ops, ptr %367, i32 0, i32 5
  %369 = load ptr, ptr %368, align 4
  tail call void %369(ptr noundef %364, i16 noundef zeroext 1632, i32 noundef 2) #3
  %370 = load ptr, ptr %277, align 4
  %371 = load ptr, ptr %370, align 8
  %372 = getelementptr inbounds %struct.bcma_bus, ptr %371, i32 0, i32 2
  %373 = load ptr, ptr %372, align 4
  %374 = getelementptr inbounds %struct.bcma_host_ops, ptr %373, i32 0, i32 5
  %375 = load ptr, ptr %374, align 4
  tail call void %375(ptr noundef %370, i16 noundef zeroext 1636, i32 noundef 50331648) #3
  %376 = load ptr, ptr %277, align 4
  %377 = load ptr, ptr %376, align 8
  %378 = getelementptr inbounds %struct.bcma_bus, ptr %377, i32 0, i32 2
  %379 = load ptr, ptr %378, align 4
  %380 = getelementptr inbounds %struct.bcma_host_ops, ptr %379, i32 0, i32 5
  %381 = load ptr, ptr %380, align 4
  tail call void %381(ptr noundef %376, i16 noundef zeroext 1632, i32 noundef 3) #3
  %382 = load ptr, ptr %277, align 4
  %383 = load ptr, ptr %382, align 8
  %384 = getelementptr inbounds %struct.bcma_bus, ptr %383, i32 0, i32 2
  %385 = load ptr, ptr %384, align 4
  %386 = getelementptr inbounds %struct.bcma_host_ops, ptr %385, i32 0, i32 5
  %387 = load ptr, ptr %386, align 4
  tail call void %387(ptr noundef %382, i16 noundef zeroext 1636, i32 noundef 0) #3
  %388 = load ptr, ptr %277, align 4
  %389 = load ptr, ptr %388, align 8
  %390 = getelementptr inbounds %struct.bcma_bus, ptr %389, i32 0, i32 2
  %391 = load ptr, ptr %390, align 4
  %392 = getelementptr inbounds %struct.bcma_host_ops, ptr %391, i32 0, i32 5
  %393 = load ptr, ptr %392, align 4
  tail call void %393(ptr noundef %388, i16 noundef zeroext 1632, i32 noundef 4) #3
  %394 = load ptr, ptr %277, align 4
  %395 = load ptr, ptr %394, align 8
  %396 = getelementptr inbounds %struct.bcma_bus, ptr %395, i32 0, i32 2
  %397 = load ptr, ptr %396, align 4
  %398 = getelementptr inbounds %struct.bcma_host_ops, ptr %397, i32 0, i32 5
  %399 = load ptr, ptr %398, align 4
  tail call void %399(ptr noundef %394, i16 noundef zeroext 1636, i32 noundef 536872384) #3
  %400 = load ptr, ptr %277, align 4
  %401 = load ptr, ptr %400, align 8
  %402 = getelementptr inbounds %struct.bcma_bus, ptr %401, i32 0, i32 2
  %403 = load ptr, ptr %402, align 4
  %404 = getelementptr inbounds %struct.bcma_host_ops, ptr %403, i32 0, i32 5
  %405 = load ptr, ptr %404, align 4
  tail call void %405(ptr noundef %400, i16 noundef zeroext 1632, i32 noundef 5) #3
  %406 = load ptr, ptr %277, align 4
  %407 = load ptr, ptr %406, align 8
  %408 = getelementptr inbounds %struct.bcma_bus, ptr %407, i32 0, i32 2
  %409 = load ptr, ptr %408, align 4
  %410 = getelementptr inbounds %struct.bcma_host_ops, ptr %409, i32 0, i32 5
  %411 = load ptr, ptr %410, align 4
  tail call void %411(ptr noundef %406, i16 noundef zeroext 1636, i32 noundef -2004318187) #3
  br label %555

412:                                              ; preds = %2, %2, %2, %2, %2
  %413 = icmp eq i32 %1, 1
  %414 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 6
  %415 = load ptr, ptr %414, align 4
  %416 = load ptr, ptr %415, align 8
  %417 = getelementptr inbounds %struct.bcma_bus, ptr %416, i32 0, i32 2
  %418 = load ptr, ptr %417, align 4
  %419 = getelementptr inbounds %struct.bcma_host_ops, ptr %418, i32 0, i32 5
  %420 = load ptr, ptr %419, align 4
  tail call void %420(ptr noundef %415, i16 noundef zeroext 1632, i32 noundef 0) #3
  %421 = load ptr, ptr %414, align 4
  %422 = load ptr, ptr %421, align 8
  %423 = getelementptr inbounds %struct.bcma_bus, ptr %422, i32 0, i32 2
  %424 = load ptr, ptr %423, align 4
  %425 = getelementptr inbounds %struct.bcma_host_ops, ptr %424, i32 0, i32 5
  %426 = load ptr, ptr %425, align 4
  br i1 %413, label %427, label %488

427:                                              ; preds = %412
  tail call void %426(ptr noundef %421, i16 noundef zeroext 1636, i32 noundef 17825812) #3
  %428 = load ptr, ptr %414, align 4
  %429 = load ptr, ptr %428, align 8
  %430 = getelementptr inbounds %struct.bcma_bus, ptr %429, i32 0, i32 2
  %431 = load ptr, ptr %430, align 4
  %432 = getelementptr inbounds %struct.bcma_host_ops, ptr %431, i32 0, i32 5
  %433 = load ptr, ptr %432, align 4
  tail call void %433(ptr noundef %428, i16 noundef zeroext 1632, i32 noundef 1) #3
  %434 = load ptr, ptr %414, align 4
  %435 = load ptr, ptr %434, align 8
  %436 = getelementptr inbounds %struct.bcma_bus, ptr %435, i32 0, i32 2
  %437 = load ptr, ptr %436, align 4
  %438 = getelementptr inbounds %struct.bcma_host_ops, ptr %437, i32 0, i32 5
  %439 = load ptr, ptr %438, align 4
  tail call void %439(ptr noundef %434, i16 noundef zeroext 1636, i32 noundef 67898374) #3
  %440 = load ptr, ptr %414, align 4
  %441 = load ptr, ptr %440, align 8
  %442 = getelementptr inbounds %struct.bcma_bus, ptr %441, i32 0, i32 2
  %443 = load ptr, ptr %442, align 4
  %444 = getelementptr inbounds %struct.bcma_host_ops, ptr %443, i32 0, i32 5
  %445 = load ptr, ptr %444, align 4
  tail call void %445(ptr noundef %440, i16 noundef zeroext 1632, i32 noundef 2) #3
  %446 = load ptr, ptr %414, align 4
  %447 = load ptr, ptr %446, align 8
  %448 = getelementptr inbounds %struct.bcma_bus, ptr %447, i32 0, i32 2
  %449 = load ptr, ptr %448, align 4
  %450 = getelementptr inbounds %struct.bcma_host_ops, ptr %449, i32 0, i32 5
  %451 = load ptr, ptr %450, align 4
  tail call void %451(ptr noundef %446, i16 noundef zeroext 1636, i32 noundef 51644936) #3
  %452 = load ptr, ptr %414, align 4
  %453 = load ptr, ptr %452, align 8
  %454 = getelementptr inbounds %struct.bcma_bus, ptr %453, i32 0, i32 2
  %455 = load ptr, ptr %454, align 4
  %456 = getelementptr inbounds %struct.bcma_host_ops, ptr %455, i32 0, i32 5
  %457 = load ptr, ptr %456, align 4
  tail call void %457(ptr noundef %452, i16 noundef zeroext 1632, i32 noundef 3) #3
  %458 = load ptr, ptr %414, align 4
  %459 = load ptr, ptr %458, align 8
  %460 = getelementptr inbounds %struct.bcma_bus, ptr %459, i32 0, i32 2
  %461 = load ptr, ptr %460, align 4
  %462 = getelementptr inbounds %struct.bcma_host_ops, ptr %461, i32 0, i32 5
  %463 = load ptr, ptr %462, align 4
  tail call void %463(ptr noundef %458, i16 noundef zeroext 1636, i32 noundef 3355443) #3
  %464 = load ptr, ptr %414, align 4
  %465 = load ptr, ptr %464, align 8
  %466 = getelementptr inbounds %struct.bcma_bus, ptr %465, i32 0, i32 2
  %467 = load ptr, ptr %466, align 4
  %468 = getelementptr inbounds %struct.bcma_host_ops, ptr %467, i32 0, i32 5
  %469 = load ptr, ptr %468, align 4
  tail call void %469(ptr noundef %464, i16 noundef zeroext 1632, i32 noundef 4) #3
  %470 = load ptr, ptr %414, align 4
  %471 = load ptr, ptr %470, align 8
  %472 = getelementptr inbounds %struct.bcma_bus, ptr %471, i32 0, i32 2
  %473 = load ptr, ptr %472, align 4
  %474 = getelementptr inbounds %struct.bcma_host_ops, ptr %473, i32 0, i32 5
  %475 = load ptr, ptr %474, align 4
  tail call void %475(ptr noundef %470, i16 noundef zeroext 1636, i32 noundef 539764768) #3
  %476 = load ptr, ptr %414, align 4
  %477 = load ptr, ptr %476, align 8
  %478 = getelementptr inbounds %struct.bcma_bus, ptr %477, i32 0, i32 2
  %479 = load ptr, ptr %478, align 4
  %480 = getelementptr inbounds %struct.bcma_host_ops, ptr %479, i32 0, i32 5
  %481 = load ptr, ptr %480, align 4
  tail call void %481(ptr noundef %476, i16 noundef zeroext 1632, i32 noundef 5) #3
  %482 = load ptr, ptr %414, align 4
  %483 = load ptr, ptr %482, align 8
  %484 = getelementptr inbounds %struct.bcma_bus, ptr %483, i32 0, i32 2
  %485 = load ptr, ptr %484, align 4
  %486 = getelementptr inbounds %struct.bcma_host_ops, ptr %485, i32 0, i32 5
  %487 = load ptr, ptr %486, align 4
  tail call void %487(ptr noundef %482, i16 noundef zeroext 1636, i32 noundef -2004318187) #3
  br label %555

488:                                              ; preds = %412
  tail call void %426(ptr noundef %421, i16 noundef zeroext 1636, i32 noundef 286261268) #3
  %489 = load ptr, ptr %414, align 4
  %490 = load ptr, ptr %489, align 8
  %491 = getelementptr inbounds %struct.bcma_bus, ptr %490, i32 0, i32 2
  %492 = load ptr, ptr %491, align 4
  %493 = getelementptr inbounds %struct.bcma_host_ops, ptr %492, i32 0, i32 5
  %494 = load ptr, ptr %493, align 4
  tail call void %494(ptr noundef %489, i16 noundef zeroext 1632, i32 noundef 1) #3
  %495 = load ptr, ptr %414, align 4
  %496 = load ptr, ptr %495, align 8
  %497 = getelementptr inbounds %struct.bcma_bus, ptr %496, i32 0, i32 2
  %498 = load ptr, ptr %497, align 4
  %499 = getelementptr inbounds %struct.bcma_host_ops, ptr %498, i32 0, i32 5
  %500 = load ptr, ptr %499, align 4
  tail call void %500(ptr noundef %495, i16 noundef zeroext 1636, i32 noundef 67898374) #3
  %501 = load ptr, ptr %414, align 4
  %502 = load ptr, ptr %501, align 8
  %503 = getelementptr inbounds %struct.bcma_bus, ptr %502, i32 0, i32 2
  %504 = load ptr, ptr %503, align 4
  %505 = getelementptr inbounds %struct.bcma_host_ops, ptr %504, i32 0, i32 5
  %506 = load ptr, ptr %505, align 4
  tail call void %506(ptr noundef %501, i16 noundef zeroext 1632, i32 noundef 2) #3
  %507 = load ptr, ptr %414, align 4
  %508 = load ptr, ptr %507, align 8
  %509 = getelementptr inbounds %struct.bcma_bus, ptr %508, i32 0, i32 2
  %510 = load ptr, ptr %509, align 4
  %511 = getelementptr inbounds %struct.bcma_host_ops, ptr %510, i32 0, i32 5
  %512 = load ptr, ptr %511, align 4
  tail call void %512(ptr noundef %507, i16 noundef zeroext 1636, i32 noundef 50334216) #3
  %513 = load ptr, ptr %414, align 4
  %514 = load ptr, ptr %513, align 8
  %515 = getelementptr inbounds %struct.bcma_bus, ptr %514, i32 0, i32 2
  %516 = load ptr, ptr %515, align 4
  %517 = getelementptr inbounds %struct.bcma_host_ops, ptr %516, i32 0, i32 5
  %518 = load ptr, ptr %517, align 4
  tail call void %518(ptr noundef %513, i16 noundef zeroext 1632, i32 noundef 3) #3
  %519 = load ptr, ptr %414, align 4
  %520 = load ptr, ptr %519, align 8
  %521 = getelementptr inbounds %struct.bcma_bus, ptr %520, i32 0, i32 2
  %522 = load ptr, ptr %521, align 4
  %523 = getelementptr inbounds %struct.bcma_host_ops, ptr %522, i32 0, i32 5
  %524 = load ptr, ptr %523, align 4
  tail call void %524(ptr noundef %519, i16 noundef zeroext 1636, i32 noundef 0) #3
  %525 = load ptr, ptr %414, align 4
  %526 = load ptr, ptr %525, align 8
  %527 = getelementptr inbounds %struct.bcma_bus, ptr %526, i32 0, i32 2
  %528 = load ptr, ptr %527, align 4
  %529 = getelementptr inbounds %struct.bcma_host_ops, ptr %528, i32 0, i32 5
  %530 = load ptr, ptr %529, align 4
  tail call void %530(ptr noundef %525, i16 noundef zeroext 1632, i32 noundef 4) #3
  %531 = load ptr, ptr %414, align 4
  %532 = load ptr, ptr %531, align 8
  %533 = getelementptr inbounds %struct.bcma_bus, ptr %532, i32 0, i32 2
  %534 = load ptr, ptr %533, align 4
  %535 = getelementptr inbounds %struct.bcma_host_ops, ptr %534, i32 0, i32 5
  %536 = load ptr, ptr %535, align 4
  tail call void %536(ptr noundef %531, i16 noundef zeroext 1636, i32 noundef 536872384) #3
  %537 = load ptr, ptr %414, align 4
  %538 = load ptr, ptr %537, align 8
  %539 = getelementptr inbounds %struct.bcma_bus, ptr %538, i32 0, i32 2
  %540 = load ptr, ptr %539, align 4
  %541 = getelementptr inbounds %struct.bcma_host_ops, ptr %540, i32 0, i32 5
  %542 = load ptr, ptr %541, align 4
  tail call void %542(ptr noundef %537, i16 noundef zeroext 1632, i32 noundef 5) #3
  %543 = load ptr, ptr %414, align 4
  %544 = load ptr, ptr %543, align 8
  %545 = getelementptr inbounds %struct.bcma_bus, ptr %544, i32 0, i32 2
  %546 = load ptr, ptr %545, align 4
  %547 = getelementptr inbounds %struct.bcma_host_ops, ptr %546, i32 0, i32 5
  %548 = load ptr, ptr %547, align 4
  tail call void %548(ptr noundef %543, i16 noundef zeroext 1636, i32 noundef -2004318187) #3
  br label %555

549:                                              ; preds = %2
  %550 = zext i16 %6 to i32
  %551 = load ptr, ptr %4, align 4
  %552 = getelementptr inbounds %struct.bcma_bus, ptr %4, i32 0, i32 11
  %553 = load i8, ptr %552, align 1
  %554 = zext i8 %553 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %551, ptr noundef nonnull @.str.3, i32 noundef %554, i32 noundef %550) #4
  br label %555

555:                                              ; preds = %549, %488, %427, %351, %290, %214, %153, %112, %86, %60, %7
  %556 = phi i32 [ 0, %549 ], [ 1024, %7 ], [ 1024, %86 ], [ 1024, %112 ], [ 1024, %60 ], [ 1024, %214 ], [ 1024, %153 ], [ 1536, %351 ], [ 1536, %290 ], [ 1024, %488 ], [ 1024, %427 ]
  %557 = getelementptr inbounds %struct.bcma_drv_cc, ptr %0, i32 0, i32 6
  %558 = load ptr, ptr %557, align 4
  %559 = load ptr, ptr %558, align 8
  %560 = getelementptr inbounds %struct.bcma_bus, ptr %559, i32 0, i32 2
  %561 = load ptr, ptr %560, align 4
  %562 = getelementptr inbounds %struct.bcma_host_ops, ptr %561, i32 0, i32 2
  %563 = load ptr, ptr %562, align 4
  %564 = tail call i32 %563(ptr noundef %558, i16 noundef zeroext 1536) #3
  %565 = or i32 %564, %556
  %566 = load ptr, ptr %557, align 4
  %567 = load ptr, ptr %566, align 8
  %568 = getelementptr inbounds %struct.bcma_bus, ptr %567, i32 0, i32 2
  %569 = load ptr, ptr %568, align 4
  %570 = getelementptr inbounds %struct.bcma_host_ops, ptr %569, i32 0, i32 5
  %571 = load ptr, ptr %570, align 4
  tail call void %571(ptr noundef %566, i16 noundef zeroext 1536, i32 noundef %565) #3
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bcma_find_core_unit(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bcma_wait_value(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2153621239, i64 2153621740, i64 2153621276, i64 2153621332, i64 2153621366, i64 2153621390, i64 2153621431, i64 2153621452, i64 2153621480, i64 2153621514}
