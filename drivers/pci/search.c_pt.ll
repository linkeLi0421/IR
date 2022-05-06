; ModuleID = '/llk/IR/drivers/pci/search.c_pt.bc'
source_filename = "../drivers/pci/search.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_find_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_find_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pci_find_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_find_next_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_find_next_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pci_find_next_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_get_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_get_slot\22\09\09\09\09\09"
module asm "__kstrtabns_pci_get_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_get_domain_bus_and_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_get_domain_bus_and_slot\22\09\09\09\09\09"
module asm "__kstrtabns_pci_get_domain_bus_and_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_get_subsys:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_get_subsys\22\09\09\09\09\09"
module asm "__kstrtabns_pci_get_subsys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_get_device:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_get_device\22\09\09\09\09\09"
module asm "__kstrtabns_pci_get_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_get_class:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_get_class\22\09\09\09\09\09"
module asm "__kstrtabns_pci_get_class:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_dev_present:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_dev_present\22\09\09\09\09\09"
module asm "__kstrtabns_pci_dev_present:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@pci_bus_sem = dso_local global %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pci_bus_sem, i64 16), ptr getelementptr (i8, ptr @pci_bus_sem, i64 16) } }, align 4
@__kstrtab_pci_find_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_find_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_find_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_find_bus to i32), ptr @__kstrtab_pci_find_bus, ptr @__kstrtabns_pci_find_bus }, section "___ksymtab+pci_find_bus", align 4
@pci_root_buses = external dso_local global %struct.list_head, align 4
@__kstrtab_pci_find_next_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_find_next_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_find_next_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_find_next_bus to i32), ptr @__kstrtab_pci_find_next_bus, ptr @__kstrtabns_pci_find_next_bus }, section "___ksymtab+pci_find_next_bus", align 4
@__kstrtab_pci_get_slot = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_get_slot = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_get_slot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_get_slot to i32), ptr @__kstrtab_pci_get_slot, ptr @__kstrtabns_pci_get_slot }, section "___ksymtab+pci_get_slot", align 4
@__kstrtab_pci_get_domain_bus_and_slot = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_get_domain_bus_and_slot = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_get_domain_bus_and_slot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_get_domain_bus_and_slot to i32), ptr @__kstrtab_pci_get_domain_bus_and_slot, ptr @__kstrtabns_pci_get_domain_bus_and_slot }, section "___ksymtab+pci_get_domain_bus_and_slot", align 4
@__kstrtab_pci_get_subsys = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_get_subsys = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_get_subsys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_get_subsys to i32), ptr @__kstrtab_pci_get_subsys, ptr @__kstrtabns_pci_get_subsys }, section "___ksymtab+pci_get_subsys", align 4
@__kstrtab_pci_get_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_get_device = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_get_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_get_device to i32), ptr @__kstrtab_pci_get_device, ptr @__kstrtabns_pci_get_device }, section "___ksymtab+pci_get_device", align 4
@__kstrtab_pci_get_class = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_get_class = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_get_class = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_get_class to i32), ptr @__kstrtab_pci_get_class, ptr @__kstrtabns_pci_get_class }, section "___ksymtab+pci_get_class", align 4
@__kstrtab_pci_dev_present = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_dev_present = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_dev_present = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_dev_present to i32), ptr @__kstrtab_pci_dev_present, ptr @__kstrtabns_pci_dev_present }, section "___ksymtab+pci_dev_present", align 4
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_pci_dev_present, ptr @__ksymtab_pci_find_bus, ptr @__ksymtab_pci_find_next_bus, ptr @__ksymtab_pci_get_class, ptr @__ksymtab_pci_get_device, ptr @__ksymtab_pci_get_domain_bus_and_slot, ptr @__ksymtab_pci_get_slot, ptr @__ksymtab_pci_get_subsys], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_for_each_dma_alias(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @pci_real_dma_dev(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.pci_bus, ptr %6, i32 0, i32 12
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 8
  %11 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %10, %12
  %14 = trunc i32 %13 to i16
  %15 = tail call i32 %1(ptr noundef %4, i16 noundef zeroext %14, ptr noundef %2) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %118

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 25
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21, !prof !8

21:                                               ; preds = %17
  %22 = tail call i32 @_find_next_bit_le(ptr noundef nonnull %19, i32 noundef 256, i32 noundef 0) #6
  %23 = icmp ult i32 %22, 256
  br i1 %23, label %24, label %40

24:                                               ; preds = %35, %21
  %25 = phi i32 [ %38, %35 ], [ %22, %21 ]
  %26 = load ptr, ptr %5, align 8
  %27 = getelementptr inbounds %struct.pci_bus, ptr %26, i32 0, i32 12
  %28 = load i8, ptr %27, align 4
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = or i32 %30, %25
  %32 = trunc i32 %31 to i16
  %33 = tail call i32 %1(ptr noundef %4, i16 noundef zeroext %32, ptr noundef %2) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %118

35:                                               ; preds = %24
  %36 = load ptr, ptr %18, align 4
  %37 = add nuw nsw i32 %25, 1
  %38 = tail call i32 @_find_next_bit_le(ptr noundef %36, i32 noundef 256, i32 noundef %37) #6
  %39 = icmp ult i32 %38, 256
  br i1 %39, label %24, label %40

40:                                               ; preds = %35, %21, %17
  %41 = load ptr, ptr %5, align 8
  %42 = getelementptr inbounds %struct.pci_bus, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %118, label %45

45:                                               ; preds = %113, %40
  %46 = phi ptr [ %115, %113 ], [ %42, %40 ]
  %47 = phi ptr [ %114, %113 ], [ %41, %40 ]
  %48 = getelementptr inbounds %struct.pci_bus, ptr %47, i32 0, i32 4
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %113, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 50
  %53 = load i16, ptr %52, align 2
  %54 = and i16 %53, 512
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %118

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 18
  %58 = load i8, ptr %57, align 4
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %88, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 24
  %62 = load i16, ptr %61, align 2
  %63 = lshr i16 %62, 4
  %64 = and i16 %63, 15
  %65 = zext i16 %64 to i32
  switch i32 %65, label %113 [
    i32 8, label %75
    i32 7, label %66
  ]

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.pci_bus, ptr %68, i32 0, i32 12
  %70 = load i8, ptr %69, align 4
  %71 = zext i8 %70 to i16
  %72 = shl nuw i16 %71, 8
  %73 = tail call i32 %1(ptr noundef nonnull %49, i16 noundef zeroext %72, ptr noundef %2) #6
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %113, label %118

75:                                               ; preds = %60
  %76 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 1
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.pci_bus, ptr %77, i32 0, i32 12
  %79 = load i8, ptr %78, align 4
  %80 = zext i8 %79 to i32
  %81 = shl nuw nsw i32 %80, 8
  %82 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 6
  %83 = load i32, ptr %82, align 4
  %84 = or i32 %81, %83
  %85 = trunc i32 %84 to i16
  %86 = tail call i32 %1(ptr noundef nonnull %49, i16 noundef zeroext %85, ptr noundef %2) #6
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %113, label %118

88:                                               ; preds = %56
  %89 = and i16 %53, 32
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.pci_bus, ptr %93, i32 0, i32 12
  %95 = load i8, ptr %94, align 4
  %96 = zext i8 %95 to i16
  %97 = shl nuw i16 %96, 8
  br label %109

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 1
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr inbounds %struct.pci_bus, ptr %100, i32 0, i32 12
  %102 = load i8, ptr %101, align 4
  %103 = zext i8 %102 to i32
  %104 = shl nuw nsw i32 %103, 8
  %105 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 6
  %106 = load i32, ptr %105, align 4
  %107 = or i32 %104, %106
  %108 = trunc i32 %107 to i16
  br label %109

109:                                              ; preds = %98, %91
  %110 = phi i16 [ %108, %98 ], [ %97, %91 ]
  %111 = tail call i32 %1(ptr noundef nonnull %49, i16 noundef zeroext %110, ptr noundef %2) #6
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %109, %75, %66, %60, %45
  %114 = load ptr, ptr %46, align 8
  %115 = getelementptr inbounds %struct.pci_bus, ptr %114, i32 0, i32 1
  %116 = load ptr, ptr %115, align 8
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %45

118:                                              ; preds = %113, %109, %75, %66, %51, %40, %24, %3
  %119 = phi i32 [ %15, %3 ], [ 0, %40 ], [ 0, %113 ], [ %86, %75 ], [ %73, %66 ], [ %111, %109 ], [ 0, %51 ], [ %33, %24 ]
  ret i32 %119
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_real_dma_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_find_bus(i32 noundef %0, i32 noundef %1) #0 {
  %3 = trunc i32 %1 to i8
  tail call void @down_read(ptr noundef nonnull @pci_bus_sem) #6
  %4 = load ptr, ptr @pci_root_buses, align 4
  %5 = icmp eq ptr %4, @pci_root_buses
  tail call void @up_read(ptr noundef nonnull @pci_bus_sem) #6
  %6 = icmp eq ptr %4, null
  %7 = or i1 %5, %6
  br i1 %7, label %23, label %8

8:                                                ; preds = %13, %2
  %9 = phi ptr [ %16, %13 ], [ %4, %2 ]
  %10 = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 16
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, %0
  br i1 %12, label %20, label %13

13:                                               ; preds = %20, %8
  tail call void @down_read(ptr noundef nonnull @pci_bus_sem) #6
  %14 = icmp eq ptr %9, null
  %15 = select i1 %14, ptr @pci_root_buses, ptr %9
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, @pci_root_buses
  tail call void @up_read(ptr noundef nonnull @pci_bus_sem) #6
  %18 = icmp eq ptr %16, null
  %19 = or i1 %17, %18
  br i1 %19, label %23, label %8

20:                                               ; preds = %8
  %21 = tail call fastcc ptr @pci_do_find_bus(ptr noundef nonnull %9, i8 noundef zeroext %3)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %13, label %23

23:                                               ; preds = %20, %13, %2
  %24 = phi ptr [ null, %2 ], [ null, %13 ], [ %21, %20 ]
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_find_next_bus(ptr noundef readonly %0) #0 {
  tail call void @down_read(ptr noundef nonnull @pci_bus_sem) #6
  %2 = icmp eq ptr %0, null
  %3 = select i1 %2, ptr @pci_root_buses, ptr %0
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @pci_root_buses
  %6 = select i1 %5, ptr null, ptr %4
  tail call void @up_read(ptr noundef nonnull @pci_bus_sem) #6
  ret ptr %6
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc ptr @pci_do_find_bus(ptr noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 12
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, %1
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 2
  br label %8

8:                                                ; preds = %12, %6
  %9 = phi ptr [ %7, %6 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = tail call fastcc ptr @pci_do_find_bus(ptr noundef %10, i8 noundef zeroext %1)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %8, label %15

15:                                               ; preds = %12, %8, %2
  %16 = phi ptr [ %0, %2 ], [ null, %8 ], [ %13, %12 ]
  ret ptr %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_get_slot(ptr noundef readonly %0, i32 noundef %1) #0 {
  tail call void @down_read(ptr noundef nonnull @pci_bus_sem) #6
  %3 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 3
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %4

12:                                               ; preds = %8, %4
  %13 = phi ptr [ %6, %8 ], [ null, %4 ]
  %14 = tail call ptr @pci_dev_get(ptr noundef %13) #6
  tail call void @up_read(ptr noundef nonnull @pci_bus_sem) #6
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_get_domain_bus_and_slot(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.pci_device_id, align 4
  %5 = getelementptr inbounds %struct.pci_device_id, ptr %4, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 -1, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false) #6
  %6 = call ptr @bus_find_device(ptr noundef nonnull @pci_bus_type, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull @match_pci_dev_by_id) #6
  %7 = icmp eq ptr %6, null
  %8 = getelementptr i8, ptr %6, i32 -136
  call void @pci_dev_put(ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #6
  %9 = icmp eq ptr %8, null
  %10 = or i1 %7, %9
  br i1 %10, label %37, label %11

11:                                               ; preds = %28, %3
  %12 = phi ptr [ %34, %28 ], [ %8, %3 ]
  %13 = phi ptr [ %32, %28 ], [ %6, %3 ]
  %14 = getelementptr i8, ptr %13, i32 -128
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.pci_bus, ptr %15, i32 0, i32 16
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, %0
  br i1 %18, label %19, label %28

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.pci_bus, ptr %15, i32 0, i32 12
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %13, i32 -108
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %2
  br i1 %27, label %37, label %28

28:                                               ; preds = %24, %19, %11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #6
  %29 = icmp eq ptr %12, null
  %30 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %31 = select i1 %29, ptr null, ptr %30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 -1, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false) #6
  %32 = call ptr @bus_find_device(ptr noundef nonnull @pci_bus_type, ptr noundef %31, ptr noundef nonnull %4, ptr noundef nonnull @match_pci_dev_by_id) #6
  %33 = icmp eq ptr %32, null
  %34 = getelementptr i8, ptr %32, i32 -136
  call void @pci_dev_put(ptr noundef %12) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #6
  %35 = icmp eq ptr %34, null
  %36 = or i1 %33, %35
  br i1 %36, label %37, label %11

37:                                               ; preds = %28, %24, %3
  %38 = phi ptr [ null, %3 ], [ %12, %24 ], [ null, %28 ]
  ret ptr %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_get_device(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.pci_device_id, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #6
  store i32 %0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.pci_device_id, ptr %4, i32 0, i32 1
  store i32 %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.pci_device_id, ptr %4, i32 0, i32 2
  store i32 -1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.pci_device_id, ptr %4, i32 0, i32 3
  store i32 -1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.pci_device_id, ptr %4, i32 0, i32 4
  %9 = icmp eq ptr %2, null
  %10 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %11 = select i1 %9, ptr null, ptr %10
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %8, i8 0, i64 16, i1 false) #6
  %12 = call ptr @bus_find_device(ptr noundef nonnull @pci_bus_type, ptr noundef %11, ptr noundef nonnull %4, ptr noundef nonnull @match_pci_dev_by_id) #6
  %13 = icmp eq ptr %12, null
  %14 = getelementptr i8, ptr %12, i32 -136
  %15 = select i1 %13, ptr null, ptr %14
  call void @pci_dev_put(ptr noundef %2) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #6
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_get_subsys(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.pci_device_id, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #6
  store i32 %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.pci_device_id, ptr %6, i32 0, i32 1
  store i32 %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.pci_device_id, ptr %6, i32 0, i32 2
  store i32 %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.pci_device_id, ptr %6, i32 0, i32 3
  store i32 %3, ptr %9, align 4
  %10 = getelementptr inbounds %struct.pci_device_id, ptr %6, i32 0, i32 4
  %11 = icmp eq ptr %4, null
  %12 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %13 = select i1 %11, ptr null, ptr %12
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %14 = call ptr @bus_find_device(ptr noundef nonnull @pci_bus_type, ptr noundef %13, ptr noundef nonnull %6, ptr noundef nonnull @match_pci_dev_by_id) #6
  %15 = icmp eq ptr %14, null
  %16 = getelementptr i8, ptr %14, i32 -136
  %17 = select i1 %15, ptr null, ptr %16
  call void @pci_dev_put(ptr noundef %4) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #6
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_get_class(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.pci_device_id, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #6
  %4 = getelementptr inbounds %struct.pci_device_id, ptr %3, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 -1, i64 16, i1 false)
  store i32 %0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.pci_device_id, ptr %3, i32 0, i32 5
  store i32 -1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.pci_device_id, ptr %3, i32 0, i32 6
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.pci_device_id, ptr %3, i32 0, i32 7
  store i32 0, ptr %7, align 4
  %8 = icmp eq ptr %1, null
  %9 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %10 = select i1 %8, ptr null, ptr %9
  %11 = call ptr @bus_find_device(ptr noundef nonnull @pci_bus_type, ptr noundef %10, ptr noundef nonnull %3, ptr noundef nonnull @match_pci_dev_by_id) #6
  %12 = icmp eq ptr %11, null
  %13 = getelementptr i8, ptr %11, i32 -136
  %14 = select i1 %12, ptr null, ptr %13
  call void @pci_dev_put(ptr noundef %1) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #6
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_dev_present(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %14, %1
  %3 = phi ptr [ %0, %1 ], [ %20, %14 ]
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pci_device_id, ptr %3, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.pci_device_id, ptr %3, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %10, %6, %2
  %15 = tail call ptr @bus_find_device(ptr noundef nonnull @pci_bus_type, ptr noundef null, ptr noundef %3, ptr noundef nonnull @match_pci_dev_by_id) #6
  %16 = icmp eq ptr %15, null
  %17 = getelementptr i8, ptr %15, i32 -136
  tail call void @pci_dev_put(ptr noundef null) #6
  %18 = icmp eq ptr %17, null
  %19 = or i1 %16, %18
  %20 = getelementptr %struct.pci_device_id, ptr %3, i32 1
  br i1 %19, label %2, label %21

21:                                               ; preds = %14
  tail call void @pci_dev_put(ptr noundef nonnull %17) #6
  br label %22

22:                                               ; preds = %21, %10
  %23 = phi i32 [ 1, %21 ], [ 0, %10 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @match_pci_dev_by_id(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #4 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i32 -104
  %7 = load i16, ptr %6, align 8
  %8 = zext i16 %7 to i32
  %9 = icmp eq i32 %3, %8
  br i1 %9, label %10, label %47

10:                                               ; preds = %5, %2
  %11 = getelementptr inbounds %struct.pci_device_id, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %0, i32 -102
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = icmp eq i32 %12, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %14, %10
  %20 = getelementptr inbounds %struct.pci_device_id, ptr %1, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %0, i32 -100
  %25 = load i16, ptr %24, align 4
  %26 = zext i16 %25 to i32
  %27 = icmp eq i32 %21, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %23, %19
  %29 = getelementptr inbounds %struct.pci_device_id, ptr %1, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %0, i32 -98
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  %36 = icmp eq i32 %30, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %32, %28
  %38 = getelementptr inbounds %struct.pci_device_id, ptr %1, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr i8, ptr %0, i32 -96
  %41 = load i32, ptr %40, align 8
  %42 = xor i32 %41, %39
  %43 = getelementptr inbounds %struct.pci_device_id, ptr %1, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %42, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %37, %32, %23, %14, %5
  br label %48

48:                                               ; preds = %47, %37
  %49 = phi ptr [ null, %47 ], [ %1, %37 ]
  %50 = icmp ne ptr %49, null
  %51 = zext i1 %50 to i32
  ret i32 %51
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }

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
