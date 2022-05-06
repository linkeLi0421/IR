; ModuleID = '/llk/IR/drivers/pci/setup-bus.c_pt.bc'
source_filename = "../drivers/pci/setup-bus.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_flags\22\09\09\09\09\09"
module asm "__kstrtabns_pci_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_setup_cardbus:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_setup_cardbus\22\09\09\09\09\09"
module asm "__kstrtabns_pci_setup_cardbus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bus_size_bridges:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bus_size_bridges\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bus_size_bridges:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bus_assign_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bus_assign_resources\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bus_assign_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bus_claim_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bus_claim_resources\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bus_claim_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_assign_unassigned_bridge_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_assign_unassigned_bridge_resources\22\09\09\09\09\09"
module asm "__kstrtabns_pci_assign_unassigned_bridge_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_assign_unassigned_bus_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_assign_unassigned_bus_resources\22\09\09\09\09\09"
module asm "__kstrtabns_pci_assign_unassigned_bus_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_bus_region = type { i32, i32 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.pci_dev_resource = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [40 x i8], [0 x i32] }

@pci_flags = dso_local global i32 0, align 4
@__kstrtab_pci_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_flags to i32), ptr @__kstrtab_pci_flags, ptr @__kstrtabns_pci_flags }, section "___ksymtab_gpl+pci_flags", align 4
@.str = private unnamed_addr constant [23 x i8] c"CardBus bridge to %pR\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"  bridge window %pR\0A\00", align 1
@__kstrtab_pci_setup_cardbus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_setup_cardbus = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_setup_cardbus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_setup_cardbus to i32), ptr @__kstrtab_pci_setup_cardbus, ptr @__kstrtabns_pci_setup_cardbus }, section "___ksymtab+pci_setup_cardbus", align 4
@pci_cardbus_io_size = external dso_local local_unnamed_addr global i32, align 4
@pci_cardbus_mem_size = external dso_local local_unnamed_addr global i32, align 4
@pci_hotplug_io_size = external dso_local local_unnamed_addr global i32, align 4
@pci_hotplug_mmio_size = external dso_local local_unnamed_addr global i32, align 4
@pci_hotplug_mmio_pref_size = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_pci_bus_size_bridges = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bus_size_bridges = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bus_size_bridges = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bus_size_bridges to i32), ptr @__kstrtab_pci_bus_size_bridges, ptr @__kstrtabns_pci_bus_size_bridges }, section "___ksymtab+pci_bus_size_bridges", align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"not setting up bridge for bus %04x:%02x\0A\00", align 1
@__kstrtab_pci_bus_assign_resources = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bus_assign_resources = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bus_assign_resources = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bus_assign_resources to i32), ptr @__kstrtab_pci_bus_assign_resources, ptr @__kstrtabns_pci_bus_assign_resources }, section "___ksymtab+pci_bus_assign_resources", align 4
@__kstrtab_pci_bus_claim_resources = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bus_claim_resources = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bus_claim_resources = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bus_claim_resources to i32), ptr @__kstrtab_pci_bus_claim_resources, ptr @__kstrtabns_pci_bus_claim_resources }, section "___ksymtab+pci_bus_claim_resources", align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@pci_realloc_enable = internal unnamed_addr global i32 -1, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"max bus depth: %d pci_try_num: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [72 x i8] c"Some PCI device resources are unassigned, try booting with pci=realloc\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"No. %d try to assign unassigned res\0A\00", align 1
@pci_root_buses = external dso_local global %struct.list_head, align 4
@.str.9 = private unnamed_addr constant [44 x i8] c"\017PCI: No. %d try to assign unassigned res\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Error reenabling bridge (%d)\0A\00", align 1
@__kstrtab_pci_assign_unassigned_bridge_resources = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_assign_unassigned_bridge_resources = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_assign_unassigned_bridge_resources = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_assign_unassigned_bridge_resources to i32), ptr @__kstrtab_pci_assign_unassigned_bridge_resources, ptr @__kstrtabns_pci_assign_unassigned_bridge_resources }, section "___ksymtab_gpl+pci_assign_unassigned_bridge_resources", align 4
@pci_bus_sem = external dso_local global %struct.rw_semaphore, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"BAR %d: releasing %pR\0A\00", align 1
@__kstrtab_pci_assign_unassigned_bus_resources = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_assign_unassigned_bus_resources = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_assign_unassigned_bus_resources = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_assign_unassigned_bus_resources to i32), ptr @__kstrtab_pci_assign_unassigned_bus_resources, ptr @__kstrtabns_pci_assign_unassigned_bus_resources }, section "___ksymtab_gpl+pci_assign_unassigned_bus_resources", align 4
@.str.12 = private unnamed_addr constant [19 x i8] c"PCI bridge to %pR\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"disabling bridge window %pR to %pR (unused)\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"bridge window %pR to %pR add_size %llx\0A\00", align 1
@ioport_resource = external dso_local global %struct.resource, align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.16 = private unnamed_addr constant [55 x i8] c"bridge window %pR to %pR add_size %llx add_align %llx\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"BAR %d: %pR has bogus alignment\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"%s: kzalloc() failed!\0A\00", align 1
@__func__.pdev_sort_resources = private unnamed_addr constant [20 x i8] c"pdev_sort_resources\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.19 = private unnamed_addr constant [32 x i8] c"failed to add %llx res[%d]=%pR\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"resource %d %pR released\0A\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"resource %d %pR\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_pci_assign_unassigned_bridge_resources, ptr @__ksymtab_pci_assign_unassigned_bus_resources, ptr @__ksymtab_pci_bus_assign_resources, ptr @__ksymtab_pci_bus_claim_resources, ptr @__ksymtab_pci_bus_size_bridges, ptr @__ksymtab_pci_flags, ptr @__ksymtab_pci_setup_cardbus], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_setup_cardbus(ptr noundef %0) #0 {
  %2 = alloca %struct.pci_bus_region, align 8
  %3 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store i64 0, ptr %2, align 8, !annotation !8
  %5 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %6 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef %6) #14
  %7 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  call void @pcibios_resource_to_bus(ptr noundef %10, ptr noundef nonnull %2, ptr noundef %8) #13
  %11 = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef %8) #14
  %16 = load i32, ptr %2, align 8
  %17 = call i32 @pci_write_config_dword(ptr noundef %4, i32 noundef 44, i32 noundef %16) #13
  %18 = getelementptr inbounds %struct.pci_bus_region, ptr %2, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = call i32 @pci_write_config_dword(ptr noundef %4, i32 noundef 48, i32 noundef %19) #13
  br label %21

21:                                               ; preds = %15, %1
  %22 = getelementptr %struct.pci_bus, ptr %0, i32 0, i32 6, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %9, align 8
  call void @pcibios_resource_to_bus(ptr noundef %24, ptr noundef nonnull %2, ptr noundef %23) #13
  %25 = getelementptr inbounds %struct.resource, ptr %23, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 256
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %21
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef %23) #14
  %30 = load i32, ptr %2, align 8
  %31 = call i32 @pci_write_config_dword(ptr noundef %4, i32 noundef 52, i32 noundef %30) #13
  %32 = getelementptr inbounds %struct.pci_bus_region, ptr %2, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = call i32 @pci_write_config_dword(ptr noundef %4, i32 noundef 56, i32 noundef %33) #13
  br label %35

35:                                               ; preds = %29, %21
  %36 = getelementptr %struct.pci_bus, ptr %0, i32 0, i32 6, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = load ptr, ptr %9, align 8
  call void @pcibios_resource_to_bus(ptr noundef %38, ptr noundef nonnull %2, ptr noundef %37) #13
  %39 = getelementptr inbounds %struct.resource, ptr %37, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 512
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %35
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef %37) #14
  %44 = load i32, ptr %2, align 8
  %45 = call i32 @pci_write_config_dword(ptr noundef %4, i32 noundef 28, i32 noundef %44) #13
  %46 = getelementptr inbounds %struct.pci_bus_region, ptr %2, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = call i32 @pci_write_config_dword(ptr noundef %4, i32 noundef 32, i32 noundef %47) #13
  br label %49

49:                                               ; preds = %43, %35
  %50 = getelementptr %struct.pci_bus, ptr %0, i32 0, i32 6, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %9, align 8
  call void @pcibios_resource_to_bus(ptr noundef %52, ptr noundef nonnull %2, ptr noundef %51) #13
  %53 = getelementptr inbounds %struct.resource, ptr %51, i32 0, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 512
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %49
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef %51) #14
  %58 = load i32, ptr %2, align 8
  %59 = call i32 @pci_write_config_dword(ptr noundef %4, i32 noundef 36, i32 noundef %58) #13
  %60 = getelementptr inbounds %struct.pci_bus_region, ptr %2, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = call i32 @pci_write_config_dword(ptr noundef %4, i32 noundef 40, i32 noundef %61) #13
  br label %63

63:                                               ; preds = %57, %49
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_resource_to_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @pcibios_setup_bridge(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_setup_bridge(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @pcibios_setup_bridge(ptr noundef %0, i32 noundef 8960)
  tail call fastcc void @__pci_setup_bridge(ptr noundef %0, i32 noundef 8960)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__pci_setup_bridge(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.pci_bus_region, align 8
  %4 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %7 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.12, ptr noundef %7) #14
  %8 = and i32 %1, 256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call fastcc void @pci_setup_bridge_io(ptr noundef %5)
  br label %11

11:                                               ; preds = %10, %2
  %12 = and i32 %1, 512
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store i64 0, ptr %3, align 8, !annotation !8
  %15 = getelementptr %struct.pci_dev, ptr %5, i32 0, i32 47, i32 8
  %16 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  call void @pcibios_resource_to_bus(ptr noundef %17, ptr noundef nonnull %3, ptr noundef %15) #13
  %18 = getelementptr %struct.pci_dev, ptr %5, i32 0, i32 47, i32 8, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 512
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %14
  %23 = load i32, ptr %3, align 8
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 65520
  %26 = getelementptr inbounds %struct.pci_bus_region, ptr %3, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, -1048576
  %29 = or i32 %25, %28
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef %15) #14
  br label %30

30:                                               ; preds = %22, %14
  %31 = phi i32 [ %29, %22 ], [ 65520, %14 ]
  %32 = call i32 @pci_write_config_dword(ptr noundef %5, i32 noundef 32, i32 noundef %31) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %33

33:                                               ; preds = %30, %11
  %34 = and i32 %1, 8192
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  call fastcc void @pci_setup_bridge_mmio_pref(ptr noundef %5)
  br label %37

37:                                               ; preds = %36, %33
  %38 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 18
  %39 = load i16, ptr %38, align 4
  %40 = call i32 @pci_write_config_word(ptr noundef %5, i32 noundef 62, i16 noundef zeroext %39) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_claim_bridge_resource(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.pci_bus_region, align 8
  %4 = add i32 %1, -11
  %5 = icmp ult i32 %4, -4
  br i1 %5, label %43, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @pci_claim_resource(ptr noundef %0, i32 noundef %1) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %43, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, -256
  %13 = icmp eq i32 %12, 394240
  br i1 %13, label %14, label %43

14:                                               ; preds = %9
  %15 = tail call zeroext i1 @pci_bus_clip_resource(ptr noundef %0, i32 noundef %1) #13
  br i1 %15, label %16, label %43

16:                                               ; preds = %14
  switch i32 %1, label %43 [
    i32 7, label %17
    i32 8, label %18
    i32 9, label %38
  ]

17:                                               ; preds = %16
  tail call fastcc void @pci_setup_bridge_io(ptr noundef %0)
  br label %39

18:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store i64 0, ptr %3, align 8, !annotation !8
  %19 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 8
  %20 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  call void @pcibios_resource_to_bus(ptr noundef %21, ptr noundef nonnull %3, ptr noundef %19) #13
  %22 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 8, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 512
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %18
  %27 = load i32, ptr %3, align 8
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 65520
  %30 = getelementptr inbounds %struct.pci_bus_region, ptr %3, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, -1048576
  %33 = or i32 %29, %32
  %34 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.1, ptr noundef %19) #14
  br label %35

35:                                               ; preds = %26, %18
  %36 = phi i32 [ %33, %26 ], [ 65520, %18 ]
  %37 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 32, i32 noundef %36) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %39

38:                                               ; preds = %16
  tail call fastcc void @pci_setup_bridge_mmio_pref(ptr noundef %0)
  br label %39

39:                                               ; preds = %38, %35, %17
  %40 = call i32 @pci_claim_resource(ptr noundef %0, i32 noundef %1) #13
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 0, i32 -22
  br label %43

43:                                               ; preds = %39, %16, %14, %9, %6, %2
  %44 = phi i32 [ 0, %2 ], [ 0, %6 ], [ 0, %9 ], [ -22, %14 ], [ -22, %16 ], [ %42, %39 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_claim_resource(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_bus_clip_resource(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pci_setup_bridge_io(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.pci_bus_region, align 8
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store i64 0, ptr %2, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i16 0, ptr %3, align 2, !annotation !8
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %5 = load i40, ptr %4, align 1
  %6 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 7
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  call void @pcibios_resource_to_bus(ptr noundef %8, ptr noundef nonnull %2, ptr noundef %6) #13
  %9 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 7, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %1
  %14 = and i40 %5, 1073741824
  %15 = icmp eq i40 %14, 0
  %16 = select i1 %15, i32 -16, i32 -4
  %17 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 28, ptr noundef nonnull %3) #13
  %18 = load i32, ptr %2, align 8
  %19 = lshr i32 %18, 8
  %20 = getelementptr inbounds %struct.pci_bus_region, ptr %2, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = shl nsw i32 %16, 8
  %23 = and i32 %21, %22
  %24 = and i32 %16, 252
  %25 = and i32 %24, %19
  %26 = or i32 %23, %25
  %27 = trunc i32 %26 to i16
  store i16 %27, ptr %3, align 2
  %28 = and i32 %21, -65536
  %29 = lshr i32 %18, 16
  %30 = or i32 %28, %29
  %31 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.1, ptr noundef %6) #14
  br label %33

32:                                               ; preds = %1
  store i16 240, ptr %3, align 2
  br label %33

33:                                               ; preds = %32, %13
  %34 = phi i32 [ %30, %13 ], [ 0, %32 ]
  %35 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 48, i32 noundef 65535) #13
  %36 = load i16, ptr %3, align 2
  %37 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 28, i16 noundef zeroext %36) #13
  %38 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 48, i32 noundef %34) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pci_setup_bridge_mmio_pref(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.pci_bus_region, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store i64 0, ptr %2, align 8, !annotation !8
  %3 = tail call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 44, i32 noundef 0) #13
  %4 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 9
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  call void @pcibios_resource_to_bus(ptr noundef %6, ptr noundef nonnull %2, ptr noundef %4) #13
  %7 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 9, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 8192
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %1
  %12 = load i32, ptr %2, align 8
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 65520
  %15 = getelementptr inbounds %struct.pci_bus_region, ptr %2, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, -1048576
  %18 = or i32 %14, %17
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.1, ptr noundef %4) #14
  br label %20

20:                                               ; preds = %11, %1
  %21 = phi i32 [ %18, %11 ], [ 65520, %1 ]
  %22 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 36, i32 noundef %21) #13
  %23 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 40, i32 noundef 0) #13
  %24 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 44, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @pcibios_window_alignment(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @pci_cardbus_resource_alignment(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 256
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr @pci_cardbus_io_size, align 4
  br label %13

8:                                                ; preds = %1
  %9 = and i32 %3, 512
  %10 = icmp eq i32 %9, 0
  %11 = load i32, ptr @pci_cardbus_mem_size, align 4
  %12 = select i1 %10, i32 0, i32 %11
  br label %13

13:                                               ; preds = %8, %6
  %14 = phi i32 [ %7, %6 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__pci_bus_size_bridges(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %190, label %7

7:                                                ; preds = %2
  %8 = icmp eq ptr %1, null
  br label %9

9:                                                ; preds = %187, %7
  %10 = phi ptr [ %5, %7 ], [ %188, %187 ]
  %11 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %187, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 13
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 2
  br i1 %17, label %18, label %186

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.pci_bus, ptr %12, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr @pci_cardbus_mem_size, align 4
  %22 = shl i32 %21, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i16 0, ptr %3, align 2, !annotation !8
  %23 = getelementptr %struct.pci_dev, ptr %20, i32 0, i32 47, i32 7
  %24 = getelementptr %struct.pci_dev, ptr %20, i32 0, i32 47, i32 7, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %57

27:                                               ; preds = %18
  %28 = load i32, ptr @pci_cardbus_io_size, align 4
  store i32 %28, ptr %23, align 4
  %29 = load i32, ptr @pci_cardbus_io_size, align 4
  %30 = add i32 %28, -1
  %31 = add i32 %30, %29
  %32 = getelementptr %struct.pci_dev, ptr %20, i32 0, i32 47, i32 7, i32 1
  store i32 %31, ptr %32, align 4
  %33 = getelementptr %struct.pci_dev, ptr %20, i32 0, i32 47, i32 7, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %34, 524544
  store i32 %35, ptr %33, align 4
  br i1 %8, label %57, label %36

36:                                               ; preds = %27
  %37 = load i32, ptr @pci_cardbus_io_size, align 4
  %38 = sub i32 %31, %37
  store i32 %38, ptr %32, align 4
  %39 = load i32, ptr @pci_cardbus_io_size, align 4
  %40 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %41 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 36) #15
  %42 = icmp eq ptr %41, null
  br i1 %42, label %57, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.pci_dev_resource, ptr %41, i32 0, i32 1
  store ptr %23, ptr %44, align 8
  %45 = getelementptr inbounds %struct.pci_dev_resource, ptr %41, i32 0, i32 2
  store ptr %20, ptr %45, align 4
  %46 = load i32, ptr %23, align 4
  %47 = getelementptr inbounds %struct.pci_dev_resource, ptr %41, i32 0, i32 3
  store i32 %46, ptr %47, align 8
  %48 = load i32, ptr %32, align 4
  %49 = getelementptr inbounds %struct.pci_dev_resource, ptr %41, i32 0, i32 4
  store i32 %48, ptr %49, align 4
  %50 = load i32, ptr %33, align 4
  %51 = getelementptr inbounds %struct.pci_dev_resource, ptr %41, i32 0, i32 7
  store i32 %50, ptr %51, align 8
  %52 = getelementptr inbounds %struct.pci_dev_resource, ptr %41, i32 0, i32 5
  store i32 %39, ptr %52, align 8
  %53 = getelementptr inbounds %struct.pci_dev_resource, ptr %41, i32 0, i32 6
  store i32 %39, ptr %53, align 4
  %54 = load ptr, ptr %1, align 4
  %55 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  store ptr %41, ptr %55, align 4
  store ptr %54, ptr %41, align 8
  %56 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %1, ptr %56, align 4
  store volatile ptr %41, ptr %1, align 4
  br label %57

57:                                               ; preds = %43, %36, %27, %18
  %58 = getelementptr %struct.pci_dev, ptr %20, i32 0, i32 47, i32 8
  %59 = getelementptr %struct.pci_dev, ptr %20, i32 0, i32 47, i32 8, i32 5
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %92

62:                                               ; preds = %57
  %63 = load i32, ptr @pci_cardbus_io_size, align 4
  store i32 %63, ptr %58, align 4
  %64 = load i32, ptr @pci_cardbus_io_size, align 4
  %65 = add i32 %63, -1
  %66 = add i32 %65, %64
  %67 = getelementptr %struct.pci_dev, ptr %20, i32 0, i32 47, i32 8, i32 1
  store i32 %66, ptr %67, align 4
  %68 = getelementptr %struct.pci_dev, ptr %20, i32 0, i32 47, i32 8, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = or i32 %69, 524544
  store i32 %70, ptr %68, align 4
  br i1 %8, label %92, label %71

71:                                               ; preds = %62
  %72 = load i32, ptr @pci_cardbus_io_size, align 4
  %73 = sub i32 %66, %72
  store i32 %73, ptr %67, align 4
  %74 = load i32, ptr @pci_cardbus_io_size, align 4
  %75 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %76 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %75, i32 noundef 3520, i32 noundef 36) #15
  %77 = icmp eq ptr %76, null
  br i1 %77, label %92, label %78

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.pci_dev_resource, ptr %76, i32 0, i32 1
  store ptr %58, ptr %79, align 8
  %80 = getelementptr inbounds %struct.pci_dev_resource, ptr %76, i32 0, i32 2
  store ptr %20, ptr %80, align 4
  %81 = load i32, ptr %58, align 4
  %82 = getelementptr inbounds %struct.pci_dev_resource, ptr %76, i32 0, i32 3
  store i32 %81, ptr %82, align 8
  %83 = load i32, ptr %67, align 4
  %84 = getelementptr inbounds %struct.pci_dev_resource, ptr %76, i32 0, i32 4
  store i32 %83, ptr %84, align 4
  %85 = load i32, ptr %68, align 4
  %86 = getelementptr inbounds %struct.pci_dev_resource, ptr %76, i32 0, i32 7
  store i32 %85, ptr %86, align 8
  %87 = getelementptr inbounds %struct.pci_dev_resource, ptr %76, i32 0, i32 5
  store i32 %74, ptr %87, align 8
  %88 = getelementptr inbounds %struct.pci_dev_resource, ptr %76, i32 0, i32 6
  store i32 %74, ptr %88, align 4
  %89 = load ptr, ptr %1, align 4
  %90 = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  store ptr %76, ptr %90, align 4
  store ptr %89, ptr %76, align 8
  %91 = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  store ptr %1, ptr %91, align 4
  store volatile ptr %76, ptr %1, align 4
  br label %92

92:                                               ; preds = %78, %71, %62, %57
  %93 = call i32 @pci_read_config_word(ptr noundef %20, i32 noundef 62, ptr noundef nonnull %3) #13
  %94 = load i16, ptr %3, align 2
  %95 = and i16 %94, 512
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = and i16 %94, -513
  store i16 %98, ptr %3, align 2
  %99 = call i32 @pci_write_config_word(ptr noundef %20, i32 noundef 62, i16 noundef zeroext %98) #13
  %100 = call i32 @pci_read_config_word(ptr noundef %20, i32 noundef 62, ptr noundef nonnull %3) #13
  br label %101

101:                                              ; preds = %97, %92
  %102 = call i32 @pci_read_config_word(ptr noundef %20, i32 noundef 62, ptr noundef nonnull %3) #13
  %103 = load i16, ptr %3, align 2
  %104 = and i16 %103, 256
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = or i16 %103, 256
  store i16 %107, ptr %3, align 2
  %108 = call i32 @pci_write_config_word(ptr noundef %20, i32 noundef 62, i16 noundef zeroext %107) #13
  %109 = call i32 @pci_read_config_word(ptr noundef %20, i32 noundef 62, ptr noundef nonnull %3) #13
  br label %110

110:                                              ; preds = %106, %101
  %111 = getelementptr %struct.pci_dev, ptr %20, i32 0, i32 47, i32 9
  %112 = getelementptr %struct.pci_dev, ptr %20, i32 0, i32 47, i32 9, i32 5
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %151

115:                                              ; preds = %110
  %116 = load i16, ptr %3, align 2
  %117 = and i16 %116, 256
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %151, label %119

119:                                              ; preds = %115
  %120 = load i32, ptr @pci_cardbus_mem_size, align 4
  store i32 %120, ptr %111, align 4
  %121 = load i32, ptr @pci_cardbus_mem_size, align 4
  %122 = add i32 %120, -1
  %123 = add i32 %122, %121
  %124 = getelementptr %struct.pci_dev, ptr %20, i32 0, i32 47, i32 9, i32 1
  store i32 %123, ptr %124, align 4
  %125 = getelementptr %struct.pci_dev, ptr %20, i32 0, i32 47, i32 9, i32 3
  %126 = load i32, ptr %125, align 4
  %127 = or i32 %126, 532992
  store i32 %127, ptr %125, align 4
  br i1 %8, label %149, label %128

128:                                              ; preds = %119
  %129 = load i32, ptr @pci_cardbus_mem_size, align 4
  %130 = sub i32 %123, %129
  store i32 %130, ptr %124, align 4
  %131 = load i32, ptr @pci_cardbus_mem_size, align 4
  %132 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %133 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %132, i32 noundef 3520, i32 noundef 36) #15
  %134 = icmp eq ptr %133, null
  br i1 %134, label %149, label %135

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.pci_dev_resource, ptr %133, i32 0, i32 1
  store ptr %111, ptr %136, align 8
  %137 = getelementptr inbounds %struct.pci_dev_resource, ptr %133, i32 0, i32 2
  store ptr %20, ptr %137, align 4
  %138 = load i32, ptr %111, align 4
  %139 = getelementptr inbounds %struct.pci_dev_resource, ptr %133, i32 0, i32 3
  store i32 %138, ptr %139, align 8
  %140 = load i32, ptr %124, align 4
  %141 = getelementptr inbounds %struct.pci_dev_resource, ptr %133, i32 0, i32 4
  store i32 %140, ptr %141, align 4
  %142 = load i32, ptr %125, align 4
  %143 = getelementptr inbounds %struct.pci_dev_resource, ptr %133, i32 0, i32 7
  store i32 %142, ptr %143, align 8
  %144 = getelementptr inbounds %struct.pci_dev_resource, ptr %133, i32 0, i32 5
  store i32 %131, ptr %144, align 8
  %145 = getelementptr inbounds %struct.pci_dev_resource, ptr %133, i32 0, i32 6
  store i32 %131, ptr %145, align 4
  %146 = load ptr, ptr %1, align 4
  %147 = getelementptr inbounds %struct.list_head, ptr %146, i32 0, i32 1
  store ptr %133, ptr %147, align 4
  store ptr %146, ptr %133, align 8
  %148 = getelementptr inbounds %struct.list_head, ptr %133, i32 0, i32 1
  store ptr %1, ptr %148, align 4
  store volatile ptr %133, ptr %1, align 4
  br label %149

149:                                              ; preds = %135, %128, %119
  %150 = load i32, ptr @pci_cardbus_mem_size, align 4
  br label %151

151:                                              ; preds = %149, %115, %110
  %152 = phi i32 [ %22, %110 ], [ %150, %149 ], [ %22, %115 ]
  %153 = getelementptr %struct.pci_dev, ptr %20, i32 0, i32 47, i32 10
  %154 = getelementptr %struct.pci_dev, ptr %20, i32 0, i32 47, i32 10, i32 5
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %185

157:                                              ; preds = %151
  %158 = load i32, ptr @pci_cardbus_mem_size, align 4
  store i32 %158, ptr %153, align 4
  %159 = add i32 %152, -1
  %160 = add i32 %159, %158
  %161 = getelementptr %struct.pci_dev, ptr %20, i32 0, i32 47, i32 10, i32 1
  store i32 %160, ptr %161, align 4
  %162 = getelementptr %struct.pci_dev, ptr %20, i32 0, i32 47, i32 10, i32 3
  %163 = load i32, ptr %162, align 4
  %164 = or i32 %163, 524800
  store i32 %164, ptr %162, align 4
  br i1 %8, label %185, label %165

165:                                              ; preds = %157
  %166 = sub i32 %160, %152
  store i32 %166, ptr %161, align 4
  %167 = load i32, ptr @pci_cardbus_mem_size, align 4
  %168 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %169 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %168, i32 noundef 3520, i32 noundef 36) #15
  %170 = icmp eq ptr %169, null
  br i1 %170, label %185, label %171

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.pci_dev_resource, ptr %169, i32 0, i32 1
  store ptr %153, ptr %172, align 8
  %173 = getelementptr inbounds %struct.pci_dev_resource, ptr %169, i32 0, i32 2
  store ptr %20, ptr %173, align 4
  %174 = load i32, ptr %153, align 4
  %175 = getelementptr inbounds %struct.pci_dev_resource, ptr %169, i32 0, i32 3
  store i32 %174, ptr %175, align 8
  %176 = load i32, ptr %161, align 4
  %177 = getelementptr inbounds %struct.pci_dev_resource, ptr %169, i32 0, i32 4
  store i32 %176, ptr %177, align 4
  %178 = load i32, ptr %162, align 4
  %179 = getelementptr inbounds %struct.pci_dev_resource, ptr %169, i32 0, i32 7
  store i32 %178, ptr %179, align 8
  %180 = getelementptr inbounds %struct.pci_dev_resource, ptr %169, i32 0, i32 5
  store i32 %152, ptr %180, align 8
  %181 = getelementptr inbounds %struct.pci_dev_resource, ptr %169, i32 0, i32 6
  store i32 %167, ptr %181, align 4
  %182 = load ptr, ptr %1, align 4
  %183 = getelementptr inbounds %struct.list_head, ptr %182, i32 0, i32 1
  store ptr %169, ptr %183, align 4
  store ptr %182, ptr %169, align 8
  %184 = getelementptr inbounds %struct.list_head, ptr %169, i32 0, i32 1
  store ptr %1, ptr %184, align 4
  store volatile ptr %169, ptr %1, align 4
  br label %185

185:                                              ; preds = %171, %165, %157, %151
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  br label %187

186:                                              ; preds = %14
  call void @__pci_bus_size_bridges(ptr noundef nonnull %12, ptr noundef %1)
  br label %187

187:                                              ; preds = %186, %185, %9
  %188 = load ptr, ptr %10, align 4
  %189 = icmp eq ptr %188, %4
  br i1 %189, label %190, label %9

190:                                              ; preds = %187, %2
  %191 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 1
  %192 = load ptr, ptr %191, align 8
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %219

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 20
  %196 = load ptr, ptr %195, align 8
  %197 = getelementptr inbounds %struct.pci_host_bridge, ptr %196, i32 0, i32 13
  %198 = load i16, ptr %197, align 16
  %199 = and i16 %198, 512
  %200 = icmp eq i16 %199, 0
  br i1 %200, label %479, label %201

201:                                              ; preds = %194
  %202 = call ptr @pci_bus_resource_n(ptr noundef %0, i32 noundef 0) #13
  %203 = icmp ne ptr %202, null
  br label %204

204:                                              ; preds = %213, %201
  %205 = phi i1 [ %203, %201 ], [ %216, %213 ]
  %206 = phi ptr [ %202, %201 ], [ %215, %213 ]
  %207 = phi i32 [ 0, %201 ], [ %214, %213 ]
  br i1 %205, label %208, label %213

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.resource, ptr %206, i32 0, i32 3
  %210 = load i32, ptr %209, align 4
  %211 = and i32 %210, 8192
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %258

213:                                              ; preds = %208, %204
  %214 = add i32 %207, 1
  %215 = call ptr @pci_bus_resource_n(ptr noundef %0, i32 noundef %214) #13
  %216 = icmp ne ptr %215, null
  %217 = icmp slt i32 %214, 4
  %218 = or i1 %217, %216
  br i1 %218, label %204, label %258

219:                                              ; preds = %190
  %220 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 4
  %221 = load ptr, ptr %220, align 4
  %222 = getelementptr %struct.pci_dev, ptr %221, i32 0, i32 47, i32 9
  %223 = getelementptr inbounds %struct.pci_dev, ptr %221, i32 0, i32 13
  %224 = load i8, ptr %223, align 1
  switch i8 %224, label %258 [
    i8 2, label %479
    i8 1, label %225
  ]

225:                                              ; preds = %219
  %226 = getelementptr %struct.pci_dev, ptr %221, i32 0, i32 47, i32 8, i32 3
  %227 = load i32, ptr %226, align 4
  %228 = or i32 %227, 512
  store i32 %228, ptr %226, align 4
  %229 = getelementptr inbounds %struct.pci_dev, ptr %221, i32 0, i32 49
  %230 = load i40, ptr %229, align 1
  %231 = and i40 %230, 2
  %232 = icmp eq i40 %231, 0
  br i1 %232, label %237, label %233

233:                                              ; preds = %225
  %234 = getelementptr %struct.pci_dev, ptr %221, i32 0, i32 47, i32 7, i32 3
  %235 = load i32, ptr %234, align 4
  %236 = or i32 %235, 256
  store i32 %236, ptr %234, align 4
  br label %237

237:                                              ; preds = %233, %225
  %238 = and i40 %230, 4
  %239 = icmp eq i40 %238, 0
  br i1 %239, label %248, label %240

240:                                              ; preds = %237
  %241 = getelementptr %struct.pci_dev, ptr %221, i32 0, i32 47, i32 9, i32 3
  %242 = load i32, ptr %241, align 4
  %243 = or i32 %242, 8704
  store i32 %243, ptr %241, align 4
  %244 = and i40 %230, 8
  %245 = icmp eq i40 %244, 0
  br i1 %245, label %248, label %246

246:                                              ; preds = %240
  %247 = or i32 %242, 1057281
  store i32 %247, ptr %241, align 4
  br label %248

248:                                              ; preds = %246, %240, %237
  %249 = load ptr, ptr %220, align 4
  %250 = getelementptr inbounds %struct.pci_dev, ptr %249, i32 0, i32 49
  %251 = load i40, ptr %250, align 1
  %252 = and i40 %251, 16777216
  %253 = icmp eq i40 %252, 0
  br i1 %253, label %258, label %254

254:                                              ; preds = %248
  %255 = load i32, ptr @pci_hotplug_io_size, align 4
  %256 = load i32, ptr @pci_hotplug_mmio_size, align 4
  %257 = load i32, ptr @pci_hotplug_mmio_pref_size, align 4
  br label %258

258:                                              ; preds = %254, %248, %219, %213, %208
  %259 = phi ptr [ %222, %219 ], [ %222, %254 ], [ %222, %248 ], [ null, %213 ], [ %206, %208 ]
  %260 = phi i32 [ 0, %219 ], [ %256, %254 ], [ 0, %248 ], [ 0, %208 ], [ 0, %213 ]
  %261 = phi i32 [ 0, %219 ], [ %257, %254 ], [ 0, %248 ], [ 0, %208 ], [ 0, %213 ]
  %262 = phi i32 [ 0, %219 ], [ %255, %254 ], [ 0, %248 ], [ 0, %208 ], [ 0, %213 ]
  %263 = icmp eq ptr %1, null
  %264 = select i1 %263, i32 %262, i32 0
  %265 = call ptr @pci_bus_resource_n(ptr noundef %0, i32 noundef 0) #13
  %266 = icmp ne ptr %265, null
  br label %267

267:                                              ; preds = %290, %258
  %268 = phi i1 [ %266, %258 ], [ %294, %290 ]
  %269 = phi ptr [ %265, %258 ], [ %293, %290 ]
  %270 = phi i32 [ 0, %258 ], [ %292, %290 ]
  %271 = phi ptr [ null, %258 ], [ %291, %290 ]
  %272 = icmp eq ptr %269, @ioport_resource
  %273 = icmp eq ptr %269, @iomem_resource
  %274 = or i1 %272, %273
  %275 = xor i1 %268, true
  %276 = or i1 %274, %275
  br i1 %276, label %290, label %277

277:                                              ; preds = %267
  %278 = getelementptr inbounds %struct.resource, ptr %269, i32 0, i32 3
  %279 = load i32, ptr %278, align 4
  %280 = and i32 %279, 256
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %286, label %282

282:                                              ; preds = %277
  %283 = getelementptr inbounds %struct.resource, ptr %269, i32 0, i32 5
  %284 = load ptr, ptr %283, align 4
  %285 = icmp eq ptr %284, null
  br i1 %285, label %297, label %286

286:                                              ; preds = %282, %277
  %287 = icmp ne ptr %271, null
  %288 = select i1 %281, i1 true, i1 %287
  %289 = select i1 %288, ptr %271, ptr %269
  br label %290

290:                                              ; preds = %286, %267
  %291 = phi ptr [ %271, %267 ], [ %289, %286 ]
  %292 = add i32 %270, 1
  %293 = call ptr @pci_bus_resource_n(ptr noundef %0, i32 noundef %292) #13
  %294 = icmp ne ptr %293, null
  %295 = icmp slt i32 %292, 4
  %296 = or i1 %295, %294
  br i1 %296, label %267, label %297

297:                                              ; preds = %290, %282
  %298 = phi ptr [ %269, %282 ], [ %291, %290 ]
  %299 = icmp eq ptr %298, null
  br i1 %299, label %454, label %300

300:                                              ; preds = %297
  %301 = getelementptr inbounds %struct.resource, ptr %298, i32 0, i32 5
  %302 = load ptr, ptr %301, align 4
  %303 = icmp eq ptr %302, null
  br i1 %303, label %304, label %454

304:                                              ; preds = %300
  %305 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 4
  %306 = load ptr, ptr %305, align 4
  %307 = icmp eq ptr %306, null
  br i1 %307, label %313, label %308

308:                                              ; preds = %304
  %309 = getelementptr inbounds %struct.pci_dev, ptr %306, i32 0, i32 49
  %310 = load i40, ptr %309, align 1
  %311 = and i40 %310, 1073741824
  %312 = icmp eq i40 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %308, %304
  br label %314

314:                                              ; preds = %313, %308
  %315 = phi i32 [ 4096, %313 ], [ 1024, %308 ]
  %316 = call i32 @pcibios_window_alignment(ptr noundef %0, i32 noundef 256) #13
  %317 = call i32 @llvm.umax.i32(i32 %315, i32 %316) #13
  %318 = load ptr, ptr %4, align 4
  %319 = icmp eq ptr %318, %4
  br i1 %319, label %389, label %323

320:                                              ; preds = %382
  %321 = load ptr, ptr %324, align 4
  %322 = icmp eq ptr %321, %4
  br i1 %322, label %389, label %323

323:                                              ; preds = %320, %314
  %324 = phi ptr [ %321, %320 ], [ %318, %314 ]
  %325 = phi i32 [ %386, %320 ], [ 0, %314 ]
  %326 = phi i32 [ %385, %320 ], [ %317, %314 ]
  %327 = phi i32 [ %384, %320 ], [ 0, %314 ]
  %328 = phi i32 [ %383, %320 ], [ 0, %314 ]
  %329 = getelementptr inbounds %struct.pci_dev, ptr %324, i32 0, i32 11
  br label %330

330:                                              ; preds = %382, %323
  %331 = phi i32 [ 0, %323 ], [ %387, %382 ]
  %332 = phi i32 [ %325, %323 ], [ %386, %382 ]
  %333 = phi i32 [ %326, %323 ], [ %385, %382 ]
  %334 = phi i32 [ %327, %323 ], [ %384, %382 ]
  %335 = phi i32 [ %328, %323 ], [ %383, %382 ]
  %336 = getelementptr %struct.pci_dev, ptr %324, i32 0, i32 47, i32 %331
  %337 = getelementptr %struct.pci_dev, ptr %324, i32 0, i32 47, i32 %331, i32 5
  %338 = load ptr, ptr %337, align 4
  %339 = icmp eq ptr %338, null
  br i1 %339, label %340, label %382

340:                                              ; preds = %330
  %341 = getelementptr %struct.pci_dev, ptr %324, i32 0, i32 47, i32 %331, i32 3
  %342 = load i32, ptr %341, align 4
  %343 = and i32 %342, 256
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %382, label %345

345:                                              ; preds = %340
  %346 = getelementptr %struct.pci_dev, ptr %324, i32 0, i32 47, i32 %331, i32 1
  %347 = load i32, ptr %346, align 4
  %348 = load i32, ptr %336, align 4
  %349 = add i32 %347, 1
  %350 = sub i32 %349, %348
  %351 = icmp ult i32 %350, 1024
  %352 = select i1 %351, i32 0, i32 %350
  %353 = add i32 %352, %335
  %354 = select i1 %351, i32 %350, i32 0
  %355 = add i32 %354, %332
  %356 = load i32, ptr %329, align 8
  %357 = and i32 %356, -256
  %358 = icmp eq i32 %357, 395008
  br i1 %358, label %359, label %361

359:                                              ; preds = %345
  %360 = load i32, ptr @pci_cardbus_io_size, align 4
  br label %363

361:                                              ; preds = %345
  %362 = call i32 @resource_alignment(ptr noundef %336) #13
  br label %363

363:                                              ; preds = %361, %359
  %364 = phi i32 [ %362, %361 ], [ %360, %359 ]
  %365 = call i32 @llvm.umax.i32(i32 %364, i32 %333) #13
  br i1 %263, label %382, label %366

366:                                              ; preds = %370, %363
  %367 = phi ptr [ %368, %370 ], [ %1, %363 ]
  %368 = load ptr, ptr %367, align 4
  %369 = icmp eq ptr %368, %1
  br i1 %369, label %379, label %370

370:                                              ; preds = %366
  %371 = getelementptr inbounds %struct.pci_dev_resource, ptr %368, i32 0, i32 1
  %372 = load ptr, ptr %371, align 4
  %373 = icmp eq ptr %372, %336
  br i1 %373, label %374, label %366

374:                                              ; preds = %370
  %375 = icmp eq ptr %368, null
  br i1 %375, label %379, label %376

376:                                              ; preds = %374
  %377 = getelementptr inbounds %struct.pci_dev_resource, ptr %368, i32 0, i32 5
  %378 = load i32, ptr %377, align 4
  br label %379

379:                                              ; preds = %376, %374, %366
  %380 = phi i32 [ %378, %376 ], [ 0, %374 ], [ 0, %366 ]
  %381 = add i32 %380, %334
  br label %382

382:                                              ; preds = %379, %363, %340, %330
  %383 = phi i32 [ %335, %340 ], [ %335, %330 ], [ %353, %379 ], [ %353, %363 ]
  %384 = phi i32 [ %334, %340 ], [ %334, %330 ], [ %381, %379 ], [ %334, %363 ]
  %385 = phi i32 [ %333, %340 ], [ %333, %330 ], [ %365, %379 ], [ %365, %363 ]
  %386 = phi i32 [ %332, %340 ], [ %332, %330 ], [ %355, %379 ], [ %355, %363 ]
  %387 = add nuw nsw i32 %331, 1
  %388 = icmp eq i32 %387, 11
  br i1 %388, label %320, label %330

389:                                              ; preds = %320, %314
  %390 = phi i32 [ 0, %314 ], [ %383, %320 ]
  %391 = phi i32 [ 0, %314 ], [ %384, %320 ]
  %392 = phi i32 [ %317, %314 ], [ %385, %320 ]
  %393 = phi i32 [ 0, %314 ], [ %386, %320 ]
  %394 = getelementptr inbounds %struct.resource, ptr %298, i32 0, i32 1
  %395 = load i32, ptr %394, align 4
  %396 = load i32, ptr %298, align 4
  %397 = add i32 %395, 1
  %398 = sub i32 %397, %396
  %399 = call i32 @llvm.umax.i32(i32 %393, i32 %264) #13
  %400 = icmp eq i32 %398, 1
  %401 = select i1 %400, i32 0, i32 %398
  %402 = add i32 %399, %390
  %403 = call i32 @llvm.umax.i32(i32 %402, i32 %401) #13
  %404 = add i32 %392, -1
  %405 = add i32 %403, %404
  %406 = sub i32 0, %392
  %407 = and i32 %405, %406
  %408 = icmp ne ptr %1, null
  br i1 %408, label %409, label %418

409:                                              ; preds = %389
  %410 = icmp ne i32 %262, 0
  %411 = icmp ne i32 %391, 0
  %412 = select i1 %410, i1 true, i1 %411
  br i1 %412, label %413, label %418

413:                                              ; preds = %409
  %414 = call i32 @llvm.umax.i32(i32 %403, i32 %262) #13
  %415 = add i32 %404, %391
  %416 = add i32 %415, %414
  %417 = and i32 %416, %406
  br label %418

418:                                              ; preds = %413, %409, %389
  %419 = phi i32 [ %417, %413 ], [ %407, %409 ], [ %407, %389 ]
  %420 = icmp ne i32 %407, 0
  %421 = icmp ne i32 %419, 0
  %422 = select i1 %420, i1 true, i1 %421
  br i1 %422, label %435, label %423

423:                                              ; preds = %418
  %424 = load ptr, ptr %305, align 4
  %425 = icmp eq ptr %424, null
  br i1 %425, label %433, label %426

426:                                              ; preds = %423
  %427 = icmp eq i32 %396, 0
  %428 = icmp eq i32 %395, 0
  %429 = select i1 %427, i1 %428, i1 false
  br i1 %429, label %433, label %430

430:                                              ; preds = %426
  %431 = getelementptr inbounds %struct.pci_dev, ptr %424, i32 0, i32 44
  %432 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %431, ptr noundef nonnull @.str.13, ptr noundef nonnull %298, ptr noundef %432) #14
  br label %433

433:                                              ; preds = %430, %426, %423
  %434 = getelementptr inbounds %struct.resource, ptr %298, i32 0, i32 3
  store i32 0, ptr %434, align 4
  br label %454

435:                                              ; preds = %418
  store i32 %392, ptr %298, align 4
  %436 = add i32 %407, %404
  store i32 %436, ptr %394, align 4
  %437 = getelementptr inbounds %struct.resource, ptr %298, i32 0, i32 3
  %438 = load i32, ptr %437, align 4
  %439 = or i32 %438, 524288
  store i32 %439, ptr %437, align 4
  %440 = load ptr, ptr %305, align 4
  %441 = icmp ne ptr %440, null
  %442 = icmp ugt i32 %419, %407
  %443 = and i1 %408, %442
  %444 = select i1 %441, i1 %443, i1 false
  br i1 %444, label %445, label %454

445:                                              ; preds = %435
  %446 = sub i32 %419, %407
  %447 = call fastcc i32 @add_to_list(ptr noundef nonnull %1, ptr noundef nonnull %440, ptr noundef nonnull %298, i32 noundef %446, i32 noundef %392) #13
  %448 = load ptr, ptr %305, align 4
  %449 = getelementptr inbounds %struct.pci_dev, ptr %448, i32 0, i32 44
  %450 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 8
  %451 = zext i32 %419 to i64
  %452 = zext i32 %407 to i64
  %453 = sub nsw i64 %451, %452
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %449, ptr noundef nonnull @.str.14, ptr noundef nonnull %298, ptr noundef %450, i64 noundef %453) #14
  br label %454

454:                                              ; preds = %445, %435, %433, %300, %297
  %455 = icmp eq ptr %259, null
  br i1 %455, label %465, label %456

456:                                              ; preds = %454
  %457 = getelementptr inbounds %struct.resource, ptr %259, i32 0, i32 3
  %458 = load i32, ptr %457, align 4
  %459 = and i32 %458, 1048576
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %465, label %461

461:                                              ; preds = %456
  %462 = select i1 %263, i32 %261, i32 0
  %463 = call fastcc i32 @pbus_size_mem(ptr noundef %0, i32 noundef 1057280, i32 noundef 1057280, i32 noundef 1057280, i32 noundef 1057280, i32 noundef %462, i32 noundef %261, ptr noundef %1)
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %472, label %465

465:                                              ; preds = %461, %456, %454
  %466 = select i1 %263, i32 %261, i32 0
  %467 = call fastcc i32 @pbus_size_mem(ptr noundef %0, i32 noundef 8704, i32 noundef 8704, i32 noundef 8704, i32 noundef 8704, i32 noundef %466, i32 noundef %261, ptr noundef %1)
  %468 = icmp eq i32 %467, 0
  %469 = select i1 %468, i32 0, i32 %261
  %470 = add i32 %469, %260
  %471 = select i1 %468, i32 8704, i32 512
  br label %472

472:                                              ; preds = %465, %461
  %473 = phi i32 [ %470, %465 ], [ %260, %461 ]
  %474 = phi i32 [ 512, %465 ], [ 1049088, %461 ]
  %475 = phi i32 [ 512, %465 ], [ 8704, %461 ]
  %476 = phi i32 [ %471, %465 ], [ 1057280, %461 ]
  %477 = select i1 %263, i32 %473, i32 0
  %478 = call fastcc i32 @pbus_size_mem(ptr noundef %0, i32 noundef %476, i32 noundef 512, i32 noundef %475, i32 noundef %474, i32 noundef %477, i32 noundef %473, ptr noundef %1)
  br label %479

479:                                              ; preds = %472, %219, %194
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_bus_resource_n(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pbus_size_mem(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) unnamed_addr #0 {
  %9 = alloca [18 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %9) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %9, i8 0, i32 72, i1 false), !annotation !8
  %10 = or i32 %1, 8192
  %11 = tail call ptr @pci_bus_resource_n(ptr noundef %0, i32 noundef 0) #13
  %12 = icmp ne ptr %11, null
  br label %13

13:                                               ; preds = %37, %8
  %14 = phi i1 [ %12, %8 ], [ %41, %37 ]
  %15 = phi ptr [ %11, %8 ], [ %40, %37 ]
  %16 = phi i32 [ 0, %8 ], [ %39, %37 ]
  %17 = phi ptr [ null, %8 ], [ %38, %37 ]
  %18 = icmp eq ptr %15, @ioport_resource
  %19 = icmp eq ptr %15, @iomem_resource
  %20 = or i1 %18, %19
  %21 = xor i1 %14, true
  %22 = or i1 %20, %21
  br i1 %22, label %37, label %23

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.resource, ptr %15, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, %10
  %27 = icmp eq i32 %26, %2
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.resource, ptr %15, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %28, %23
  %33 = icmp ne i32 %26, %2
  %34 = icmp ne ptr %17, null
  %35 = select i1 %33, i1 true, i1 %34
  %36 = select i1 %35, ptr %17, ptr %15
  br label %37

37:                                               ; preds = %32, %13
  %38 = phi ptr [ %17, %13 ], [ %36, %32 ]
  %39 = add i32 %16, 1
  %40 = tail call ptr @pci_bus_resource_n(ptr noundef %0, i32 noundef %39) #13
  %41 = icmp ne ptr %40, null
  %42 = icmp slt i32 %39, 4
  %43 = or i1 %42, %41
  br i1 %43, label %13, label %44

44:                                               ; preds = %37, %28
  %45 = phi ptr [ %15, %28 ], [ %38, %37 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %275, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.resource, ptr %45, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %275

51:                                               ; preds = %47
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %9, i8 0, i32 72, i1 false)
  %52 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %52
  br i1 %54, label %163, label %55

55:                                               ; preds = %51
  %56 = icmp eq ptr %7, null
  br label %60

57:                                               ; preds = %156
  %58 = load ptr, ptr %61, align 4
  %59 = icmp eq ptr %58, %52
  br i1 %59, label %163, label %60

60:                                               ; preds = %57, %55
  %61 = phi ptr [ %53, %55 ], [ %58, %57 ]
  %62 = phi i32 [ 0, %55 ], [ %160, %57 ]
  %63 = phi i32 [ 0, %55 ], [ %159, %57 ]
  %64 = phi i32 [ 0, %55 ], [ %158, %57 ]
  %65 = phi i32 [ 0, %55 ], [ %157, %57 ]
  %66 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 11
  br label %67

67:                                               ; preds = %156, %60
  %68 = phi i32 [ %62, %60 ], [ %160, %156 ]
  %69 = phi i32 [ %63, %60 ], [ %159, %156 ]
  %70 = phi i32 [ %64, %60 ], [ %158, %156 ]
  %71 = phi i32 [ %65, %60 ], [ %157, %156 ]
  %72 = phi i32 [ 0, %60 ], [ %161, %156 ]
  %73 = getelementptr %struct.pci_dev, ptr %61, i32 0, i32 47, i32 %72
  %74 = getelementptr %struct.pci_dev, ptr %61, i32 0, i32 47, i32 %72, i32 5
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %156

77:                                               ; preds = %67
  %78 = getelementptr %struct.pci_dev, ptr %61, i32 0, i32 47, i32 %72, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, 16
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %156

82:                                               ; preds = %77
  %83 = and i32 %79, %1
  %84 = icmp eq i32 %83, %2
  %85 = icmp eq i32 %83, %3
  %86 = or i1 %84, %85
  %87 = icmp eq i32 %83, %4
  %88 = or i1 %87, %86
  br i1 %88, label %89, label %156

89:                                               ; preds = %82
  %90 = getelementptr %struct.pci_dev, ptr %61, i32 0, i32 47, i32 %72, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = load i32, ptr %73, align 4
  %93 = add i32 %91, 1
  %94 = sub i32 %93, %92
  %95 = load i32, ptr %66, align 8
  %96 = and i32 %95, -256
  %97 = icmp eq i32 %96, 395008
  br i1 %97, label %98, label %108

98:                                               ; preds = %89
  %99 = and i32 %79, 256
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = load i32, ptr @pci_cardbus_io_size, align 4
  br label %110

103:                                              ; preds = %98
  %104 = and i32 %79, 512
  %105 = icmp eq i32 %104, 0
  %106 = load i32, ptr @pci_cardbus_mem_size, align 4
  %107 = select i1 %105, i32 0, i32 %106
  br label %110

108:                                              ; preds = %89
  %109 = tail call i32 @resource_alignment(ptr noundef %73) #13
  br label %110

110:                                              ; preds = %108, %103, %101
  %111 = phi i32 [ %109, %108 ], [ %102, %101 ], [ %107, %103 ]
  %112 = tail call i32 @llvm.cttz.i32(i32 %111, i1 false) #13, !range !9
  %113 = tail call i32 @llvm.smax.i32(i32 %112, i32 20)
  %114 = add nsw i32 %113, -20
  %115 = tail call i32 @llvm.umax.i32(i32 %94, i32 %111)
  %116 = add i32 %115, %68
  %117 = icmp ugt i32 %94, %111
  br i1 %117, label %122, label %118

118:                                              ; preds = %110
  %119 = getelementptr [18 x i32], ptr %9, i32 0, i32 %114
  %120 = load i32, ptr %119, align 4
  %121 = add i32 %120, %111
  store i32 %121, ptr %119, align 4
  br label %122

122:                                              ; preds = %118, %110
  %123 = tail call i32 @llvm.smax.i32(i32 %114, i32 %69)
  br i1 %56, label %156, label %124

124:                                              ; preds = %128, %122
  %125 = phi ptr [ %126, %128 ], [ %7, %122 ]
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, %7
  br i1 %127, label %137, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.pci_dev_resource, ptr %126, i32 0, i32 1
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, %73
  br i1 %131, label %132, label %124

132:                                              ; preds = %128
  %133 = icmp eq ptr %126, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %132
  %135 = getelementptr inbounds %struct.pci_dev_resource, ptr %126, i32 0, i32 5
  %136 = load i32, ptr %135, align 4
  br label %137

137:                                              ; preds = %134, %132, %124
  %138 = phi i32 [ %136, %134 ], [ 0, %132 ], [ 0, %124 ]
  %139 = add i32 %138, %70
  br label %140

140:                                              ; preds = %144, %137
  %141 = phi ptr [ %7, %137 ], [ %142, %144 ]
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, %7
  br i1 %143, label %153, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.pci_dev_resource, ptr %142, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, %73
  br i1 %147, label %148, label %140

148:                                              ; preds = %144
  %149 = icmp eq ptr %142, null
  br i1 %149, label %153, label %150

150:                                              ; preds = %148
  %151 = getelementptr inbounds %struct.pci_dev_resource, ptr %142, i32 0, i32 6
  %152 = load i32, ptr %151, align 4
  br label %153

153:                                              ; preds = %150, %148, %140
  %154 = phi i32 [ %152, %150 ], [ 0, %148 ], [ 0, %140 ]
  %155 = tail call i32 @llvm.umax.i32(i32 %71, i32 %154)
  br label %156

156:                                              ; preds = %153, %122, %82, %77, %67
  %157 = phi i32 [ %71, %82 ], [ %71, %77 ], [ %71, %67 ], [ %155, %153 ], [ %71, %122 ]
  %158 = phi i32 [ %70, %82 ], [ %70, %77 ], [ %70, %67 ], [ %139, %153 ], [ %70, %122 ]
  %159 = phi i32 [ %69, %82 ], [ %69, %77 ], [ %69, %67 ], [ %123, %153 ], [ %123, %122 ]
  %160 = phi i32 [ %68, %82 ], [ %68, %77 ], [ %68, %67 ], [ %116, %153 ], [ %116, %122 ]
  %161 = add nuw nsw i32 %72, 1
  %162 = icmp eq i32 %161, 11
  br i1 %162, label %57, label %67

163:                                              ; preds = %57, %51
  %164 = phi i32 [ 0, %51 ], [ %157, %57 ]
  %165 = phi i32 [ 0, %51 ], [ %158, %57 ]
  %166 = phi i32 [ 0, %51 ], [ %159, %57 ]
  %167 = phi i32 [ 0, %51 ], [ %160, %57 ]
  br label %168

168:                                              ; preds = %184, %163
  %169 = phi i32 [ %189, %184 ], [ 0, %163 ]
  %170 = phi i32 [ %185, %184 ], [ 0, %163 ]
  %171 = phi i32 [ %188, %184 ], [ 0, %163 ]
  %172 = add i32 %169, 20
  %173 = shl nuw i32 1, %172
  %174 = icmp eq i32 %171, 0
  br i1 %174, label %184, label %175

175:                                              ; preds = %168
  %176 = shl i32 %170, 1
  %177 = add i32 %171, -1
  %178 = add i32 %177, %176
  %179 = sub i32 0, %170
  %180 = and i32 %178, %179
  %181 = icmp ult i32 %180, %173
  %182 = lshr i32 %173, 1
  %183 = select i1 %181, i32 %182, i32 %170
  br label %184

184:                                              ; preds = %175, %168
  %185 = phi i32 [ %173, %168 ], [ %183, %175 ]
  %186 = getelementptr i32, ptr %9, i32 %169
  %187 = load i32, ptr %186, align 4
  %188 = add i32 %187, %171
  %189 = add i32 %169, 1
  %190 = icmp sgt i32 %189, %166
  br i1 %190, label %191, label %168

191:                                              ; preds = %184
  %192 = getelementptr inbounds %struct.resource, ptr %45, i32 0, i32 3
  %193 = load i32, ptr %192, align 4
  %194 = and i32 %193, 512
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %209

196:                                              ; preds = %191
  %197 = and i32 %193, 256
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %209, label %199

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 4
  %201 = load ptr, ptr %200, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %208, label %203

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.pci_dev, ptr %201, i32 0, i32 49
  %205 = load i40, ptr %204, align 1
  %206 = and i40 %205, 1073741824
  %207 = icmp eq i40 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %203, %199
  br label %209

209:                                              ; preds = %208, %203, %196, %191
  %210 = phi i32 [ 4096, %208 ], [ 1, %196 ], [ 1048576, %191 ], [ 1024, %203 ]
  %211 = tail call i32 @pcibios_window_alignment(ptr noundef %0, i32 noundef %193) #13
  %212 = tail call i32 @llvm.umax.i32(i32 %210, i32 %211) #13
  %213 = tail call i32 @llvm.umax.i32(i32 %185, i32 %212)
  %214 = getelementptr inbounds %struct.resource, ptr %45, i32 0, i32 1
  %215 = load i32, ptr %214, align 4
  %216 = load i32, ptr %45, align 4
  %217 = add i32 %215, 1
  %218 = sub i32 %217, %216
  %219 = tail call i32 @llvm.umax.i32(i32 %167, i32 %5) #13
  %220 = icmp eq i32 %218, 1
  %221 = select i1 %220, i32 0, i32 %218
  %222 = tail call i32 @llvm.umax.i32(i32 %219, i32 %221) #13
  %223 = add i32 %213, -1
  %224 = add i32 %223, %222
  %225 = sub i32 0, %213
  %226 = and i32 %224, %225
  %227 = tail call i32 @llvm.umax.i32(i32 %213, i32 %164)
  %228 = icmp ne ptr %7, null
  br i1 %228, label %229, label %240

229:                                              ; preds = %209
  %230 = icmp ne i32 %6, 0
  %231 = icmp ne i32 %165, 0
  %232 = select i1 %230, i1 true, i1 %231
  br i1 %232, label %233, label %240

233:                                              ; preds = %229
  %234 = tail call i32 @llvm.umax.i32(i32 %222, i32 %6) #13
  %235 = add i32 %165, -1
  %236 = add i32 %235, %227
  %237 = add i32 %236, %234
  %238 = sub i32 0, %227
  %239 = and i32 %237, %238
  br label %240

240:                                              ; preds = %233, %229, %209
  %241 = phi i32 [ %239, %233 ], [ %226, %229 ], [ %226, %209 ]
  %242 = icmp ne i32 %226, 0
  %243 = icmp ne i32 %241, 0
  %244 = select i1 %242, i1 true, i1 %243
  br i1 %244, label %257, label %245

245:                                              ; preds = %240
  %246 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 4
  %247 = load ptr, ptr %246, align 4
  %248 = icmp eq ptr %247, null
  br i1 %248, label %256, label %249

249:                                              ; preds = %245
  %250 = icmp eq i32 %216, 0
  %251 = icmp eq i32 %215, 0
  %252 = select i1 %250, i1 %251, i1 false
  br i1 %252, label %256, label %253

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct.pci_dev, ptr %247, i32 0, i32 44
  %255 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %254, ptr noundef nonnull @.str.13, ptr noundef nonnull %45, ptr noundef %255) #14
  br label %256

256:                                              ; preds = %253, %249, %245
  store i32 0, ptr %192, align 4
  br label %275

257:                                              ; preds = %240
  store i32 %213, ptr %45, align 4
  %258 = add i32 %223, %226
  store i32 %258, ptr %214, align 4
  %259 = load i32, ptr %192, align 4
  %260 = or i32 %259, 524288
  store i32 %260, ptr %192, align 4
  %261 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 4
  %262 = load ptr, ptr %261, align 4
  %263 = icmp ne ptr %262, null
  %264 = icmp ugt i32 %241, %226
  %265 = and i1 %228, %264
  %266 = select i1 %263, i1 %265, i1 false
  br i1 %266, label %267, label %275

267:                                              ; preds = %257
  %268 = sub i32 %241, %226
  %269 = tail call fastcc i32 @add_to_list(ptr noundef nonnull %7, ptr noundef nonnull %262, ptr noundef nonnull %45, i32 noundef %268, i32 noundef %227)
  %270 = load ptr, ptr %261, align 4
  %271 = getelementptr inbounds %struct.pci_dev, ptr %270, i32 0, i32 44
  %272 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 8
  %273 = zext i32 %268 to i64
  %274 = zext i32 %227 to i64
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %271, ptr noundef nonnull @.str.16, ptr noundef nonnull %45, ptr noundef %272, i64 noundef %273, i64 noundef %274) #14
  br label %275

275:                                              ; preds = %267, %257, %256, %47, %44
  %276 = phi i32 [ 0, %256 ], [ -28, %44 ], [ 0, %47 ], [ 0, %267 ], [ 0, %257 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %9) #13
  ret i32 %276
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_bus_size_bridges(ptr noundef %0) #0 {
  tail call void @__pci_bus_size_bridges(ptr noundef %0, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__pci_bus_assign_resources(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store ptr %4, ptr %4, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %13, label %9

9:                                                ; preds = %9, %3
  %10 = phi ptr [ %11, %9 ], [ %7, %3 ]
  call fastcc void @__dev_sort_resources(ptr noundef %10, ptr noundef nonnull %4) #13
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %6
  br i1 %12, label %13, label %9

13:                                               ; preds = %9, %3
  call fastcc void @__assign_resources_sorted(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  %14 = load ptr, ptr %6, align 4
  %15 = icmp eq ptr %14, %6
  br i1 %15, label %111, label %16

16:                                               ; preds = %108, %13
  %17 = phi ptr [ %109, %108 ], [ %14, %13 ]
  %18 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 1
  br label %19

19:                                               ; preds = %85, %16
  %20 = phi i32 [ 0, %16 ], [ %86, %85 ]
  %21 = getelementptr %struct.pci_dev, ptr %17, i32 0, i32 47, i32 %20
  %22 = getelementptr %struct.pci_dev, ptr %17, i32 0, i32 47, i32 %20, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %85

25:                                               ; preds = %19
  %26 = getelementptr %struct.pci_dev, ptr %17, i32 0, i32 47, i32 %20, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 16
  %29 = icmp eq i32 %28, 0
  %30 = and i32 %27, 768
  %31 = icmp eq i32 %30, 0
  %32 = or i1 %29, %31
  br i1 %32, label %85, label %33

33:                                               ; preds = %25
  %34 = load ptr, ptr %18, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %85, label %36

36:                                               ; preds = %33
  %37 = getelementptr %struct.pci_dev, ptr %17, i32 0, i32 47, i32 %20, i32 1
  br label %38

38:                                               ; preds = %82, %36
  %39 = phi ptr [ %34, %36 ], [ %80, %82 ]
  %40 = call ptr @pci_bus_resource_n(ptr noundef nonnull %39, i32 noundef 0) #13
  %41 = icmp ne ptr %40, null
  br label %42

42:                                               ; preds = %72, %38
  %43 = phi i1 [ %41, %38 ], [ %75, %72 ]
  %44 = phi ptr [ %40, %38 ], [ %74, %72 ]
  %45 = phi i32 [ 0, %38 ], [ %73, %72 ]
  br i1 %43, label %46, label %72

46:                                               ; preds = %42
  %47 = load i32, ptr %26, align 4
  %48 = getelementptr inbounds %struct.resource, ptr %44, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = xor i32 %49, %47
  %51 = and i32 %50, 8960
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %46
  %54 = and i32 %50, 7936
  %55 = and i32 %49, 536870912
  %56 = or i32 %54, %55
  %57 = icmp eq i32 %56, 0
  %58 = and i32 %47, 536870912
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %61, label %72

61:                                               ; preds = %53
  %62 = load i32, ptr %44, align 4
  %63 = load i32, ptr %21, align 4
  %64 = icmp ugt i32 %62, %63
  br i1 %64, label %72, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.resource, ptr %44, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = load i32, ptr %37, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = call i32 @request_resource(ptr noundef nonnull %44, ptr noundef %21) #13
  br label %72

72:                                               ; preds = %70, %65, %61, %53, %46, %42
  %73 = add i32 %45, 1
  %74 = call ptr @pci_bus_resource_n(ptr noundef nonnull %39, i32 noundef %73) #13
  %75 = icmp ne ptr %74, null
  %76 = icmp slt i32 %73, 4
  %77 = or i1 %76, %75
  br i1 %77, label %42, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.pci_bus, ptr %39, i32 0, i32 1
  %80 = load ptr, ptr %79, align 8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr %22, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %38, label %85

85:                                               ; preds = %82, %78, %33, %25, %19
  %86 = add nuw nsw i32 %20, 1
  %87 = icmp eq i32 %86, 11
  br i1 %87, label %88, label %19

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %108, label %92

92:                                               ; preds = %88
  call void @__pci_bus_assign_resources(ptr noundef nonnull %90, ptr noundef %1, ptr noundef %2)
  %93 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 13
  %94 = load i8, ptr %93, align 1
  switch i8 %94, label %101 [
    i8 1, label %95
    i8 2, label %100
  ]

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 51
  %97 = load volatile i32, ptr %96, align 4
  %98 = icmp slt i32 %97, 1
  br i1 %98, label %99, label %108

99:                                               ; preds = %95
  call void @pcibios_setup_bridge(ptr noundef nonnull %90, i32 noundef 8960) #13
  call fastcc void @__pci_setup_bridge(ptr noundef nonnull %90, i32 noundef 8960) #13
  br label %108

100:                                              ; preds = %92
  call void @pci_setup_cardbus(ptr noundef nonnull %90)
  br label %108

101:                                              ; preds = %92
  %102 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %103 = getelementptr inbounds %struct.pci_bus, ptr %90, i32 0, i32 16
  %104 = load i32, ptr %103, align 8
  %105 = getelementptr inbounds %struct.pci_bus, ptr %90, i32 0, i32 12
  %106 = load i8, ptr %105, align 4
  %107 = zext i8 %106 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %102, ptr noundef nonnull @.str.2, i32 noundef %104, i32 noundef %107) #14
  br label %108

108:                                              ; preds = %101, %100, %99, %95, %88
  %109 = load ptr, ptr %17, align 4
  %110 = icmp eq ptr %109, %6
  br i1 %110, label %111, label %16

111:                                              ; preds = %108, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_bus_assign_resources(ptr noundef %0) #0 {
  tail call void @__pci_bus_assign_resources(ptr noundef %0, ptr noundef null, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_bus_claim_resources(ptr noundef %0) #0 {
  tail call fastcc void @pci_bus_allocate_resources(ptr noundef %0)
  tail call fastcc void @pci_bus_allocate_dev_resources(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pci_bus_allocate_resources(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %74, label %5

5:                                                ; preds = %1
  tail call void @pci_read_bridge_bases(ptr noundef %0) #13
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 7, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %5
  %11 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 7, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = tail call i32 @pci_claim_resource(ptr noundef %6, i32 noundef 7) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 11
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, -256
  %21 = icmp eq i32 %20, 394240
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = tail call zeroext i1 @pci_bus_clip_resource(ptr noundef %6, i32 noundef 7) #13
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  tail call fastcc void @pci_setup_bridge_io(ptr noundef %6) #13
  %25 = tail call i32 @pci_claim_resource(ptr noundef %6, i32 noundef 7) #13
  br label %26

26:                                               ; preds = %24, %22, %17, %14, %10, %5
  %27 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 8, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 8, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = tail call i32 @pci_claim_bridge_resource(ptr noundef %6, i32 noundef 8) #13
  br label %36

36:                                               ; preds = %34, %30, %26
  %37 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 9, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %36
  %41 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 9, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = tail call i32 @pci_claim_resource(ptr noundef %6, i32 noundef 9) #13
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 11
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, -256
  %51 = icmp eq i32 %50, 394240
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = tail call zeroext i1 @pci_bus_clip_resource(ptr noundef %6, i32 noundef 9) #13
  br i1 %53, label %54, label %56

54:                                               ; preds = %52
  tail call fastcc void @pci_setup_bridge_mmio_pref(ptr noundef %6) #13
  %55 = tail call i32 @pci_claim_resource(ptr noundef %6, i32 noundef 9) #13
  br label %56

56:                                               ; preds = %54, %52, %47, %44, %40, %36
  %57 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 10, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %56
  %61 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 10, i32 5
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = tail call i32 @pci_claim_resource(ptr noundef %6, i32 noundef 10) #13
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 11
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, -256
  %71 = icmp eq i32 %70, 394240
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = tail call zeroext i1 @pci_bus_clip_resource(ptr noundef %6, i32 noundef 10) #13
  br label %74

74:                                               ; preds = %72, %67, %64, %60, %56, %1
  %75 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, %75
  br i1 %77, label %82, label %78

78:                                               ; preds = %78, %74
  %79 = phi ptr [ %80, %78 ], [ %76, %74 ]
  tail call fastcc void @pci_bus_allocate_resources(ptr noundef %79)
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, %75
  br i1 %81, label %82, label %78

82:                                               ; preds = %78, %74
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pci_bus_allocate_dev_resources(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %84, label %5

5:                                                ; preds = %81, %1
  %6 = phi ptr [ %82, %81 ], [ %3, %1 ]
  %7 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %5
  %11 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = tail call i32 @pci_claim_resource(ptr noundef %6, i32 noundef 0) #13
  br label %16

16:                                               ; preds = %14, %10, %5
  %17 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 1, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 1, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = tail call i32 @pci_claim_resource(ptr noundef %6, i32 noundef 1) #13
  br label %26

26:                                               ; preds = %24, %20, %16
  %27 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 2, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 2, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = tail call i32 @pci_claim_resource(ptr noundef %6, i32 noundef 2) #13
  br label %36

36:                                               ; preds = %34, %30, %26
  %37 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 3, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 3, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = tail call i32 @pci_claim_resource(ptr noundef %6, i32 noundef 3) #13
  br label %46

46:                                               ; preds = %44, %40, %36
  %47 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 4, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 4, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = tail call i32 @pci_claim_resource(ptr noundef %6, i32 noundef 4) #13
  br label %56

56:                                               ; preds = %54, %50, %46
  %57 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 5, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  %61 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 5, i32 5
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = tail call i32 @pci_claim_resource(ptr noundef %6, i32 noundef 5) #13
  br label %66

66:                                               ; preds = %64, %60, %56
  %67 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 6, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %66
  %71 = getelementptr %struct.pci_dev, ptr %6, i32 0, i32 47, i32 6, i32 5
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = tail call i32 @pci_claim_resource(ptr noundef %6, i32 noundef 6) #13
  br label %76

76:                                               ; preds = %74, %70, %66
  %77 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  tail call fastcc void @pci_bus_allocate_dev_resources(ptr noundef nonnull %78)
  br label %81

81:                                               ; preds = %80, %76
  %82 = load ptr, ptr %6, align 4
  %83 = icmp eq ptr %82, %2
  br i1 %83, label %84, label %5

84:                                               ; preds = %81, %1
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define dso_local void @pci_realloc_get_opt(ptr nocapture noundef readonly %0) local_unnamed_addr #6 section ".init.text" {
  %2 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(4) @.str.3, i32 noundef 3)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(3) @.str.4, i32 noundef 2)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4, %1
  %8 = phi i32 [ 0, %1 ], [ 2, %4 ]
  store i32 %8, ptr @pci_realloc_enable, align 4
  br label %9

9:                                                ; preds = %7, %4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_assign_unassigned_root_bus_resources(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store ptr %2, ptr %2, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store ptr %3, ptr %3, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  %6 = load i32, ptr @pci_realloc_enable, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = call fastcc i32 @pci_bus_get_depth(ptr noundef %0)
  %10 = add i32 %9, 1
  %11 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 21
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.5, i32 noundef %9, i32 noundef %10) #14
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i32 [ %10, %8 ], [ 1, %1 ]
  %14 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 21
  %15 = call i32 @llvm.smax.i32(i32 %13, i32 1)
  %16 = add nsw i32 %15, -1
  br label %17

17:                                               ; preds = %54, %12
  %18 = phi i32 [ 0, %12 ], [ %51, %54 ]
  %19 = phi i32 [ 0, %12 ], [ %21, %54 ]
  %20 = phi ptr [ null, %12 ], [ %23, %54 ]
  %21 = add nuw nsw i32 %19, 1
  %22 = icmp eq i32 %21, %13
  %23 = select i1 %22, ptr %2, ptr %20
  call void @__pci_bus_size_bridges(ptr noundef %0, ptr noundef %23)
  call void @__pci_bus_assign_resources(ptr noundef %0, ptr noundef %23, ptr noundef nonnull %3)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = load volatile ptr, ptr %23, align 4
  %27 = icmp eq ptr %26, %23
  br i1 %27, label %29, label %28, !prof !10

28:                                               ; preds = %25
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pci/setup-bus.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1790, 0\0A.popsection", ""() #13, !srcloc !11
  unreachable

29:                                               ; preds = %25, %17
  %30 = load volatile ptr, ptr %3, align 8
  %31 = icmp eq ptr %30, %3
  br i1 %31, label %108, label %32

32:                                               ; preds = %29
  %33 = icmp eq i32 %19, %16
  br i1 %33, label %34, label %48

34:                                               ; preds = %32
  %35 = icmp eq i32 %6, -1
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.6) #14
  %37 = load ptr, ptr %3, align 8
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi ptr [ %30, %34 ], [ %37, %36 ]
  %40 = icmp eq ptr %39, %3
  br i1 %40, label %108, label %41

41:                                               ; preds = %41, %38
  %42 = phi ptr [ %43, %41 ], [ %39, %38 ]
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %45, ptr %46, align 4
  store volatile ptr %43, ptr %45, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %42, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %44, align 4
  call void @kfree(ptr noundef %42) #13
  %47 = icmp eq ptr %43, %3
  br i1 %47, label %108, label %41

48:                                               ; preds = %32
  %49 = add nuw i32 %19, 2
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.8, i32 noundef %49) #14
  %50 = icmp sgt i32 %49, 2
  %51 = select i1 %50, i32 1, i32 %18
  %52 = load ptr, ptr %3, align 8
  %53 = icmp eq ptr %52, %3
  br i1 %53, label %54, label %58

54:                                               ; preds = %101, %98, %55, %48
  br label %17

55:                                               ; preds = %58
  %56 = load ptr, ptr %3, align 8
  %57 = icmp eq ptr %56, %3
  br i1 %57, label %54, label %69

58:                                               ; preds = %58, %48
  %59 = phi ptr [ %67, %58 ], [ %52, %48 ]
  %60 = getelementptr inbounds %struct.pci_dev_resource, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.pci_dev_resource, ptr %59, i32 0, i32 7
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 1057536
  call fastcc void @pci_bus_release_bridge_resources(ptr noundef %63, i32 noundef %66, i32 noundef %51)
  %67 = load ptr, ptr %59, align 4
  %68 = icmp eq ptr %67, %3
  br i1 %68, label %55, label %58

69:                                               ; preds = %95, %55
  %70 = phi ptr [ %96, %95 ], [ %56, %55 ]
  %71 = getelementptr inbounds %struct.pci_dev_resource, ptr %70, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.pci_dev_resource, ptr %70, i32 0, i32 3
  %74 = load i32, ptr %73, align 4
  store i32 %74, ptr %72, align 4
  %75 = getelementptr inbounds %struct.pci_dev_resource, ptr %70, i32 0, i32 4
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.resource, ptr %72, i32 0, i32 1
  store i32 %76, ptr %77, align 4
  %78 = getelementptr inbounds %struct.pci_dev_resource, ptr %70, i32 0, i32 7
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.resource, ptr %72, i32 0, i32 3
  store i32 %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.pci_dev_resource, ptr %70, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 13
  %84 = load i8, ptr %83, align 1
  %85 = add i8 %84, -1
  %86 = icmp ult i8 %85, 2
  br i1 %86, label %87, label %95

87:                                               ; preds = %69
  %88 = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 47
  %89 = ptrtoint ptr %72 to i32
  %90 = ptrtoint ptr %88 to i32
  %91 = add i32 %89, -193
  %92 = sub i32 %91, %90
  %93 = icmp ult i32 %92, 159
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  store i32 0, ptr %80, align 4
  br label %95

95:                                               ; preds = %94, %87, %69
  %96 = load ptr, ptr %70, align 4
  %97 = icmp eq ptr %96, %3
  br i1 %97, label %98, label %69

98:                                               ; preds = %95
  %99 = load ptr, ptr %3, align 8
  %100 = icmp eq ptr %99, %3
  br i1 %100, label %54, label %101

101:                                              ; preds = %101, %98
  %102 = phi ptr [ %103, %101 ], [ %99, %98 ]
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.list_head, ptr %103, i32 0, i32 1
  store ptr %105, ptr %106, align 4
  store volatile ptr %103, ptr %105, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %102, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %104, align 4
  call void @kfree(ptr noundef %102) #13
  %107 = icmp eq ptr %103, %3
  br i1 %107, label %54, label %101

108:                                              ; preds = %41, %38, %29
  call fastcc void @pci_bus_dump_resources(ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @pci_bus_get_depth(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %11, %5 ], [ %3, %1 ]
  %7 = phi i32 [ %10, %5 ], [ 0, %1 ]
  %8 = tail call fastcc i32 @pci_bus_get_depth(ptr noundef %6)
  %9 = add i32 %8, 1
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 %7)
  %11 = load ptr, ptr %6, align 4
  %12 = icmp eq ptr %11, %2
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %1
  %14 = phi i32 [ 0, %1 ], [ %10, %5 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_list(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %11, label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  store volatile ptr %6, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  tail call void @kfree(ptr noundef %5) #13
  %10 = icmp eq ptr %6, %0
  br i1 %10, label %11, label %4

11:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pci_bus_release_bridge_resources(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %26, label %7

7:                                                ; preds = %3
  %8 = icmp eq i32 %2, 1
  br label %9

9:                                                ; preds = %22, %7
  %10 = phi ptr [ %5, %7 ], [ %24, %22 ]
  %11 = phi i1 [ true, %7 ], [ %23, %22 ]
  %12 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 11
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, -256
  %19 = icmp eq i32 %18, 394240
  %20 = and i1 %8, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  tail call fastcc void @pci_bus_release_bridge_resources(ptr noundef nonnull %13, i32 noundef %1, i32 noundef 1)
  br label %22

22:                                               ; preds = %21, %15, %9
  %23 = phi i1 [ %11, %9 ], [ false, %15 ], [ false, %21 ]
  %24 = load ptr, ptr %10, align 4
  %25 = icmp eq ptr %24, %4
  br i1 %25, label %26, label %9

26:                                               ; preds = %22, %3
  %27 = phi i1 [ true, %3 ], [ %23, %22 ]
  %28 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %82, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 11
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, -256
  %37 = icmp eq i32 %36, 394240
  %38 = icmp eq i32 %2, 1
  %39 = select i1 %38, i1 true, i1 %27
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %82

41:                                               ; preds = %31
  %42 = getelementptr %struct.pci_dev, ptr %33, i32 0, i32 47, i32 7
  %43 = and i32 %1, 256
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = and i32 %1, 8192
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %45
  %49 = and i32 %1, 1048576
  %50 = icmp eq i32 %49, 0
  %51 = getelementptr %struct.pci_dev, ptr %33, i32 0, i32 47, i32 9, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 1048576
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %50, i1 true, i1 %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = and i32 %52, 1056768
  %58 = icmp eq i32 %57, 8192
  %59 = select i1 %58, i32 2, i32 1
  br label %60

60:                                               ; preds = %56, %48, %45, %41
  %61 = phi i32 [ 0, %41 ], [ 1, %45 ], [ %59, %56 ], [ 2, %48 ]
  %62 = getelementptr %struct.resource, ptr %42, i32 %61
  %63 = getelementptr %struct.resource, ptr %42, i32 %61, i32 5
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %82, label %66

66:                                               ; preds = %60
  tail call void @release_child_resources(ptr noundef %62) #13
  %67 = tail call i32 @release_resource(ptr noundef %62) #13
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = getelementptr %struct.resource, ptr %42, i32 %61, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 1057536
  %73 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %74 = add nuw nsw i32 %61, 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %73, ptr noundef nonnull @.str.20, i32 noundef %74, ptr noundef %62) #14
  %75 = getelementptr %struct.resource, ptr %42, i32 %61, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = load i32, ptr %62, align 4
  %78 = sub i32 %76, %77
  store i32 %78, ptr %75, align 4
  store i32 0, ptr %62, align 4
  store i32 0, ptr %70, align 4
  %79 = and i32 %71, 8192
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i32 %72, i32 8192
  tail call fastcc void @__pci_setup_bridge(ptr noundef %0, i32 noundef %81) #13
  store i32 %72, ptr %70, align 4
  br label %82

82:                                               ; preds = %69, %66, %60, %31, %26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pci_bus_dump_resources(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @pci_bus_resource_n(ptr noundef %0, i32 noundef 0) #13
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 21
  br label %5

5:                                                ; preds = %18, %1
  %6 = phi i1 [ %3, %1 ], [ %21, %18 ]
  %7 = phi ptr [ %2, %1 ], [ %20, %18 ]
  %8 = phi i32 [ 0, %1 ], [ %19, %18 ]
  br i1 %6, label %9, label %18

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.21, i32 noundef %8, ptr noundef nonnull %7) #14
  br label %18

18:                                               ; preds = %17, %13, %9, %5
  %19 = add i32 %8, 1
  %20 = tail call ptr @pci_bus_resource_n(ptr noundef %0, i32 noundef %19) #13
  %21 = icmp ne ptr %20, null
  %22 = icmp slt i32 %19, 4
  %23 = or i1 %22, %21
  br i1 %23, label %5, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %37, label %28

28:                                               ; preds = %34, %24
  %29 = phi ptr [ %35, %34 ], [ %26, %24 ]
  %30 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  tail call fastcc void @pci_bus_dump_resources(ptr noundef nonnull %31)
  br label %34

34:                                               ; preds = %33, %28
  %35 = load ptr, ptr %29, align 4
  %36 = icmp eq ptr %35, %25
  br i1 %36, label %37, label %28

37:                                               ; preds = %34, %24
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @pci_assign_unassigned_resources() local_unnamed_addr #9 section ".init.text" {
  %1 = load ptr, ptr @pci_root_buses, align 4
  %2 = icmp eq ptr %1, @pci_root_buses
  br i1 %2, label %7, label %3

3:                                                ; preds = %3, %0
  %4 = phi ptr [ %5, %3 ], [ %1, %0 ]
  tail call void @pci_assign_unassigned_root_bus_resources(ptr noundef %4)
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @pci_root_buses
  br i1 %6, label %7, label %3

7:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_assign_unassigned_bridge_resources(ptr noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = alloca %struct.list_head, align 8
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store ptr %2, ptr %2, align 8
  %6 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store ptr %3, ptr %3, align 8
  %7 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %7, align 4
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %9 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 7
  %10 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 7, i32 1
  %11 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 7, i32 2
  %12 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 7, i32 3
  %13 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 7, i32 4
  %14 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 7, i32 5
  %15 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 7, i32 6
  %16 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 7, i32 7
  %17 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 8
  %18 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 8, i32 1
  %19 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 8, i32 2
  %20 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 8, i32 3
  %21 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 8, i32 4
  %22 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 8, i32 5
  %23 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 8, i32 6
  %24 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 8, i32 7
  %25 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 9
  %26 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 9, i32 1
  %27 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 9, i32 2
  %28 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 9, i32 3
  %29 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 9, i32 4
  %30 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 9, i32 5
  %31 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 9, i32 6
  %32 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 9, i32 7
  br label %33

33:                                               ; preds = %107, %1
  %34 = phi i1 [ false, %1 ], [ true, %107 ]
  call void @__pci_bus_size_bridges(ptr noundef %5, ptr noundef nonnull %2)
  %35 = load i40, ptr %8, align 1
  %36 = and i40 %35, 16777216
  %37 = icmp eq i40 %36, 0
  br i1 %37, label %88, label %38

38:                                               ; preds = %33
  %39 = load i32, ptr %9, align 8
  %40 = load i32, ptr %10, align 4
  %41 = load i32, ptr %11, align 8
  %42 = load i32, ptr %12, align 4
  %43 = load i32, ptr %13, align 8
  %44 = load i32, ptr %14, align 4
  %45 = load i32, ptr %15, align 8
  %46 = load i32, ptr %16, align 4
  %47 = load i32, ptr %17, align 8
  %48 = load i32, ptr %18, align 4
  %49 = load i32, ptr %19, align 8
  %50 = load i32, ptr %20, align 4
  %51 = load i32, ptr %21, align 8
  %52 = load i32, ptr %22, align 4
  %53 = load i32, ptr %23, align 8
  %54 = load i32, ptr %24, align 4
  %55 = load i32, ptr %25, align 8
  %56 = load i32, ptr %26, align 4
  %57 = load i32, ptr %27, align 8
  %58 = load i32, ptr %28, align 4
  %59 = load i32, ptr %29, align 8
  %60 = load i32, ptr %30, align 4
  %61 = load i32, ptr %31, align 8
  %62 = load i32, ptr %32, align 4
  %63 = load ptr, ptr %4, align 4
  %64 = insertvalue [8 x i32] poison, i32 %39, 0
  %65 = insertvalue [8 x i32] %64, i32 %40, 1
  %66 = insertvalue [8 x i32] %65, i32 %41, 2
  %67 = insertvalue [8 x i32] %66, i32 %42, 3
  %68 = insertvalue [8 x i32] %67, i32 %43, 4
  %69 = insertvalue [8 x i32] %68, i32 %44, 5
  %70 = insertvalue [8 x i32] %69, i32 %45, 6
  %71 = insertvalue [8 x i32] %70, i32 %46, 7
  %72 = insertvalue [8 x i32] poison, i32 %47, 0
  %73 = insertvalue [8 x i32] %72, i32 %48, 1
  %74 = insertvalue [8 x i32] %73, i32 %49, 2
  %75 = insertvalue [8 x i32] %74, i32 %50, 3
  %76 = insertvalue [8 x i32] %75, i32 %51, 4
  %77 = insertvalue [8 x i32] %76, i32 %52, 5
  %78 = insertvalue [8 x i32] %77, i32 %53, 6
  %79 = insertvalue [8 x i32] %78, i32 %54, 7
  %80 = insertvalue [8 x i32] poison, i32 %55, 0
  %81 = insertvalue [8 x i32] %80, i32 %56, 1
  %82 = insertvalue [8 x i32] %81, i32 %57, 2
  %83 = insertvalue [8 x i32] %82, i32 %58, 3
  %84 = insertvalue [8 x i32] %83, i32 %59, 4
  %85 = insertvalue [8 x i32] %84, i32 %60, 5
  %86 = insertvalue [8 x i32] %85, i32 %61, 6
  %87 = insertvalue [8 x i32] %86, i32 %62, 7
  call fastcc void @pci_bus_distribute_available_resources(ptr noundef %63, ptr noundef nonnull %2, [8 x i32] %71, [8 x i32] %79, [8 x i32] %87) #13
  br label %88

88:                                               ; preds = %38, %33
  call fastcc void @__pci_bridge_assign_resources(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %89 = load volatile ptr, ptr %2, align 8
  %90 = icmp eq ptr %89, %2
  br i1 %90, label %92, label %91, !prof !10

91:                                               ; preds = %88
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pci/setup-bus.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2072, 0\0A.popsection", ""() #13, !srcloc !12
  unreachable

92:                                               ; preds = %88
  %93 = load volatile ptr, ptr %3, align 8
  %94 = icmp eq ptr %93, %3
  br i1 %94, label %161, label %95

95:                                               ; preds = %92
  br i1 %34, label %96, label %103

96:                                               ; preds = %96, %95
  %97 = phi ptr [ %98, %96 ], [ %93, %95 ]
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.list_head, ptr %97, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.list_head, ptr %98, i32 0, i32 1
  store ptr %100, ptr %101, align 4
  store volatile ptr %98, ptr %100, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %97, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %99, align 4
  call void @kfree(ptr noundef %97) #13
  %102 = icmp eq ptr %98, %3
  br i1 %102, label %161, label %96

103:                                              ; preds = %95
  %104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 2) #14
  %105 = load ptr, ptr %3, align 8
  %106 = icmp eq ptr %105, %3
  br i1 %106, label %107, label %111

107:                                              ; preds = %154, %151, %108, %103
  br label %33

108:                                              ; preds = %111
  %109 = load ptr, ptr %3, align 8
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %107, label %122

111:                                              ; preds = %111, %103
  %112 = phi ptr [ %120, %111 ], [ %105, %103 ]
  %113 = getelementptr inbounds %struct.pci_dev_resource, ptr %112, i32 0, i32 2
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 1
  %116 = load ptr, ptr %115, align 8
  %117 = getelementptr inbounds %struct.pci_dev_resource, ptr %112, i32 0, i32 7
  %118 = load i32, ptr %117, align 4
  %119 = and i32 %118, 1057536
  call fastcc void @pci_bus_release_bridge_resources(ptr noundef %116, i32 noundef %119, i32 noundef 1)
  %120 = load ptr, ptr %112, align 4
  %121 = icmp eq ptr %120, %3
  br i1 %121, label %108, label %111

122:                                              ; preds = %148, %108
  %123 = phi ptr [ %149, %148 ], [ %109, %108 ]
  %124 = getelementptr inbounds %struct.pci_dev_resource, ptr %123, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.pci_dev_resource, ptr %123, i32 0, i32 3
  %127 = load i32, ptr %126, align 4
  store i32 %127, ptr %125, align 4
  %128 = getelementptr inbounds %struct.pci_dev_resource, ptr %123, i32 0, i32 4
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr inbounds %struct.resource, ptr %125, i32 0, i32 1
  store i32 %129, ptr %130, align 4
  %131 = getelementptr inbounds %struct.pci_dev_resource, ptr %123, i32 0, i32 7
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr inbounds %struct.resource, ptr %125, i32 0, i32 3
  store i32 %132, ptr %133, align 4
  %134 = getelementptr inbounds %struct.pci_dev_resource, ptr %123, i32 0, i32 2
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.pci_dev, ptr %135, i32 0, i32 13
  %137 = load i8, ptr %136, align 1
  %138 = add i8 %137, -1
  %139 = icmp ult i8 %138, 2
  br i1 %139, label %140, label %148

140:                                              ; preds = %122
  %141 = getelementptr inbounds %struct.pci_dev, ptr %135, i32 0, i32 47
  %142 = ptrtoint ptr %125 to i32
  %143 = ptrtoint ptr %141 to i32
  %144 = add i32 %142, -193
  %145 = sub i32 %144, %143
  %146 = icmp ult i32 %145, 159
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  store i32 0, ptr %133, align 4
  br label %148

148:                                              ; preds = %147, %140, %122
  %149 = load ptr, ptr %123, align 4
  %150 = icmp eq ptr %149, %3
  br i1 %150, label %151, label %122

151:                                              ; preds = %148
  %152 = load ptr, ptr %3, align 8
  %153 = icmp eq ptr %152, %3
  br i1 %153, label %107, label %154

154:                                              ; preds = %154, %151
  %155 = phi ptr [ %156, %154 ], [ %152, %151 ]
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.list_head, ptr %155, i32 0, i32 1
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.list_head, ptr %156, i32 0, i32 1
  store ptr %158, ptr %159, align 4
  store volatile ptr %156, ptr %158, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %155, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %157, align 4
  call void @kfree(ptr noundef %155) #13
  %160 = icmp eq ptr %156, %3
  br i1 %160, label %107, label %154

161:                                              ; preds = %96, %92
  %162 = call i32 @pci_reenable_device(ptr noundef %0) #13
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %165, ptr noundef nonnull @.str.10, i32 noundef %162) #14
  br label %166

166:                                              ; preds = %164, %161
  call void @pci_set_master(ptr noundef %0) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__pci_bridge_assign_resources(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store ptr %4, ptr %4, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  call fastcc void @__dev_sort_resources(ptr noundef %0, ptr noundef nonnull %4) #13
  call fastcc void @__assign_resources_sorted(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %3
  call void @__pci_bus_assign_resources(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2)
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 8
  switch i32 %12, label %15 [
    i32 1540, label %13
    i32 1543, label %14
  ]

13:                                               ; preds = %9
  call void @pcibios_setup_bridge(ptr noundef nonnull %7, i32 noundef 8960) #13
  call fastcc void @__pci_setup_bridge(ptr noundef nonnull %7, i32 noundef 8960) #13
  br label %22

14:                                               ; preds = %9
  call void @pci_setup_cardbus(ptr noundef nonnull %7)
  br label %22

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %17 = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 16
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 12
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.2, i32 noundef %18, i32 noundef %21) #14
  br label %22

22:                                               ; preds = %15, %14, %13, %3
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_reenable_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_reassign_bridge_resources(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.list_head, align 8
  %4 = alloca %struct.list_head, align 8
  %5 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store ptr %3, ptr %3, align 8
  %6 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store ptr %4, ptr %4, align 8
  %7 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store ptr %5, ptr %5, align 8
  %8 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %8, align 4
  call void @down_read(ptr noundef nonnull @pci_bus_sem) #13
  br label %9

9:                                                ; preds = %72, %2
  %10 = phi ptr [ %0, %2 ], [ %74, %72 ]
  %11 = getelementptr %struct.pci_dev, ptr %10, i32 0, i32 47, i32 7, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = xor i32 %12, %1
  %14 = and i32 %13, 1057536
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %9
  %17 = getelementptr %struct.pci_dev, ptr %10, i32 0, i32 47, i32 7, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %48

20:                                               ; preds = %64, %54, %16
  %21 = phi i32 [ 7, %16 ], [ 8, %54 ], [ 9, %64 ]
  %22 = getelementptr %struct.pci_dev, ptr %10, i32 0, i32 47, i32 %21
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %24 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 36) #15
  %25 = icmp eq ptr %24, null
  br i1 %25, label %105, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.pci_dev_resource, ptr %24, i32 0, i32 1
  store ptr %22, ptr %27, align 8
  %28 = getelementptr inbounds %struct.pci_dev_resource, ptr %24, i32 0, i32 2
  store ptr %10, ptr %28, align 4
  %29 = load i32, ptr %22, align 4
  %30 = getelementptr inbounds %struct.pci_dev_resource, ptr %24, i32 0, i32 3
  store i32 %29, ptr %30, align 8
  %31 = getelementptr %struct.pci_dev, ptr %10, i32 0, i32 47, i32 %21, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.pci_dev_resource, ptr %24, i32 0, i32 4
  store i32 %32, ptr %33, align 4
  %34 = getelementptr %struct.pci_dev, ptr %10, i32 0, i32 47, i32 %21, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.pci_dev_resource, ptr %24, i32 0, i32 7
  store i32 %35, ptr %36, align 8
  %37 = getelementptr inbounds %struct.pci_dev_resource, ptr %24, i32 0, i32 5
  store i32 0, ptr %37, align 8
  %38 = getelementptr inbounds %struct.pci_dev_resource, ptr %24, i32 0, i32 6
  store i32 0, ptr %38, align 4
  %39 = load ptr, ptr %3, align 8
  %40 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %24, ptr %40, align 4
  store ptr %39, ptr %24, align 8
  %41 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %3, ptr %41, align 4
  store volatile ptr %24, ptr %3, align 8
  %42 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %42, ptr noundef nonnull @.str.11, i32 noundef %21, ptr noundef %22) #14
  %43 = getelementptr %struct.pci_dev, ptr %10, i32 0, i32 47, i32 %21, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %68, label %46

46:                                               ; preds = %26
  %47 = call i32 @release_resource(ptr noundef %22) #13
  br label %68

48:                                               ; preds = %16, %9
  %49 = getelementptr %struct.pci_dev, ptr %10, i32 0, i32 47, i32 8, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = xor i32 %50, %1
  %52 = and i32 %51, 1057536
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = getelementptr %struct.pci_dev, ptr %10, i32 0, i32 47, i32 8, i32 7
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %20, label %58

58:                                               ; preds = %54, %48
  %59 = getelementptr %struct.pci_dev, ptr %10, i32 0, i32 47, i32 9, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = xor i32 %60, %1
  %62 = and i32 %61, 1057536
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %58
  %65 = getelementptr %struct.pci_dev, ptr %10, i32 0, i32 47, i32 9, i32 7
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %20, label %76

68:                                               ; preds = %46, %26
  store i32 0, ptr %22, align 4
  store i32 0, ptr %31, align 4
  %69 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 1
  %70 = load ptr, ptr %69, align 8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.pci_bus, ptr %70, i32 0, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %9

76:                                               ; preds = %72, %68, %64, %58
  %77 = load volatile ptr, ptr %3, align 8
  %78 = icmp eq ptr %77, %3
  br i1 %78, label %172, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  call void @__pci_bus_size_bridges(ptr noundef %81, ptr noundef nonnull %4)
  call fastcc void @__pci_bridge_assign_resources(ptr noundef %10, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %82 = load volatile ptr, ptr %4, align 8
  %83 = icmp eq ptr %82, %4
  br i1 %83, label %85, label %84, !prof !10

84:                                               ; preds = %79
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pci/setup-bus.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2177, 0\0A.popsection", ""() #13, !srcloc !13
  unreachable

85:                                               ; preds = %79
  %86 = load volatile ptr, ptr %5, align 8
  %87 = icmp eq ptr %86, %5
  br i1 %87, label %88, label %107

88:                                               ; preds = %85
  %89 = load ptr, ptr %3, align 8
  %90 = icmp eq ptr %89, %3
  br i1 %90, label %104, label %91

91:                                               ; preds = %100, %88
  %92 = phi ptr [ %102, %100 ], [ %89, %88 ]
  %93 = phi ptr [ %101, %100 ], [ %10, %88 ]
  %94 = getelementptr inbounds %struct.pci_dev_resource, ptr %92, i32 0, i32 2
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %93, %95
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.pci_dev, ptr %95, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  call void @pcibios_setup_bridge(ptr noundef %99, i32 noundef 8960) #13
  call fastcc void @__pci_setup_bridge(ptr noundef %99, i32 noundef 8960) #13
  br label %100

100:                                              ; preds = %97, %91
  %101 = phi ptr [ %93, %91 ], [ %95, %97 ]
  %102 = load ptr, ptr %92, align 4
  %103 = icmp eq ptr %102, %3
  br i1 %103, label %104, label %91

104:                                              ; preds = %100, %88
  call fastcc void @free_list(ptr noundef nonnull %3)
  br label %172

105:                                              ; preds = %20
  %106 = load ptr, ptr %5, align 8
  br label %107

107:                                              ; preds = %105, %85
  %108 = phi ptr [ %86, %85 ], [ %106, %105 ]
  %109 = phi i32 [ -28, %85 ], [ -12, %105 ]
  %110 = icmp eq ptr %108, %5
  br i1 %110, label %135, label %111

111:                                              ; preds = %111, %107
  %112 = phi ptr [ %123, %111 ], [ %108, %107 ]
  %113 = getelementptr inbounds %struct.pci_dev_resource, ptr %112, i32 0, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.pci_dev_resource, ptr %112, i32 0, i32 3
  %116 = load i32, ptr %115, align 4
  store i32 %116, ptr %114, align 4
  %117 = getelementptr inbounds %struct.pci_dev_resource, ptr %112, i32 0, i32 4
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr inbounds %struct.resource, ptr %114, i32 0, i32 1
  store i32 %118, ptr %119, align 4
  %120 = getelementptr inbounds %struct.pci_dev_resource, ptr %112, i32 0, i32 7
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr inbounds %struct.resource, ptr %114, i32 0, i32 3
  store i32 %121, ptr %122, align 4
  %123 = load ptr, ptr %112, align 4
  %124 = icmp eq ptr %123, %5
  br i1 %124, label %125, label %111

125:                                              ; preds = %111
  %126 = load ptr, ptr %5, align 8
  %127 = icmp eq ptr %126, %5
  br i1 %127, label %135, label %128

128:                                              ; preds = %128, %125
  %129 = phi ptr [ %130, %128 ], [ %126, %125 ]
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.list_head, ptr %129, i32 0, i32 1
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.list_head, ptr %130, i32 0, i32 1
  store ptr %132, ptr %133, align 4
  store volatile ptr %130, ptr %132, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %129, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %131, align 4
  call void @kfree(ptr noundef %129) #13
  %134 = icmp eq ptr %130, %5
  br i1 %134, label %135, label %128

135:                                              ; preds = %128, %125, %107
  %136 = load ptr, ptr %3, align 8
  %137 = icmp eq ptr %136, %3
  br i1 %137, label %172, label %138

138:                                              ; preds = %138, %135
  %139 = phi ptr [ %160, %138 ], [ %136, %135 ]
  %140 = getelementptr inbounds %struct.pci_dev_resource, ptr %139, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.pci_dev_resource, ptr %139, i32 0, i32 2
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.pci_dev, ptr %143, i32 0, i32 47
  %145 = ptrtoint ptr %141 to i32
  %146 = ptrtoint ptr %144 to i32
  %147 = sub i32 %145, %146
  %148 = ashr exact i32 %147, 5
  %149 = getelementptr inbounds %struct.pci_dev_resource, ptr %139, i32 0, i32 3
  %150 = load i32, ptr %149, align 4
  store i32 %150, ptr %141, align 4
  %151 = getelementptr inbounds %struct.pci_dev_resource, ptr %139, i32 0, i32 4
  %152 = load i32, ptr %151, align 4
  %153 = getelementptr inbounds %struct.resource, ptr %141, i32 0, i32 1
  store i32 %152, ptr %153, align 4
  %154 = getelementptr inbounds %struct.pci_dev_resource, ptr %139, i32 0, i32 7
  %155 = load i32, ptr %154, align 4
  %156 = getelementptr inbounds %struct.resource, ptr %141, i32 0, i32 3
  store i32 %155, ptr %156, align 4
  %157 = call i32 @pci_claim_resource(ptr noundef %143, i32 noundef %148) #13
  %158 = getelementptr inbounds %struct.pci_dev, ptr %143, i32 0, i32 2
  %159 = load ptr, ptr %158, align 4
  call void @pcibios_setup_bridge(ptr noundef %159, i32 noundef 8960) #13
  call fastcc void @__pci_setup_bridge(ptr noundef %159, i32 noundef 8960) #13
  %160 = load ptr, ptr %139, align 4
  %161 = icmp eq ptr %160, %3
  br i1 %161, label %162, label %138

162:                                              ; preds = %138
  %163 = load ptr, ptr %3, align 8
  %164 = icmp eq ptr %163, %3
  br i1 %164, label %172, label %165

165:                                              ; preds = %165, %162
  %166 = phi ptr [ %167, %165 ], [ %163, %162 ]
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.list_head, ptr %166, i32 0, i32 1
  %169 = load ptr, ptr %168, align 4
  %170 = getelementptr inbounds %struct.list_head, ptr %167, i32 0, i32 1
  store ptr %169, ptr %170, align 4
  store volatile ptr %167, ptr %169, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %166, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %168, align 4
  call void @kfree(ptr noundef %166) #13
  %171 = icmp eq ptr %167, %3
  br i1 %171, label %172, label %165

172:                                              ; preds = %165, %162, %135, %104, %76
  %173 = phi i32 [ 0, %104 ], [ -2, %76 ], [ %109, %135 ], [ %109, %162 ], [ %109, %165 ]
  call void @up_read(ptr noundef nonnull @pci_bus_sem) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret i32 %173
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @add_to_list(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 36) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.pci_dev_resource, ptr %7, i32 0, i32 1
  store ptr %2, ptr %10, align 8
  %11 = getelementptr inbounds %struct.pci_dev_resource, ptr %7, i32 0, i32 2
  store ptr %1, ptr %11, align 4
  %12 = load i32, ptr %2, align 4
  %13 = getelementptr inbounds %struct.pci_dev_resource, ptr %7, i32 0, i32 3
  store i32 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.pci_dev_resource, ptr %7, i32 0, i32 4
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.pci_dev_resource, ptr %7, i32 0, i32 7
  store i32 %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.pci_dev_resource, ptr %7, i32 0, i32 5
  store i32 %3, ptr %20, align 8
  %21 = getelementptr inbounds %struct.pci_dev_resource, ptr %7, i32 0, i32 6
  store i32 %4, ptr %21, align 4
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %7, ptr %23, align 4
  store ptr %22, ptr %7, align 8
  %24 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %0, ptr %24, align 4
  store volatile ptr %7, ptr %0, align 4
  br label %25

25:                                               ; preds = %9, %5
  %26 = phi i32 [ 0, %9 ], [ -12, %5 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_assign_unassigned_bus_resources(ptr noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  call void @down_read(ptr noundef nonnull @pci_bus_sem) #13
  %4 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %21, label %7

7:                                                ; preds = %18, %1
  %8 = phi ptr [ %19, %18 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 13
  %10 = load i8, ptr %9, align 1
  %11 = add i8 %10, -1
  %12 = icmp ult i8 %11, 2
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  call void @__pci_bus_size_bridges(ptr noundef nonnull %15, ptr noundef nonnull %2)
  br label %18

18:                                               ; preds = %17, %13, %7
  %19 = load ptr, ptr %8, align 4
  %20 = icmp eq ptr %19, %4
  br i1 %20, label %21, label %7

21:                                               ; preds = %18, %1
  call void @up_read(ptr noundef nonnull @pci_bus_sem) #13
  call void @__pci_bus_assign_resources(ptr noundef %0, ptr noundef nonnull %2, ptr noundef null)
  %22 = load volatile ptr, ptr %2, align 8
  %23 = icmp eq ptr %22, %2
  br i1 %23, label %25, label %24, !prof !10

24:                                               ; preds = %21
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pci/setup-bus.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2240, 0\0A.popsection", ""() #13, !srcloc !14
  unreachable

25:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @resource_alignment(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__dev_sort_resources(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  %5 = load i32, ptr %4, align 8
  %6 = lshr i32 %5, 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %13 [
    i16 1536, label %93
    i16 0, label %93
    i16 2048, label %8
  ]

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i16 0, ptr %3, align 2, !annotation !8
  %9 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %3) #13
  %10 = load i16, ptr %3, align 2
  %11 = and i16 %10, 3
  %12 = icmp eq i16 %11, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  br i1 %12, label %13, label %93

13:                                               ; preds = %8, %2
  %14 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  br label %15

15:                                               ; preds = %90, %13
  %16 = phi i32 [ 0, %13 ], [ %91, %90 ]
  %17 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %16
  %18 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %16, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 16
  %21 = icmp ne i32 %20, 0
  %22 = icmp eq i32 %19, 0
  %23 = or i1 %22, %21
  br i1 %23, label %90, label %24

24:                                               ; preds = %15
  %25 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %16, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %90

28:                                               ; preds = %24
  %29 = load i32, ptr %4, align 8
  %30 = and i32 %29, -256
  %31 = icmp eq i32 %30, 395008
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = and i32 %19, 256
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load i32, ptr @pci_cardbus_io_size, align 4
  br label %43

37:                                               ; preds = %32
  %38 = and i32 %19, 512
  %39 = icmp eq i32 %38, 0
  %40 = load i32, ptr @pci_cardbus_mem_size, align 4
  br i1 %39, label %46, label %43

41:                                               ; preds = %28
  %42 = call i32 @resource_alignment(ptr noundef %17) #13
  br label %43

43:                                               ; preds = %41, %37, %35
  %44 = phi i32 [ %42, %41 ], [ %36, %35 ], [ %40, %37 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %37
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.17, i32 noundef %16, ptr noundef %17) #14
  br label %90

47:                                               ; preds = %43
  %48 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %49 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3520, i32 noundef 36) #15
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.pdev_sort_resources) #16
  unreachable

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.pci_dev_resource, ptr %49, i32 0, i32 1
  store ptr %17, ptr %53, align 8
  %54 = getelementptr inbounds %struct.pci_dev_resource, ptr %49, i32 0, i32 2
  store ptr %0, ptr %54, align 4
  br label %55

55:                                               ; preds = %82, %52
  %56 = phi ptr [ %1, %52 ], [ %57, %82 ]
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %1
  br i1 %58, label %85, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.pci_dev_resource, ptr %57, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.pci_dev_resource, ptr %57, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 11
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, -256
  %67 = icmp eq i32 %66, 395008
  br i1 %67, label %68, label %80

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.resource, ptr %63, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, 256
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = load i32, ptr @pci_cardbus_io_size, align 4
  br label %82

75:                                               ; preds = %68
  %76 = and i32 %70, 512
  %77 = icmp eq i32 %76, 0
  %78 = load i32, ptr @pci_cardbus_mem_size, align 4
  %79 = select i1 %77, i32 0, i32 %78
  br label %82

80:                                               ; preds = %59
  %81 = call i32 @resource_alignment(ptr noundef %63) #13
  br label %82

82:                                               ; preds = %80, %75, %73
  %83 = phi i32 [ %81, %80 ], [ %74, %73 ], [ %79, %75 ]
  %84 = icmp ugt i32 %44, %83
  br i1 %84, label %85, label %55

85:                                               ; preds = %82, %55
  %86 = phi ptr [ %57, %82 ], [ %1, %55 ]
  %87 = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  store ptr %49, ptr %87, align 4
  store ptr %86, ptr %49, align 8
  %89 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %88, ptr %89, align 4
  store volatile ptr %49, ptr %88, align 4
  br label %90

90:                                               ; preds = %85, %46, %24, %15
  %91 = add nuw nsw i32 %16, 1
  %92 = icmp eq i32 %91, 11
  br i1 %92, label %93, label %15

93:                                               ; preds = %90, %8, %2, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__assign_resources_sorted(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.list_head, align 8
  %5 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store ptr %4, ptr %4, align 8
  %6 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store ptr %5, ptr %5, align 8
  %7 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %7, align 4
  %8 = icmp eq ptr %1, null
  br i1 %8, label %390, label %9

9:                                                ; preds = %3
  %10 = load volatile ptr, ptr %1, align 4
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %328, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %0, align 4
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %144, label %15

15:                                               ; preds = %24, %12
  %16 = phi ptr [ %40, %24 ], [ %13, %12 ]
  %17 = getelementptr inbounds %struct.pci_dev_resource, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.pci_dev_resource, ptr %16, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %22 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 36) #15
  %23 = icmp eq ptr %22, null
  br i1 %23, label %42, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.pci_dev_resource, ptr %22, i32 0, i32 1
  store ptr %20, ptr %25, align 8
  %26 = getelementptr inbounds %struct.pci_dev_resource, ptr %22, i32 0, i32 2
  store ptr %18, ptr %26, align 4
  %27 = load i32, ptr %20, align 4
  %28 = getelementptr inbounds %struct.pci_dev_resource, ptr %22, i32 0, i32 3
  store i32 %27, ptr %28, align 8
  %29 = getelementptr inbounds %struct.resource, ptr %20, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.pci_dev_resource, ptr %22, i32 0, i32 4
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.resource, ptr %20, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.pci_dev_resource, ptr %22, i32 0, i32 7
  store i32 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.pci_dev_resource, ptr %22, i32 0, i32 5
  store i32 0, ptr %35, align 8
  %36 = getelementptr inbounds %struct.pci_dev_resource, ptr %22, i32 0, i32 6
  store i32 0, ptr %36, align 4
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %22, ptr %38, align 4
  store ptr %37, ptr %22, align 8
  %39 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %4, ptr %39, align 4
  store volatile ptr %22, ptr %4, align 8
  %40 = load ptr, ptr %16, align 4
  %41 = icmp eq ptr %40, %0
  br i1 %41, label %52, label %15

42:                                               ; preds = %15
  %43 = load ptr, ptr %4, align 8
  %44 = icmp eq ptr %43, %4
  br i1 %44, label %328, label %45

45:                                               ; preds = %45, %42
  %46 = phi ptr [ %47, %45 ], [ %43, %42 ]
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %49, ptr %50, align 4
  store volatile ptr %47, ptr %49, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %46, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %48, align 4
  call void @kfree(ptr noundef %46) #13
  %51 = icmp eq ptr %47, %4
  br i1 %51, label %328, label %45

52:                                               ; preds = %24
  %53 = load ptr, ptr %0, align 4
  %54 = icmp eq ptr %53, %0
  br i1 %54, label %144, label %55

55:                                               ; preds = %142, %52
  %56 = phi ptr [ %57, %142 ], [ %53, %52 ]
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.pci_dev_resource, ptr %56, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  br label %60

60:                                               ; preds = %64, %55
  %61 = phi ptr [ %1, %55 ], [ %62, %64 ]
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, %1
  br i1 %63, label %73, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.pci_dev_resource, ptr %62, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, %59
  br i1 %67, label %68, label %60

68:                                               ; preds = %64
  %69 = icmp eq ptr %62, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.pci_dev_resource, ptr %62, i32 0, i32 5
  %72 = load i32, ptr %71, align 4
  br label %73

73:                                               ; preds = %70, %68, %60
  %74 = phi i32 [ %72, %70 ], [ 0, %68 ], [ 0, %60 ]
  %75 = getelementptr inbounds %struct.resource, ptr %59, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %76, %74
  store i32 %77, ptr %75, align 4
  %78 = load ptr, ptr %58, align 4
  %79 = getelementptr inbounds %struct.resource, ptr %78, i32 0, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, 524288
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %142, label %83

83:                                               ; preds = %87, %73
  %84 = phi ptr [ %85, %87 ], [ %1, %73 ]
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, %1
  br i1 %86, label %142, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.pci_dev_resource, ptr %85, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, %78
  br i1 %90, label %91, label %83

91:                                               ; preds = %87
  %92 = icmp eq ptr %85, null
  br i1 %92, label %142, label %93

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.pci_dev_resource, ptr %85, i32 0, i32 6
  %95 = load i32, ptr %94, align 4
  %96 = load i32, ptr %78, align 4
  %97 = icmp ugt i32 %95, %96
  br i1 %97, label %98, label %142

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.resource, ptr %78, i32 0, i32 1
  %100 = load i32, ptr %99, align 4
  store i32 %95, ptr %78, align 4
  %101 = sub i32 %95, %96
  %102 = add i32 %101, %100
  %103 = load ptr, ptr %58, align 4
  %104 = getelementptr inbounds %struct.resource, ptr %103, i32 0, i32 1
  store i32 %102, ptr %104, align 4
  br label %105

105:                                              ; preds = %132, %98
  %106 = phi ptr [ %0, %98 ], [ %107, %132 ]
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, %0
  br i1 %108, label %142, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.pci_dev_resource, ptr %107, i32 0, i32 2
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.pci_dev_resource, ptr %107, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 11
  %115 = load i32, ptr %114, align 8
  %116 = and i32 %115, -256
  %117 = icmp eq i32 %116, 395008
  br i1 %117, label %118, label %130

118:                                              ; preds = %109
  %119 = getelementptr inbounds %struct.resource, ptr %113, i32 0, i32 3
  %120 = load i32, ptr %119, align 4
  %121 = and i32 %120, 256
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %118
  %124 = load i32, ptr @pci_cardbus_io_size, align 4
  br label %132

125:                                              ; preds = %118
  %126 = and i32 %120, 512
  %127 = icmp eq i32 %126, 0
  %128 = load i32, ptr @pci_cardbus_mem_size, align 4
  %129 = select i1 %127, i32 0, i32 %128
  br label %132

130:                                              ; preds = %109
  %131 = call i32 @resource_alignment(ptr noundef %113) #13
  br label %132

132:                                              ; preds = %130, %125, %123
  %133 = phi i32 [ %131, %130 ], [ %124, %123 ], [ %129, %125 ]
  %134 = icmp ugt i32 %95, %133
  br i1 %134, label %135, label %105

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %137 = load ptr, ptr %136, align 4
  %138 = load ptr, ptr %56, align 4
  %139 = getelementptr inbounds %struct.list_head, ptr %138, i32 0, i32 1
  store ptr %137, ptr %139, align 4
  store volatile ptr %138, ptr %137, align 4
  %140 = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  store ptr %56, ptr %140, align 4
  store ptr %107, ptr %56, align 4
  store ptr %141, ptr %136, align 4
  store volatile ptr %56, ptr %141, align 4
  br label %142

142:                                              ; preds = %135, %105, %93, %91, %83, %73
  %143 = icmp eq ptr %57, %0
  br i1 %143, label %144, label %55

144:                                              ; preds = %142, %52, %12
  call fastcc void @assign_requested_resources_sorted(ptr noundef %0, ptr noundef nonnull %5)
  %145 = load volatile ptr, ptr %5, align 8
  %146 = icmp eq ptr %145, %5
  br i1 %146, label %147, label %190

147:                                              ; preds = %144
  %148 = load ptr, ptr %0, align 4
  %149 = icmp eq ptr %148, %0
  br i1 %149, label %170, label %150

150:                                              ; preds = %167, %147
  %151 = phi ptr [ %168, %167 ], [ %148, %147 ]
  %152 = getelementptr inbounds %struct.pci_dev_resource, ptr %151, i32 0, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = load ptr, ptr %1, align 4
  br label %155

155:                                              ; preds = %158, %150
  %156 = phi ptr [ %154, %150 ], [ %159, %158 ]
  %157 = icmp eq ptr %156, %1
  br i1 %157, label %167, label %158

158:                                              ; preds = %155
  %159 = load ptr, ptr %156, align 4
  %160 = getelementptr inbounds %struct.pci_dev_resource, ptr %156, i32 0, i32 1
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %161, %153
  br i1 %162, label %163, label %155

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.list_head, ptr %156, i32 0, i32 1
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.list_head, ptr %159, i32 0, i32 1
  store ptr %165, ptr %166, align 4
  store volatile ptr %159, ptr %165, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %156, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %164, align 4
  call void @kfree(ptr noundef %156) #13
  br label %167

167:                                              ; preds = %163, %155
  %168 = load ptr, ptr %151, align 4
  %169 = icmp eq ptr %168, %0
  br i1 %169, label %170, label %150

170:                                              ; preds = %167, %147
  %171 = load ptr, ptr %4, align 8
  %172 = icmp eq ptr %171, %4
  br i1 %172, label %180, label %173

173:                                              ; preds = %173, %170
  %174 = phi ptr [ %175, %173 ], [ %171, %170 ]
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.list_head, ptr %174, i32 0, i32 1
  %177 = load ptr, ptr %176, align 4
  %178 = getelementptr inbounds %struct.list_head, ptr %175, i32 0, i32 1
  store ptr %177, ptr %178, align 4
  store volatile ptr %175, ptr %177, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %174, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %176, align 4
  call void @kfree(ptr noundef %174) #13
  %179 = icmp eq ptr %175, %4
  br i1 %179, label %180, label %173

180:                                              ; preds = %173, %170
  %181 = load ptr, ptr %0, align 4
  %182 = icmp eq ptr %181, %0
  br i1 %182, label %401, label %183

183:                                              ; preds = %183, %180
  %184 = phi ptr [ %185, %183 ], [ %181, %180 ]
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr inbounds %struct.list_head, ptr %184, i32 0, i32 1
  %187 = load ptr, ptr %186, align 4
  %188 = getelementptr inbounds %struct.list_head, ptr %185, i32 0, i32 1
  store ptr %187, ptr %188, align 4
  store volatile ptr %185, ptr %187, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %184, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %186, align 4
  call void @kfree(ptr noundef %184) #13
  %189 = icmp eq ptr %185, %0
  br i1 %189, label %401, label %183

190:                                              ; preds = %190, %144
  %191 = phi ptr [ %196, %190 ], [ %145, %144 ]
  %192 = phi i32 [ %195, %190 ], [ 0, %144 ]
  %193 = getelementptr inbounds %struct.pci_dev_resource, ptr %191, i32 0, i32 7
  %194 = load i32, ptr %193, align 4
  %195 = or i32 %194, %192
  %196 = load ptr, ptr %191, align 4
  %197 = icmp eq ptr %196, %5
  br i1 %197, label %198, label %190

198:                                              ; preds = %190
  %199 = load ptr, ptr %0, align 4
  %200 = icmp eq ptr %199, %0
  br i1 %200, label %276, label %201

201:                                              ; preds = %198
  %202 = and i32 %195, 256
  %203 = icmp eq i32 %202, 0
  %204 = and i32 %195, 8192
  %205 = icmp eq i32 %204, 0
  %206 = and i32 %195, 512
  %207 = icmp eq i32 %206, 0
  %208 = icmp ne i32 %206, 0
  br label %209

209:                                              ; preds = %272, %201
  %210 = phi ptr [ %199, %201 ], [ %211, %272 ]
  %211 = load ptr, ptr %210, align 4
  %212 = getelementptr inbounds %struct.pci_dev_resource, ptr %210, i32 0, i32 1
  %213 = load ptr, ptr %212, align 4
  %214 = getelementptr inbounds %struct.resource, ptr %213, i32 0, i32 5
  %215 = load ptr, ptr %214, align 4
  %216 = icmp eq ptr %215, null
  br i1 %216, label %272, label %217

217:                                              ; preds = %209
  %218 = getelementptr inbounds %struct.resource, ptr %213, i32 0, i32 3
  %219 = load i32, ptr %218, align 4
  %220 = and i32 %219, 256
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %217
  br i1 %203, label %237, label %272

223:                                              ; preds = %217
  %224 = and i32 %219, 8192
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %233, label %226

226:                                              ; preds = %223
  br i1 %205, label %227, label %272

227:                                              ; preds = %226
  br i1 %207, label %237, label %228

228:                                              ; preds = %227
  %229 = getelementptr inbounds %struct.resource, ptr %215, i32 0, i32 3
  %230 = load i32, ptr %229, align 4
  %231 = and i32 %230, 8192
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %272, label %237

233:                                              ; preds = %223
  %234 = and i32 %219, 512
  %235 = icmp ne i32 %234, 0
  %236 = select i1 %235, i1 %208, i1 false
  br i1 %236, label %272, label %237

237:                                              ; preds = %233, %228, %227, %222
  %238 = load ptr, ptr %1, align 4
  br label %239

239:                                              ; preds = %242, %237
  %240 = phi ptr [ %238, %237 ], [ %243, %242 ]
  %241 = icmp eq ptr %240, %1
  br i1 %241, label %252, label %242

242:                                              ; preds = %239
  %243 = load ptr, ptr %240, align 4
  %244 = getelementptr inbounds %struct.pci_dev_resource, ptr %240, i32 0, i32 1
  %245 = load ptr, ptr %244, align 4
  %246 = icmp eq ptr %245, %213
  br i1 %246, label %247, label %239

247:                                              ; preds = %242
  %248 = getelementptr inbounds %struct.list_head, ptr %240, i32 0, i32 1
  %249 = load ptr, ptr %248, align 4
  %250 = getelementptr inbounds %struct.list_head, ptr %243, i32 0, i32 1
  store ptr %249, ptr %250, align 4
  store volatile ptr %243, ptr %249, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %240, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %248, align 4
  call void @kfree(ptr noundef %240) #13
  %251 = load ptr, ptr %212, align 4
  br label %252

252:                                              ; preds = %247, %239
  %253 = phi ptr [ %251, %247 ], [ %213, %239 ]
  %254 = load ptr, ptr %4, align 8
  br label %255

255:                                              ; preds = %258, %252
  %256 = phi ptr [ %254, %252 ], [ %259, %258 ]
  %257 = icmp eq ptr %256, %4
  br i1 %257, label %267, label %258

258:                                              ; preds = %255
  %259 = load ptr, ptr %256, align 4
  %260 = getelementptr inbounds %struct.pci_dev_resource, ptr %256, i32 0, i32 1
  %261 = load ptr, ptr %260, align 4
  %262 = icmp eq ptr %261, %253
  br i1 %262, label %263, label %255

263:                                              ; preds = %258
  %264 = getelementptr inbounds %struct.list_head, ptr %256, i32 0, i32 1
  %265 = load ptr, ptr %264, align 4
  %266 = getelementptr inbounds %struct.list_head, ptr %259, i32 0, i32 1
  store ptr %265, ptr %266, align 4
  store volatile ptr %259, ptr %265, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %256, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %264, align 4
  call void @kfree(ptr noundef %256) #13
  br label %267

267:                                              ; preds = %263, %255
  %268 = getelementptr inbounds %struct.list_head, ptr %210, i32 0, i32 1
  %269 = load ptr, ptr %268, align 4
  %270 = load ptr, ptr %210, align 4
  %271 = getelementptr inbounds %struct.list_head, ptr %270, i32 0, i32 1
  store ptr %269, ptr %271, align 4
  store volatile ptr %270, ptr %269, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %210, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %268, align 4
  call void @kfree(ptr noundef %210) #13
  br label %272

272:                                              ; preds = %267, %233, %228, %226, %222, %209
  %273 = icmp eq ptr %211, %0
  br i1 %273, label %274, label %209

274:                                              ; preds = %272
  %275 = load ptr, ptr %5, align 8
  br label %276

276:                                              ; preds = %274, %198
  %277 = phi ptr [ %275, %274 ], [ %145, %198 ]
  %278 = icmp eq ptr %277, %5
  br i1 %278, label %286, label %279

279:                                              ; preds = %279, %276
  %280 = phi ptr [ %281, %279 ], [ %277, %276 ]
  %281 = load ptr, ptr %280, align 4
  %282 = getelementptr inbounds %struct.list_head, ptr %280, i32 0, i32 1
  %283 = load ptr, ptr %282, align 4
  %284 = getelementptr inbounds %struct.list_head, ptr %281, i32 0, i32 1
  store ptr %283, ptr %284, align 4
  store volatile ptr %281, ptr %283, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %280, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %282, align 4
  call void @kfree(ptr noundef %280) #13
  %285 = icmp eq ptr %281, %5
  br i1 %285, label %286, label %279

286:                                              ; preds = %279, %276
  %287 = load ptr, ptr %0, align 4
  %288 = icmp eq ptr %287, %0
  br i1 %288, label %289, label %292

289:                                              ; preds = %301, %286
  %290 = load ptr, ptr %4, align 8
  %291 = icmp eq ptr %290, %4
  br i1 %291, label %328, label %304

292:                                              ; preds = %301, %286
  %293 = phi ptr [ %302, %301 ], [ %287, %286 ]
  %294 = getelementptr inbounds %struct.pci_dev_resource, ptr %293, i32 0, i32 1
  %295 = load ptr, ptr %294, align 4
  %296 = getelementptr inbounds %struct.resource, ptr %295, i32 0, i32 5
  %297 = load ptr, ptr %296, align 4
  %298 = icmp eq ptr %297, null
  br i1 %298, label %301, label %299

299:                                              ; preds = %292
  %300 = call i32 @release_resource(ptr noundef %295) #13
  br label %301

301:                                              ; preds = %299, %292
  %302 = load ptr, ptr %293, align 4
  %303 = icmp eq ptr %302, %0
  br i1 %303, label %289, label %292

304:                                              ; preds = %304, %289
  %305 = phi ptr [ %316, %304 ], [ %290, %289 ]
  %306 = getelementptr inbounds %struct.pci_dev_resource, ptr %305, i32 0, i32 1
  %307 = load ptr, ptr %306, align 4
  %308 = getelementptr inbounds %struct.pci_dev_resource, ptr %305, i32 0, i32 3
  %309 = load i32, ptr %308, align 4
  store i32 %309, ptr %307, align 4
  %310 = getelementptr inbounds %struct.pci_dev_resource, ptr %305, i32 0, i32 4
  %311 = load i32, ptr %310, align 4
  %312 = getelementptr inbounds %struct.resource, ptr %307, i32 0, i32 1
  store i32 %311, ptr %312, align 4
  %313 = getelementptr inbounds %struct.pci_dev_resource, ptr %305, i32 0, i32 7
  %314 = load i32, ptr %313, align 4
  %315 = getelementptr inbounds %struct.resource, ptr %307, i32 0, i32 3
  store i32 %314, ptr %315, align 4
  %316 = load ptr, ptr %305, align 4
  %317 = icmp eq ptr %316, %4
  br i1 %317, label %318, label %304

318:                                              ; preds = %304
  %319 = load ptr, ptr %4, align 8
  %320 = icmp eq ptr %319, %4
  br i1 %320, label %328, label %321

321:                                              ; preds = %321, %318
  %322 = phi ptr [ %323, %321 ], [ %319, %318 ]
  %323 = load ptr, ptr %322, align 4
  %324 = getelementptr inbounds %struct.list_head, ptr %322, i32 0, i32 1
  %325 = load ptr, ptr %324, align 4
  %326 = getelementptr inbounds %struct.list_head, ptr %323, i32 0, i32 1
  store ptr %325, ptr %326, align 4
  store volatile ptr %323, ptr %325, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %322, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %324, align 4
  call void @kfree(ptr noundef %322) #13
  %327 = icmp eq ptr %323, %4
  br i1 %327, label %328, label %321

328:                                              ; preds = %321, %318, %289, %45, %42, %9
  call fastcc void @assign_requested_resources_sorted(ptr noundef %0, ptr noundef %2)
  %329 = load ptr, ptr %1, align 4
  %330 = icmp eq ptr %329, %1
  br i1 %330, label %391, label %331

331:                                              ; preds = %388, %328
  %332 = phi ptr [ %333, %388 ], [ %329, %328 ]
  %333 = load ptr, ptr %332, align 4
  %334 = getelementptr inbounds %struct.pci_dev_resource, ptr %332, i32 0, i32 1
  %335 = load ptr, ptr %334, align 4
  %336 = getelementptr inbounds %struct.resource, ptr %335, i32 0, i32 3
  %337 = load i32, ptr %336, align 4
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %383, label %339

339:                                              ; preds = %343, %331
  %340 = phi ptr [ %341, %343 ], [ %0, %331 ]
  %341 = load ptr, ptr %340, align 4
  %342 = icmp eq ptr %341, %0
  br i1 %342, label %388, label %343

343:                                              ; preds = %339
  %344 = getelementptr inbounds %struct.pci_dev_resource, ptr %341, i32 0, i32 1
  %345 = load ptr, ptr %344, align 4
  %346 = icmp eq ptr %345, %335
  br i1 %346, label %347, label %339

347:                                              ; preds = %343
  %348 = getelementptr inbounds %struct.pci_dev_resource, ptr %332, i32 0, i32 2
  %349 = load ptr, ptr %348, align 4
  %350 = getelementptr inbounds %struct.pci_dev, ptr %349, i32 0, i32 47
  %351 = ptrtoint ptr %335 to i32
  %352 = ptrtoint ptr %350 to i32
  %353 = sub i32 %351, %352
  %354 = ashr exact i32 %353, 5
  %355 = getelementptr inbounds %struct.pci_dev_resource, ptr %332, i32 0, i32 5
  %356 = load i32, ptr %355, align 4
  %357 = getelementptr inbounds %struct.pci_dev_resource, ptr %332, i32 0, i32 6
  %358 = load i32, ptr %357, align 4
  %359 = getelementptr inbounds %struct.resource, ptr %335, i32 0, i32 1
  %360 = load i32, ptr %359, align 4
  %361 = load i32, ptr %335, align 4
  %362 = add i32 %360, 1
  %363 = icmp eq i32 %362, %361
  br i1 %363, label %364, label %371

364:                                              ; preds = %347
  store i32 %358, ptr %335, align 4
  %365 = add i32 %356, -1
  %366 = add i32 %365, %358
  store i32 %366, ptr %359, align 4
  %367 = load ptr, ptr %348, align 4
  %368 = call i32 @pci_assign_resource(ptr noundef %367, i32 noundef %354) #13
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %383, label %370

370:                                              ; preds = %364
  store i32 0, ptr %335, align 4
  store i32 0, ptr %359, align 4
  store i32 0, ptr %336, align 4
  br label %383

371:                                              ; preds = %347
  %372 = getelementptr inbounds %struct.pci_dev_resource, ptr %332, i32 0, i32 7
  %373 = load i32, ptr %372, align 4
  %374 = and i32 %373, 786432
  %375 = or i32 %374, %337
  store i32 %375, ptr %336, align 4
  %376 = load ptr, ptr %348, align 4
  %377 = call i32 @pci_reassign_resource(ptr noundef %376, i32 noundef %354, i32 noundef %356, i32 noundef %358) #13
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %383, label %379

379:                                              ; preds = %371
  %380 = load ptr, ptr %348, align 4
  %381 = getelementptr inbounds %struct.pci_dev, ptr %380, i32 0, i32 44
  %382 = zext i32 %356 to i64
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %381, ptr noundef nonnull @.str.19, i64 noundef %382, i32 noundef %354, ptr noundef %335) #14
  br label %383

383:                                              ; preds = %379, %371, %370, %364, %331
  %384 = getelementptr inbounds %struct.list_head, ptr %332, i32 0, i32 1
  %385 = load ptr, ptr %384, align 4
  %386 = load ptr, ptr %332, align 4
  %387 = getelementptr inbounds %struct.list_head, ptr %386, i32 0, i32 1
  store ptr %385, ptr %387, align 4
  store volatile ptr %386, ptr %385, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %332, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %384, align 4
  call void @kfree(ptr noundef %332) #13
  br label %388

388:                                              ; preds = %383, %339
  %389 = icmp eq ptr %333, %1
  br i1 %389, label %391, label %331

390:                                              ; preds = %3
  call fastcc void @assign_requested_resources_sorted(ptr noundef %0, ptr noundef %2)
  br label %391

391:                                              ; preds = %390, %388, %328
  %392 = load ptr, ptr %0, align 4
  %393 = icmp eq ptr %392, %0
  br i1 %393, label %401, label %394

394:                                              ; preds = %394, %391
  %395 = phi ptr [ %396, %394 ], [ %392, %391 ]
  %396 = load ptr, ptr %395, align 4
  %397 = getelementptr inbounds %struct.list_head, ptr %395, i32 0, i32 1
  %398 = load ptr, ptr %397, align 4
  %399 = getelementptr inbounds %struct.list_head, ptr %396, i32 0, i32 1
  store ptr %398, ptr %399, align 4
  store volatile ptr %396, ptr %398, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %395, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %397, align 4
  call void @kfree(ptr noundef %395) #13
  %400 = icmp eq ptr %396, %0
  br i1 %400, label %401, label %394

401:                                              ; preds = %394, %391, %183, %180
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret void
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @assign_requested_resources_sorted(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %59, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  br label %7

7:                                                ; preds = %56, %5
  %8 = phi ptr [ %3, %5 ], [ %57, %56 ]
  %9 = getelementptr inbounds %struct.pci_dev_resource, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.pci_dev_resource, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 47
  %14 = ptrtoint ptr %10 to i32
  %15 = ptrtoint ptr %13 to i32
  %16 = sub i32 %14, %15
  %17 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %10, align 4
  %20 = add i32 %18, 1
  %21 = icmp eq i32 %20, %19
  br i1 %21, label %56, label %22

22:                                               ; preds = %7
  %23 = ashr exact i32 %16, 5
  %24 = tail call i32 @pci_assign_resource(ptr noundef %12, i32 noundef %23) #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %56, label %26

26:                                               ; preds = %22
  br i1 %6, label %54, label %27

27:                                               ; preds = %26
  %28 = icmp eq i32 %16, 192
  br i1 %28, label %29, label %34

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %29, %27
  %35 = load ptr, ptr %11, align 4
  %36 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %37 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3520, i32 noundef 36) #15
  %38 = icmp eq ptr %37, null
  br i1 %38, label %54, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.pci_dev_resource, ptr %37, i32 0, i32 1
  store ptr %10, ptr %40, align 8
  %41 = getelementptr inbounds %struct.pci_dev_resource, ptr %37, i32 0, i32 2
  store ptr %35, ptr %41, align 4
  %42 = load i32, ptr %10, align 4
  %43 = getelementptr inbounds %struct.pci_dev_resource, ptr %37, i32 0, i32 3
  store i32 %42, ptr %43, align 8
  %44 = load i32, ptr %17, align 4
  %45 = getelementptr inbounds %struct.pci_dev_resource, ptr %37, i32 0, i32 4
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.pci_dev_resource, ptr %37, i32 0, i32 7
  store i32 %47, ptr %48, align 8
  %49 = getelementptr inbounds %struct.pci_dev_resource, ptr %37, i32 0, i32 5
  store i32 0, ptr %49, align 8
  %50 = getelementptr inbounds %struct.pci_dev_resource, ptr %37, i32 0, i32 6
  store i32 0, ptr %50, align 4
  %51 = load ptr, ptr %1, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %37, ptr %52, align 4
  store ptr %51, ptr %37, align 8
  %53 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %1, ptr %53, align 4
  store volatile ptr %37, ptr %1, align 4
  br label %54

54:                                               ; preds = %39, %34, %29, %26
  store i32 0, ptr %10, align 4
  store i32 0, ptr %17, align 4
  %55 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 3
  store i32 0, ptr %55, align 4
  br label %56

56:                                               ; preds = %54, %22, %7
  %57 = load ptr, ptr %8, align 4
  %58 = icmp eq ptr %57, %0
  br i1 %58, label %59, label %7

59:                                               ; preds = %56, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_assign_resource(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_reassign_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_resource(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_read_bridge_bases(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_child_resources(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pci_bus_distribute_available_resources(ptr noundef readonly %0, ptr noundef %1, [8 x i32] %2, [8 x i32] %3, [8 x i32] %4) unnamed_addr #0 {
  br label %6

6:                                                ; preds = %244, %5
  %7 = phi ptr [ %0, %5 ], [ %242, %244 ]
  %8 = phi [8 x i32] [ %2, %5 ], [ %252, %244 ]
  %9 = phi [8 x i32] [ %3, %5 ], [ %260, %244 ]
  %10 = phi [8 x i32] [ %4, %5 ], [ %268, %244 ]
  %11 = extractvalue [8 x i32] %8, 0
  %12 = extractvalue [8 x i32] %8, 1
  %13 = extractvalue [8 x i32] %8, 2
  %14 = extractvalue [8 x i32] %8, 3
  %15 = extractvalue [8 x i32] %8, 4
  %16 = extractvalue [8 x i32] %8, 5
  %17 = extractvalue [8 x i32] %8, 6
  %18 = extractvalue [8 x i32] %8, 7
  %19 = extractvalue [8 x i32] %9, 0
  %20 = extractvalue [8 x i32] %9, 1
  %21 = extractvalue [8 x i32] %9, 2
  %22 = extractvalue [8 x i32] %9, 3
  %23 = extractvalue [8 x i32] %9, 4
  %24 = extractvalue [8 x i32] %9, 5
  %25 = extractvalue [8 x i32] %9, 6
  %26 = extractvalue [8 x i32] %9, 7
  %27 = extractvalue [8 x i32] %10, 0
  %28 = extractvalue [8 x i32] %10, 1
  %29 = extractvalue [8 x i32] %10, 2
  %30 = extractvalue [8 x i32] %10, 3
  %31 = extractvalue [8 x i32] %10, 4
  %32 = extractvalue [8 x i32] %10, 5
  %33 = extractvalue [8 x i32] %10, 6
  %34 = extractvalue [8 x i32] %10, 7
  %35 = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr %struct.pci_dev, ptr %36, i32 0, i32 47, i32 7
  %38 = getelementptr %struct.pci_dev, ptr %36, i32 0, i32 47, i32 8
  %39 = getelementptr %struct.pci_dev, ptr %36, i32 0, i32 47, i32 9
  %40 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 11
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, -256
  %43 = icmp eq i32 %42, 395008
  br i1 %43, label %44, label %56

44:                                               ; preds = %6
  %45 = getelementptr %struct.pci_dev, ptr %36, i32 0, i32 47, i32 7, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 256
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load i32, ptr @pci_cardbus_io_size, align 4
  br label %58

51:                                               ; preds = %44
  %52 = and i32 %46, 512
  %53 = icmp eq i32 %52, 0
  %54 = load i32, ptr @pci_cardbus_mem_size, align 4
  %55 = select i1 %53, i32 0, i32 %54
  br label %58

56:                                               ; preds = %6
  %57 = tail call i32 @resource_alignment(ptr noundef %37) #13
  br label %58

58:                                               ; preds = %56, %51, %49
  %59 = phi i32 [ %57, %56 ], [ %50, %49 ], [ %55, %51 ]
  %60 = getelementptr %struct.pci_dev, ptr %36, i32 0, i32 47, i32 7, i32 5
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  %63 = icmp ne i32 %59, 0
  %64 = select i1 %62, i1 %63, i1 false
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = add i32 %11, -1
  %67 = add i32 %66, %59
  %68 = sub i32 0, %59
  %69 = and i32 %67, %68
  %70 = add i32 %12, 1
  %71 = tail call i32 @llvm.umin.i32(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %65, %58
  %73 = phi i32 [ %71, %65 ], [ %11, %58 ]
  %74 = load i32, ptr %40, align 8
  %75 = and i32 %74, -256
  %76 = icmp eq i32 %75, 395008
  br i1 %76, label %77, label %89

77:                                               ; preds = %72
  %78 = getelementptr %struct.pci_dev, ptr %36, i32 0, i32 47, i32 8, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, 256
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = load i32, ptr @pci_cardbus_io_size, align 4
  br label %91

84:                                               ; preds = %77
  %85 = and i32 %79, 512
  %86 = icmp eq i32 %85, 0
  %87 = load i32, ptr @pci_cardbus_mem_size, align 4
  %88 = select i1 %86, i32 0, i32 %87
  br label %91

89:                                               ; preds = %72
  %90 = tail call i32 @resource_alignment(ptr noundef %38) #13
  br label %91

91:                                               ; preds = %89, %84, %82
  %92 = phi i32 [ %90, %89 ], [ %83, %82 ], [ %88, %84 ]
  %93 = getelementptr %struct.pci_dev, ptr %36, i32 0, i32 47, i32 8, i32 5
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  %96 = icmp ne i32 %92, 0
  %97 = select i1 %95, i1 %96, i1 false
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = add i32 %19, -1
  %100 = add i32 %99, %92
  %101 = sub i32 0, %92
  %102 = and i32 %100, %101
  %103 = add i32 %20, 1
  %104 = tail call i32 @llvm.umin.i32(i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %98, %91
  %106 = phi i32 [ %104, %98 ], [ %19, %91 ]
  %107 = load i32, ptr %40, align 8
  %108 = and i32 %107, -256
  %109 = icmp eq i32 %108, 395008
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = getelementptr %struct.pci_dev, ptr %36, i32 0, i32 47, i32 9, i32 3
  %112 = load i32, ptr %111, align 4
  %113 = and i32 %112, 256
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %110
  %116 = load i32, ptr @pci_cardbus_io_size, align 4
  br label %124

117:                                              ; preds = %110
  %118 = and i32 %112, 512
  %119 = icmp eq i32 %118, 0
  %120 = load i32, ptr @pci_cardbus_mem_size, align 4
  %121 = select i1 %119, i32 0, i32 %120
  br label %124

122:                                              ; preds = %105
  %123 = tail call i32 @resource_alignment(ptr noundef %39) #13
  br label %124

124:                                              ; preds = %122, %117, %115
  %125 = phi i32 [ %123, %122 ], [ %116, %115 ], [ %121, %117 ]
  %126 = getelementptr %struct.pci_dev, ptr %36, i32 0, i32 47, i32 9, i32 5
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  %129 = icmp ne i32 %125, 0
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %131, label %138

131:                                              ; preds = %124
  %132 = add i32 %27, -1
  %133 = add i32 %132, %125
  %134 = sub i32 0, %125
  %135 = and i32 %133, %134
  %136 = add i32 %28, 1
  %137 = tail call i32 @llvm.umin.i32(i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %131, %124
  %139 = phi i32 [ %137, %131 ], [ %27, %124 ]
  %140 = add i32 %12, 1
  %141 = load ptr, ptr %60, align 4
  %142 = icmp ne ptr %141, null
  %143 = icmp eq i32 %140, %73
  %144 = or i1 %143, %142
  br i1 %144, label %163, label %145

145:                                              ; preds = %138
  %146 = load i32, ptr %37, align 4
  %147 = getelementptr %struct.pci_dev, ptr %36, i32 0, i32 47, i32 7, i32 1
  %148 = sub i32 %12, %73
  %149 = add i32 %148, %146
  store i32 %149, ptr %147, align 4
  %150 = load ptr, ptr %1, align 4
  br label %151

151:                                              ; preds = %154, %145
  %152 = phi ptr [ %150, %145 ], [ %155, %154 ]
  %153 = icmp eq ptr %152, %1
  br i1 %153, label %163, label %154

154:                                              ; preds = %151
  %155 = load ptr, ptr %152, align 4
  %156 = getelementptr inbounds %struct.pci_dev_resource, ptr %152, i32 0, i32 1
  %157 = load ptr, ptr %156, align 4
  %158 = icmp eq ptr %157, %37
  br i1 %158, label %159, label %151

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.list_head, ptr %152, i32 0, i32 1
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.list_head, ptr %155, i32 0, i32 1
  store ptr %161, ptr %162, align 4
  store volatile ptr %155, ptr %161, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %152, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %160, align 4
  tail call void @kfree(ptr noundef %152) #13
  br label %163

163:                                              ; preds = %159, %151, %138
  %164 = add i32 %20, 1
  %165 = load ptr, ptr %93, align 4
  %166 = icmp ne ptr %165, null
  %167 = icmp eq i32 %164, %106
  %168 = or i1 %167, %166
  br i1 %168, label %187, label %169

169:                                              ; preds = %163
  %170 = load i32, ptr %38, align 4
  %171 = getelementptr %struct.pci_dev, ptr %36, i32 0, i32 47, i32 8, i32 1
  %172 = sub i32 %20, %106
  %173 = add i32 %172, %170
  store i32 %173, ptr %171, align 4
  %174 = load ptr, ptr %1, align 4
  br label %175

175:                                              ; preds = %178, %169
  %176 = phi ptr [ %174, %169 ], [ %179, %178 ]
  %177 = icmp eq ptr %176, %1
  br i1 %177, label %187, label %178

178:                                              ; preds = %175
  %179 = load ptr, ptr %176, align 4
  %180 = getelementptr inbounds %struct.pci_dev_resource, ptr %176, i32 0, i32 1
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, %38
  br i1 %182, label %183, label %175

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.list_head, ptr %176, i32 0, i32 1
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr inbounds %struct.list_head, ptr %179, i32 0, i32 1
  store ptr %185, ptr %186, align 4
  store volatile ptr %179, ptr %185, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %176, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %184, align 4
  tail call void @kfree(ptr noundef %176) #13
  br label %187

187:                                              ; preds = %183, %175, %163
  %188 = add i32 %28, 1
  %189 = load ptr, ptr %126, align 4
  %190 = icmp ne ptr %189, null
  %191 = icmp eq i32 %188, %139
  %192 = or i1 %191, %190
  br i1 %192, label %211, label %193

193:                                              ; preds = %187
  %194 = load i32, ptr %39, align 4
  %195 = getelementptr %struct.pci_dev, ptr %36, i32 0, i32 47, i32 9, i32 1
  %196 = sub i32 %28, %139
  %197 = add i32 %196, %194
  store i32 %197, ptr %195, align 4
  %198 = load ptr, ptr %1, align 4
  br label %199

199:                                              ; preds = %202, %193
  %200 = phi ptr [ %198, %193 ], [ %203, %202 ]
  %201 = icmp eq ptr %200, %1
  br i1 %201, label %211, label %202

202:                                              ; preds = %199
  %203 = load ptr, ptr %200, align 4
  %204 = getelementptr inbounds %struct.pci_dev_resource, ptr %200, i32 0, i32 1
  %205 = load ptr, ptr %204, align 4
  %206 = icmp eq ptr %205, %39
  br i1 %206, label %207, label %199

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct.list_head, ptr %200, i32 0, i32 1
  %209 = load ptr, ptr %208, align 4
  %210 = getelementptr inbounds %struct.list_head, ptr %203, i32 0, i32 1
  store ptr %209, ptr %210, align 4
  store volatile ptr %203, ptr %209, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %200, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %208, align 4
  tail call void @kfree(ptr noundef %200) #13
  br label %211

211:                                              ; preds = %207, %199, %187
  %212 = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 3
  %213 = load ptr, ptr %212, align 4
  %214 = icmp eq ptr %213, %212
  br i1 %214, label %499, label %215

215:                                              ; preds = %232, %211
  %216 = phi ptr [ %235, %232 ], [ %213, %211 ]
  %217 = phi i32 [ %234, %232 ], [ 0, %211 ]
  %218 = phi i32 [ %233, %232 ], [ 0, %211 ]
  %219 = getelementptr inbounds %struct.pci_dev, ptr %216, i32 0, i32 13
  %220 = load i8, ptr %219, align 1
  %221 = add i8 %220, -1
  %222 = icmp ult i8 %221, 2
  br i1 %222, label %223, label %232

223:                                              ; preds = %215
  %224 = getelementptr inbounds %struct.pci_dev, ptr %216, i32 0, i32 49
  %225 = load i40, ptr %224, align 1
  %226 = and i40 %225, 16777216
  %227 = icmp eq i40 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %223
  %229 = add i32 %218, 1
  br label %232

230:                                              ; preds = %223
  %231 = add i32 %217, 1
  br label %232

232:                                              ; preds = %230, %228, %215
  %233 = phi i32 [ %229, %228 ], [ %218, %230 ], [ %218, %215 ]
  %234 = phi i32 [ %217, %228 ], [ %231, %230 ], [ %217, %215 ]
  %235 = load ptr, ptr %216, align 4
  %236 = icmp eq ptr %235, %212
  br i1 %236, label %237, label %215

237:                                              ; preds = %232
  %238 = add i32 %234, %233
  %239 = icmp eq i32 %238, 1
  br i1 %239, label %240, label %269

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.pci_dev, ptr %213, i32 0, i32 2
  %242 = load ptr, ptr %241, align 4
  %243 = icmp eq ptr %242, null
  br i1 %243, label %499, label %244

244:                                              ; preds = %240
  %245 = insertvalue [8 x i32] poison, i32 %73, 0
  %246 = insertvalue [8 x i32] %245, i32 %12, 1
  %247 = insertvalue [8 x i32] %246, i32 %13, 2
  %248 = insertvalue [8 x i32] %247, i32 %14, 3
  %249 = insertvalue [8 x i32] %248, i32 %15, 4
  %250 = insertvalue [8 x i32] %249, i32 %16, 5
  %251 = insertvalue [8 x i32] %250, i32 %17, 6
  %252 = insertvalue [8 x i32] %251, i32 %18, 7
  %253 = insertvalue [8 x i32] poison, i32 %106, 0
  %254 = insertvalue [8 x i32] %253, i32 %20, 1
  %255 = insertvalue [8 x i32] %254, i32 %21, 2
  %256 = insertvalue [8 x i32] %255, i32 %22, 3
  %257 = insertvalue [8 x i32] %256, i32 %23, 4
  %258 = insertvalue [8 x i32] %257, i32 %24, 5
  %259 = insertvalue [8 x i32] %258, i32 %25, 6
  %260 = insertvalue [8 x i32] %259, i32 %26, 7
  %261 = insertvalue [8 x i32] poison, i32 %139, 0
  %262 = insertvalue [8 x i32] %261, i32 %28, 1
  %263 = insertvalue [8 x i32] %262, i32 %29, 2
  %264 = insertvalue [8 x i32] %263, i32 %30, 3
  %265 = insertvalue [8 x i32] %264, i32 %31, 4
  %266 = insertvalue [8 x i32] %265, i32 %32, 5
  %267 = insertvalue [8 x i32] %266, i32 %33, 6
  %268 = insertvalue [8 x i32] %267, i32 %34, 7
  br label %6

269:                                              ; preds = %237
  %270 = extractvalue [8 x i32] %8, 2
  %271 = extractvalue [8 x i32] %8, 3
  %272 = extractvalue [8 x i32] %8, 4
  %273 = extractvalue [8 x i32] %8, 5
  %274 = extractvalue [8 x i32] %8, 6
  %275 = extractvalue [8 x i32] %8, 7
  %276 = extractvalue [8 x i32] %9, 2
  %277 = extractvalue [8 x i32] %9, 3
  %278 = extractvalue [8 x i32] %9, 4
  %279 = extractvalue [8 x i32] %9, 5
  %280 = extractvalue [8 x i32] %9, 6
  %281 = extractvalue [8 x i32] %9, 7
  %282 = extractvalue [8 x i32] %10, 2
  %283 = extractvalue [8 x i32] %10, 3
  %284 = extractvalue [8 x i32] %10, 4
  %285 = extractvalue [8 x i32] %10, 5
  %286 = extractvalue [8 x i32] %10, 6
  %287 = extractvalue [8 x i32] %10, 7
  %288 = icmp eq i32 %233, 0
  br i1 %288, label %499, label %289

289:                                              ; preds = %269
  br i1 %214, label %432, label %290

290:                                              ; preds = %426, %289
  %291 = phi ptr [ %430, %426 ], [ %213, %289 ]
  %292 = phi i32 [ %429, %426 ], [ %139, %289 ]
  %293 = phi i32 [ %428, %426 ], [ %73, %289 ]
  %294 = phi i32 [ %427, %426 ], [ %106, %289 ]
  %295 = getelementptr inbounds %struct.pci_dev, ptr %291, i32 0, i32 13
  %296 = load i8, ptr %295, align 1
  %297 = add i8 %296, -1
  %298 = icmp ult i8 %297, 2
  br i1 %298, label %299, label %426

299:                                              ; preds = %290
  %300 = getelementptr inbounds %struct.pci_dev, ptr %291, i32 0, i32 49
  %301 = load i40, ptr %300, align 1
  %302 = and i40 %301, 16777216
  %303 = icmp eq i40 %302, 0
  br i1 %303, label %304, label %426

304:                                              ; preds = %299
  %305 = getelementptr %struct.pci_dev, ptr %291, i32 0, i32 47, i32 7
  %306 = getelementptr inbounds %struct.pci_dev, ptr %291, i32 0, i32 11
  %307 = load i32, ptr %306, align 8
  %308 = and i32 %307, -256
  %309 = icmp eq i32 %308, 395008
  br i1 %309, label %310, label %321

310:                                              ; preds = %304
  %311 = getelementptr %struct.pci_dev, ptr %291, i32 0, i32 47, i32 7, i32 3
  %312 = load i32, ptr %311, align 4
  %313 = and i32 %312, 256
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %317, label %315

315:                                              ; preds = %310
  %316 = load i32, ptr @pci_cardbus_io_size, align 4
  br label %323

317:                                              ; preds = %310
  %318 = and i32 %312, 512
  %319 = icmp eq i32 %318, 0
  %320 = load i32, ptr @pci_cardbus_mem_size, align 4
  br i1 %319, label %332, label %323

321:                                              ; preds = %304
  %322 = tail call i32 @resource_alignment(ptr noundef %305) #13
  br label %323

323:                                              ; preds = %321, %317, %315
  %324 = phi i32 [ %322, %321 ], [ %316, %315 ], [ %320, %317 ]
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %332, label %326

326:                                              ; preds = %323
  %327 = add i32 %293, -1
  %328 = add i32 %327, %324
  %329 = sub i32 0, %324
  %330 = and i32 %328, %329
  %331 = sub i32 %330, %293
  br label %332

332:                                              ; preds = %326, %323, %317
  %333 = phi i32 [ %331, %326 ], [ 0, %323 ], [ 0, %317 ]
  %334 = getelementptr %struct.pci_dev, ptr %291, i32 0, i32 47, i32 7, i32 1
  %335 = load i32, ptr %334, align 4
  %336 = load i32, ptr %305, align 4
  %337 = getelementptr %struct.pci_dev, ptr %291, i32 0, i32 47, i32 7, i32 5
  %338 = load ptr, ptr %337, align 4
  %339 = icmp eq ptr %338, null
  %340 = add i32 %293, 1
  %341 = add i32 %340, %333
  %342 = add i32 %341, %335
  %343 = sub i32 %342, %336
  %344 = tail call i32 @llvm.umin.i32(i32 %343, i32 %140)
  %345 = select i1 %339, i32 %344, i32 %293
  %346 = getelementptr %struct.pci_dev, ptr %291, i32 0, i32 47, i32 8
  %347 = load i32, ptr %306, align 8
  %348 = and i32 %347, -256
  %349 = icmp eq i32 %348, 395008
  br i1 %349, label %350, label %361

350:                                              ; preds = %332
  %351 = getelementptr %struct.pci_dev, ptr %291, i32 0, i32 47, i32 8, i32 3
  %352 = load i32, ptr %351, align 4
  %353 = and i32 %352, 256
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %357, label %355

355:                                              ; preds = %350
  %356 = load i32, ptr @pci_cardbus_io_size, align 4
  br label %363

357:                                              ; preds = %350
  %358 = and i32 %352, 512
  %359 = icmp eq i32 %358, 0
  %360 = load i32, ptr @pci_cardbus_mem_size, align 4
  br i1 %359, label %372, label %363

361:                                              ; preds = %332
  %362 = tail call i32 @resource_alignment(ptr noundef %346) #13
  br label %363

363:                                              ; preds = %361, %357, %355
  %364 = phi i32 [ %362, %361 ], [ %356, %355 ], [ %360, %357 ]
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %372, label %366

366:                                              ; preds = %363
  %367 = add i32 %294, -1
  %368 = add i32 %367, %364
  %369 = sub i32 0, %364
  %370 = and i32 %368, %369
  %371 = sub i32 %370, %294
  br label %372

372:                                              ; preds = %366, %363, %357
  %373 = phi i32 [ %371, %366 ], [ 0, %363 ], [ 0, %357 ]
  %374 = getelementptr %struct.pci_dev, ptr %291, i32 0, i32 47, i32 8, i32 1
  %375 = load i32, ptr %374, align 4
  %376 = load i32, ptr %346, align 4
  %377 = getelementptr %struct.pci_dev, ptr %291, i32 0, i32 47, i32 8, i32 5
  %378 = load ptr, ptr %377, align 4
  %379 = icmp eq ptr %378, null
  %380 = add i32 %294, 1
  %381 = add i32 %380, %373
  %382 = add i32 %381, %375
  %383 = sub i32 %382, %376
  %384 = tail call i32 @llvm.umin.i32(i32 %383, i32 %164)
  %385 = select i1 %379, i32 %384, i32 %294
  %386 = getelementptr %struct.pci_dev, ptr %291, i32 0, i32 47, i32 9
  %387 = load i32, ptr %306, align 8
  %388 = and i32 %387, -256
  %389 = icmp eq i32 %388, 395008
  br i1 %389, label %390, label %401

390:                                              ; preds = %372
  %391 = getelementptr %struct.pci_dev, ptr %291, i32 0, i32 47, i32 9, i32 3
  %392 = load i32, ptr %391, align 4
  %393 = and i32 %392, 256
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %397, label %395

395:                                              ; preds = %390
  %396 = load i32, ptr @pci_cardbus_io_size, align 4
  br label %403

397:                                              ; preds = %390
  %398 = and i32 %392, 512
  %399 = icmp eq i32 %398, 0
  %400 = load i32, ptr @pci_cardbus_mem_size, align 4
  br i1 %399, label %412, label %403

401:                                              ; preds = %372
  %402 = tail call i32 @resource_alignment(ptr noundef %386) #13
  br label %403

403:                                              ; preds = %401, %397, %395
  %404 = phi i32 [ %402, %401 ], [ %396, %395 ], [ %400, %397 ]
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %412, label %406

406:                                              ; preds = %403
  %407 = add i32 %292, -1
  %408 = add i32 %407, %404
  %409 = sub i32 0, %404
  %410 = and i32 %408, %409
  %411 = sub i32 %410, %292
  br label %412

412:                                              ; preds = %406, %403, %397
  %413 = phi i32 [ %411, %406 ], [ 0, %403 ], [ 0, %397 ]
  %414 = getelementptr %struct.pci_dev, ptr %291, i32 0, i32 47, i32 9, i32 5
  %415 = load ptr, ptr %414, align 4
  %416 = icmp eq ptr %415, null
  br i1 %416, label %417, label %426

417:                                              ; preds = %412
  %418 = getelementptr %struct.pci_dev, ptr %291, i32 0, i32 47, i32 9, i32 1
  %419 = load i32, ptr %418, align 4
  %420 = load i32, ptr %386, align 4
  %421 = add i32 %292, 1
  %422 = add i32 %421, %413
  %423 = add i32 %422, %419
  %424 = sub i32 %423, %420
  %425 = tail call i32 @llvm.umin.i32(i32 %424, i32 %188)
  br label %426

426:                                              ; preds = %417, %412, %299, %290
  %427 = phi i32 [ %385, %417 ], [ %385, %412 ], [ %294, %299 ], [ %294, %290 ]
  %428 = phi i32 [ %345, %417 ], [ %345, %412 ], [ %293, %299 ], [ %293, %290 ]
  %429 = phi i32 [ %425, %417 ], [ %292, %412 ], [ %292, %299 ], [ %292, %290 ]
  %430 = load ptr, ptr %291, align 4
  %431 = icmp eq ptr %430, %212
  br i1 %431, label %432, label %290

432:                                              ; preds = %426, %289
  %433 = phi i32 [ %106, %289 ], [ %427, %426 ]
  %434 = phi i32 [ %73, %289 ], [ %428, %426 ]
  %435 = phi i32 [ %139, %289 ], [ %429, %426 ]
  %436 = sub i32 %140, %434
  %437 = udiv i32 %436, %233
  %438 = sub i32 %164, %433
  %439 = udiv i32 %438, %233
  %440 = sub i32 %188, %435
  %441 = udiv i32 %440, %233
  %442 = load ptr, ptr %212, align 4
  %443 = icmp eq ptr %442, %212
  br i1 %443, label %499, label %444

444:                                              ; preds = %493, %432
  %445 = phi ptr [ %497, %493 ], [ %442, %432 ]
  %446 = phi i32 [ %496, %493 ], [ %435, %432 ]
  %447 = phi i32 [ %495, %493 ], [ %434, %432 ]
  %448 = phi i32 [ %494, %493 ], [ %433, %432 ]
  %449 = getelementptr inbounds %struct.pci_dev, ptr %445, i32 0, i32 13
  %450 = load i8, ptr %449, align 1
  %451 = add i8 %450, -1
  %452 = icmp ult i8 %451, 2
  br i1 %452, label %453, label %493

453:                                              ; preds = %444
  %454 = getelementptr inbounds %struct.pci_dev, ptr %445, i32 0, i32 2
  %455 = load ptr, ptr %454, align 4
  %456 = icmp eq ptr %455, null
  br i1 %456, label %493, label %457

457:                                              ; preds = %453
  %458 = getelementptr inbounds %struct.pci_dev, ptr %445, i32 0, i32 49
  %459 = load i40, ptr %458, align 1
  %460 = and i40 %459, 16777216
  %461 = icmp eq i40 %460, 0
  br i1 %461, label %493, label %462

462:                                              ; preds = %457
  %463 = add i32 %447, %437
  %464 = add i32 %463, -1
  %465 = add i32 %448, %439
  %466 = add i32 %465, -1
  %467 = add i32 %446, %441
  %468 = add i32 %467, -1
  %469 = insertvalue [8 x i32] poison, i32 %447, 0
  %470 = insertvalue [8 x i32] %469, i32 %464, 1
  %471 = insertvalue [8 x i32] %470, i32 %270, 2
  %472 = insertvalue [8 x i32] %471, i32 %271, 3
  %473 = insertvalue [8 x i32] %472, i32 %272, 4
  %474 = insertvalue [8 x i32] %473, i32 %273, 5
  %475 = insertvalue [8 x i32] %474, i32 %274, 6
  %476 = insertvalue [8 x i32] %475, i32 %275, 7
  %477 = insertvalue [8 x i32] poison, i32 %448, 0
  %478 = insertvalue [8 x i32] %477, i32 %466, 1
  %479 = insertvalue [8 x i32] %478, i32 %276, 2
  %480 = insertvalue [8 x i32] %479, i32 %277, 3
  %481 = insertvalue [8 x i32] %480, i32 %278, 4
  %482 = insertvalue [8 x i32] %481, i32 %279, 5
  %483 = insertvalue [8 x i32] %482, i32 %280, 6
  %484 = insertvalue [8 x i32] %483, i32 %281, 7
  %485 = insertvalue [8 x i32] poison, i32 %446, 0
  %486 = insertvalue [8 x i32] %485, i32 %468, 1
  %487 = insertvalue [8 x i32] %486, i32 %282, 2
  %488 = insertvalue [8 x i32] %487, i32 %283, 3
  %489 = insertvalue [8 x i32] %488, i32 %284, 4
  %490 = insertvalue [8 x i32] %489, i32 %285, 5
  %491 = insertvalue [8 x i32] %490, i32 %286, 6
  %492 = insertvalue [8 x i32] %491, i32 %287, 7
  tail call fastcc void @pci_bus_distribute_available_resources(ptr noundef nonnull %455, ptr noundef %1, [8 x i32] %476, [8 x i32] %484, [8 x i32] %492)
  br label %493

493:                                              ; preds = %462, %457, %453, %444
  %494 = phi i32 [ %448, %453 ], [ %448, %457 ], [ %465, %462 ], [ %448, %444 ]
  %495 = phi i32 [ %447, %453 ], [ %447, %457 ], [ %463, %462 ], [ %447, %444 ]
  %496 = phi i32 [ %446, %453 ], [ %446, %457 ], [ %467, %462 ], [ %446, %444 ]
  %497 = load ptr, ptr %445, align 4
  %498 = icmp eq ptr %497, %212
  br i1 %498, label %499, label %444

499:                                              ; preds = %493, %432, %269, %240, %211
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold noreturn nounwind }

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
!9 = !{i32 0, i32 33}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2153944750, i64 2153945239, i64 2153944787, i64 2153944843, i64 2153944877, i64 2153944901, i64 2153944942, i64 2153944963, i64 2153944991, i64 2153945025}
!12 = !{i64 2153992434, i64 2153992923, i64 2153992471, i64 2153992527, i64 2153992561, i64 2153992585, i64 2153992626, i64 2153992647, i64 2153992675, i64 2153992709}
!13 = !{i64 2154004192, i64 2154004681, i64 2154004229, i64 2154004285, i64 2154004319, i64 2154004343, i64 2154004384, i64 2154004405, i64 2154004433, i64 2154004467}
!14 = !{i64 2154018627, i64 2154019116, i64 2154018664, i64 2154018720, i64 2154018754, i64 2154018778, i64 2154018819, i64 2154018840, i64 2154018868, i64 2154018902}
