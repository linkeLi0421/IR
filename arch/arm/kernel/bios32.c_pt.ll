; ModuleID = '/llk/IR/arch/arm/kernel/bios32.c_pt.bc'
source_filename = "../arch/arm/kernel/bios32.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcibios_fixup_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pcibios_fixup_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pcibios_fixup_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.pci_fixup = type { i16, i16, i32, i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.map_desc = type { i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.hw_pci = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [40 x i8], [0 x i32] }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
%struct.pci_sys_data = type { %struct.list_head, i32, i64, i32, ptr, %struct.list_head, %struct.resource, [12 x i8], ptr, ptr, ptr }

@pci_root_buses = external dso_local global %struct.list_head, align 4
@__pci_fixup_pci_fixup_83c553129 = internal constant %struct.pci_fixup { i16 4269, i16 1381, i32 -1, i32 0, ptr @pci_fixup_83c553 }, section ".pci_fixup_header", align 4
@__pci_fixup_pci_fixup_unassign136 = internal constant %struct.pci_fixup { i16 4176, i16 23130, i32 -1, i32 0, ptr @pci_fixup_unassign }, section ".pci_fixup_header", align 4
@__pci_fixup_pci_fixup_dec21285157 = internal constant %struct.pci_fixup { i16 4113, i16 4197, i32 -1, i32 0, ptr @pci_fixup_dec21285 }, section ".pci_fixup_header", align 4
@__pci_fixup_pci_fixup_ide_bases178 = internal constant %struct.pci_fixup { i16 -1, i16 -1, i32 -1, i32 0, ptr @pci_fixup_ide_bases }, section ".pci_fixup_header", align 4
@__pci_fixup_pci_fixup_dec21142187 = internal constant %struct.pci_fixup { i16 4113, i16 25, i32 -1, i32 0, ptr @pci_fixup_dec21142 }, section ".pci_fixup_header", align 4
@__pci_fixup_pci_fixup_cy82c693253 = internal constant %struct.pci_fixup { i16 4224, i16 -14701, i32 -1, i32 0, ptr @pci_fixup_cy82c693 }, section ".pci_fixup_header", align 4
@.str = private unnamed_addr constant [51 x i8] c"\016PCI: bus%d: Fast back to back transfers %sabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@__kstrtab_pcibios_fixup_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcibios_fixup_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pcibios_fixup_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcibios_fixup_bus to i32), ptr @__kstrtab_pcibios_fixup_bus, ptr @__kstrtabns_pcibios_fixup_bus }, section "___ksymtab+pcibios_fixup_bus", align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@debug_pci = internal unnamed_addr global i1 false, align 4
@__const.pci_map_io_early.pci_io_desc = private unnamed_addr constant %struct.map_desc { i32 -18874368, i32 0, i32 65536, i32 0 }, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"(%s: %04X) \00", align 1
@pci_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"arch/arm/kernel/bios32.c\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"PCI: unable to allocate bridge!\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"PCI: unable to scan bus!\00", align 1
@iomem_resource = external dso_local global %struct.resource, align 4
@pcibios_min_io = external dso_local local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"PCI%d I/O\00", align 1
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.9 = private unnamed_addr constant [48 x i8] c"\013PCI: unable to allocate I/O port region (%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"PCI: %s mapping slot %d pin %d => irq %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"PCI: %s swizzling pin %d => pin %d slot %d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_pcibios_fixup_bus, ptr @__pci_fixup_pci_fixup_83c553129, ptr @__pci_fixup_pci_fixup_cy82c693253, ptr @__pci_fixup_pci_fixup_dec21142187, ptr @__pci_fixup_pci_fixup_dec21285157, ptr @__pci_fixup_pci_fixup_ide_bases178, ptr @__pci_fixup_pci_fixup_unassign136], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pcibios_report_status(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @pci_root_buses, align 4
  %4 = icmp eq ptr %3, @pci_root_buses
  br i1 %4, label %9, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %7, %5 ], [ %3, %2 ]
  tail call fastcc void @pcibios_bus_report_status(ptr noundef %6, i32 noundef %0, i32 noundef %1)
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @pci_root_buses
  br i1 %8, label %9, label %5

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pcibios_bus_report_status(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i16, align 2
  %5 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %59, label %8

8:                                                ; preds = %3
  %9 = icmp eq i32 %2, 0
  br label %13

10:                                               ; preds = %47
  %11 = load ptr, ptr %5, align 4
  %12 = icmp eq ptr %11, %5
  br i1 %12, label %59, label %50

13:                                               ; preds = %47, %8
  %14 = phi ptr [ %6, %8 ], [ %48, %47 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 0, ptr %4, align 2, !annotation !8
  %15 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.pci_bus, ptr %16, i32 0, i32 12
  %18 = load i8, ptr %17, align 4
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %47, label %24

24:                                               ; preds = %20, %13
  %25 = call i32 @pci_read_config_word(ptr noundef %14, i32 noundef 6, ptr noundef nonnull %4) #12
  %26 = load i16, ptr %4, align 2
  %27 = icmp eq i16 %26, -1
  br i1 %27, label %47, label %28

28:                                               ; preds = %24
  %29 = zext i16 %26 to i32
  %30 = and i32 %29, %1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %28
  %33 = trunc i32 %30 to i16
  %34 = call i32 @pci_write_config_word(ptr noundef %14, i32 noundef 6, i16 noundef zeroext %33) #12
  br i1 %9, label %47, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %41 = load ptr, ptr %40, align 4
  br label %42

42:                                               ; preds = %39, %35
  %43 = phi ptr [ %41, %39 ], [ %37, %35 ]
  %44 = load i16, ptr %4, align 2
  %45 = zext i16 %44 to i32
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %43, i32 noundef %45) #13
  br label %47

47:                                               ; preds = %42, %32, %28, %24, %20
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  %48 = load ptr, ptr %14, align 4
  %49 = icmp eq ptr %48, %5
  br i1 %49, label %10, label %13

50:                                               ; preds = %56, %10
  %51 = phi ptr [ %57, %56 ], [ %11, %10 ]
  %52 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  call fastcc void @pcibios_bus_report_status(ptr noundef nonnull %53, i32 noundef %1, i32 noundef %2)
  br label %56

56:                                               ; preds = %55, %50
  %57 = load ptr, ptr %51, align 4
  %58 = icmp eq ptr %57, %5
  br i1 %58, label %59, label %50

59:                                               ; preds = %56, %10, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_fixup_83c553(ptr noundef %0) #0 {
  %2 = tail call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 16, i32 noundef 0) #12
  %3 = tail call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 4, i16 noundef zeroext 1) #12
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = sub i32 %7, %5
  store i32 %8, ptr %6, align 4
  store i32 0, ptr %4, align 8
  %9 = tail call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 72, i8 noundef zeroext -1) #12
  %10 = tail call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 66, i8 noundef zeroext 1) #12
  %11 = tail call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 64, i8 noundef zeroext 34) #12
  %12 = tail call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 131, i8 noundef zeroext 2) #12
  %13 = tail call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 128, i8 noundef zeroext 17) #12
  %14 = tail call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 129, i8 noundef zeroext 0) #12
  %15 = tail call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 68, i16 noundef zeroext -20480) #12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !9
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873135 to ptr), i8 8) #12, !srcloc !10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @pci_fixup_unassign(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = sub i32 %5, %3
  store i32 %6, ptr %4, align 4
  store i32 0, ptr %2, align 8
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_fixup_dec21285(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %43

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 255
  %9 = or i32 %8, 393216
  store i32 %9, ptr %6, align 8
  %10 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0
  store i32 0, ptr %10, align 8
  %11 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 1
  store i32 0, ptr %11, align 4
  %12 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 3
  store i32 0, ptr %12, align 4
  %13 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1
  store i32 0, ptr %13, align 8
  %14 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 1
  store i32 0, ptr %14, align 4
  %15 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 3
  store i32 0, ptr %15, align 4
  %16 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2
  store i32 0, ptr %16, align 8
  %17 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2, i32 1
  store i32 0, ptr %17, align 4
  %18 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2, i32 3
  store i32 0, ptr %18, align 4
  %19 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3
  store i32 0, ptr %19, align 8
  %20 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3, i32 1
  store i32 0, ptr %20, align 4
  %21 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3, i32 3
  store i32 0, ptr %21, align 4
  %22 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4
  store i32 0, ptr %22, align 8
  %23 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4, i32 1
  store i32 0, ptr %23, align 4
  %24 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4, i32 3
  store i32 0, ptr %24, align 4
  %25 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5
  store i32 0, ptr %25, align 8
  %26 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5, i32 1
  store i32 0, ptr %26, align 4
  %27 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5, i32 3
  store i32 0, ptr %27, align 4
  %28 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 6
  store i32 0, ptr %28, align 8
  %29 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 6, i32 1
  store i32 0, ptr %29, align 4
  %30 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 6, i32 3
  store i32 0, ptr %30, align 4
  %31 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 7
  store i32 0, ptr %31, align 8
  %32 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 7, i32 1
  store i32 0, ptr %32, align 4
  %33 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 7, i32 3
  store i32 0, ptr %33, align 4
  %34 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 8
  store i32 0, ptr %34, align 8
  %35 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 8, i32 1
  store i32 0, ptr %35, align 4
  %36 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 8, i32 3
  store i32 0, ptr %36, align 4
  %37 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 9
  store i32 0, ptr %37, align 8
  %38 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 9, i32 1
  store i32 0, ptr %38, align 4
  %39 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 9, i32 3
  store i32 0, ptr %39, align 4
  %40 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 10
  store i32 0, ptr %40, align 8
  %41 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 10, i32 1
  store i32 0, ptr %41, align 4
  %42 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 10, i32 3
  store i32 0, ptr %42, align 4
  br label %43

43:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_fixup_ide_bases(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, -256
  %5 = icmp eq i32 %4, 65792
  br i1 %5, label %6, label %94

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, -129
  %10 = icmp eq i32 %9, 884
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = or i32 %8, 2
  store i32 %12, ptr %7, align 4
  %13 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  br label %14

14:                                               ; preds = %11, %6
  %15 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, -129
  %18 = icmp eq i32 %17, 884
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = or i32 %16, 2
  store i32 %20, ptr %15, align 4
  %21 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 1
  store i32 %20, ptr %21, align 4
  br label %22

22:                                               ; preds = %19, %14
  %23 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, -129
  %26 = icmp eq i32 %25, 884
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = or i32 %24, 2
  store i32 %28, ptr %23, align 4
  %29 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2, i32 1
  store i32 %28, ptr %29, align 4
  br label %30

30:                                               ; preds = %27, %22
  %31 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, -129
  %34 = icmp eq i32 %33, 884
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = or i32 %32, 2
  store i32 %36, ptr %31, align 4
  %37 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3, i32 1
  store i32 %36, ptr %37, align 4
  br label %38

38:                                               ; preds = %35, %30
  %39 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, -129
  %42 = icmp eq i32 %41, 884
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = or i32 %40, 2
  store i32 %44, ptr %39, align 4
  %45 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4, i32 1
  store i32 %44, ptr %45, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, -129
  %50 = icmp eq i32 %49, 884
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = or i32 %48, 2
  store i32 %52, ptr %47, align 4
  %53 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5, i32 1
  store i32 %52, ptr %53, align 4
  br label %54

54:                                               ; preds = %51, %46
  %55 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, -129
  %58 = icmp eq i32 %57, 884
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = or i32 %56, 2
  store i32 %60, ptr %55, align 4
  %61 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 6, i32 1
  store i32 %60, ptr %61, align 4
  br label %62

62:                                               ; preds = %59, %54
  %63 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 7
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, -129
  %66 = icmp eq i32 %65, 884
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = or i32 %64, 2
  store i32 %68, ptr %63, align 4
  %69 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 7, i32 1
  store i32 %68, ptr %69, align 4
  br label %70

70:                                               ; preds = %67, %62
  %71 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 8
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, -129
  %74 = icmp eq i32 %73, 884
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = or i32 %72, 2
  store i32 %76, ptr %71, align 4
  %77 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 8, i32 1
  store i32 %76, ptr %77, align 4
  br label %78

78:                                               ; preds = %75, %70
  %79 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 9
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, -129
  %82 = icmp eq i32 %81, 884
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = or i32 %80, 2
  store i32 %84, ptr %79, align 4
  %85 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 9, i32 1
  store i32 %84, ptr %85, align 4
  br label %86

86:                                               ; preds = %83, %78
  %87 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 10
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, -129
  %90 = icmp eq i32 %89, 884
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = or i32 %88, 2
  store i32 %92, ptr %87, align 4
  %93 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 10, i32 1
  store i32 %92, ptr %93, align 4
  br label %94

94:                                               ; preds = %91, %86, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_fixup_dec21142(ptr noundef %0) #0 {
  %2 = tail call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 64, i32 noundef -2147483648) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_fixup_cy82c693(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, -256
  %5 = icmp eq i32 %4, 65792
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = and i32 %3, 128
  %8 = or i32 %7, 369
  %9 = or i32 %7, 885
  %10 = tail call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 16, i32 noundef %8) #12
  %11 = tail call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 20, i32 noundef %9) #12
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  store i32 0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 1
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 3
  store i32 0, ptr %14, align 4
  %15 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1
  store i32 0, ptr %15, align 8
  %16 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 1
  store i32 0, ptr %16, align 4
  %17 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 3
  store i32 0, ptr %17, align 4
  br label %29

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = tail call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 75, i8 noundef zeroext 14) #12
  %25 = tail call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 76, i8 noundef zeroext 15) #12
  %26 = tail call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 77, i8 noundef zeroext 65) #12
  %27 = tail call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 68, i8 noundef zeroext 23) #12
  %28 = tail call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 69, i8 noundef zeroext 3) #12
  br label %29

29:                                               ; preds = %23, %18, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pcibios_fixup_bus(ptr noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %61, label %10

7:                                                ; preds = %49
  %8 = load ptr, ptr %4, align 4
  %9 = icmp eq ptr %8, %4
  br i1 %9, label %61, label %52

10:                                               ; preds = %49, %1
  %11 = phi ptr [ %50, %49 ], [ %5, %1 ]
  %12 = phi i16 [ %34, %49 ], [ 832, %1 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #12
  store i16 0, ptr %2, align 2, !annotation !8
  %13 = call i32 @pci_read_config_word(ptr noundef %11, i32 noundef 6, ptr noundef nonnull %2) #12
  %14 = load i16, ptr %2, align 2
  %15 = and i16 %14, 128
  %16 = icmp eq i16 %15, 0
  %17 = and i16 %12, -513
  %18 = select i1 %16, i16 %17, i16 %12
  %19 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 7
  %20 = load i16, ptr %19, align 8
  switch i16 %20, label %33 [
    i16 4330, label %25
    i16 4739, label %21
  ]

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 8
  %23 = load i16, ptr %22, align 2
  %24 = icmp eq i16 %23, -32430
  br i1 %24, label %31, label %33

25:                                               ; preds = %10
  %26 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 8
  %27 = load i16, ptr %26, align 2
  %28 = add i16 %27, -8192
  %29 = and i16 %28, -17
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25, %21
  %32 = and i16 %18, -321
  br label %33

33:                                               ; preds = %31, %25, %21, %10
  %34 = phi i16 [ %32, %31 ], [ %18, %25 ], [ %18, %21 ], [ %18, %10 ]
  %35 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 11
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 8
  switch i32 %37, label %49 [
    i32 1540, label %38
    i32 1543, label %42
  ]

38:                                               ; preds = %33
  %39 = call i32 @pci_read_config_word(ptr noundef %11, i32 noundef 62, ptr noundef nonnull %2) #12
  %40 = load i16, ptr %2, align 2
  %41 = and i16 %40, -226
  br label %45

42:                                               ; preds = %33
  %43 = call i32 @pci_read_config_word(ptr noundef %11, i32 noundef 62, ptr noundef nonnull %2) #12
  %44 = load i16, ptr %2, align 2
  br label %45

45:                                               ; preds = %42, %38
  %46 = phi i16 [ %44, %42 ], [ %41, %38 ]
  %47 = or i16 %46, 33
  store i16 %47, ptr %2, align 2
  %48 = call i32 @pci_write_config_word(ptr noundef %11, i32 noundef 62, i16 noundef zeroext %47) #12
  br label %49

49:                                               ; preds = %45, %33
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #12
  %50 = load ptr, ptr %11, align 4
  %51 = icmp eq ptr %50, %4
  br i1 %51, label %7, label %10

52:                                               ; preds = %52, %7
  %53 = phi ptr [ %59, %52 ], [ %8, %7 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #12
  store i16 0, ptr %3, align 2, !annotation !8
  %54 = call i32 @pci_read_config_word(ptr noundef %53, i32 noundef 4, ptr noundef nonnull %3) #12
  %55 = load i16, ptr %3, align 2
  %56 = or i16 %55, %34
  store i16 %56, ptr %3, align 2
  %57 = call i32 @pci_write_config_word(ptr noundef %53, i32 noundef 4, i16 noundef zeroext %56) #12
  %58 = call i32 @pci_write_config_byte(ptr noundef %53, i32 noundef 12, i8 noundef zeroext 16) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #12
  %59 = load ptr, ptr %53, align 4
  %60 = icmp eq ptr %59, %4
  br i1 %60, label %61, label %52

61:                                               ; preds = %52, %7, %1
  %62 = phi i16 [ %34, %7 ], [ 832, %1 ], [ %34, %52 ]
  %63 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 4
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %85, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 13
  %68 = load i8, ptr %67, align 1
  %69 = icmp eq i8 %68, 1
  br i1 %69, label %70, label %85

70:                                               ; preds = %66
  %71 = zext i16 %62 to i32
  %72 = and i32 %71, 512
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 18
  %76 = load i16, ptr %75, align 4
  %77 = or i16 %76, 128
  store i16 %77, ptr %75, align 4
  br label %78

78:                                               ; preds = %74, %70
  %79 = and i32 %71, 64
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 18
  %83 = load i16, ptr %82, align 4
  %84 = or i16 %83, 1
  store i16 %84, ptr %82, align 4
  br label %85

85:                                               ; preds = %81, %78, %66, %61
  %86 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 12
  %87 = load i8, ptr %86, align 4
  %88 = zext i8 %87 to i32
  %89 = and i16 %62, 512
  %90 = icmp eq i16 %89, 0
  %91 = select i1 %90, ptr @.str.2, ptr @.str.1
  %92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %88, ptr noundef nonnull %91) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_common_init_dev(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = load i32, ptr @pci_flags, align 4
  %6 = or i32 %5, 2
  store i32 %6, ptr @pci_flags, align 4
  %7 = getelementptr inbounds %struct.hw_pci, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  call void %8() #12
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds %struct.hw_pci, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %129

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.hw_pci, ptr %1, i32 0, i32 7
  %17 = getelementptr inbounds %struct.hw_pci, ptr %1, i32 0, i32 8
  %18 = getelementptr inbounds %struct.hw_pci, ptr %1, i32 0, i32 2
  %19 = getelementptr inbounds %struct.hw_pci, ptr %1, i32 0, i32 3
  %20 = getelementptr inbounds %struct.hw_pci, ptr %1, i32 0, i32 4
  br label %21

21:                                               ; preds = %124, %15
  %22 = phi i32 [ 0, %15 ], [ %125, %124 ]
  %23 = phi i32 [ 0, %15 ], [ %126, %124 ]
  %24 = call ptr @pci_alloc_host_bridge(i32 noundef 96) #12
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27, !prof !11

26:                                               ; preds = %21
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 439, i32 noundef 9, ptr noundef nonnull @.str.6) #12
  br label %129

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.pci_host_bridge, ptr %24, i32 0, i32 16
  %29 = getelementptr inbounds %struct.pci_host_bridge, ptr %24, i32 1, i32 0, i32 0, i32 1, i32 1
  store i32 %22, ptr %29, align 8
  %30 = load ptr, ptr %16, align 4
  %31 = getelementptr inbounds %struct.pci_host_bridge, ptr %24, i32 1, i32 0, i32 9, i32 3, i32 1
  store ptr %30, ptr %31, align 4
  %32 = load ptr, ptr %17, align 4
  %33 = getelementptr inbounds %struct.pci_host_bridge, ptr %24, i32 1, i32 0, i32 10
  store ptr %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.pci_host_bridge, ptr %24, i32 1, i32 0, i32 0, i32 7
  store volatile ptr %34, ptr %34, align 4
  %35 = getelementptr inbounds %struct.pci_host_bridge, ptr %24, i32 1, i32 0, i32 1
  store ptr %34, ptr %35, align 4
  %36 = load ptr, ptr %18, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %27
  %39 = getelementptr ptr, ptr %36, i32 %23
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.pci_host_bridge, ptr %24, i32 1, i32 0, i32 10, i32 0, i32 1
  store ptr %40, ptr %41, align 4
  br label %42

42:                                               ; preds = %38, %27
  %43 = load ptr, ptr %19, align 4
  %44 = call i32 %43(i32 noundef %23, ptr noundef %28) #12
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %122

46:                                               ; preds = %42
  %47 = load volatile ptr, ptr %34, align 4
  %48 = icmp eq ptr %47, %34
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.pci_host_bridge, ptr %24, i32 1, i32 0, i32 0, i32 3
  %51 = load i64, ptr %50, align 8
  %52 = trunc i64 %51 to i32
  call void @pci_add_resource_offset(ptr noundef %34, ptr noundef nonnull @iomem_resource, i32 noundef %52) #12
  br label %53

53:                                               ; preds = %49, %46
  br label %54

54:                                               ; preds = %58, %53
  %55 = phi ptr [ %56, %58 ], [ %34, %53 ]
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, %34
  br i1 %57, label %65, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.resource_entry, ptr %56, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.resource, ptr %60, i32 0, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 7936
  %64 = icmp eq i32 %63, 256
  br i1 %64, label %84, label %54

65:                                               ; preds = %54
  %66 = shl i32 %23, 16
  %67 = icmp eq i32 %66, 0
  %68 = load i32, ptr @pcibios_min_io, align 4
  %69 = select i1 %67, i32 %68, i32 %66
  %70 = getelementptr inbounds %struct.pci_host_bridge, ptr %24, i32 1, i32 0, i32 2
  store i32 %69, ptr %70, align 8
  %71 = or i32 %66, 65535
  %72 = getelementptr inbounds %struct.pci_host_bridge, ptr %24, i32 1, i32 0, i32 3
  store i32 %71, ptr %72, align 4
  %73 = getelementptr inbounds %struct.pci_host_bridge, ptr %24, i32 1, i32 0, i32 5
  store i32 256, ptr %73, align 4
  %74 = getelementptr inbounds %struct.pci_host_bridge, ptr %24, i32 1, i32 0, i32 9, i32 1
  %75 = getelementptr inbounds %struct.pci_host_bridge, ptr %24, i32 1, i32 0, i32 4
  store ptr %74, ptr %75, align 8
  %76 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %74, ptr noundef nonnull @.str.8, i32 noundef %23) #12
  %77 = call i32 @request_resource(ptr noundef nonnull @ioport_resource, ptr noundef %70) #12
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %65
  %80 = getelementptr inbounds %struct.pci_host_bridge, ptr %24, i32 1, i32 0, i32 0, i32 5
  %81 = load i32, ptr %80, align 8
  call void @pci_add_resource_offset(ptr noundef %34, ptr noundef %70, i32 noundef %81) #12
  br label %84

82:                                               ; preds = %65
  %83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %77) #13
  call void @pci_free_host_bridge(ptr noundef nonnull %24) #12
  br label %129

84:                                               ; preds = %79, %58
  %85 = getelementptr inbounds %struct.pci_host_bridge, ptr %24, i32 0, i32 10
  store ptr @pcibios_map_irq, ptr %85, align 4
  %86 = getelementptr inbounds %struct.pci_host_bridge, ptr %24, i32 0, i32 9
  store ptr @pcibios_swizzle, ptr %86, align 64
  %87 = load ptr, ptr %20, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %84
  %90 = call i32 %87(i32 noundef %23, ptr noundef nonnull %24) #12
  br label %108

91:                                               ; preds = %84
  %92 = load volatile ptr, ptr %34, align 4
  %93 = icmp eq ptr %92, %34
  br i1 %93, label %100, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.pci_host_bridge, ptr %24, i32 0, i32 7
  %96 = load ptr, ptr %95, align 4
  %97 = load ptr, ptr %35, align 4
  %98 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  store ptr %95, ptr %98, align 4
  store ptr %92, ptr %95, align 4
  store ptr %96, ptr %97, align 4
  %99 = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  store ptr %97, ptr %99, align 4
  store volatile ptr %34, ptr %34, align 4
  store ptr %34, ptr %35, align 4
  br label %100

100:                                              ; preds = %94, %91
  %101 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 1
  store ptr %0, ptr %101, align 4
  %102 = getelementptr inbounds %struct.pci_host_bridge, ptr %24, i32 0, i32 4
  store ptr %28, ptr %102, align 4
  %103 = load i32, ptr %29, align 8
  %104 = getelementptr inbounds %struct.pci_host_bridge, ptr %24, i32 0, i32 5
  store i32 %103, ptr %104, align 8
  %105 = load ptr, ptr %1, align 4
  %106 = getelementptr inbounds %struct.pci_host_bridge, ptr %24, i32 0, i32 2
  store ptr %105, ptr %106, align 4
  %107 = call i32 @pci_scan_root_bus_bridge(ptr noundef nonnull %24) #12
  br label %108

108:                                              ; preds = %100, %89
  %109 = phi i32 [ %90, %89 ], [ %107, %100 ]
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112, !prof !11

111:                                              ; preds = %108
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 478, i32 noundef 9, ptr noundef nonnull @.str.7) #12
  call void @pci_free_host_bridge(ptr noundef nonnull %24) #12
  br label %129

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.pci_host_bridge, ptr %24, i32 0, i32 1
  %114 = load ptr, ptr %113, align 8
  %115 = getelementptr inbounds %struct.pci_host_bridge, ptr %24, i32 1, i32 0, i32 0, i32 6
  store ptr %114, ptr %115, align 4
  %116 = getelementptr inbounds %struct.pci_bus, ptr %114, i32 0, i32 8, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = add i32 %117, 1
  %119 = load ptr, ptr %3, align 8
  %120 = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  store ptr %28, ptr %120, align 4
  store ptr %119, ptr %28, align 4
  %121 = getelementptr inbounds %struct.pci_host_bridge, ptr %24, i32 1, i32 0, i32 0, i32 1
  store ptr %3, ptr %121, align 4
  store volatile ptr %28, ptr %3, align 8
  br label %124

122:                                              ; preds = %42
  call void @pci_free_host_bridge(ptr noundef nonnull %24) #12
  %123 = icmp slt i32 %44, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %122, %112
  %125 = phi i32 [ %118, %112 ], [ %22, %122 ]
  %126 = add nuw nsw i32 %23, 1
  %127 = load i32, ptr %12, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %21, label %129

129:                                              ; preds = %124, %122, %111, %82, %26, %11
  %130 = getelementptr inbounds %struct.hw_pci, ptr %1, i32 0, i32 6
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %129
  call void %131() #12
  br label %134

134:                                              ; preds = %133, %129
  %135 = load ptr, ptr %3, align 8
  %136 = icmp eq ptr %135, %3
  br i1 %136, label %156, label %137

137:                                              ; preds = %153, %134
  %138 = phi ptr [ %154, %153 ], [ %135, %134 ]
  %139 = getelementptr inbounds %struct.pci_sys_data, ptr %138, i32 0, i32 4
  %140 = load ptr, ptr %139, align 4
  %141 = load i32, ptr @pci_flags, align 4
  %142 = and i32 %141, 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %137
  call void @pci_bus_claim_resources(ptr noundef %140) #12
  br label %153

145:                                              ; preds = %137
  call void @pci_bus_size_bridges(ptr noundef %140) #12
  call void @pci_bus_assign_resources(ptr noundef %140) #12
  %146 = getelementptr inbounds %struct.pci_bus, ptr %140, i32 0, i32 2
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, %146
  br i1 %148, label %153, label %149

149:                                              ; preds = %149, %145
  %150 = phi ptr [ %151, %149 ], [ %147, %145 ]
  call void @pcie_bus_configure_settings(ptr noundef %150) #12
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, %146
  br i1 %152, label %153, label %149

153:                                              ; preds = %149, %145, %144
  call void @pci_bus_add_devices(ptr noundef %140) #12
  %154 = load ptr, ptr %138, align 8
  %155 = icmp eq ptr %154, %3
  br i1 %155, label %156, label %137

156:                                              ; preds = %153, %134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_claim_resources(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_size_bridges(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_assign_resources(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_bus_configure_settings(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_add_devices(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @pcibios_set_master(ptr nocapture noundef %0) local_unnamed_addr #6 {
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define dso_local ptr @pcibios_setup(ptr noundef readonly %0) local_unnamed_addr #7 section ".init.text" {
  %2 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(6) @.str.3)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store i1 true, ptr @debug_pci, align 4
  br label %5

5:                                                ; preds = %4, %1
  %6 = phi ptr [ null, %4 ], [ %0, %1 ]
  ret ptr %6
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcibios_align_resource(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 256
  %9 = icmp eq i32 %8, 0
  %10 = and i32 %5, 768
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %9, i1 true, i1 %11
  %13 = add i32 %5, 1023
  %14 = and i32 %13, -1024
  %15 = select i1 %12, i32 %5, i32 %14
  %16 = add i32 %3, -1
  %17 = add i32 %16, %15
  %18 = sub i32 0, %3
  %19 = and i32 %17, %18
  %20 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = tail call ptr @pci_find_host_bridge(ptr noundef %21) #12
  %23 = getelementptr inbounds %struct.pci_host_bridge, ptr %22, i32 0, i32 14
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %4
  %27 = tail call i32 %24(ptr noundef %0, ptr noundef %1, i32 noundef %19, i32 noundef %2, i32 noundef %3) #12
  br label %28

28:                                               ; preds = %26, %4
  %29 = phi i32 [ %27, %26 ], [ %19, %4 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_host_bridge(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @pci_map_io_early(i32 noundef %0) local_unnamed_addr #9 section ".init.text" {
  %2 = alloca %struct.map_desc, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) @__const.pci_map_io_early.pci_io_desc, i32 16, i1 false)
  %3 = getelementptr inbounds %struct.map_desc, ptr %2, i32 0, i32 1
  store i32 %0, ptr %3, align 4
  call void @iotable_init(ptr noundef nonnull %2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @iotable_init(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_alloc_host_bridge(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_host_bridge(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pcibios_map_irq(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.pci_sys_data, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 %7(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #12
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i32 [ %10, %9 ], [ -1, %3 ]
  %13 = load i1, ptr @debug_pci, align 4
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %20 = load ptr, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %14
  %22 = phi ptr [ %20, %18 ], [ %16, %14 ]
  %23 = zext i8 %1 to i32
  %24 = zext i8 %2 to i32
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %12) #13
  br label %26

26:                                               ; preds = %21, %11
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @pcibios_swizzle(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = load i8, ptr %1, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds %struct.pci_sys_data, ptr %4, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call zeroext i8 %8(ptr noundef %0, ptr noundef %1) #12
  br label %14

12:                                               ; preds = %2
  %13 = tail call zeroext i8 @pci_common_swizzle(ptr noundef %0, ptr noundef %1) #12
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i8 [ %11, %10 ], [ %13, %12 ]
  %16 = load i1, ptr @debug_pci, align 4
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = zext i8 %15 to i32
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %24 = load ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi ptr [ %24, %22 ], [ %20, %17 ]
  %27 = load i8, ptr %1, align 1
  %28 = zext i8 %27 to i32
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %26, i32 noundef %6, i32 noundef %28, i32 noundef %18) #13
  br label %30

30:                                               ; preds = %25, %14
  ret i8 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_scan_root_bus_bridge(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_add_resource_offset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_resource(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_common_swizzle(ptr noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }

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
!9 = !{i64 2153369053}
!10 = !{i64 3828651}
!11 = !{!"branch_weights", i32 1, i32 2000}
