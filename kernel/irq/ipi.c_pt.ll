; ModuleID = '/llk/IR/kernel/irq/ipi.c_pt.bc'
source_filename = "../kernel/irq/ipi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipi_get_hwirq:\09\09\09\09\09"
module asm "\09.asciz \09\22ipi_get_hwirq\22\09\09\09\09\09"
module asm "__kstrtabns_ipi_get_hwirq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipi_send_single:\09\09\09\09\09"
module asm "\09.asciz \09\22ipi_send_single\22\09\09\09\09\09"
module asm "__kstrtabns_ipi_send_single:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipi_send_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22ipi_send_mask\22\09\09\09\09\09"
module asm "__kstrtabns_ipi_send_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.cpumask = type { [1 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.list_head = type { ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@.str = private unnamed_addr constant [47 x i8] c"\014genirq/ipi: Reservation on a non IPI domain\0A\00", align 1
@__cpu_possible_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"\014genirq/ipi: Reservation is not in possible_cpu_mask\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"\014genirq/ipi: Reservation for empty destination mask\0A\00", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"\014genirq/ipi: Destination mask has holes\0A\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"\014genirq/ipi: Can't reserve IPI, failed to alloc descs\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"\014genirq/ipi: Can't reserve IPI, failed to alloc hw irqs\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"kernel/irq/ipi.c\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"\014genirq/ipi: Trying to destroy a non IPI domain!\0A\00", align 1
@__kstrtab_ipi_get_hwirq = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipi_get_hwirq = external dso_local constant [0 x i8], align 1
@__ksymtab_ipi_get_hwirq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipi_get_hwirq to i32), ptr @__kstrtab_ipi_get_hwirq, ptr @__kstrtabns_ipi_get_hwirq }, section "___ksymtab_gpl+ipi_get_hwirq", align 4
@ipi_send_single.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ipi_send_single = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipi_send_single = external dso_local constant [0 x i8], align 1
@__ksymtab_ipi_send_single = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipi_send_single to i32), ptr @__kstrtab_ipi_send_single, ptr @__kstrtabns_ipi_send_single }, section "___ksymtab_gpl+ipi_send_single", align 4
@ipi_send_mask.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ipi_send_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipi_send_mask = external dso_local constant [0 x i8], align 1
@__ksymtab_ipi_send_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipi_send_mask to i32), ptr @__kstrtab_ipi_send_mask, ptr @__kstrtabns_ipi_send_mask }, section "___ksymtab_gpl+ipi_send_mask", align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_ipi_get_hwirq, ptr @__ksymtab_ipi_send_mask, ptr @__ksymtab_ipi_send_single], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_reserve_ipi(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4, %2
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #4
  br label %66

11:                                               ; preds = %4
  %12 = load i32, ptr %1, align 4
  %13 = load i32, ptr @__cpu_possible_mask, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, 65535
  %16 = and i32 %15, %14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #4
  br label %66

20:                                               ; preds = %11
  %21 = tail call i32 @__sw_hweight32(i32 noundef %15) #5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #4
  br label %66

25:                                               ; preds = %20
  %26 = load i32, ptr %5, align 4
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = tail call i32 @_find_first_bit_le(ptr noundef %1, i32 noundef 16) #5
  %31 = add i32 %30, 1
  %32 = tail call i32 @_find_next_zero_bit_le(ptr noundef %1, i32 noundef 16, i32 noundef %31) #5
  %33 = load i32, ptr @nr_cpu_ids, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = tail call i32 @cpumask_next(i32 noundef %32, ptr noundef %1) #6
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi i32 [ %36, %35 ], [ %32, %29 ]
  %39 = icmp ult i32 %38, %33
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #4
  br label %66

42:                                               ; preds = %37, %25
  %43 = phi i32 [ 0, %25 ], [ %30, %37 ]
  %44 = phi i32 [ 1, %25 ], [ %21, %37 ]
  %45 = tail call i32 @irq_domain_alloc_descs(i32 noundef -1, i32 noundef %44, i32 noundef 0, i32 noundef -1, ptr noundef null) #5
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #4
  br label %66

49:                                               ; preds = %42
  %50 = tail call i32 @__irq_domain_alloc_irqs(ptr noundef nonnull %0, i32 noundef %45, i32 noundef %44, i32 noundef -1, ptr noundef %1, i1 noundef zeroext true, ptr noundef null) #5
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #4
  tail call void @irq_free_descs(i32 noundef %50, i32 noundef %44) #5
  br label %66

54:                                               ; preds = %54, %49
  %55 = phi i32 [ %64, %54 ], [ 0, %49 ]
  %56 = add i32 %55, %50
  %57 = tail call ptr @irq_get_irq_data(i32 noundef %56) #5
  %58 = getelementptr inbounds %struct.irq_data, ptr %57, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.irq_common_data, ptr %59, i32 0, i32 3
  %61 = load i32, ptr %1, align 4
  store i32 %61, ptr %60, align 4
  %62 = load ptr, ptr %58, align 4
  %63 = getelementptr inbounds %struct.irq_common_data, ptr %62, i32 0, i32 5
  store i32 %43, ptr %63, align 4
  tail call void @irq_modify_status(i32 noundef %56, i32 noundef 0, i32 noundef 8192) #5
  %64 = add nuw i32 %55, 1
  %65 = icmp eq i32 %64, %44
  br i1 %65, label %66, label %54

66:                                               ; preds = %54, %52, %47, %40, %23, %18, %9
  %67 = phi i32 [ -12, %47 ], [ -16, %52 ], [ -22, %23 ], [ -22, %18 ], [ -22, %9 ], [ -22, %40 ], [ %50, %54 ]
  ret i32 %67
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_descs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_domain_alloc_irqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_free_descs(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_destroy_ipi(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @irq_get_irq_data(i32 noundef %0) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %48, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.irq_data, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.irq_common_data, ptr %7, i32 0, i32 3
  %9 = icmp ne i32 %0, 0
  %10 = icmp ne ptr %8, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %48

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.irq_data, ptr %3, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 126, i32 noundef 9, ptr noundef null) #5
  br label %48

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.irq_domain, ptr %14, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #4
  br label %48

24:                                               ; preds = %17
  %25 = load i32, ptr %1, align 4
  %26 = load i32, ptr %8, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, 65535
  %29 = and i32 %28, %27
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31, !prof !9

31:                                               ; preds = %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 134, i32 noundef 9, ptr noundef null) #5
  br label %48

32:                                               ; preds = %24
  %33 = and i32 %19, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @_find_first_bit_le(ptr noundef %1, i32 noundef 16) #5
  %37 = load i32, ptr %1, align 4
  %38 = and i32 %37, 65535
  %39 = add i32 %36, %0
  %40 = load ptr, ptr %6, align 4
  %41 = getelementptr inbounds %struct.irq_common_data, ptr %40, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = sub i32 %39, %42
  %44 = tail call i32 @__sw_hweight32(i32 noundef %38) #5
  br label %45

45:                                               ; preds = %35, %32
  %46 = phi i32 [ 1, %32 ], [ %44, %35 ]
  %47 = phi i32 [ %0, %32 ], [ %43, %35 ]
  tail call void @irq_domain_free_irqs(i32 noundef %47, i32 noundef %46) #5
  br label %48

48:                                               ; preds = %45, %31, %22, %16, %5, %2
  %49 = phi i32 [ -22, %16 ], [ -22, %31 ], [ 0, %45 ], [ -22, %22 ], [ -22, %5 ], [ -22, %2 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipi_get_hwirq(i32 noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @irq_get_irq_data(i32 noundef %0) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.irq_data, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.irq_common_data, ptr %7, i32 0, i32 3
  %9 = icmp ne ptr %8, null
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = icmp ugt i32 %10, %1
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %39

13:                                               ; preds = %5
  %14 = lshr i32 %1, 5
  %15 = getelementptr i32, ptr %8, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %1, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.irq_data, ptr %3, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.irq_domain, ptr %23, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = add i32 %1, %0
  %30 = getelementptr inbounds %struct.irq_common_data, ptr %7, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = sub i32 %29, %31
  %33 = tail call ptr @irq_get_irq_data(i32 noundef %32) #5
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %28, %21
  %36 = phi ptr [ %33, %28 ], [ %3, %21 ]
  %37 = getelementptr inbounds %struct.irq_data, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  br label %39

39:                                               ; preds = %35, %28, %13, %5, %2
  %40 = phi i32 [ -1, %5 ], [ -1, %13 ], [ %38, %35 ], [ -1, %28 ], [ -1, %2 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ipi_send_single(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 29
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 30
  %11 = load ptr, ptr %10, align 4
  %12 = and i32 %1, 31
  %13 = add nuw nsw i32 %12, 1
  %14 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %13
  %15 = lshr i32 %1, 5
  %16 = sub nsw i32 0, %15
  %17 = getelementptr i32, ptr %14, i32 %16
  tail call void %11(ptr noundef %3, ptr noundef %17) #5
  br label %41

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.irq_domain, ptr %20, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.irq_common_data, ptr %27, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, %1
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = sub i32 %1, %29
  %35 = add i32 %34, %33
  %36 = tail call ptr @irq_get_irq_data(i32 noundef %35) #5
  %37 = load ptr, ptr %6, align 4
  br label %38

38:                                               ; preds = %31, %25, %18
  %39 = phi ptr [ %37, %31 ], [ %7, %25 ], [ %7, %18 ]
  %40 = phi ptr [ %36, %31 ], [ %3, %25 ], [ %3, %18 ]
  tail call void %39(ptr noundef %40, i32 noundef %1) #5
  br label %41

41:                                               ; preds = %38, %9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ipi_send_mask(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 30
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call void %7(ptr noundef %3, ptr noundef %1) #5
  br label %51

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.irq_domain, ptr %12, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %1) #6
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 29
  br label %45

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %1) #6
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 29
  br label %31

31:                                               ; preds = %31, %29
  %32 = phi i32 [ %26, %29 ], [ %42, %31 ]
  %33 = phi ptr [ %3, %29 ], [ %40, %31 ]
  %34 = add i32 %32, %25
  %35 = getelementptr inbounds %struct.irq_data, ptr %33, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.irq_common_data, ptr %36, i32 0, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = sub i32 %34, %38
  %40 = tail call ptr @irq_get_irq_data(i32 noundef %39) #5
  %41 = load ptr, ptr %30, align 4
  tail call void %41(ptr noundef %40, i32 noundef %32) #5
  %42 = tail call i32 @cpumask_next(i32 noundef %32, ptr noundef %1) #6
  %43 = load i32, ptr @nr_cpu_ids, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %31, label %51

45:                                               ; preds = %45, %21
  %46 = phi i32 [ %18, %21 ], [ %48, %45 ]
  %47 = load ptr, ptr %22, align 4
  tail call void %47(ptr noundef %3, i32 noundef %46) #5
  %48 = tail call i32 @cpumask_next(i32 noundef %46, ptr noundef %1) #6
  %49 = load i32, ptr @nr_cpu_ids, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %45, label %51

51:                                               ; preds = %45, %31, %23, %17, %9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipi_send_single(i32 noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @irq_to_desc(i32 noundef %0) #5
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1
  %6 = icmp eq ptr %5, null
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %45, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.irq_common_data, ptr %12, i32 0, i32 3
  %14 = icmp eq ptr %10, null
  br i1 %14, label %45, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.irq_chip, ptr %10, i32 0, i32 29
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.irq_chip, ptr %10, i32 0, i32 30
  %21 = load ptr, ptr %20, align 4
  %22 = icmp ne ptr %21, null
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %24 = icmp ugt i32 %23, %1
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %29, label %45

26:                                               ; preds = %15
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %28 = icmp ugt i32 %27, %1
  br i1 %28, label %37, label %45

29:                                               ; preds = %19
  %30 = lshr i32 %1, 5
  %31 = getelementptr i32, ptr %13, i32 %30
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %1, 31
  %34 = shl nuw i32 1, %33
  %35 = and i32 %32, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %45, label %48

37:                                               ; preds = %26
  %38 = lshr i32 %1, 5
  %39 = getelementptr i32, ptr %13, i32 %38
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %1, 31
  %42 = shl nuw i32 1, %41
  %43 = and i32 %40, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %37, %29, %26, %19, %8, %2
  %46 = load i1, ptr @ipi_send_single.__already_done, align 1
  br i1 %46, label %76, label %47, !prof !9

47:                                               ; preds = %45
  store i1 true, ptr @ipi_send_single.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 313, i32 noundef 9, ptr noundef null) #5
  br label %76

48:                                               ; preds = %29
  %49 = getelementptr inbounds %struct.irq_chip, ptr %10, i32 0, i32 30
  %50 = load ptr, ptr %49, align 4
  %51 = add nuw nsw i32 %33, 1
  %52 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %51
  %53 = sub nsw i32 0, %30
  %54 = getelementptr i32, ptr %52, i32 %53
  tail call void %50(ptr noundef nonnull %5, ptr noundef %54) #5
  br label %76

55:                                               ; preds = %37
  %56 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.irq_domain, ptr %57, i32 0, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.irq_common_data, ptr %12, i32 0, i32 5
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, %1
  br i1 %65, label %73, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = sub i32 %1, %64
  %70 = add i32 %69, %68
  %71 = tail call ptr @irq_get_irq_data(i32 noundef %70) #5
  %72 = load ptr, ptr %16, align 4
  br label %73

73:                                               ; preds = %66, %62, %55
  %74 = phi ptr [ %72, %66 ], [ %17, %62 ], [ %17, %55 ]
  %75 = phi ptr [ %71, %66 ], [ %5, %62 ], [ %5, %55 ]
  tail call void %74(ptr noundef %75, i32 noundef %1) #5
  br label %76

76:                                               ; preds = %73, %48, %47, %45
  %77 = phi i32 [ -22, %47 ], [ 0, %48 ], [ 0, %73 ], [ -22, %45 ]
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipi_send_mask(i32 noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @irq_to_desc(i32 noundef %0) #5
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1
  %6 = icmp eq ptr %5, null
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %42, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.irq_common_data, ptr %12, i32 0, i32 3
  %14 = icmp eq ptr %10, null
  br i1 %14, label %42, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.irq_chip, ptr %10, i32 0, i32 29
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.irq_chip, ptr %10, i32 0, i32 30
  %21 = load ptr, ptr %20, align 4
  %22 = icmp ne ptr %21, null
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %29, label %42

26:                                               ; preds = %15
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %26, %19
  %30 = icmp eq ptr %1, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %29
  %32 = load i32, ptr %1, align 4
  %33 = load i32, ptr %13, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, 65535
  %36 = and i32 %35, %34
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %42

38:                                               ; preds = %29
  %39 = load volatile i32, ptr %13, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %31, %26, %19, %8, %2
  %43 = load i1, ptr @ipi_send_mask.__already_done, align 1
  br i1 %43, label %47, label %44, !prof !9

44:                                               ; preds = %42
  store i1 true, ptr @ipi_send_mask.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 334, i32 noundef 9, ptr noundef null) #5
  br label %47

45:                                               ; preds = %38, %31
  %46 = tail call i32 @__ipi_send_mask(ptr noundef nonnull %3, ptr noundef %1)
  br label %47

47:                                               ; preds = %45, %44, %42
  %48 = phi i32 [ 0, %45 ], [ -22, %44 ], [ -22, %42 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
