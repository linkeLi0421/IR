; ModuleID = '/llk/IR/drivers/pci/of.c_pt.bc'
source_filename = "../drivers/pci/of.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_pci_find_child_device:\09\09\09\09\09"
module asm "\09.asciz \09\22of_pci_find_child_device\22\09\09\09\09\09"
module asm "__kstrtabns_of_pci_find_child_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_pci_get_devfn:\09\09\09\09\09"
module asm "\09.asciz \09\22of_pci_get_devfn\22\09\09\09\09\09"
module asm "__kstrtabns_of_pci_get_devfn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_pci_parse_bus_range:\09\09\09\09\09"
module asm "\09.asciz \09\22of_pci_parse_bus_range\22\09\09\09\09\09"
module asm "__kstrtabns_of_pci_parse_bus_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_pci_domain_nr:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_pci_domain_nr\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_pci_domain_nr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_pci_check_probe_only:\09\09\09\09\09"
module asm "\09.asciz \09\22of_pci_check_probe_only\22\09\09\09\09\09"
module asm "__kstrtabns_of_pci_check_probe_only:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_irq_parse_and_map_pci:\09\09\09\09\09"
module asm "\09.asciz \09\22of_irq_parse_and_map_pci\22\09\09\09\09\09"
module asm "__kstrtabns_of_irq_parse_and_map_pci:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_pci_get_max_link_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22of_pci_get_max_link_speed\22\09\09\09\09\09"
module asm "__kstrtabns_of_pci_get_max_link_speed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.of_pci_range = type { %union.anon.65, i64, i64, i32 }
%union.anon.65 = type { i64 }
%struct.of_pci_range_parser = type { ptr, ptr, ptr, ptr, i32, i32, i32, i8 }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [40 x i8], [0 x i32] }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }

@.str = private unnamed_addr constant [16 x i8] c"external-facing\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"drivers/pci/of.c\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"msi-map\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"multifunc-device\00", align 1
@__kstrtab_of_pci_find_child_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_pci_find_child_device = external dso_local constant [0 x i8], align 1
@__ksymtab_of_pci_find_child_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_pci_find_child_device to i32), ptr @__kstrtab_of_pci_find_child_device, ptr @__kstrtabns_of_pci_find_child_device }, section "___ksymtab_gpl+of_pci_find_child_device", align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@__kstrtab_of_pci_get_devfn = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_pci_get_devfn = external dso_local constant [0 x i8], align 1
@__ksymtab_of_pci_get_devfn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_pci_get_devfn to i32), ptr @__kstrtab_of_pci_get_devfn, ptr @__kstrtabns_of_pci_get_devfn }, section "___ksymtab_gpl+of_pci_get_devfn", align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"bus-range\00", align 1
@__kstrtab_of_pci_parse_bus_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_pci_parse_bus_range = external dso_local constant [0 x i8], align 1
@__ksymtab_of_pci_parse_bus_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_pci_parse_bus_range to i32), ptr @__kstrtab_of_pci_parse_bus_range, ptr @__kstrtabns_of_pci_parse_bus_range }, section "___ksymtab_gpl+of_pci_parse_bus_range", align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"linux,pci-domain\00", align 1
@__kstrtab_of_get_pci_domain_nr = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_pci_domain_nr = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_pci_domain_nr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_pci_domain_nr to i32), ptr @__kstrtab_of_get_pci_domain_nr, ptr @__kstrtabns_of_get_pci_domain_nr }, section "___ksymtab_gpl+of_get_pci_domain_nr", align 4
@of_chosen = external dso_local local_unnamed_addr global ptr, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"linux,pci-probe-only\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"\014PCI: OF: linux,pci-probe-only without valid value, ignoring\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"\016PCI: OF: PROBE_ONLY %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@__kstrtab_of_pci_check_probe_only = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_pci_check_probe_only = external dso_local constant [0 x i8], align 1
@__ksymtab_of_pci_check_probe_only = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_pci_check_probe_only to i32), ptr @__kstrtab_of_pci_check_probe_only, ptr @__kstrtabns_of_pci_check_probe_only }, section "___ksymtab_gpl+of_pci_check_probe_only", align 4
@__kstrtab_of_irq_parse_and_map_pci = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_irq_parse_and_map_pci = external dso_local constant [0 x i8], align 1
@__ksymtab_of_irq_parse_and_map_pci = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_irq_parse_and_map_pci to i32), ptr @__kstrtab_of_irq_parse_and_map_pci, ptr @__kstrtabns_of_irq_parse_and_map_pci }, section "___ksymtab_gpl+of_irq_parse_and_map_pci", align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"max-link-speed\00", align 1
@__kstrtab_of_pci_get_max_link_speed = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_pci_get_max_link_speed = external dso_local constant [0 x i8], align 1
@__ksymtab_of_pci_get_max_link_speed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_pci_get_max_link_speed to i32), ptr @__kstrtab_of_pci_get_max_link_speed, ptr @__kstrtabns_of_pci_get_max_link_speed }, section "___ksymtab_gpl+of_pci_get_max_link_speed", align 4
@pci_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"interrupt-map\00", align 1
@.str.14 = private unnamed_addr constant [59 x i8] c"%s: no interrupt-map found, INTx interrupts not available\0A\00", align 1
@__func__.of_irq_parse_pci = private unnamed_addr constant [17 x i8] c"of_irq_parse_pci\00", align 1
@of_irq_parse_pci.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = private unnamed_addr constant [89 x i8] c"\014PCI: OF: %s: possibly some PCI slots don't have level triggered interrupts capability\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"%s: failed with rc=%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"error %d: failed to map resource %pR\0A\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"non-prefetchable memory resource required\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"host bridge %pOF ranges:\0A\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"  No bus range found for %pOF, using %pR\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"IO\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"MEM\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"err\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"  %6s %#012llx..%#012llx -> %#012llx\0A\00", align 1
@.str.27 = private unnamed_addr constant [85 x i8] c"More than one I/O resource converted for %pOF. CPU base address for old range lost!\0A\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"IB MEM\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_of_get_pci_domain_nr, ptr @__ksymtab_of_irq_parse_and_map_pci, ptr @__ksymtab_of_pci_check_probe_only, ptr @__ksymtab_of_pci_find_child_device, ptr @__ksymtab_of_pci_get_devfn, ptr @__ksymtab_of_pci_get_max_link_speed, ptr @__ksymtab_of_pci_parse_bus_range], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_set_of_node(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 21, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = tail call ptr @of_pci_find_child_device(ptr noundef nonnull %5, i32 noundef %9)
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 25
  store ptr %10, ptr %11, align 8
  %12 = icmp eq ptr %10, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.device_node, ptr %10, i32 0, i32 3
  %15 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 26
  store ptr %14, ptr %15, align 4
  br label %16

16:                                               ; preds = %13, %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_pci_find_child_device(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca [5 x i32], align 4
  %4 = alloca [5 x i32], align 4
  %5 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef null) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7

7:                                                ; preds = %40, %2
  %8 = phi ptr [ %41, %40 ], [ %5, %2 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #6, !annotation !8
  %9 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.4, ptr noundef nonnull %4, i32 noundef 5, i32 noundef 0) #6
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 0) #6
  %11 = load i32, ptr %4, align 4
  %12 = lshr i32 %11, 8
  %13 = and i32 %12, 255
  %14 = icmp slt i32 %9, 0
  %15 = select i1 %14, i32 %10, i32 %13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #6
  %16 = icmp slt i32 %15, 0
  %17 = icmp ne i32 %15, %1
  %18 = or i1 %16, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %7
  %20 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %8, ptr noundef nonnull @.str.3) #6
  br i1 %20, label %21, label %40

21:                                               ; preds = %19
  %22 = call ptr @of_get_next_child(ptr noundef nonnull %8, ptr noundef null) #6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %37, %21
  %25 = phi ptr [ %38, %37 ], [ %22, %21 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false) #6, !annotation !8
  %26 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %25, ptr noundef nonnull @.str.4, ptr noundef nonnull %3, i32 noundef 5, i32 noundef 0) #6
  %27 = call i32 @llvm.smin.i32(i32 %26, i32 0) #6
  %28 = load i32, ptr %3, align 4
  %29 = lshr i32 %28, 8
  %30 = and i32 %29, 255
  %31 = icmp slt i32 %26, 0
  %32 = select i1 %31, i32 %27, i32 %30
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #6
  %33 = icmp slt i32 %32, 0
  %34 = icmp ne i32 %32, %1
  %35 = or i1 %33, %34
  br i1 %35, label %37, label %36

36:                                               ; preds = %24
  call void @of_node_put(ptr noundef nonnull %8) #6
  br label %43

37:                                               ; preds = %24
  %38 = call ptr @of_get_next_child(ptr noundef nonnull %8, ptr noundef nonnull %25) #6
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %24

40:                                               ; preds = %37, %21, %19
  %41 = call ptr @of_get_next_child(ptr noundef %0, ptr noundef nonnull %8) #6
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %7

43:                                               ; preds = %40, %36, %7, %2
  %44 = phi ptr [ %25, %36 ], [ null, %2 ], [ %8, %7 ], [ null, %40 ]
  ret ptr %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_release_of_node(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 25
  %3 = load ptr, ptr %2, align 8
  tail call void @of_node_put(ptr noundef %3) #6
  store ptr null, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 26
  store ptr null, ptr %4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_set_bus_of_node(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @of_node_get(ptr noundef %7) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 21, i32 25
  store ptr null, ptr %11, align 8
  br label %30

12:                                               ; preds = %5
  %13 = tail call ptr @of_find_property(ptr noundef nonnull %8, ptr noundef nonnull @.str, ptr noundef null) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 49
  %18 = load i40, ptr %17, align 1
  %19 = or i40 %18, 268435456
  store i40 %19, ptr %17, align 1
  br label %20

20:                                               ; preds = %15, %12
  %21 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 21, i32 25
  store ptr %8, ptr %21, align 8
  br label %26

22:                                               ; preds = %1
  %23 = tail call ptr @pcibios_get_phb_of_node(ptr noundef %0)
  %24 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 21, i32 25
  store ptr %23, ptr %24, align 8
  %25 = icmp eq ptr %23, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22, %20
  %27 = phi ptr [ %8, %20 ], [ %23, %22 ]
  %28 = getelementptr inbounds %struct.device_node, ptr %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 21, i32 26
  store ptr %28, ptr %29, align 4
  br label %30

30:                                               ; preds = %26, %22, %10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local ptr @pcibios_get_phb_of_node(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !9

9:                                                ; preds = %5, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 64, i32 noundef 9, ptr noundef null) #6
  br label %28

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 20
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 25
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = tail call ptr @of_node_get(ptr noundef nonnull %14) #6
  br label %28

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 25
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call ptr @of_node_get(ptr noundef nonnull %24) #6
  br label %28

28:                                               ; preds = %26, %22, %18, %16, %9
  %29 = phi ptr [ null, %9 ], [ %17, %16 ], [ %27, %26 ], [ null, %22 ], [ null, %18 ]
  ret ptr %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_release_bus_of_node(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 21, i32 25
  %3 = load ptr, ptr %2, align 8
  tail call void @of_node_put(ptr noundef %3) #6
  store ptr null, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 21, i32 26
  store ptr null, ptr %4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_host_bridge_of_msi_domain(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.irq_fwspec, align 4
  %3 = alloca %struct.irq_fwspec, align 4
  %4 = alloca %struct.irq_fwspec, align 4
  %5 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 21, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 21
  %10 = tail call ptr @of_msi_get_domain(ptr noundef %9, ptr noundef nonnull %6, i32 noundef 3) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %31

12:                                               ; preds = %8
  %13 = load ptr, ptr %5, align 8
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %struct.device_node, ptr %13, i32 0, i32 3
  %16 = select i1 %14, ptr null, ptr %15
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #6
  %17 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %17, i8 0, i64 68, i1 false) #6
  store ptr %16, ptr %4, align 4
  %18 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %4, i32 noundef 3) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %12
  %21 = load ptr, ptr %5, align 8
  %22 = icmp eq ptr %21, null
  %23 = getelementptr inbounds %struct.device_node, ptr %21, i32 0, i32 3
  %24 = select i1 %22, ptr null, ptr %23
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #6
  %25 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %25, i8 0, i64 68, i1 false) #6
  store ptr %24, ptr %3, align 4
  %26 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %3, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #6
  %29 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(68) %29, i8 0, i64 68, i1 false) #6
  store ptr %24, ptr %2, align 4
  %30 = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %2, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #6
  br label %31

31:                                               ; preds = %28, %20, %12, %8, %1
  %32 = phi ptr [ null, %1 ], [ %10, %8 ], [ %18, %12 ], [ %26, %20 ], [ %30, %28 ]
  ret ptr %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_msi_get_domain(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @pci_host_of_has_msi_map(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @of_get_property(ptr noundef nonnull %5, ptr noundef nonnull @.str.2, ptr noundef null) #6
  %9 = icmp ne ptr %8, null
  br label %10

10:                                               ; preds = %7, %3, %1
  %11 = phi i1 [ %9, %7 ], [ false, %3 ], [ false, %1 ]
  ret i1 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_pci_get_devfn(ptr noundef %0) #0 {
  %2 = alloca [5 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !8
  %3 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %2, i32 noundef 5, i32 noundef 0) #6
  %4 = call i32 @llvm.smin.i32(i32 %3, i32 0) #6
  %5 = load i32, ptr %2, align 4
  %6 = lshr i32 %5, 8
  %7 = and i32 %6, 255
  %8 = icmp slt i32 %3, 0
  %9 = select i1 %8, i32 %4, i32 %7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #6
  ret i32 %9
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_pci_parse_bus_range(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  store i64 0, ptr %3, align 8, !annotation !8
  %4 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %3, i32 noundef 2, i32 noundef 0) #6
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 2
  store ptr %7, ptr %8, align 4
  %9 = load i32, ptr %3, align 8
  store i32 %9, ptr %1, align 4
  %10 = getelementptr inbounds [2 x i32], ptr %3, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 3
  store i32 4096, ptr %13, align 4
  br label %14

14:                                               ; preds = %6, %2
  %15 = call i32 @llvm.smin.i32(i32 %4, i32 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_get_pci_domain_nr(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %4 = call i32 @llvm.smin.i32(i32 %3, i32 0) #6
  %5 = load i32, ptr %2, align 4
  %6 = and i32 %5, 65535
  %7 = icmp slt i32 %3, 0
  %8 = select i1 %7, i32 %4, i32 %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_pci_check_probe_only() #0 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #6
  store i32 0, ptr %1, align 4, !annotation !8
  %2 = load ptr, ptr @of_chosen, align 4
  %3 = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef nonnull %1, i32 noundef 1, i32 noundef 0) #6
  %4 = call i32 @llvm.smin.i32(i32 %3, i32 0) #6
  switch i32 %4, label %16 [
    i32 0, label %7
    i32 -61, label %5
    i32 -75, label %5
  ]

5:                                                ; preds = %0, %0
  %6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #7
  br label %16

7:                                                ; preds = %0
  %8 = load i32, ptr %1, align 4
  %9 = icmp eq i32 %8, 0
  %10 = load i32, ptr @pci_flags, align 4
  %11 = and i32 %10, -5
  %12 = select i1 %9, ptr @.str.11, ptr @.str.10
  %13 = select i1 %9, i32 0, i32 4
  %14 = or i32 %11, %13
  store i32 %14, ptr @pci_flags, align 4
  %15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull %12) #7
  br label %16

16:                                               ; preds = %7, %5, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_irq_parse_and_map_pci(ptr noundef %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca [3 x i32], align 4
  %5 = alloca i8, align 1
  %6 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %6, i8 0, i32 72, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false) #6, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #6
  store i8 0, ptr %5, align 1, !annotation !8
  %7 = icmp eq ptr %0, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = call i32 @of_irq_parse_one(ptr noundef nonnull %10, i32 noundef 0, ptr noundef nonnull %6) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %93, label %15

15:                                               ; preds = %12, %8, %3
  %16 = phi ptr [ %10, %12 ], [ null, %8 ], [ null, %3 ]
  %17 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 61, ptr noundef nonnull %5) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %79

19:                                               ; preds = %15
  %20 = load i8, ptr %5, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %92, label %22

22:                                               ; preds = %19
  %23 = call ptr @of_get_property(ptr noundef %16, ptr noundef nonnull @.str.13, ptr noundef null) #6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load i8, ptr %5, align 1
  %27 = call zeroext i8 @pci_swizzle_interrupt_pin(ptr noundef %0, i8 noundef zeroext %26) #6
  store i8 %27, ptr %5, align 1
  %28 = icmp eq ptr %16, null
  br i1 %28, label %29, label %57

29:                                               ; preds = %25, %22
  %30 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.pci_bus, ptr %31, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %49, %29
  %36 = phi ptr [ %0, %29 ], [ %44, %49 ]
  %37 = phi ptr [ %31, %29 ], [ %53, %49 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %88, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.pci_bus, ptr %37, i32 0, i32 21, i32 25
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %88, label %57

43:                                               ; preds = %49, %29
  %44 = phi ptr [ %55, %49 ], [ %33, %29 ]
  %45 = phi ptr [ %44, %49 ], [ %0, %29 ]
  %46 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44, i32 25
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load i8, ptr %5, align 1
  %51 = call zeroext i8 @pci_swizzle_interrupt_pin(ptr noundef %45, i8 noundef zeroext %50) #6
  store i8 %51, ptr %5, align 1
  %52 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 1
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.pci_bus, ptr %53, i32 0, i32 4
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %35, label %43

57:                                               ; preds = %43, %39, %25
  %58 = phi ptr [ %36, %39 ], [ %0, %25 ], [ %45, %43 ]
  %59 = phi ptr [ %41, %39 ], [ %16, %25 ], [ %47, %43 ]
  store ptr %59, ptr %6, align 4
  %60 = getelementptr inbounds %struct.of_phandle_args, ptr %6, i32 0, i32 1
  store i32 1, ptr %60, align 4
  %61 = load i8, ptr %5, align 1
  %62 = zext i8 %61 to i32
  %63 = getelementptr inbounds %struct.of_phandle_args, ptr %6, i32 0, i32 2
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 1
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.pci_bus, ptr %65, i32 0, i32 12
  %67 = load i8, ptr %66, align 4
  %68 = zext i8 %67 to i32
  %69 = shl nuw nsw i32 %68, 16
  %70 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 6
  %71 = load i32, ptr %70, align 4
  %72 = shl i32 %71, 8
  %73 = or i32 %69, %72
  %74 = call i32 @llvm.bswap.i32(i32 %73) #6
  store i32 %74, ptr %4, align 4
  %75 = getelementptr inbounds [3 x i32], ptr %4, i32 0, i32 2
  store i32 0, ptr %75, align 4
  %76 = getelementptr inbounds [3 x i32], ptr %4, i32 0, i32 1
  store i32 0, ptr %76, align 4
  %77 = call i32 @of_irq_parse_raw(ptr noundef nonnull %4, ptr noundef nonnull %6) #6
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %93, label %79

79:                                               ; preds = %57, %15
  %80 = phi i32 [ %17, %15 ], [ %77, %57 ]
  %81 = phi ptr [ %0, %15 ], [ %58, %57 ]
  %82 = icmp eq i32 %80, -2
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %84, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.of_irq_parse_pci) #7
  %85 = load i1, ptr @of_irq_parse_pci.__already_done, align 1
  br i1 %85, label %92, label %86, !prof !9

86:                                               ; preds = %83
  store i1 true, ptr @of_irq_parse_pci.__already_done, align 1
  %87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.of_irq_parse_pci) #7
  br label %92

88:                                               ; preds = %79, %39, %35
  %89 = phi ptr [ %81, %79 ], [ %36, %39 ], [ %36, %35 ]
  %90 = phi i32 [ %80, %79 ], [ -22, %39 ], [ -22, %35 ]
  %91 = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.of_irq_parse_pci, i32 noundef %90) #7
  br label %92

92:                                               ; preds = %88, %86, %83, %19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #6
  br label %95

93:                                               ; preds = %57, %12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #6
  %94 = call i32 @irq_create_of_mapping(ptr noundef nonnull %6) #6
  br label %95

95:                                               ; preds = %93, %92
  %96 = phi i32 [ %94, %93 ], [ 0, %92 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #6
  ret i32 %96
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_of_mapping(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_of_pci_bridge_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [2 x i32], align 8
  %4 = alloca %struct.resource, align 4
  %5 = alloca %struct.of_pci_range, align 8
  %6 = alloca %struct.of_pci_range_parser, align 4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %181, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.pci_host_bridge, ptr %1, i32 0, i32 9
  store ptr @pci_common_swizzle, ptr %11, align 64
  %12 = getelementptr inbounds %struct.pci_host_bridge, ptr %1, i32 0, i32 10
  store ptr @of_irq_parse_and_map_pci, ptr %12, align 4
  %13 = getelementptr inbounds %struct.pci_host_bridge, ptr %1, i32 0, i32 7
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.pci_host_bridge, ptr %1, i32 0, i32 7, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.pci_host_bridge, ptr %1, i32 0, i32 8
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.pci_host_bridge, ptr %1, i32 0, i32 8, i32 1
  store ptr %15, ptr %16, align 4
  %17 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false) #6, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i32 32, i1 false) #6, !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i32 32, i1 false) #6, !annotation !8
  %18 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 32, i32 noundef 3520) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %145, label %20

20:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %17) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6
  store i64 0, ptr %3, align 8, !annotation !8
  %21 = call i32 @of_property_read_variable_u32_array(ptr noundef %17, ptr noundef nonnull @.str.5, ptr noundef nonnull %3, i32 noundef 2, i32 noundef 0) #6
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  store i32 0, ptr %18, align 4
  %24 = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 1
  store i32 255, ptr %24, align 4
  %25 = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 3
  store i32 4096, ptr %25, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %17, ptr noundef nonnull %18) #7
  br label %37

26:                                               ; preds = %20
  %27 = load ptr, ptr %17, align 4
  %28 = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 2
  store ptr %27, ptr %28, align 4
  %29 = load i32, ptr %3, align 8
  store i32 %29, ptr %18, align 4
  %30 = getelementptr inbounds [2 x i32], ptr %3, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 1
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 3
  store i32 4096, ptr %33, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6
  %34 = add i32 %29, 255
  %35 = icmp ugt i32 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i32 %34, ptr %32, align 4
  br label %37

37:                                               ; preds = %36, %26, %23
  call void @pci_add_resource(ptr noundef %13, ptr noundef nonnull %18) #6
  %38 = call i32 @of_pci_range_parser_init(ptr noundef nonnull %6, ptr noundef %17) #6
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %146

40:                                               ; preds = %37
  %41 = call ptr @of_pci_range_parser_one(ptr noundef nonnull %6, ptr noundef nonnull %5) #6
  %42 = icmp eq ptr %41, null
  br i1 %42, label %93, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.of_pci_range, ptr %5, i32 0, i32 3
  %45 = getelementptr inbounds %struct.of_pci_range, ptr %5, i32 0, i32 1
  %46 = getelementptr inbounds %struct.of_pci_range, ptr %5, i32 0, i32 2
  br label %47

47:                                               ; preds = %89, %43
  %48 = phi i32 [ -1, %43 ], [ %90, %89 ]
  %49 = load i32, ptr %44, align 8
  %50 = and i32 %49, 7936
  %51 = icmp eq i32 %50, 512
  %52 = select i1 %51, ptr @.str.23, ptr @.str.24
  %53 = icmp eq i32 %50, 256
  %54 = select i1 %53, ptr @.str.22, ptr %52
  %55 = load i64, ptr %45, align 8
  %56 = load i64, ptr %46, align 8
  %57 = add i64 %55, -1
  %58 = add i64 %57, %56
  %59 = load i64, ptr %5, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull %54, i64 noundef %55, i64 noundef %58, i64 noundef %59) #7
  %60 = load i64, ptr %45, align 8
  %61 = icmp eq i64 %60, -1
  %62 = load i64, ptr %46, align 8
  %63 = icmp eq i64 %62, 0
  %64 = select i1 %61, i1 true, i1 %63
  br i1 %64, label %89, label %65

65:                                               ; preds = %47
  %66 = call i32 @of_pci_range_to_resource(ptr noundef nonnull %5, ptr noundef %17, ptr noundef nonnull %4) #6
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %65
  %69 = call ptr @devm_kmemdup(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 32, i32 noundef 3264) #6
  %70 = icmp eq ptr %69, null
  br i1 %70, label %144, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.resource, ptr %69, i32 0, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 7936
  switch i32 %74, label %83 [
    i32 256, label %75
    i32 512, label %81
  ]

75:                                               ; preds = %71
  %76 = icmp eq i32 %48, -1
  br i1 %76, label %78, label %77

77:                                               ; preds = %75
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef %17) #7
  br label %78

78:                                               ; preds = %77, %75
  %79 = load i64, ptr %45, align 8
  %80 = trunc i64 %79 to i32
  br label %83

81:                                               ; preds = %71
  %82 = and i32 %73, -1048577
  store i32 %82, ptr %72, align 4
  br label %83

83:                                               ; preds = %81, %78, %71
  %84 = phi i32 [ %48, %71 ], [ %48, %81 ], [ %80, %78 ]
  %85 = load i32, ptr %69, align 4
  %86 = load i64, ptr %5, align 8
  %87 = trunc i64 %86 to i32
  %88 = sub i32 %85, %87
  call void @pci_add_resource_offset(ptr noundef %13, ptr noundef nonnull %69, i32 noundef %88) #6
  br label %89

89:                                               ; preds = %83, %65, %47
  %90 = phi i32 [ %48, %47 ], [ %84, %83 ], [ %48, %65 ]
  %91 = call ptr @of_pci_range_parser_one(ptr noundef nonnull %6, ptr noundef nonnull %5) #6
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %47

93:                                               ; preds = %89, %40
  %94 = phi i32 [ -1, %40 ], [ %90, %89 ]
  %95 = call i32 @of_pci_dma_range_parser_init(ptr noundef nonnull %6, ptr noundef %17) #6
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %146

97:                                               ; preds = %93
  %98 = call ptr @of_pci_range_parser_one(ptr noundef nonnull %6, ptr noundef nonnull %5) #6
  %99 = icmp eq ptr %98, null
  br i1 %99, label %146, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.of_pci_range, ptr %5, i32 0, i32 3
  %102 = getelementptr inbounds %struct.of_pci_range, ptr %5, i32 0, i32 1
  %103 = getelementptr inbounds %struct.of_pci_range, ptr %5, i32 0, i32 2
  br label %104

104:                                              ; preds = %141, %100
  %105 = load i32, ptr %101, align 8
  %106 = and i32 %105, 7936
  %107 = icmp eq i32 %106, 512
  br i1 %107, label %108, label %141

108:                                              ; preds = %104
  %109 = load i64, ptr %102, align 8
  %110 = icmp eq i64 %109, -1
  br i1 %110, label %141, label %111

111:                                              ; preds = %108
  %112 = load i64, ptr %103, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %141, label %114

114:                                              ; preds = %111
  %115 = add i64 %109, -1
  %116 = add i64 %115, %112
  %117 = load i64, ptr %5, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.28, i64 noundef %109, i64 noundef %116, i64 noundef %117) #7
  %118 = call i32 @of_pci_range_to_resource(ptr noundef nonnull %5, ptr noundef %17, ptr noundef nonnull %4) #6
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %141

120:                                              ; preds = %114
  %121 = call ptr @devm_kmemdup(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 32, i32 noundef 3264) #6
  %122 = icmp eq ptr %121, null
  br i1 %122, label %144, label %123

123:                                              ; preds = %129, %120
  %124 = phi ptr [ %125, %129 ], [ %15, %120 ]
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, %15
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, ptr %121, align 4
  br label %135

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.resource_entry, ptr %125, i32 0, i32 1
  %131 = load ptr, ptr %130, align 4
  %132 = load i32, ptr %131, align 4
  %133 = load i32, ptr %121, align 4
  %134 = icmp ugt i32 %132, %133
  br i1 %134, label %135, label %123

135:                                              ; preds = %129, %127
  %136 = phi i32 [ %128, %127 ], [ %133, %129 ]
  %137 = phi ptr [ %15, %127 ], [ %125, %129 ]
  %138 = load i64, ptr %5, align 8
  %139 = trunc i64 %138 to i32
  %140 = sub i32 %136, %139
  call void @pci_add_resource_offset(ptr noundef %137, ptr noundef nonnull %121, i32 noundef %140) #6
  br label %141

141:                                              ; preds = %135, %114, %111, %108, %104
  %142 = call ptr @of_pci_range_parser_one(ptr noundef nonnull %6, ptr noundef nonnull %5) #6
  %143 = icmp eq ptr %142, null
  br i1 %143, label %146, label %104

144:                                              ; preds = %120, %68
  call void @pci_free_resource_list(ptr noundef %13) #6
  br label %145

145:                                              ; preds = %144, %10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #6
  br label %181

146:                                              ; preds = %141, %97, %93, %37
  %147 = phi i32 [ -1, %37 ], [ %94, %93 ], [ %94, %97 ], [ %94, %141 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #6
  %148 = call i32 @devm_request_pci_bus_resources(ptr noundef %0, ptr noundef %13) #6
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %181

150:                                              ; preds = %146
  %151 = load ptr, ptr %13, align 16
  %152 = icmp eq ptr %151, %13
  br i1 %152, label %180, label %153

153:                                              ; preds = %175, %150
  %154 = phi i32 [ %176, %175 ], [ 0, %150 ]
  %155 = phi ptr [ %156, %175 ], [ %151, %150 ]
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.resource_entry, ptr %155, i32 0, i32 1
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.resource, ptr %158, i32 0, i32 3
  %160 = load i32, ptr %159, align 4
  %161 = and i32 %160, 7936
  switch i32 %161, label %175 [
    i32 256, label %162
    i32 512, label %170
  ]

162:                                              ; preds = %153
  %163 = call i32 @devm_pci_remap_iospace(ptr noundef %0, ptr noundef %158, i32 noundef %147) #6
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %175, label %165

165:                                              ; preds = %162
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %163, ptr noundef %158) #7
  %166 = getelementptr inbounds %struct.list_head, ptr %155, i32 0, i32 1
  %167 = load ptr, ptr %166, align 4
  %168 = load ptr, ptr %155, align 4
  %169 = getelementptr inbounds %struct.list_head, ptr %168, i32 0, i32 1
  store ptr %167, ptr %169, align 4
  store volatile ptr %168, ptr %167, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %155, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %166, align 4
  call void @kfree(ptr noundef %155) #6
  br label %175

170:                                              ; preds = %153
  %171 = lshr i32 %160, 13
  %172 = and i32 %171, 1
  %173 = xor i32 %172, 1
  %174 = or i32 %173, %154
  br label %175

175:                                              ; preds = %170, %165, %162, %153
  %176 = phi i32 [ %154, %153 ], [ %154, %165 ], [ %154, %162 ], [ %174, %170 ]
  %177 = icmp eq ptr %156, %13
  br i1 %177, label %178, label %153

178:                                              ; preds = %175
  %179 = icmp eq i32 %176, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %178, %150
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.19) #7
  br label %181

181:                                              ; preds = %180, %178, %146, %145, %2
  %182 = phi i32 [ 0, %2 ], [ -12, %145 ], [ %148, %146 ], [ 0, %180 ], [ 0, %178 ]
  ret i32 %182
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_common_swizzle(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_pci_get_max_link_speed(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %4 = icmp slt i32 %3, 0
  %5 = load i32, ptr %2, align 4
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %4, i1 true, i1 %6
  %8 = icmp ugt i32 %5, 4
  %9 = select i1 %7, i1 true, i1 %8
  %10 = select i1 %9, i32 -22, i32 %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_parse_one(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_swizzle_interrupt_pin(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_parse_raw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_pci_bus_resources(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pci_remap_iospace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_add_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_pci_range_parser_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_pci_range_parser_one(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_pci_range_to_resource(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_add_resource_offset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_pci_dma_range_parser_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_resource_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 2000, i32 1}
