; ModuleID = '/llk/IR/drivers/bcma/driver_pci.c_pt.bc'
source_filename = "../drivers/bcma/driver_pci.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_core_pci_power_save:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_core_pci_power_save\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_core_pci_power_save:\09\09\09\09\09"
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
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.65, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.65 = type { ptr }
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

@__kstrtab_bcma_core_pci_power_save = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_core_pci_power_save = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_core_pci_power_save = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_core_pci_power_save to i32), ptr @__kstrtab_bcma_core_pci_power_save, ptr @__kstrtabns_bcma_core_pci_power_save }, section "___ksymtab_gpl+bcma_core_pci_power_save", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_bcma_core_pci_power_save], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bcma_pcie_read(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.bcma_bus, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bcma_host_ops, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  tail call void %8(ptr noundef %3, i16 noundef zeroext 304, i32 noundef %1) #2
  %9 = load ptr, ptr %0, align 4
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.bcma_bus, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.bcma_host_ops, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %9, i16 noundef zeroext 304) #2
  %16 = load ptr, ptr %0, align 4
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.bcma_bus, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.bcma_host_ops, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %16, i16 noundef zeroext 308) #2
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcma_core_pci_early_init(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bcma_drv_pci, ptr %0, i32 0, i32 1
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %35

6:                                                ; preds = %1
  %7 = and i8 %3, -5
  store i8 %7, ptr %2, align 4
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.bcma_device, ptr %8, i32 0, i32 6
  %10 = load i8, ptr %9, align 1
  %11 = load ptr, ptr %8, align 8
  %12 = getelementptr inbounds %struct.bcma_bus, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.bcma_host_ops, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call zeroext i16 %15(ptr noundef %8, i16 noundef zeroext 2048) #2
  %17 = zext i16 %16 to i32
  %18 = lshr i32 %17, 12
  %19 = zext i8 %10 to i32
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %32, label %21

21:                                               ; preds = %6
  %22 = shl nuw nsw i32 %19, 12
  %23 = and i32 %17, 4095
  %24 = load ptr, ptr %0, align 4
  %25 = or i32 %23, %22
  %26 = load ptr, ptr %24, align 8
  %27 = getelementptr inbounds %struct.bcma_bus, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.bcma_host_ops, ptr %28, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = trunc i32 %25 to i16
  tail call void %30(ptr noundef %24, i16 noundef zeroext 2048, i16 noundef zeroext %31) #2
  br label %32

32:                                               ; preds = %21, %6
  %33 = load i8, ptr %2, align 4
  %34 = or i8 %33, 1
  store i8 %34, ptr %2, align 4
  br label %35

35:                                               ; preds = %32, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcma_core_pci_init(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bcma_drv_pci, ptr %0, i32 0, i32 1
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 2
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %88

6:                                                ; preds = %1
  %7 = and i8 %3, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %38

9:                                                ; preds = %6
  %10 = and i8 %3, -5
  store i8 %10, ptr %2, align 4
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.bcma_device, ptr %11, i32 0, i32 6
  %13 = load i8, ptr %12, align 1
  %14 = load ptr, ptr %11, align 8
  %15 = getelementptr inbounds %struct.bcma_bus, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.bcma_host_ops, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call zeroext i16 %18(ptr noundef %11, i16 noundef zeroext 2048) #2
  %20 = zext i16 %19 to i32
  %21 = lshr i32 %20, 12
  %22 = zext i8 %13 to i32
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %35, label %24

24:                                               ; preds = %9
  %25 = shl nuw nsw i32 %22, 12
  %26 = and i32 %20, 4095
  %27 = load ptr, ptr %0, align 4
  %28 = or i32 %26, %25
  %29 = load ptr, ptr %27, align 8
  %30 = getelementptr inbounds %struct.bcma_bus, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.bcma_host_ops, ptr %31, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = trunc i32 %28 to i16
  tail call void %33(ptr noundef %27, i16 noundef zeroext 2048, i16 noundef zeroext %34) #2
  br label %35

35:                                               ; preds = %24, %9
  %36 = load i8, ptr %2, align 4
  %37 = or i8 %36, 1
  store i8 %37, ptr %2, align 4
  br label %38

38:                                               ; preds = %35, %6
  %39 = phi i8 [ %3, %6 ], [ %37, %35 ]
  %40 = and i8 %39, 4
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %88

42:                                               ; preds = %38
  %43 = load ptr, ptr %0, align 4
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.bcma_bus, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.bcma_host_ops, ptr %46, i32 0, i32 5
  %48 = load ptr, ptr %47, align 4
  tail call void %48(ptr noundef %43, i16 noundef zeroext 304, i32 noundef 516) #2
  %49 = load ptr, ptr %0, align 4
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.bcma_bus, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.bcma_host_ops, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 %54(ptr noundef %49, i16 noundef zeroext 304) #2
  %56 = load ptr, ptr %0, align 4
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.bcma_bus, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.bcma_host_ops, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = tail call i32 %61(ptr noundef %56, i16 noundef zeroext 308) #2
  %63 = and i32 %62, 16
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, i16 128, i16 192
  tail call fastcc void @bcma_pcie_mdio_write(ptr noundef %0, i16 noundef zeroext 31, i8 noundef zeroext 1, i16 noundef zeroext %65) #2
  %66 = tail call fastcc zeroext i16 @bcma_pcie_mdio_read(ptr noundef %0, i16 noundef zeroext 29, i8 noundef zeroext 1) #2
  %67 = and i16 %66, 16384
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %42
  %70 = and i16 %66, -16385
  tail call fastcc void @bcma_pcie_mdio_write(ptr noundef %0, i16 noundef zeroext 29, i8 noundef zeroext 1, i16 noundef zeroext %70) #2
  br label %71

71:                                               ; preds = %69, %42
  %72 = load ptr, ptr %0, align 4
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %struct.bcma_bus, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.bcma_host_ops, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = tail call zeroext i16 %77(ptr noundef %72, i16 noundef zeroext 2058) #2
  %79 = icmp sgt i16 %78, -1
  br i1 %79, label %80, label %88

80:                                               ; preds = %71
  %81 = load ptr, ptr %0, align 4
  %82 = or i16 %78, -32768
  %83 = load ptr, ptr %81, align 8
  %84 = getelementptr inbounds %struct.bcma_bus, ptr %83, i32 0, i32 2
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.bcma_host_ops, ptr %85, i32 0, i32 4
  %87 = load ptr, ptr %86, align 4
  tail call void %87(ptr noundef %81, i16 noundef zeroext 2058, i16 noundef zeroext %82) #2
  br label %88

88:                                               ; preds = %80, %71, %38, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcma_core_pci_power_save(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bcma_bus, ptr %0, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bcma_device, ptr %8, i32 0, i32 1, i32 2
  %10 = load i8, ptr %9, align 4
  %11 = add i8 %10, -15
  %12 = icmp ult i8 %11, 6
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  %14 = select i1 %1, i16 116, i16 124
  br label %20

15:                                               ; preds = %6
  %16 = add i8 %10, -21
  %17 = icmp ult i8 %16, 2
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = select i1 %1, i16 117, i16 125
  br label %20

20:                                               ; preds = %18, %13
  %21 = phi i16 [ 32612, %13 ], [ 32357, %18 ]
  %22 = phi i16 [ %14, %13 ], [ %19, %18 ]
  tail call fastcc void @bcma_pcie_mdio_write(ptr noundef %7, i16 noundef zeroext 2049, i8 noundef zeroext 23, i16 noundef zeroext %21) #2
  %23 = tail call fastcc zeroext i16 @bcma_pcie_mdio_read(ptr noundef %7, i16 noundef zeroext 2049, i8 noundef zeroext 23) #2
  tail call fastcc void @bcma_pcie_mdio_write(ptr noundef %7, i16 noundef zeroext 2049, i8 noundef zeroext 25, i16 noundef zeroext %22) #2
  %24 = tail call fastcc zeroext i16 @bcma_pcie_mdio_read(ptr noundef %7, i16 noundef zeroext 2049, i8 noundef zeroext 25) #2
  br label %25

25:                                               ; preds = %20, %15, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcma_core_pci_up(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %2, i16 noundef zeroext 304, i32 noundef 296) #2
  %8 = load ptr, ptr %0, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.bcma_bus, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.bcma_host_ops, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %8, i16 noundef zeroext 304) #2
  %15 = load ptr, ptr %0, align 4
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.bcma_bus, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.bcma_host_ops, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %15, i16 noundef zeroext 308) #2
  %22 = or i32 %21, 16777216
  %23 = load ptr, ptr %0, align 4
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.bcma_bus, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.bcma_host_ops, ptr %26, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  tail call void %28(ptr noundef %23, i16 noundef zeroext 304, i32 noundef 296) #2
  %29 = load ptr, ptr %0, align 4
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.bcma_bus, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.bcma_host_ops, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 %34(ptr noundef %29, i16 noundef zeroext 304) #2
  %36 = load ptr, ptr %0, align 4
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.bcma_bus, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.bcma_host_ops, ptr %39, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  tail call void %41(ptr noundef %36, i16 noundef zeroext 308, i32 noundef %22) #2
  %42 = load ptr, ptr %0, align 4
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.bcma_bus, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.bcma_host_ops, ptr %45, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  tail call void %47(ptr noundef %42, i16 noundef zeroext 304, i32 noundef 296) #2
  %48 = load ptr, ptr %0, align 4
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.bcma_bus, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.bcma_host_ops, ptr %51, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 %53(ptr noundef %48, i16 noundef zeroext 304) #2
  %55 = load ptr, ptr %0, align 4
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.bcma_bus, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.bcma_host_ops, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 %60(ptr noundef %55, i16 noundef zeroext 308) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bcma_core_pci_down(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %2, i16 noundef zeroext 304, i32 noundef 296) #2
  %8 = load ptr, ptr %0, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.bcma_bus, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.bcma_host_ops, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %8, i16 noundef zeroext 304) #2
  %15 = load ptr, ptr %0, align 4
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.bcma_bus, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.bcma_host_ops, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %15, i16 noundef zeroext 308) #2
  %22 = and i32 %21, -16777217
  %23 = load ptr, ptr %0, align 4
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.bcma_bus, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.bcma_host_ops, ptr %26, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  tail call void %28(ptr noundef %23, i16 noundef zeroext 304, i32 noundef 296) #2
  %29 = load ptr, ptr %0, align 4
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.bcma_bus, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.bcma_host_ops, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 %34(ptr noundef %29, i16 noundef zeroext 304) #2
  %36 = load ptr, ptr %0, align 4
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.bcma_bus, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.bcma_host_ops, ptr %39, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  tail call void %41(ptr noundef %36, i16 noundef zeroext 308, i32 noundef %22) #2
  %42 = load ptr, ptr %0, align 4
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.bcma_bus, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.bcma_host_ops, ptr %45, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  tail call void %47(ptr noundef %42, i16 noundef zeroext 304, i32 noundef 296) #2
  %48 = load ptr, ptr %0, align 4
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.bcma_bus, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.bcma_host_ops, ptr %51, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 %53(ptr noundef %48, i16 noundef zeroext 304) #2
  %55 = load ptr, ptr %0, align 4
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.bcma_bus, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.bcma_host_ops, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 %60(ptr noundef %55, i16 noundef zeroext 308) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bcma_pcie_mdio_write(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3) unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.bcma_bus, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bcma_host_ops, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  tail call void %10(ptr noundef %5, i16 noundef zeroext 296, i32 noundef 130) #2
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.bcma_device, ptr %11, i32 0, i32 1, i32 2
  %13 = load i8, ptr %12, align 4
  %14 = icmp ugt i8 %13, 9
  %15 = zext i16 %1 to i32
  br i1 %14, label %16, label %43

16:                                               ; preds = %4
  %17 = shl nuw nsw i32 %15, 4
  %18 = or i32 %17, 1350434816
  %19 = load ptr, ptr %11, align 8
  %20 = getelementptr inbounds %struct.bcma_bus, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.bcma_host_ops, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  tail call void %23(ptr noundef %11, i16 noundef zeroext 300, i32 noundef %18) #2
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 2147480) #2
  br label %25

25:                                               ; preds = %36, %16
  %26 = phi i32 [ 0, %16 ], [ %37, %36 ]
  %27 = load ptr, ptr %0, align 4
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.bcma_host_ops, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %32(ptr noundef %27, i16 noundef zeroext 296) #2
  %34 = and i32 %33, 256
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #2
  %37 = add nuw nsw i32 %26, 1
  %38 = icmp eq i32 %37, 200
  br i1 %38, label %39, label %25

39:                                               ; preds = %36, %25
  %40 = zext i8 %2 to i32
  %41 = shl nuw nsw i32 %40, 18
  %42 = load ptr, ptr %0, align 4
  br label %48

43:                                               ; preds = %4
  %44 = shl i32 %15, 22
  %45 = zext i8 %2 to i32
  %46 = shl nuw nsw i32 %45, 18
  %47 = or i32 %46, %44
  br label %48

48:                                               ; preds = %43, %39
  %49 = phi ptr [ %42, %39 ], [ %11, %43 ]
  %50 = phi i32 [ 200, %39 ], [ 10, %43 ]
  %51 = phi i32 [ %41, %39 ], [ %47, %43 ]
  %52 = zext i16 %3 to i32
  %53 = or i32 %51, %52
  %54 = or i32 %53, 1342308352
  %55 = load ptr, ptr %49, align 8
  %56 = getelementptr inbounds %struct.bcma_bus, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.bcma_host_ops, ptr %57, i32 0, i32 5
  %59 = load ptr, ptr %58, align 4
  tail call void %59(ptr noundef %49, i16 noundef zeroext 300, i32 noundef %54) #2
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 2147480) #2
  br label %61

61:                                               ; preds = %72, %48
  %62 = phi i32 [ 0, %48 ], [ %73, %72 ]
  %63 = load ptr, ptr %0, align 4
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.bcma_bus, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.bcma_host_ops, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = tail call i32 %68(ptr noundef %63, i16 noundef zeroext 296) #2
  %70 = and i32 %69, 256
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %61
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #2
  %73 = add nuw nsw i32 %62, 1
  %74 = icmp eq i32 %73, %50
  br i1 %74, label %75, label %61

75:                                               ; preds = %72, %61
  %76 = load ptr, ptr %0, align 4
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.bcma_bus, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.bcma_host_ops, ptr %79, i32 0, i32 5
  %81 = load ptr, ptr %80, align 4
  tail call void %81(ptr noundef %76, i16 noundef zeroext 296, i32 noundef 0) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i16 @bcma_pcie_mdio_read(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bcma_host_ops, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %4, i16 noundef zeroext 296, i32 noundef 130) #2
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.bcma_device, ptr %10, i32 0, i32 1, i32 2
  %12 = load i8, ptr %11, align 4
  %13 = icmp ugt i8 %12, 9
  %14 = zext i16 %1 to i32
  br i1 %13, label %15, label %42

15:                                               ; preds = %3
  %16 = shl nuw nsw i32 %14, 4
  %17 = or i32 %16, 1350434816
  %18 = load ptr, ptr %10, align 8
  %19 = getelementptr inbounds %struct.bcma_bus, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.bcma_host_ops, ptr %20, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef %10, i16 noundef zeroext 300, i32 noundef %17) #2
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 2147480) #2
  br label %24

24:                                               ; preds = %35, %15
  %25 = phi i32 [ 0, %15 ], [ %36, %35 ]
  %26 = load ptr, ptr %0, align 4
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.bcma_bus, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.bcma_host_ops, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(ptr noundef %26, i16 noundef zeroext 296) #2
  %33 = and i32 %32, 256
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #2
  %36 = add nuw nsw i32 %25, 1
  %37 = icmp eq i32 %36, 200
  br i1 %37, label %38, label %24

38:                                               ; preds = %35, %24
  %39 = zext i8 %2 to i32
  %40 = shl nuw nsw i32 %39, 18
  %41 = load ptr, ptr %0, align 4
  br label %47

42:                                               ; preds = %3
  %43 = shl i32 %14, 22
  %44 = zext i8 %2 to i32
  %45 = shl nuw nsw i32 %44, 18
  %46 = or i32 %45, %43
  br label %47

47:                                               ; preds = %42, %38
  %48 = phi ptr [ %41, %38 ], [ %10, %42 ]
  %49 = phi i32 [ 200, %38 ], [ 10, %42 ]
  %50 = phi i32 [ %40, %38 ], [ %46, %42 ]
  %51 = or i32 %50, 1610743808
  %52 = load ptr, ptr %48, align 8
  %53 = getelementptr inbounds %struct.bcma_bus, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.bcma_host_ops, ptr %54, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  tail call void %56(ptr noundef %48, i16 noundef zeroext 300, i32 noundef %51) #2
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 2147480) #2
  br label %58

58:                                               ; preds = %79, %47
  %59 = phi i32 [ 0, %47 ], [ %80, %79 ]
  %60 = load ptr, ptr %0, align 4
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.bcma_bus, ptr %61, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.bcma_host_ops, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = tail call i32 %65(ptr noundef %60, i16 noundef zeroext 296) #2
  %67 = and i32 %66, 256
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %58
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 2147480) #2
  %71 = load ptr, ptr %0, align 4
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.bcma_bus, ptr %72, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.bcma_host_ops, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = tail call i32 %76(ptr noundef %71, i16 noundef zeroext 300) #2
  %78 = trunc i32 %77 to i16
  br label %82

79:                                               ; preds = %58
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #2
  %80 = add nuw nsw i32 %59, 1
  %81 = icmp eq i32 %80, %49
  br i1 %81, label %82, label %58

82:                                               ; preds = %79, %69
  %83 = phi i16 [ %78, %69 ], [ 0, %79 ]
  %84 = load ptr, ptr %0, align 4
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.bcma_bus, ptr %85, i32 0, i32 2
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.bcma_host_ops, ptr %87, i32 0, i32 5
  %89 = load ptr, ptr %88, align 4
  tail call void %89(ptr noundef %84, i16 noundef zeroext 296, i32 noundef 0) #2
  ret i16 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
