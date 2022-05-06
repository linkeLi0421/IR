; ModuleID = '/llk/IR/drivers/pci/msi/irqdomain.c_pt.bc'
source_filename = "../drivers/pci/msi/irqdomain.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_msi_create_irq_domain:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_msi_create_irq_domain\22\09\09\09\09\09"
module asm "__kstrtabns_pci_msi_create_irq_domain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.msi_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.msi_desc = type { i32, i32, ptr, %struct.msi_msg, ptr, ptr, ptr, ptr, i16, %struct.pci_msi_desc }
%struct.msi_msg = type { %union.anon.61, %union.anon.62, %union.anon.63 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i32 }
%struct.pci_msi_desc = type { %union.anon.64, %struct.anon.65, %union.anon.66 }
%union.anon.64 = type { i32 }
%struct.anon.65 = type { i16, i32 }
%union.anon.66 = type { ptr }
%struct.msi_alloc_info = type { ptr, i32, i32, [2 x %union.anon.71] }
%union.anon.71 = type { i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }

@.str = private unnamed_addr constant [28 x i8] c"drivers/pci/msi/irqdomain.c\00", align 1
@__kstrtab_pci_msi_create_irq_domain = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_msi_create_irq_domain = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_msi_create_irq_domain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_msi_create_irq_domain to i32), ptr @__kstrtab_pci_msi_create_irq_domain, ptr @__kstrtabns_pci_msi_create_irq_domain }, section "___ksymtab_gpl+pci_msi_create_irq_domain", align 4
@pci_msi_legacy_setup_msi_irqs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"drivers/pci/msi/msi.h\00", align 1
@pci_msi_legacy_teardown_msi_irqs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pci_msi_domain_ops_default = internal global %struct.msi_domain_ops { ptr null, ptr null, ptr null, ptr @pci_msi_domain_check_cap, ptr null, ptr @pci_msi_domain_set_desc, ptr null, ptr null }, align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_pci_msi_create_irq_domain], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_msi_setup_msi_irqs(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 14
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.irq_domain, ptr %6, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @msi_domain_alloc_irqs_descs_locked(ptr noundef nonnull %6, ptr noundef %4, i32 noundef %1) #5
  br label %18

15:                                               ; preds = %8, %3
  %16 = load i1, ptr @pci_msi_legacy_setup_msi_irqs.__already_done, align 1
  br i1 %16, label %18, label %17, !prof !8

17:                                               ; preds = %15
  store i1 true, ptr @pci_msi_legacy_setup_msi_irqs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 17, i32 noundef 9, ptr noundef null) #5
  br label %18

18:                                               ; preds = %17, %15, %13
  %19 = phi i32 [ %14, %13 ], [ -19, %15 ], [ -19, %17 ]
  ret i32 %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msi_domain_alloc_irqs_descs_locked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_msi_teardown_msi_irqs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 14
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.irq_domain, ptr %4, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @msi_domain_free_irqs_descs_locked(ptr noundef nonnull %4, ptr noundef %2) #5
  br label %15

12:                                               ; preds = %6, %1
  %13 = load i1, ptr @pci_msi_legacy_teardown_msi_irqs.__already_done, align 1
  br i1 %13, label %15, label %14, !prof !8

14:                                               ; preds = %12
  store i1 true, ptr @pci_msi_legacy_teardown_msi_irqs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 23, i32 noundef 9, ptr noundef null) #5
  br label %15

15:                                               ; preds = %14, %12, %11
  tail call void @msi_free_msi_descs_range(ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef 65535) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msi_domain_free_irqs_descs_locked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_msi_create_irq_domain(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load i32, ptr %1, align 4
  %5 = and i32 %4, 64
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !8

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 167, i32 noundef 9, ptr noundef null) #5
  %8 = load i32, ptr %1, align 4
  %9 = and i32 %8, -65
  store i32 %9, ptr %1, align 4
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %4, %3 ], [ %9, %7 ]
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.msi_domain_info, ptr %1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store ptr @pci_msi_domain_ops_default, ptr %15, align 4
  br label %29

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.msi_domain_ops, ptr %16, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store ptr @pci_msi_domain_set_desc, ptr %20, align 4
  br label %24

24:                                               ; preds = %23, %19
  %25 = getelementptr inbounds %struct.msi_domain_ops, ptr %16, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store ptr @pci_msi_domain_check_cap, ptr %25, align 4
  br label %29

29:                                               ; preds = %28, %24, %18, %10
  %30 = load i32, ptr %1, align 4
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.msi_domain_info, ptr %1, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38, !prof !9

37:                                               ; preds = %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pci/msi/irqdomain.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 141, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.irq_chip, ptr %35, i32 0, i32 25
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store ptr @pci_msi_domain_write_msg, ptr %39, align 4
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds %struct.irq_chip, ptr %35, i32 0, i32 7
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store ptr @pci_msi_mask_irq, ptr %44, align 4
  br label %48

48:                                               ; preds = %47, %43
  %49 = getelementptr inbounds %struct.irq_chip, ptr %35, i32 0, i32 9
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store ptr @pci_msi_unmask_irq, ptr %49, align 4
  br label %53

53:                                               ; preds = %52, %48, %29
  %54 = load i32, ptr %1, align 4
  %55 = or i32 %54, 144
  store i32 %55, ptr %1, align 4
  %56 = getelementptr inbounds %struct.msi_domain_info, ptr %1, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.irq_chip, ptr %57, i32 0, i32 33
  %59 = load i32, ptr %58, align 4
  %60 = or i32 %59, 32
  store i32 %60, ptr %58, align 4
  %61 = tail call ptr @msi_create_irq_domain(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %53
  tail call void @irq_domain_update_bus_token(ptr noundef nonnull %61, i32 noundef 3) #5
  br label %64

64:                                               ; preds = %63, %53
  ret ptr %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_update_bus_token(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_msi_domain_get_msi_rid(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  %4 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 12
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = or i32 %9, %12
  store i32 %13, ptr %3, align 4
  %14 = call i32 @pci_for_each_dma_alias(ptr noundef %1, ptr noundef nonnull @get_msi_id_cb, ptr noundef nonnull %3) #5
  %15 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  %19 = or i1 %17, %18
  br i1 %19, label %31, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.fwnode_handle, ptr %16, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp ne ptr %22, @of_fwnode_ops
  %24 = getelementptr i8, ptr %16, i32 -12
  %25 = icmp eq ptr %24, null
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %29 = load i32, ptr %3, align 4
  %30 = call i32 @of_msi_map_id(ptr noundef %28, ptr noundef nonnull %24, i32 noundef %29) #5
  br label %33

31:                                               ; preds = %20, %2
  %32 = load i32, ptr %3, align 4
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi i32 [ %30, %27 ], [ %32, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_for_each_dma_alias(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @get_msi_id_cb(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, ptr nocapture noundef %2) #3 {
  %4 = load i32, ptr %2, align 4
  %5 = lshr i32 %4, 8
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 12
  %9 = load i8, ptr %8, align 4
  %10 = trunc i32 %5 to i8
  %11 = icmp eq i8 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = and i32 %5, 255
  %14 = lshr i16 %1, 8
  %15 = zext i16 %14 to i32
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %19, label %17

17:                                               ; preds = %12, %3
  %18 = zext i16 %1 to i32
  store i32 %18, ptr %2, align 4
  br label %19

19:                                               ; preds = %17, %12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_msi_map_id(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_msi_get_device_domain(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 12
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 8
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 65535
  %12 = or i32 %8, %11
  store i32 %12, ptr %2, align 4
  %13 = call i32 @pci_for_each_dma_alias(ptr noundef %0, ptr noundef nonnull @get_msi_id_cb, ptr noundef nonnull %2) #5
  %14 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %15 = load i32, ptr %2, align 4
  %16 = call ptr @of_msi_map_get_device_domain(ptr noundef %14, i32 noundef %15, i32 noundef 3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret ptr %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_msi_map_get_device_domain(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @pci_dev_has_special_msi_domain(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 14
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 21, i32 14
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %5, %1
  %12 = phi ptr [ %9, %5 ], [ %3, %1 ]
  %13 = getelementptr inbounds %struct.irq_domain, ptr %12, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = icmp ne i32 %14, 3
  br label %16

16:                                               ; preds = %11, %5
  %17 = phi i1 [ %15, %11 ], [ true, %5 ]
  ret i1 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msi_free_msi_descs_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_msi_domain_set_desc(ptr nocapture noundef writeonly %0, ptr noundef %1) #0 {
  store ptr %1, ptr %0, align 4
  %3 = tail call ptr @msi_desc_to_pci_dev(ptr noundef %1) #5
  %4 = getelementptr inbounds %struct.msi_desc, ptr %1, i32 0, i32 8
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 12
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = shl nuw nsw i32 %11, 19
  %15 = shl i32 %13, 11
  %16 = and i32 %15, 134215680
  %17 = or i32 %14, %6
  %18 = or i32 %17, %16
  %19 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 16
  %20 = load i32, ptr %19, align 8
  %21 = shl i32 %20, 27
  %22 = or i32 %18, %21
  %23 = getelementptr inbounds %struct.msi_alloc_info, ptr %0, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_msi_domain_check_cap(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = tail call ptr @msi_first_desc(ptr noundef %2, i32 noundef 0) #5
  %5 = getelementptr inbounds %struct.msi_desc, ptr %4, i32 0, i32 9, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.msi_desc, ptr %4, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, ptr %1, align 4
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %39, label %17

17:                                               ; preds = %13, %9
  br label %39

18:                                               ; preds = %3
  %19 = load i32, ptr %1, align 4
  %20 = and i32 %19, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %18
  %23 = and i32 %19, 256
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %22
  %26 = tail call ptr @msi_first_desc(ptr noundef %2, i32 noundef 0) #5
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %35, %25
  %29 = phi i32 [ %36, %35 ], [ 0, %25 ]
  %30 = phi ptr [ %37, %35 ], [ %26, %25 ]
  %31 = getelementptr inbounds %struct.msi_desc, ptr %30, i32 0, i32 8
  %32 = load i16, ptr %31, align 4
  %33 = zext i16 %32 to i32
  %34 = icmp eq i32 %29, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = add i32 %29, 1
  %37 = tail call ptr @msi_next_desc(ptr noundef %2, i32 noundef 0) #5
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %28

39:                                               ; preds = %35, %28, %25, %22, %18, %17, %13
  %40 = phi i32 [ 1, %13 ], [ -524, %18 ], [ 0, %22 ], [ 0, %17 ], [ 0, %25 ], [ -524, %28 ], [ 0, %35 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msi_desc_to_pci_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msi_first_desc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msi_next_desc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_msi_domain_write_msg(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_common_data, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call void @__pci_write_msi_msg(ptr noundef %6, ptr noundef %1) #5
  br label %12

12:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_mask_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_unmask_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pci_write_msi_msg(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2153744963, i64 2153745455, i64 2153745000, i64 2153745056, i64 2153745090, i64 2153745114, i64 2153745155, i64 2153745176, i64 2153745204, i64 2153745238}
