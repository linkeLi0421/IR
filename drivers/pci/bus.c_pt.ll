; ModuleID = '/llk/IR/drivers/pci/bus.c_pt.bc'
source_filename = "../drivers/pci/bus.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_add_resource_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_add_resource_offset\22\09\09\09\09\09"
module asm "__kstrtabns_pci_add_resource_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_add_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_add_resource\22\09\09\09\09\09"
module asm "__kstrtabns_pci_add_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_free_resource_list:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_free_resource_list\22\09\09\09\09\09"
module asm "__kstrtabns_pci_free_resource_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bus_resource_n:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bus_resource_n\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bus_resource_n:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_request_pci_bus_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_request_pci_bus_resources\22\09\09\09\09\09"
module asm "__kstrtabns_devm_request_pci_bus_resources:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bus_alloc_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bus_alloc_resource\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bus_alloc_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bus_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bus_add_device\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bus_add_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bus_add_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bus_add_devices\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bus_add_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_walk_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_walk_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pci_walk_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.resource_entry = type { %struct.list_head, ptr, i32, %struct.resource }
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
%struct.pci_bus_resource = type { %struct.list_head, ptr, i32 }
%struct.pci_bus_region = type { i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }

@.str = private unnamed_addr constant [41 x i8] c"\013PCI: can't add host bridge window %pR\0A\00", align 1
@__kstrtab_pci_add_resource_offset = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_add_resource_offset = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_add_resource_offset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_add_resource_offset to i32), ptr @__kstrtab_pci_add_resource_offset, ptr @__kstrtabns_pci_add_resource_offset }, section "___ksymtab+pci_add_resource_offset", align 4
@__kstrtab_pci_add_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_add_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_add_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_add_resource to i32), ptr @__kstrtab_pci_add_resource, ptr @__kstrtabns_pci_add_resource }, section "___ksymtab+pci_add_resource", align 4
@__kstrtab_pci_free_resource_list = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_free_resource_list = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_free_resource_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_free_resource_list to i32), ptr @__kstrtab_pci_free_resource_list, ptr @__kstrtabns_pci_free_resource_list }, section "___ksymtab+pci_free_resource_list", align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"can't add %pR resource\0A\00", align 1
@__kstrtab_pci_bus_resource_n = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bus_resource_n = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bus_resource_n = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bus_resource_n to i32), ptr @__kstrtab_pci_bus_resource_n, ptr @__kstrtabns_pci_bus_resource_n }, section "___ksymtab_gpl+pci_bus_resource_n", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@__kstrtab_devm_request_pci_bus_resources = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_request_pci_bus_resources = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_request_pci_bus_resources = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_request_pci_bus_resources to i32), ptr @__kstrtab_devm_request_pci_bus_resources, ptr @__kstrtabns_devm_request_pci_bus_resources }, section "___ksymtab_gpl+devm_request_pci_bus_resources", align 4
@__kstrtab_pci_bus_alloc_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bus_alloc_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bus_alloc_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bus_alloc_resource to i32), ptr @__kstrtab_pci_bus_alloc_resource, ptr @__kstrtabns_pci_bus_alloc_resource }, section "___ksymtab+pci_bus_alloc_resource", align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"%pR clipped to %pR\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"device attach failed (%d)\0A\00", align 1
@__kstrtab_pci_bus_add_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bus_add_device = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bus_add_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bus_add_device to i32), ptr @__kstrtab_pci_bus_add_device, ptr @__kstrtabns_pci_bus_add_device }, section "___ksymtab_gpl+pci_bus_add_device", align 4
@__kstrtab_pci_bus_add_devices = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bus_add_devices = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bus_add_devices = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bus_add_devices to i32), ptr @__kstrtab_pci_bus_add_devices, ptr @__kstrtabns_pci_bus_add_devices }, section "___ksymtab+pci_bus_add_devices", align 4
@pci_bus_sem = external dso_local global %struct.rw_semaphore, align 4
@__kstrtab_pci_walk_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_walk_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_walk_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_walk_bus to i32), ptr @__kstrtab_pci_walk_bus, ptr @__kstrtabns_pci_walk_bus }, section "___ksymtab_gpl+pci_walk_bus", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_devm_request_pci_bus_resources, ptr @__ksymtab_pci_add_resource, ptr @__ksymtab_pci_add_resource_offset, ptr @__ksymtab_pci_bus_add_device, ptr @__ksymtab_pci_bus_add_devices, ptr @__ksymtab_pci_bus_alloc_resource, ptr @__ksymtab_pci_bus_resource_n, ptr @__ksymtab_pci_free_resource_list, ptr @__ksymtab_pci_walk_bus], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_add_resource_offset(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @resource_list_create_entry(ptr noundef %1, i32 noundef 0) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %1) #10
  br label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.resource_entry, ptr %4, i32 0, i32 2
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  store ptr %4, ptr %10, align 4
  store ptr %0, ptr %4, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %4, ptr %11, align 4
  br label %13

13:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @resource_list_create_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_add_resource(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @resource_list_create_entry(ptr noundef %1, i32 noundef 0) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %1) #10
  br label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.resource_entry, ptr %3, i32 0, i32 2
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  store ptr %3, ptr %9, align 4
  store ptr %0, ptr %3, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  store volatile ptr %3, ptr %10, align 4
  br label %12

12:                                               ; preds = %7, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_free_resource_list(ptr noundef %0) #0 {
  tail call void @resource_list_free(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @resource_list_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_bus_add_resource(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 16) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef %1) #10
  br label %16

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.pci_bus_resource, ptr %5, i32 0, i32 1
  store ptr %1, ptr %10, align 8
  %11 = getelementptr inbounds %struct.pci_bus_resource, ptr %5, i32 0, i32 2
  store i32 %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 7
  %13 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 7, i32 1
  %14 = load ptr, ptr %13, align 4
  store ptr %5, ptr %13, align 4
  store ptr %12, ptr %5, align 8
  %15 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  store volatile ptr %5, ptr %14, align 4
  br label %16

16:                                               ; preds = %9, %7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @pci_bus_resource_n(ptr noundef readonly %0, i32 noundef %1) #4 {
  %3 = icmp slt i32 %1, 4
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = getelementptr %struct.pci_bus, ptr %0, i32 0, i32 6, i32 %1
  br label %22

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %25, label %10

10:                                               ; preds = %6
  %11 = add nsw i32 %1, -4
  br label %16

12:                                               ; preds = %16
  %13 = add i32 %18, -1
  %14 = load ptr, ptr %17, align 4
  %15 = icmp eq ptr %14, %7
  br i1 %15, label %25, label %16

16:                                               ; preds = %12, %10
  %17 = phi ptr [ %14, %12 ], [ %8, %10 ]
  %18 = phi i32 [ %13, %12 ], [ %11, %10 ]
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %12

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.pci_bus_resource, ptr %17, i32 0, i32 1
  br label %22

22:                                               ; preds = %20, %4
  %23 = phi ptr [ %21, %20 ], [ %5, %4 ]
  %24 = load ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %12, %6
  %26 = phi ptr [ null, %6 ], [ %24, %22 ], [ null, %12 ]
  ret ptr %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_bus_remove_resources(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 40
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false)
  %3 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %13, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %8, %6 ], [ %4, %1 ]
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  store volatile ptr %8, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  tail call void @kfree(ptr noundef %7) #9
  %12 = icmp eq ptr %8, %3
  br i1 %12, label %13, label %6

13:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_request_pci_bus_resources(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %20, label %5

5:                                                ; preds = %17, %2
  %6 = phi ptr [ %18, %17 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.resource_entry, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 7936
  switch i32 %11, label %17 [
    i32 256, label %13
    i32 512, label %12
  ]

12:                                               ; preds = %5
  br label %13

13:                                               ; preds = %12, %5
  %14 = phi ptr [ @iomem_resource, %12 ], [ @ioport_resource, %5 ]
  %15 = tail call i32 @devm_request_resource(ptr noundef %0, ptr noundef nonnull %14, ptr noundef %8) #9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %5
  %18 = load ptr, ptr %6, align 4
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %20, label %5

20:                                               ; preds = %17, %13, %2
  %21 = phi i32 [ 0, %2 ], [ 0, %17 ], [ %15, %13 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_resource(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_bus_alloc_resource(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) #0 {
  %9 = alloca %struct.pci_bus_region, align 8
  %10 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %10, i8 0, i32 32, i1 false) #9, !annotation !8
  %11 = or i32 %5, 7936
  %12 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 7
  %13 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 3
  %14 = getelementptr inbounds %struct.pci_bus_region, ptr %9, i32 0, i32 1
  %15 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 1
  br label %16

16:                                               ; preds = %74, %8
  %17 = phi i32 [ 0, %8 ], [ %75, %74 ]
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = getelementptr %struct.pci_bus, ptr %0, i32 0, i32 6, i32 %17
  br label %36

21:                                               ; preds = %16
  %22 = load ptr, ptr %12, align 4
  %23 = icmp eq ptr %22, %12
  br i1 %23, label %39, label %24

24:                                               ; preds = %21
  %25 = add nsw i32 %17, -4
  br label %30

26:                                               ; preds = %30
  %27 = add i32 %32, -1
  %28 = load ptr, ptr %31, align 4
  %29 = icmp eq ptr %28, %12
  br i1 %29, label %39, label %30

30:                                               ; preds = %26, %24
  %31 = phi ptr [ %28, %26 ], [ %22, %24 ]
  %32 = phi i32 [ %27, %26 ], [ %25, %24 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %26

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.pci_bus_resource, ptr %31, i32 0, i32 1
  br label %36

36:                                               ; preds = %34, %19
  %37 = phi ptr [ %35, %34 ], [ %20, %19 ]
  %38 = load ptr, ptr %37, align 4
  br label %39

39:                                               ; preds = %36, %26, %21
  %40 = phi ptr [ null, %21 ], [ %38, %36 ], [ null, %26 ]
  %41 = icmp ne ptr %40, null
  %42 = or i1 %18, %41
  br i1 %42, label %43, label %76

43:                                               ; preds = %39
  br i1 %41, label %44, label %74

44:                                               ; preds = %43
  %45 = load i32, ptr %13, align 4
  %46 = getelementptr inbounds %struct.resource, ptr %40, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = xor i32 %47, %45
  %49 = and i32 %48, %11
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %44
  %52 = and i32 %47, 8192
  %53 = icmp ne i32 %52, 0
  %54 = and i32 %45, 8192
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %53, i1 %55, i1 false
  br i1 %56, label %74, label %57

57:                                               ; preds = %51
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %10, ptr noundef nonnull align 4 dereferenceable(32) %40, i32 32, i1 false) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  store i64 0, ptr %9, align 8, !annotation !8
  call void @pcibios_resource_to_bus(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %10) #9
  %58 = load i32, ptr %9, align 8
  %59 = load i32, ptr %14, align 4
  %60 = icmp ult i32 %59, %58
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, ptr %10, align 4
  %63 = add i32 %62, -1
  store i32 %63, ptr %15, align 4
  br label %67

64:                                               ; preds = %57
  call void @pcibios_bus_to_resource(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %9) #9
  %65 = load i32, ptr %10, align 4
  %66 = load i32, ptr %15, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = phi i32 [ %63, %61 ], [ %66, %64 ]
  %69 = phi i32 [ %62, %61 ], [ %65, %64 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, i32 %4, i32 %69
  %72 = call i32 @allocate_resource(ptr noundef nonnull %40, ptr noundef %1, i32 noundef %2, i32 noundef %71, i32 noundef %68, i32 noundef %3, ptr noundef %6, ptr noundef %7) #9
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %67, %51, %44, %43
  %75 = add i32 %17, 1
  br label %16

76:                                               ; preds = %67, %39
  %77 = phi i32 [ -12, %39 ], [ 0, %67 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #9
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @pci_bus_clip_resource(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.resource, align 4
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef align 4 dereferenceable(32) %6, i32 32, i1 false)
  %7 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 7
  %8 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1, i32 3
  %9 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1, i32 1
  br label %10

10:                                               ; preds = %64, %2
  %11 = phi i32 [ 0, %2 ], [ %65, %64 ]
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = getelementptr %struct.pci_bus, ptr %5, i32 0, i32 6, i32 %11
  br label %30

15:                                               ; preds = %10
  %16 = load ptr, ptr %7, align 4
  %17 = icmp eq ptr %16, %7
  br i1 %17, label %33, label %18

18:                                               ; preds = %15
  %19 = add nsw i32 %11, -4
  br label %24

20:                                               ; preds = %24
  %21 = add i32 %26, -1
  %22 = load ptr, ptr %25, align 4
  %23 = icmp eq ptr %22, %7
  br i1 %23, label %33, label %24

24:                                               ; preds = %20, %18
  %25 = phi ptr [ %22, %20 ], [ %16, %18 ]
  %26 = phi i32 [ %21, %20 ], [ %19, %18 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %20

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.pci_bus_resource, ptr %25, i32 0, i32 1
  br label %30

30:                                               ; preds = %28, %13
  %31 = phi ptr [ %29, %28 ], [ %14, %13 ]
  %32 = load ptr, ptr %31, align 4
  br label %33

33:                                               ; preds = %30, %20, %15
  %34 = phi ptr [ null, %15 ], [ %32, %30 ], [ null, %20 ]
  %35 = icmp ne ptr %34, null
  %36 = or i1 %12, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %33
  br i1 %35, label %38, label %64

38:                                               ; preds = %37
  %39 = load i32, ptr %8, align 4
  %40 = getelementptr inbounds %struct.resource, ptr %34, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = xor i32 %41, %39
  %43 = and i32 %42, 7936
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %38
  %46 = load i32, ptr %34, align 4
  %47 = load i32, ptr %6, align 4
  %48 = tail call i32 @llvm.umax.i32(i32 %46, i32 %47)
  %49 = getelementptr inbounds %struct.resource, ptr %34, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = load i32, ptr %9, align 4
  %52 = tail call i32 @llvm.umin.i32(i32 %50, i32 %51)
  %53 = icmp ugt i32 %48, %52
  br i1 %53, label %64, label %54

54:                                               ; preds = %45
  %55 = icmp ult i32 %47, %46
  %56 = icmp ugt i32 %51, %50
  %57 = select i1 %55, i1 true, i1 %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  store i32 %48, ptr %6, align 4
  store i32 %52, ptr %9, align 4
  %59 = and i32 %39, -536870913
  store i32 %59, ptr %8, align 4
  %60 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, -536870913
  store i32 %62, ptr %60, align 4
  %63 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %63, ptr noundef nonnull @.str.2, ptr noundef nonnull %3, ptr noundef %6) #10
  br label %66

64:                                               ; preds = %45, %38, %37
  %65 = add i32 %11, 1
  br label %10

66:                                               ; preds = %58, %54, %33
  %67 = phi i1 [ true, %58 ], [ false, %54 ], [ false, %33 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  ret i1 %67
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @pcibios_resource_survey_bus(ptr noundef %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @pcibios_bus_add_device(ptr noundef %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_bus_add_device(ptr noundef %0) #0 {
  tail call void @pcibios_bus_add_device(ptr noundef %0)
  tail call void @pci_fixup_device(i32 noundef 2, ptr noundef %0) #9
  %2 = tail call i32 @pci_create_sysfs_dev_files(ptr noundef %0) #9
  %3 = tail call i32 @pci_proc_attach_device(ptr noundef %0) #9
  tail call void @pci_bridge_d3_update(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 48
  store i8 1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %6 = tail call i32 @device_attach(ptr noundef %5) #9
  %7 = icmp slt i32 %6, 0
  %8 = icmp ne i32 %6, -517
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.3, i32 noundef %6) #10
  br label %11

11:                                               ; preds = %10, %1
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 65
  tail call void @_set_bit(i32 noundef 0, ptr noundef %12) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_fixup_device(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_create_sysfs_dev_files(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_proc_attach_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bridge_d3_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_bus_add_devices(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %32, label %8

5:                                                ; preds = %15
  %6 = load ptr, ptr %2, align 4
  %7 = icmp eq ptr %6, %2
  br i1 %7, label %32, label %18

8:                                                ; preds = %15, %1
  %9 = phi ptr [ %16, %15 ], [ %3, %1 ]
  %10 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 65
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  tail call void @pci_bus_add_device(ptr noundef %9)
  br label %15

15:                                               ; preds = %14, %8
  %16 = load ptr, ptr %9, align 4
  %17 = icmp eq ptr %16, %2
  br i1 %17, label %5, label %8

18:                                               ; preds = %29, %5
  %19 = phi ptr [ %30, %29 ], [ %6, %5 ]
  %20 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 65
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @pci_bus_add_devices(ptr noundef nonnull %26)
  br label %29

29:                                               ; preds = %28, %24, %18
  %30 = load ptr, ptr %19, align 4
  %31 = icmp eq ptr %30, %2
  br i1 %31, label %32, label %18

32:                                               ; preds = %29, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_walk_bus(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  tail call void @down_read(ptr noundef nonnull @pci_bus_sem) #9
  %4 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %19, %3
  %7 = phi ptr [ %5, %3 ], [ %20, %19 ]
  %8 = phi ptr [ %0, %3 ], [ %21, %19 ]
  %9 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 3
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = icmp eq ptr %8, %0
  br i1 %12, label %32, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  br label %19

19:                                               ; preds = %22, %13
  %20 = phi ptr [ %16, %13 ], [ %29, %22 ]
  %21 = phi ptr [ %18, %13 ], [ %28, %22 ]
  br label %6

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  %26 = getelementptr inbounds %struct.pci_bus, ptr %24, i32 0, i32 3
  %27 = select i1 %25, ptr %7, ptr %26
  %28 = select i1 %25, ptr %8, ptr %24
  %29 = load ptr, ptr %27, align 4
  %30 = tail call i32 %1(ptr noundef %7, ptr noundef %2) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %19, label %32

32:                                               ; preds = %22, %11
  tail call void @up_read(ptr noundef nonnull @pci_bus_sem) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_bus_get(ptr noundef returned %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 21
  %5 = tail call ptr @get_device(ptr noundef %4) #9
  br label %6

6:                                                ; preds = %3, %1
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_bus_put(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 21
  tail call void @put_device(ptr noundef %4) #9
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @allocate_resource(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_resource_to_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_bus_to_resource(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
