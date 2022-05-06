; ModuleID = '/llk/IR/sound/core/device.c_pt.bc'
source_filename = "../sound/core/device.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_device_new:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_device_new\22\09\09\09\09\09"
module asm "__kstrtabns_snd_device_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_device_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_device_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_snd_device_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_device_free:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_device_free\22\09\09\09\09\09"
module asm "__kstrtabns_snd_device_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_snd_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_device_get_state:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_device_get_state\22\09\09\09\09\09"
module asm "__kstrtabns_snd_device_get_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_device_ops = type { ptr, ptr, ptr }

@__kstrtab_snd_device_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_device_new = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_device_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_device_new to i32), ptr @__kstrtab_snd_device_new, ptr @__kstrtabns_snd_device_new }, section "___ksymtab+snd_device_new", align 4
@__kstrtab_snd_device_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_device_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_device_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_device_disconnect to i32), ptr @__kstrtab_snd_device_disconnect, ptr @__kstrtabns_snd_device_disconnect }, section "___ksymtab_gpl+snd_device_disconnect", align 4
@__kstrtab_snd_device_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_device_free = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_device_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_device_free to i32), ptr @__kstrtab_snd_device_free, ptr @__kstrtabns_snd_device_free }, section "___ksymtab+snd_device_free", align 4
@__kstrtab_snd_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_device_register to i32), ptr @__kstrtab_snd_device_register, ptr @__kstrtabns_snd_device_register }, section "___ksymtab+snd_device_register", align 4
@__kstrtab_snd_device_get_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_device_get_state = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_device_get_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_device_get_state to i32), ptr @__kstrtab_snd_device_get_state, ptr @__kstrtabns_snd_device_get_state }, section "___ksymtab_gpl+snd_device_get_state", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [27 x i8] c"device disconnect failure\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"device free failure\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_snd_device_disconnect, ptr @__ksymtab_snd_device_free, ptr @__ksymtab_snd_device_get_state, ptr @__ksymtab_snd_device_new, ptr @__ksymtab_snd_device_register], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_device_new(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %2, null
  %7 = icmp eq ptr %3, null
  %8 = or i1 %5, %6
  %9 = or i1 %8, %7
  br i1 %9, label %38, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 28) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %38, label %14

14:                                               ; preds = %10
  store volatile ptr %12, ptr %12, align 8
  %15 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %12, ptr %15, align 4
  %16 = getelementptr inbounds %struct.snd_device, ptr %12, i32 0, i32 1
  store ptr %0, ptr %16, align 8
  %17 = getelementptr inbounds %struct.snd_device, ptr %12, i32 0, i32 3
  store i32 %1, ptr %17, align 8
  %18 = getelementptr inbounds %struct.snd_device, ptr %12, i32 0, i32 2
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.snd_device, ptr %12, i32 0, i32 4
  store ptr %2, ptr %19, align 4
  %20 = getelementptr inbounds %struct.snd_device, ptr %12, i32 0, i32 5
  store ptr %3, ptr %20, align 8
  %21 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 11
  %22 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 11, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %21
  br i1 %24, label %34, label %25

25:                                               ; preds = %30, %14
  %26 = phi ptr [ %32, %30 ], [ %23, %14 ]
  %27 = getelementptr inbounds %struct.snd_device, ptr %26, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %28, %1
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %21
  br i1 %33, label %34, label %25

34:                                               ; preds = %30, %25, %14
  %35 = phi ptr [ %21, %14 ], [ %26, %25 ], [ %21, %30 ]
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  store ptr %12, ptr %37, align 4
  store ptr %36, ptr %12, align 8
  store ptr %35, ptr %15, align 4
  store volatile ptr %12, ptr %35, align 4
  br label %38

38:                                               ; preds = %34, %10, %4
  %39 = phi i32 [ 0, %34 ], [ -6, %4 ], [ -12, %10 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_device_disconnect(ptr noundef readonly %0, ptr noundef readnone %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %37, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 11
  br label %8

8:                                                ; preds = %12, %6
  %9 = phi ptr [ %7, %6 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %37, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.snd_device, ptr %10, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %8

16:                                               ; preds = %12
  %17 = icmp eq ptr %10, null
  br i1 %17, label %37, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.snd_device, ptr %10, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.snd_device, ptr %10, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.snd_device_ops, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %22
  %29 = tail call i32 %26(ptr noundef nonnull %10) #6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.snd_device, ptr %10, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.snd_card, ptr %33, i32 0, i32 27
  %35 = load ptr, ptr %34, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str) #7
  br label %36

36:                                               ; preds = %31, %28, %22
  store i32 2, ptr %19, align 4
  br label %37

37:                                               ; preds = %36, %18, %16, %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_device_free(ptr noundef readonly %0, ptr noundef readnone %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 11
  br label %8

8:                                                ; preds = %12, %6
  %9 = phi ptr [ %7, %6 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.snd_device, ptr %10, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %8

16:                                               ; preds = %12
  %17 = icmp eq ptr %10, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %16
  tail call fastcc void @__snd_device_free(ptr noundef nonnull %10)
  br label %19

19:                                               ; preds = %18, %16, %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__snd_device_free(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  store volatile ptr %4, ptr %3, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %2, align 4
  %6 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_device_ops, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %9
  %16 = tail call i32 %13(ptr noundef %0) #6
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 27
  %22 = load ptr, ptr %21, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str) #7
  br label %23

23:                                               ; preds = %18, %15, %9
  store i32 2, ptr %6, align 4
  br label %24

24:                                               ; preds = %23, %1
  %25 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %24
  %30 = tail call i32 %27(ptr noundef %0) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.snd_card, ptr %34, i32 0, i32 27
  %36 = load ptr, ptr %35, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.1) #7
  br label %37

37:                                               ; preds = %32, %29, %24
  tail call void @kfree(ptr noundef %0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_device_register(ptr noundef readonly %0, ptr noundef readnone %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %32, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 11
  br label %8

8:                                                ; preds = %12, %6
  %9 = phi ptr [ %7, %6 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %32, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.snd_device, ptr %10, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %8

16:                                               ; preds = %12
  %17 = icmp eq ptr %10, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.snd_device, ptr %10, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.snd_device, ptr %10, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.snd_device_ops, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = tail call i32 %26(ptr noundef nonnull %10) #6
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %22
  store i32 1, ptr %19, align 4
  br label %32

32:                                               ; preds = %31, %28, %18, %16, %8, %2
  %33 = phi i32 [ -6, %2 ], [ -6, %16 ], [ %29, %28 ], [ 0, %31 ], [ 0, %18 ], [ -6, %8 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_device_register_all(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %25, label %7

7:                                                ; preds = %22, %3
  %8 = phi ptr [ %23, %22 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.snd_device, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.snd_device, ptr %8, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.snd_device_ops, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = tail call i32 %16(ptr noundef %8) #6
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %18, %12
  store i32 1, ptr %9, align 4
  br label %22

22:                                               ; preds = %21, %7
  %23 = load ptr, ptr %8, align 4
  %24 = icmp eq ptr %23, %4
  br i1 %24, label %25, label %7

25:                                               ; preds = %22, %18, %3, %1
  %26 = phi i32 [ -6, %1 ], [ 0, %3 ], [ 0, %22 ], [ %19, %18 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_device_disconnect_all(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %32, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 11
  %5 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 11, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %4
  br i1 %7, label %32, label %8

8:                                                ; preds = %28, %3
  %9 = phi ptr [ %30, %28 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.snd_device, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.snd_device, ptr %9, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.snd_device_ops, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %13
  %20 = tail call i32 %17(ptr noundef %9) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.snd_device, ptr %9, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.snd_card, ptr %24, i32 0, i32 27
  %26 = load ptr, ptr %25, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str) #7
  br label %27

27:                                               ; preds = %22, %19, %13
  store i32 2, ptr %10, align 4
  br label %28

28:                                               ; preds = %27, %8
  %29 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %4
  br i1 %31, label %32, label %8

32:                                               ; preds = %28, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_device_free_all(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 11
  %5 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 11, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %4
  br i1 %7, label %25, label %8

8:                                                ; preds = %15, %3
  %9 = phi ptr [ %11, %15 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_device, ptr %9, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %14 [
    i32 11, label %15
    i32 0, label %15
  ]

14:                                               ; preds = %8
  tail call fastcc void @__snd_device_free(ptr noundef %9)
  br label %15

15:                                               ; preds = %14, %8, %8
  %16 = icmp eq ptr %11, %4
  br i1 %16, label %17, label %8

17:                                               ; preds = %15
  %18 = load ptr, ptr %5, align 4
  %19 = icmp eq ptr %18, %4
  br i1 %19, label %25, label %20

20:                                               ; preds = %20, %17
  %21 = phi ptr [ %23, %20 ], [ %18, %17 ]
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call fastcc void @__snd_device_free(ptr noundef %21)
  %24 = icmp eq ptr %23, %4
  br i1 %24, label %25, label %20

25:                                               ; preds = %20, %17, %3, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @snd_device_get_state(ptr noundef readonly %0, ptr noundef readnone %1) #1 {
  %3 = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 11
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.snd_device, ptr %6, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  %13 = icmp eq ptr %6, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.snd_device, ptr %6, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %12, %4
  %18 = phi i32 [ %16, %14 ], [ -1, %12 ], [ -1, %4 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind allocsize(2) }
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
