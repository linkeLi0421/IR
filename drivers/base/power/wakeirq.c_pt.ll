; ModuleID = '/llk/IR/drivers/base/power/wakeirq.c_pt.bc'
source_filename = "../drivers/base/power/wakeirq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_set_wake_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_set_wake_irq\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_set_wake_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_clear_wake_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_clear_wake_irq\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_clear_wake_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_set_dedicated_wake_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_set_dedicated_wake_irq\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_set_dedicated_wake_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_set_dedicated_wake_irq_reverse:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_set_dedicated_wake_irq_reverse\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_set_dedicated_wake_irq_reverse:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_enable_wake_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_enable_wake_irq\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_enable_wake_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_disable_wake_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_disable_wake_irq\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_disable_wake_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.wake_irq = type { ptr, i32, i32, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_dev_pm_set_wake_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_set_wake_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_set_wake_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_set_wake_irq to i32), ptr @__kstrtab_dev_pm_set_wake_irq, ptr @__kstrtabns_dev_pm_set_wake_irq }, section "___ksymtab_gpl+dev_pm_set_wake_irq", align 4
@__kstrtab_dev_pm_clear_wake_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_clear_wake_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_clear_wake_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_clear_wake_irq to i32), ptr @__kstrtab_dev_pm_clear_wake_irq, ptr @__kstrtabns_dev_pm_clear_wake_irq }, section "___ksymtab_gpl+dev_pm_clear_wake_irq", align 4
@__kstrtab_dev_pm_set_dedicated_wake_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_set_dedicated_wake_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_set_dedicated_wake_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_set_dedicated_wake_irq to i32), ptr @__kstrtab_dev_pm_set_dedicated_wake_irq, ptr @__kstrtabns_dev_pm_set_dedicated_wake_irq }, section "___ksymtab_gpl+dev_pm_set_dedicated_wake_irq", align 4
@__kstrtab_dev_pm_set_dedicated_wake_irq_reverse = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_set_dedicated_wake_irq_reverse = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_set_dedicated_wake_irq_reverse = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_set_dedicated_wake_irq_reverse to i32), ptr @__kstrtab_dev_pm_set_dedicated_wake_irq_reverse, ptr @__kstrtabns_dev_pm_set_dedicated_wake_irq_reverse }, section "___ksymtab_gpl+dev_pm_set_dedicated_wake_irq_reverse", align 4
@__kstrtab_dev_pm_enable_wake_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_enable_wake_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_enable_wake_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_enable_wake_irq to i32), ptr @__kstrtab_dev_pm_enable_wake_irq, ptr @__kstrtabns_dev_pm_enable_wake_irq }, section "___ksymtab_gpl+dev_pm_enable_wake_irq", align 4
@__kstrtab_dev_pm_disable_wake_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_disable_wake_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_disable_wake_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_disable_wake_irq to i32), ptr @__kstrtab_dev_pm_disable_wake_irq, ptr @__kstrtabns_dev_pm_disable_wake_irq }, section "___ksymtab_gpl+dev_pm_disable_wake_irq", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@dev_pm_attach_wake_irq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [29 x i8] c"drivers/base/power/wakeirq.c\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"%s %s: wake irq already initialized\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s:wakeup\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"wake IRQ with no resume: %i\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_dev_pm_clear_wake_irq, ptr @__ksymtab_dev_pm_disable_wake_irq, ptr @__ksymtab_dev_pm_enable_wake_irq, ptr @__ksymtab_dev_pm_set_dedicated_wake_irq, ptr @__ksymtab_dev_pm_set_dedicated_wake_irq_reverse, ptr @__ksymtab_dev_pm_set_wake_irq], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_set_wake_irq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 16) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  store ptr %0, ptr %6, align 8
  %9 = getelementptr inbounds %struct.wake_irq, ptr %6, i32 0, i32 2
  store i32 %1, ptr %9, align 8
  %10 = tail call fastcc i32 @dev_pm_attach_wake_irq(ptr noundef %0, ptr noundef nonnull %6)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @kfree(ptr noundef nonnull %6) #5
  br label %13

13:                                               ; preds = %12, %8, %4, %2
  %14 = phi i32 [ -22, %2 ], [ -12, %4 ], [ %10, %12 ], [ 0, %8 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dev_pm_attach_wake_irq(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %28

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #5
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ne ptr %10, null
  %12 = load i1, ptr @dev_pm_attach_wake_irq.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %24, !prof !8

15:                                               ; preds = %6
  store i1 true, ptr @dev_pm_attach_wake_irq.__already_done, align 1
  %16 = tail call ptr @dev_driver_string(ptr noundef nonnull %0) #5
  %17 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load ptr, ptr %0, align 4
  br label %22

22:                                               ; preds = %20, %15
  %23 = phi ptr [ %21, %20 ], [ %18, %15 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %16, ptr noundef %23) #5
  br label %24

24:                                               ; preds = %22, %6
  br i1 %11, label %26, label %25

25:                                               ; preds = %24
  store ptr %1, ptr %9, align 4
  tail call void @device_wakeup_attach_irq(ptr noundef nonnull %0, ptr noundef nonnull %1) #5
  br label %26

26:                                               ; preds = %25, %24
  %27 = phi i32 [ 0, %25 ], [ -17, %24 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #5
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi i32 [ -22, %2 ], [ %27, %26 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_clear_wake_irq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #5
  tail call void @device_wakeup_detach_irq(ptr noundef %0) #5
  store ptr null, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #5
  %8 = getelementptr inbounds %struct.wake_irq, ptr %3, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.wake_irq, ptr %3, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @free_irq(i32 noundef %14, ptr noundef nonnull %3) #5
  %16 = load i32, ptr %8, align 4
  %17 = and i32 %16, -8
  store i32 %17, ptr %8, align 4
  br label %18

18:                                               ; preds = %12, %5
  %19 = getelementptr inbounds %struct.wake_irq, ptr %3, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  tail call void @kfree(ptr noundef %20) #5
  tail call void @kfree(ptr noundef nonnull %3) #5
  br label %21

21:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_wakeup_detach_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_set_dedicated_wake_irq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call fastcc i32 @__dev_pm_set_dedicated_wake_irq(ptr noundef %0, i32 noundef %1, i32 noundef 0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__dev_pm_set_dedicated_wake_irq(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp slt i32 %1, 0
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 16) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load ptr, ptr %0, align 4
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi ptr [ %14, %13 ], [ %11, %9 ]
  %17 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.2, ptr noundef %16) #5
  %18 = getelementptr inbounds %struct.wake_irq, ptr %7, i32 0, i32 3
  store ptr %17, ptr %18, align 4
  %19 = icmp eq ptr %17, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %15
  store ptr %0, ptr %7, align 8
  %21 = getelementptr inbounds %struct.wake_irq, ptr %7, i32 0, i32 2
  store i32 %1, ptr %21, align 8
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 524288) #5
  %22 = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef null, ptr noundef nonnull @handle_threaded_wake_irq, i32 noundef 532480, ptr noundef nonnull %17, ptr noundef nonnull %7) #5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = tail call fastcc i32 @dev_pm_attach_wake_irq(ptr noundef %0, ptr noundef nonnull %7)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = or i32 %2, 1
  %29 = getelementptr inbounds %struct.wake_irq, ptr %7, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  br label %37

30:                                               ; preds = %24
  %31 = tail call ptr @free_irq(i32 noundef %1, ptr noundef nonnull %7) #5
  br label %32

32:                                               ; preds = %30, %20
  %33 = phi i32 [ %22, %20 ], [ %25, %30 ]
  %34 = load ptr, ptr %18, align 4
  tail call void @kfree(ptr noundef %34) #5
  br label %35

35:                                               ; preds = %32, %15
  %36 = phi i32 [ %33, %32 ], [ -12, %15 ]
  tail call void @kfree(ptr noundef nonnull %7) #5
  br label %37

37:                                               ; preds = %35, %27, %5, %3
  %38 = phi i32 [ %36, %35 ], [ 0, %27 ], [ -22, %3 ], [ -12, %5 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_set_dedicated_wake_irq_reverse(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call fastcc i32 @__dev_pm_set_dedicated_wake_irq(ptr noundef %0, i32 noundef %1, i32 noundef 4)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_enable_wake_irq(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.wake_irq, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.wake_irq, ptr %3, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  tail call void @enable_irq(i32 noundef %12) #5
  br label %13

13:                                               ; preds = %10, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_disable_wake_irq(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.wake_irq, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.wake_irq, ptr %3, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  tail call void @disable_irq_nosync(i32 noundef %12) #5
  br label %13

13:                                               ; preds = %10, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_enable_wake_irq_check(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wake_irq, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %6
  %12 = and i32 %8, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17, !prof !8

14:                                               ; preds = %11
  br i1 %1, label %15, label %25

15:                                               ; preds = %14
  %16 = or i32 %8, 2
  store i32 %16, ptr %7, align 4
  br label %18

17:                                               ; preds = %11
  br i1 %1, label %18, label %22

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ %8, %17 ]
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %17
  %23 = getelementptr inbounds %struct.wake_irq, ptr %4, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  tail call void @enable_irq(i32 noundef %24) #5
  br label %25

25:                                               ; preds = %22, %18, %14, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_disable_wake_irq_check(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wake_irq, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  %12 = and i32 %8, 4
  %13 = icmp ne i32 %12, 0
  %14 = select i1 %1, i1 %13, i1 false
  %15 = and i32 %8, 2
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.wake_irq, ptr %4, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  tail call void @disable_irq_nosync(i32 noundef %20) #5
  br label %21

21:                                               ; preds = %18, %11, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_enable_wake_irq_complete(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.wake_irq, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 6
  %9 = icmp eq i32 %8, 6
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.wake_irq, ptr %3, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  tail call void @enable_irq(i32 noundef %12) #5
  br label %13

13:                                               ; preds = %10, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_arm_wake_irq(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %29, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.wake_irq, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, i32 18
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.wake_irq, ptr %0, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  tail call void @enable_irq(i32 noundef %24) #5
  br label %25

25:                                               ; preds = %22, %18, %13
  %26 = getelementptr inbounds %struct.wake_irq, ptr %0, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 @irq_set_irq_wake(i32 noundef %27, i32 noundef 1) #5
  br label %29

29:                                               ; preds = %25, %9, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_disarm_wake_irq(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 11, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.wake_irq, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @irq_set_irq_wake(i32 noundef %15, i32 noundef 0) #5
  %17 = getelementptr inbounds %struct.wake_irq, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %13
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 11, i32 18
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load i32, ptr %14, align 4
  tail call void @disable_irq_nosync(i32 noundef %27) #5
  br label %28

28:                                               ; preds = %26, %21, %13, %9, %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_wakeup_attach_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @handle_threaded_wake_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @irq_get_irq_data(i32 noundef %0) #5
  %4 = getelementptr inbounds %struct.irq_data, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 16384
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr %1, align 4
  br i1 %8, label %11, label %10

10:                                               ; preds = %2
  tail call void @pm_wakeup_dev_event(ptr noundef %9, i32 noundef 0, i1 noundef zeroext false) #5
  br label %16

11:                                               ; preds = %2
  %12 = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 0) #5
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.3, i32 noundef %12) #6
  br label %16

16:                                               ; preds = %14, %11, %10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind allocsize(2) }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
