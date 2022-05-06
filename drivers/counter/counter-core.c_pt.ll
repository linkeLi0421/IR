; ModuleID = '/llk/IR/drivers/counter/counter-core.c_pt.bc'
source_filename = "../drivers/counter/counter-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_counter_priv:\09\09\09\09\09"
module asm "\09.asciz \09\22counter_priv\22\09\09\09\09\09"
module asm "__kstrtabns_counter_priv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_counter_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22counter_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_counter_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_counter_put:\09\09\09\09\09"
module asm "\09.asciz \09\22counter_put\22\09\09\09\09\09"
module asm "__kstrtabns_counter_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_counter_add:\09\09\09\09\09"
module asm "\09.asciz \09\22counter_add\22\09\09\09\09\09"
module asm "__kstrtabns_counter_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_counter_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22counter_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_counter_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_counter_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_counter_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_devm_counter_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_counter_add:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_counter_add\22\09\09\09\09\09"
module asm "__kstrtabns_devm_counter_add:\09\09\09\09\09"
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
%struct.lock_class_key = type {}
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.counter_device_allochelper = type { %struct.counter_device, [8 x i8], [0 x i32] }
%struct.counter_device = type { ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.device, %struct.cdev, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.anon.63, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, %struct.mutex }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.anon.63 = type { %union.anon.64, [0 x %struct.counter_event] }
%union.anon.64 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.counter_event = type { i64, i64, %struct.counter_watch, i8 }
%struct.counter_watch = type { %struct.counter_component, i8, i8 }
%struct.counter_component = type { i8, i8, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@__kstrtab_counter_priv = external dso_local constant [0 x i8], align 1
@__kstrtabns_counter_priv = external dso_local constant [0 x i8], align 1
@__ksymtab_counter_priv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @counter_priv to i32), ptr @__kstrtab_counter_priv, ptr @__kstrtabns_counter_priv }, section "___ksymtab_gpl+counter_priv", align 4
@counter_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@counter_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [25 x i8] c"&counter->ops_exist_lock\00", align 1
@counter_device_type = internal global %struct.device_type { ptr @.str.1, ptr null, ptr null, ptr null, ptr @counter_device_release, ptr null }, align 4
@counter_bus_type = internal global %struct.bus_type { ptr @.str.2, ptr @.str.2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@counter_devt = internal global i32 0, align 4
@__kstrtab_counter_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_counter_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_counter_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @counter_alloc to i32), ptr @__kstrtab_counter_alloc, ptr @__kstrtabns_counter_alloc }, section "___ksymtab_gpl+counter_alloc", align 4
@__kstrtab_counter_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_counter_put = external dso_local constant [0 x i8], align 1
@__ksymtab_counter_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @counter_put to i32), ptr @__kstrtab_counter_put, ptr @__kstrtabns_counter_put }, section "___ksymtab_gpl+counter_put", align 4
@__kstrtab_counter_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_counter_add = external dso_local constant [0 x i8], align 1
@__ksymtab_counter_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @counter_add to i32), ptr @__kstrtab_counter_add, ptr @__kstrtabns_counter_add }, section "___ksymtab_gpl+counter_add", align 4
@__kstrtab_counter_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_counter_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_counter_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @counter_unregister to i32), ptr @__kstrtab_counter_unregister, ptr @__kstrtabns_counter_unregister }, section "___ksymtab_gpl+counter_unregister", align 4
@__kstrtab_devm_counter_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_counter_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_counter_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_counter_alloc to i32), ptr @__kstrtab_devm_counter_alloc, ptr @__kstrtabns_devm_counter_alloc }, section "___ksymtab_gpl+devm_counter_alloc", align 4
@__kstrtab_devm_counter_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_counter_add = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_counter_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_counter_add to i32), ptr @__kstrtab_devm_counter_add, ptr @__kstrtabns_devm_counter_add }, section "___ksymtab_gpl+devm_counter_add", align 4
@__UNIQUE_ID_author220 = internal constant [55 x i8] c"author=William Breathitt Gray <vilhelm.gray@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description221 = internal constant [38 x i8] c"description=Generic Counter interface\00", section ".modinfo", align 1
@__UNIQUE_ID_license222 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"counter_device\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"counter\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author220, ptr @__UNIQUE_ID_description221, ptr @__UNIQUE_ID_license222, ptr @__ksymtab_counter_add, ptr @__ksymtab_counter_alloc, ptr @__ksymtab_counter_priv, ptr @__ksymtab_counter_put, ptr @__ksymtab_counter_unregister, ptr @__ksymtab_devm_counter_add, ptr @__ksymtab_devm_counter_alloc], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @counter_priv(ptr noundef readnone %0) #0 {
  %2 = getelementptr inbounds %struct.counter_device_allochelper, ptr %0, i32 0, i32 2
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @counter_alloc(i32 noundef %0) #1 {
  %2 = add i32 %0, 704
  %3 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.counter_device, ptr %3, i32 0, i32 9
  %7 = tail call i32 @ida_alloc_range(ptr noundef nonnull @counter_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #6
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.counter_device, ptr %3, i32 0, i32 9, i32 28
  store i32 %7, ptr %10, align 4
  %11 = getelementptr inbounds %struct.counter_device, ptr %3, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef nonnull @counter_alloc.__key) #6
  %12 = getelementptr inbounds %struct.counter_device, ptr %3, i32 0, i32 9, i32 4
  store ptr @counter_device_type, ptr %12, align 8
  %13 = getelementptr inbounds %struct.counter_device, ptr %3, i32 0, i32 9, i32 5
  store ptr @counter_bus_type, ptr %13, align 4
  %14 = load i32, ptr @counter_devt, align 4
  %15 = and i32 %14, -1048576
  %16 = load i32, ptr %10, align 4
  %17 = or i32 %15, %16
  %18 = getelementptr inbounds %struct.counter_device, ptr %3, i32 0, i32 9, i32 27
  store i32 %17, ptr %18, align 16
  %19 = tail call i32 @counter_chrdev_add(ptr noundef nonnull %3) #6
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %9
  tail call void @device_initialize(ptr noundef %6) #6
  br label %25

22:                                               ; preds = %9
  %23 = load i32, ptr %10, align 4
  tail call void @ida_free(ptr noundef nonnull @counter_ida, i32 noundef %23) #6
  br label %24

24:                                               ; preds = %22, %5
  tail call void @kfree(ptr noundef nonnull %3) #6
  br label %25

25:                                               ; preds = %24, %21, %1
  %26 = phi ptr [ null, %24 ], [ %3, %21 ], [ null, %1 ]
  ret ptr %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @counter_chrdev_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @counter_put(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 9
  tail call void @put_device(ptr noundef %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @counter_add(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 9
  %3 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 9, i32 1
  store ptr %4, ptr %7, align 4
  %8 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 9, i32 25
  store ptr %9, ptr %10, align 8
  br label %11

11:                                               ; preds = %6, %1
  %12 = tail call i32 @counter_sysfs_add(ptr noundef %0) #6
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 10
  %16 = tail call i32 @cdev_device_add(ptr noundef %15, ptr noundef %2) #6
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i32 [ %16, %14 ], [ %12, %11 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @counter_sysfs_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @counter_unregister(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 10
  %5 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 9
  tail call void @cdev_device_del(ptr noundef %4, ptr noundef %5) #6
  %6 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %6) #6
  %7 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 2
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %8, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  tail call void @mutex_unlock(ptr noundef %6) #6
  br label %9

9:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_counter_alloc(ptr noundef %0, i32 noundef %1) #1 {
  %3 = tail call ptr @counter_alloc(i32 noundef %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_counter_put, ptr noundef nonnull %3) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.counter_device, ptr %3, i32 0, i32 9
  tail call void @put_device(ptr noundef %9) #6
  br label %10

10:                                               ; preds = %8, %5
  %11 = icmp slt i32 %6, 0
  %12 = select i1 %11, ptr null, ptr %3
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi ptr [ null, %2 ], [ %12, %10 ]
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_counter_put(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 9
  tail call void @put_device(ptr noundef %2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_counter_add(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 9
  %4 = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 9, i32 1
  store ptr %5, ptr %8, align 4
  %9 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 9, i32 25
  store ptr %10, ptr %11, align 8
  br label %12

12:                                               ; preds = %7, %2
  %13 = tail call i32 @counter_sysfs_add(ptr noundef %1) #6
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 10
  %17 = tail call i32 @cdev_device_add(ptr noundef %16, ptr noundef %3) #6
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_counter_release, ptr noundef %1) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = icmp eq ptr %1, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %22
  tail call void @cdev_device_del(ptr noundef %16, ptr noundef %3) #6
  %25 = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %25) #6
  %26 = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 2
  store ptr null, ptr %26, align 8
  %27 = getelementptr inbounds %struct.counter_device, ptr %1, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %27, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  tail call void @mutex_unlock(ptr noundef %25) #6
  br label %28

28:                                               ; preds = %24, %22, %19, %15, %12
  %29 = phi i32 [ %17, %15 ], [ %20, %24 ], [ %20, %22 ], [ 0, %19 ], [ %13, %12 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_counter_release(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 10
  %5 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 9
  tail call void @cdev_device_del(ptr noundef %4, ptr noundef %5) #6
  %6 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %6) #6
  %7 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 2
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds %struct.counter_device, ptr %0, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %8, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  tail call void @mutex_unlock(ptr noundef %6) #6
  br label %9

9:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 @bus_register(ptr noundef nonnull @counter_bus_type) #6
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @counter_devt, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.2) #6
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @bus_unregister(ptr noundef nonnull @counter_bus_type) #6
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ %4, %6 ], [ %1, %0 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #3 section ".exit.text" {
  %1 = load i32, ptr @counter_devt, align 4
  tail call void @unregister_chrdev_region(i32 noundef %1, i32 noundef 256) #6
  tail call void @bus_unregister(ptr noundef nonnull @counter_bus_type) #6
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @counter_device_release(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -40
  tail call void @counter_chrdev_remove(ptr noundef %2) #6
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 28
  %4 = load i32, ptr %3, align 4
  tail call void @ida_free(ptr noundef nonnull @counter_ida, i32 noundef %4) #6
  tail call void @kfree(ptr noundef %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @counter_chrdev_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind allocsize(0) }
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
