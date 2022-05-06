; ModuleID = '/llk/IR/drivers/base/platform-msi.c_pt.bc'
source_filename = "../drivers/base/platform-msi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_platform_msi_domain_alloc_irqs:\09\09\09\09\09"
module asm "\09.asciz \09\22platform_msi_domain_alloc_irqs\22\09\09\09\09\09"
module asm "__kstrtabns_platform_msi_domain_alloc_irqs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_platform_msi_domain_free_irqs:\09\09\09\09\09"
module asm "\09.asciz \09\22platform_msi_domain_free_irqs\22\09\09\09\09\09"
module asm "__kstrtabns_platform_msi_domain_free_irqs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msi_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.msi_device_data = type { i32, ptr, %struct.mutex, %struct.xarray, i32 }
%struct.platform_msi_priv_data = type { ptr, ptr, %struct.msi_alloc_info, ptr, i32 }
%struct.msi_alloc_info = type { ptr, i32, i32, [2 x %union.anon.11] }
%union.anon.11 = type { i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.msi_desc = type { i32, i32, ptr, %struct.msi_msg, ptr, ptr, ptr, ptr, i16, %struct.pci_msi_desc }
%struct.msi_msg = type { %union.anon.5, %union.anon.6, %union.anon.7 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.7 = type { i32 }
%struct.pci_msi_desc = type { %union.anon.8, %struct.anon.9, %union.anon.10 }
%union.anon.8 = type { i32 }
%struct.anon.9 = type { i16, i32 }
%union.anon.10 = type { ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }

@__kstrtab_platform_msi_domain_alloc_irqs = external dso_local constant [0 x i8], align 1
@__kstrtabns_platform_msi_domain_alloc_irqs = external dso_local constant [0 x i8], align 1
@__ksymtab_platform_msi_domain_alloc_irqs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @platform_msi_domain_alloc_irqs to i32), ptr @__kstrtab_platform_msi_domain_alloc_irqs, ptr @__kstrtabns_platform_msi_domain_alloc_irqs }, section "___ksymtab_gpl+platform_msi_domain_alloc_irqs", align 4
@__kstrtab_platform_msi_domain_free_irqs = external dso_local constant [0 x i8], align 1
@__kstrtabns_platform_msi_domain_free_irqs = external dso_local constant [0 x i8], align 1
@__ksymtab_platform_msi_domain_free_irqs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @platform_msi_domain_free_irqs to i32), ptr @__kstrtab_platform_msi_domain_free_irqs, ptr @__kstrtabns_platform_msi_domain_free_irqs }, section "___ksymtab_gpl+platform_msi_domain_free_irqs", align 4
@.str = private unnamed_addr constant [28 x i8] c"drivers/base/platform-msi.c\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Incompatible msi_domain, giving up\0A\00", align 1
@platform_msi_devid_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_platform_msi_domain_alloc_irqs, ptr @__ksymtab_platform_msi_domain_free_irqs], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @platform_msi_create_irq_domain(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %1, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.msi_domain_info, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/platform-msi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 75, 0\0A.popsection", ""() #6, !srcloc !9
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.msi_domain_ops, ptr %9, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store ptr @platform_msi_init, ptr %13, align 4
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %struct.msi_domain_ops, ptr %9, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store ptr @platform_msi_set_desc, ptr %18, align 4
  br label %22

22:                                               ; preds = %21, %17, %3
  %23 = load i32, ptr %1, align 4
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %68, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.msi_domain_info, ptr %1, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31, !prof !8

30:                                               ; preds = %26
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/platform-msi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 94, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.irq_chip, ptr %28, i32 0, i32 7
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store ptr @irq_chip_mask_parent, ptr %32, align 4
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr inbounds %struct.irq_chip, ptr %28, i32 0, i32 9
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store ptr @irq_chip_unmask_parent, ptr %37, align 4
  br label %41

41:                                               ; preds = %40, %36
  %42 = getelementptr inbounds %struct.irq_chip, ptr %28, i32 0, i32 10
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store ptr @irq_chip_eoi_parent, ptr %42, align 4
  br label %46

46:                                               ; preds = %45, %41
  %47 = getelementptr inbounds %struct.irq_chip, ptr %28, i32 0, i32 11
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store ptr @msi_domain_set_affinity, ptr %47, align 4
  br label %51

51:                                               ; preds = %50, %46
  %52 = getelementptr inbounds %struct.irq_chip, ptr %28, i32 0, i32 25
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store ptr @platform_msi_write_msg, ptr %52, align 4
  br label %56

56:                                               ; preds = %55, %51
  %57 = load i32, ptr %1, align 4
  %58 = and i32 %57, 64
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.irq_chip, ptr %28, i32 0, i32 33
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 128
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68, !prof !8

65:                                               ; preds = %60
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 106, i32 noundef 9, ptr noundef null) #6
  %66 = load i32, ptr %1, align 4
  %67 = and i32 %66, -65
  br label %68

68:                                               ; preds = %65, %60, %56, %22
  %69 = phi i32 [ %67, %65 ], [ %57, %60 ], [ %57, %56 ], [ %23, %22 ]
  %70 = or i32 %69, 1664
  store i32 %70, ptr %1, align 4
  %71 = tail call ptr @msi_create_irq_domain(ptr noundef %0, ptr noundef %1, ptr noundef %2) #6
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  tail call void @irq_domain_update_bus_token(ptr noundef nonnull %71, i32 noundef 4) #6
  br label %74

74:                                               ; preds = %73, %68
  ret ptr %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_update_bus_token(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @platform_msi_domain_alloc_irqs(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc i32 @platform_msi_alloc_priv_data(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 14
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @msi_domain_alloc_irqs(ptr noundef %8, ptr noundef %0, i32 noundef %1) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 14, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.msi_device_data, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  store ptr null, ptr %14, align 4
  %16 = getelementptr inbounds %struct.platform_msi_priv_data, ptr %15, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  tail call void @ida_free(ptr noundef nonnull @platform_msi_devid_ida, i32 noundef %17) #6
  tail call void @kfree(ptr noundef %15) #6
  br label %18

18:                                               ; preds = %11, %6, %3
  %19 = phi i32 [ %4, %3 ], [ %9, %11 ], [ 0, %6 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @platform_msi_alloc_priv_data(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = icmp ne ptr %2, null
  %8 = and i1 %7, %6
  %9 = add i32 %1, -1
  %10 = icmp ult i32 %9, 2048
  %11 = and i1 %10, %8
  br i1 %11, label %12, label %39

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.irq_domain, ptr %5, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 4
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1) #7
  br label %39

17:                                               ; preds = %12
  %18 = tail call i32 @msi_setup_device_data(ptr noundef %0) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 14, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.msi_device_data, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %28 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 36) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @ida_alloc_range(ptr noundef nonnull @platform_msi_devid_ida, i32 noundef 0, i32 noundef 2097151, i32 noundef 3264) #6
  %32 = getelementptr inbounds %struct.platform_msi_priv_data, ptr %28, i32 0, i32 4
  store i32 %31, ptr %32, align 8
  %33 = icmp slt i32 %31, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call void @kfree(ptr noundef nonnull %28) #6
  br label %39

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.platform_msi_priv_data, ptr %28, i32 0, i32 3
  store ptr %2, ptr %36, align 4
  store ptr %0, ptr %28, align 8
  %37 = load ptr, ptr %21, align 4
  %38 = getelementptr inbounds %struct.msi_device_data, ptr %37, i32 0, i32 1
  store ptr %28, ptr %38, align 4
  br label %39

39:                                               ; preds = %35, %34, %26, %20, %17, %16, %3
  %40 = phi i32 [ -22, %16 ], [ %31, %34 ], [ 0, %35 ], [ -22, %3 ], [ %18, %17 ], [ -16, %20 ], [ -12, %26 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msi_domain_alloc_irqs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @platform_msi_domain_free_irqs(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 8
  tail call void @msi_domain_free_irqs(ptr noundef %3, ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 14, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msi_device_data, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  store ptr null, ptr %6, align 4
  %8 = getelementptr inbounds %struct.platform_msi_priv_data, ptr %7, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  tail call void @ida_free(ptr noundef nonnull @platform_msi_devid_ida, i32 noundef %9) #6
  tail call void @kfree(ptr noundef %7) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msi_domain_free_irqs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @platform_msi_get_host_data(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.platform_msi_priv_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__platform_msi_create_device_domain(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call fastcc i32 @platform_msi_alloc_priv_data(ptr noundef %0, i32 noundef %1, ptr noundef %3)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %38

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 14
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 14, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.msi_device_data, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.platform_msi_priv_data, ptr %14, i32 0, i32 1
  store ptr %5, ptr %15, align 4
  %16 = load ptr, ptr %10, align 8
  %17 = select i1 %2, i32 0, i32 %1
  %18 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  %19 = load ptr, ptr %18, align 4
  %20 = tail call ptr @irq_domain_create_hierarchy(ptr noundef %16, i32 noundef 0, i32 noundef %17, ptr noundef %19, ptr noundef %4, ptr noundef %14) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.platform_msi_priv_data, ptr %14, i32 0, i32 2
  %24 = getelementptr inbounds %struct.platform_msi_priv_data, ptr %14, i32 0, i32 2, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, 1
  store i32 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.irq_domain, ptr %20, i32 0, i32 9
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @msi_domain_prepare_irqs(ptr noundef %28, ptr noundef %0, i32 noundef %1, ptr noundef %23) #6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %22
  tail call void @irq_domain_remove(ptr noundef nonnull %20) #6
  br label %32

32:                                               ; preds = %31, %9
  %33 = load ptr, ptr %11, align 4
  %34 = getelementptr inbounds %struct.msi_device_data, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  store ptr null, ptr %34, align 4
  %36 = getelementptr inbounds %struct.platform_msi_priv_data, ptr %35, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  tail call void @ida_free(ptr noundef nonnull @platform_msi_devid_ida, i32 noundef %37) #6
  tail call void @kfree(ptr noundef %35) #6
  br label %38

38:                                               ; preds = %32, %22, %6
  %39 = phi ptr [ null, %32 ], [ null, %6 ], [ %20, %22 ]
  ret ptr %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msi_domain_prepare_irqs(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @platform_msi_device_domain_free(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  tail call void @msi_lock_descs(ptr noundef %6) #6
  tail call void @irq_domain_free_irqs_common(ptr noundef %0, i32 noundef %1, i32 noundef %2) #6
  %7 = load ptr, ptr %5, align 4
  %8 = add i32 %1, -1
  %9 = add i32 %8, %2
  tail call void @msi_free_msi_descs_range(ptr noundef %7, i32 noundef 0, i32 noundef %1, i32 noundef %9) #6
  %10 = load ptr, ptr %5, align 4
  tail call void @msi_unlock_descs(ptr noundef %10) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msi_lock_descs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msi_free_msi_descs_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msi_unlock_descs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @platform_msi_device_domain_alloc(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.platform_msi_priv_data, ptr %5, i32 0, i32 2
  %10 = tail call i32 @msi_domain_populate_irqs(ptr noundef %8, ptr noundef %6, i32 noundef %1, i32 noundef %2, ptr noundef %9) #6
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msi_domain_populate_irqs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @platform_msi_init(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readnone %4) #0 {
  %6 = getelementptr inbounds %struct.msi_domain_info, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.msi_domain_info, ptr %1, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef %7, ptr noundef %9) #6
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @platform_msi_set_desc(ptr nocapture noundef writeonly %0, ptr noundef %1) #3 {
  store ptr %1, ptr %0, align 4
  %3 = getelementptr inbounds %struct.msi_desc, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 14, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msi_device_data, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.platform_msi_priv_data, ptr %8, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, 11
  %12 = getelementptr inbounds %struct.msi_desc, ptr %1, i32 0, i32 8
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = or i32 %11, %14
  %16 = getelementptr inbounds %struct.msi_alloc_info, ptr %0, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msi_domain_set_affinity(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @platform_msi_write_msg(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_common_data, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msi_desc, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 14, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.msi_device_data, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.platform_msi_priv_data, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  tail call void %14(ptr noundef %6, ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msi_setup_device_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

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
!9 = !{i64 2151530969, i64 2151531460, i64 2151531006, i64 2151531062, i64 2151531096, i64 2151531120, i64 2151531161, i64 2151531182, i64 2151531210, i64 2151531244}
!10 = !{i64 2151532016, i64 2151532507, i64 2151532053, i64 2151532109, i64 2151532143, i64 2151532167, i64 2151532208, i64 2151532229, i64 2151532257, i64 2151532291}
