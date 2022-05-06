; ModuleID = '/llk/IR/drivers/pci/remove.c_pt.bc'
source_filename = "../drivers/pci/remove.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_remove_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_remove_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pci_remove_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_stop_and_remove_bus_device:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_stop_and_remove_bus_device\22\09\09\09\09\09"
module asm "__kstrtabns_pci_stop_and_remove_bus_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_stop_and_remove_bus_device_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_stop_and_remove_bus_device_locked\22\09\09\09\09\09"
module asm "__kstrtabns_pci_stop_and_remove_bus_device_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_stop_root_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_stop_root_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pci_stop_root_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_remove_root_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_remove_root_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pci_remove_root_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [40 x i8], [0 x i32] }

@pci_bus_sem = external dso_local global %struct.rw_semaphore, align 4
@__kstrtab_pci_remove_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_remove_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_remove_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_remove_bus to i32), ptr @__kstrtab_pci_remove_bus, ptr @__kstrtabns_pci_remove_bus }, section "___ksymtab+pci_remove_bus", align 4
@__kstrtab_pci_stop_and_remove_bus_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_stop_and_remove_bus_device = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_stop_and_remove_bus_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_stop_and_remove_bus_device to i32), ptr @__kstrtab_pci_stop_and_remove_bus_device, ptr @__kstrtabns_pci_stop_and_remove_bus_device }, section "___ksymtab+pci_stop_and_remove_bus_device", align 4
@__kstrtab_pci_stop_and_remove_bus_device_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_stop_and_remove_bus_device_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_stop_and_remove_bus_device_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_stop_and_remove_bus_device_locked to i32), ptr @__kstrtab_pci_stop_and_remove_bus_device_locked, ptr @__kstrtabns_pci_stop_and_remove_bus_device_locked }, section "___ksymtab_gpl+pci_stop_and_remove_bus_device_locked", align 4
@__kstrtab_pci_stop_root_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_stop_root_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_stop_root_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_stop_root_bus to i32), ptr @__kstrtab_pci_stop_root_bus, ptr @__kstrtabns_pci_stop_root_bus }, section "___ksymtab_gpl+pci_stop_root_bus", align 4
@__kstrtab_pci_remove_root_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_remove_root_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_remove_root_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_remove_root_bus to i32), ptr @__kstrtab_pci_remove_root_bus, ptr @__kstrtabns_pci_remove_root_bus }, section "___ksymtab_gpl+pci_remove_root_bus", align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_pci_remove_bus, ptr @__ksymtab_pci_remove_root_bus, ptr @__ksymtab_pci_stop_and_remove_bus_device, ptr @__ksymtab_pci_stop_and_remove_bus_device_locked, ptr @__ksymtab_pci_stop_root_bus], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_remove_bus(ptr noundef %0) #0 {
  %2 = tail call i32 @pci_proc_detach_bus(ptr noundef %0) #2
  tail call void @down_write(ptr noundef nonnull @pci_bus_sem) #2
  %3 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %3, align 4
  tail call void @pci_bus_release_busn_res(ptr noundef %0) #2
  tail call void @up_write(ptr noundef nonnull @pci_bus_sem) #2
  %7 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.pci_ops, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  tail call void %10(ptr noundef %0) #2
  br label %13

13:                                               ; preds = %12, %1
  tail call void @pcibios_remove_bus(ptr noundef %0) #2
  %14 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 21
  tail call void @device_unregister(ptr noundef %14) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_proc_detach_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bus_release_busn_res(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcibios_remove_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_stop_and_remove_bus_device(ptr noundef %0) #0 {
  tail call fastcc void @pci_stop_bus_device(ptr noundef %0)
  tail call fastcc void @pci_remove_bus_device(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pci_stop_bus_device(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 3
  %7 = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %6
  br i1 %9, label %15, label %10

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %13, %10 ], [ %8, %5 ]
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call fastcc void @pci_stop_bus_device(ptr noundef %11)
  %14 = icmp eq ptr %13, %6
  br i1 %14, label %15, label %10

15:                                               ; preds = %10, %5, %1
  tail call void @pci_pme_active(ptr noundef %0, i1 noundef zeroext false) #2
  %16 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 65
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void @device_release_driver(ptr noundef %21) #2
  %22 = tail call i32 @pci_proc_detach_device(ptr noundef %0) #2
  tail call void @pci_remove_sysfs_dev_files(ptr noundef %0) #2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %16) #2
  br label %23

23:                                               ; preds = %20, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pci_remove_bus_device(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %13, label %9

9:                                                ; preds = %9, %5
  %10 = phi ptr [ %11, %9 ], [ %7, %5 ]
  %11 = load ptr, ptr %10, align 8
  tail call fastcc void @pci_remove_bus_device(ptr noundef %10)
  %12 = icmp eq ptr %11, %6
  br i1 %12, label %13, label %9

13:                                               ; preds = %9, %5
  tail call void @pci_remove_bus(ptr noundef nonnull %3)
  store ptr null, ptr %2, align 4
  br label %14

14:                                               ; preds = %13, %1
  %15 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %101, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void @device_del(ptr noundef %19) #2
  tail call void @down_write(ptr noundef nonnull @pci_bus_sem) #2
  %20 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  tail call void @up_write(ptr noundef nonnull @pci_bus_sem) #2
  tail call void @pcie_aspm_exit_link_state(ptr noundef %0) #2
  tail call void @pci_bridge_d3_update(ptr noundef %0) #2
  %24 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  %29 = tail call i32 @release_resource(ptr noundef %28) #2
  br label %30

30:                                               ; preds = %27, %18
  %31 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1
  %36 = tail call i32 @release_resource(ptr noundef %35) #2
  br label %37

37:                                               ; preds = %34, %30
  %38 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2
  %43 = tail call i32 @release_resource(ptr noundef %42) #2
  br label %44

44:                                               ; preds = %41, %37
  %45 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3
  %50 = tail call i32 @release_resource(ptr noundef %49) #2
  br label %51

51:                                               ; preds = %48, %44
  %52 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4
  %57 = tail call i32 @release_resource(ptr noundef %56) #2
  br label %58

58:                                               ; preds = %55, %51
  %59 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5, i32 5
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5
  %64 = tail call i32 @release_resource(ptr noundef %63) #2
  br label %65

65:                                               ; preds = %62, %58
  %66 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 6, i32 5
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 6
  %71 = tail call i32 @release_resource(ptr noundef %70) #2
  br label %72

72:                                               ; preds = %69, %65
  %73 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 7, i32 5
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 7
  %78 = tail call i32 @release_resource(ptr noundef %77) #2
  br label %79

79:                                               ; preds = %76, %72
  %80 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 8, i32 5
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 8
  %85 = tail call i32 @release_resource(ptr noundef %84) #2
  br label %86

86:                                               ; preds = %83, %79
  %87 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 9, i32 5
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 9
  %92 = tail call i32 @release_resource(ptr noundef %91) #2
  br label %93

93:                                               ; preds = %90, %86
  %94 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 10, i32 5
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 10
  %99 = tail call i32 @release_resource(ptr noundef %98) #2
  br label %100

100:                                              ; preds = %97, %93
  tail call void @put_device(ptr noundef %19) #2
  br label %101

101:                                              ; preds = %100, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_stop_and_remove_bus_device_locked(ptr noundef %0) #0 {
  tail call void @pci_lock_rescan_remove() #2
  tail call fastcc void @pci_stop_bus_device(ptr noundef %0) #2
  tail call fastcc void @pci_remove_bus_device(ptr noundef %0) #2
  tail call void @pci_unlock_rescan_remove() #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_lock_rescan_remove() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unlock_rescan_remove() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_stop_root_bus(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 20
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 3, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %8
  br i1 %11, label %17, label %12

12:                                               ; preds = %12, %5
  %13 = phi ptr [ %15, %12 ], [ %10, %5 ]
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call fastcc void @pci_stop_bus_device(ptr noundef %13)
  %16 = icmp eq ptr %15, %8
  br i1 %16, label %17, label %12

17:                                               ; preds = %12, %5
  tail call void @device_release_driver(ptr noundef %7) #2
  br label %18

18:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_release_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_remove_root_bus(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 20
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %15, label %11

11:                                               ; preds = %11, %5
  %12 = phi ptr [ %13, %11 ], [ %9, %5 ]
  %13 = load ptr, ptr %12, align 8
  tail call fastcc void @pci_remove_bus_device(ptr noundef %12)
  %14 = icmp eq ptr %13, %8
  br i1 %14, label %15, label %11

15:                                               ; preds = %11, %5
  tail call void @pci_remove_bus(ptr noundef %0)
  %16 = getelementptr inbounds %struct.pci_host_bridge, ptr %7, i32 0, i32 1
  store ptr null, ptr %16, align 8
  tail call void @device_del(ptr noundef %7) #2
  br label %17

17:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_pme_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_proc_detach_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_remove_sysfs_dev_files(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_aspm_exit_link_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_bridge_d3_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @release_resource(ptr noundef) local_unnamed_addr #1

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
