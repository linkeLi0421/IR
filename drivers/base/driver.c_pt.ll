; ModuleID = '/llk/IR/drivers/base/driver.c_pt.bc'
source_filename = "../drivers/base/driver.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_driver_for_each_device:\09\09\09\09\09"
module asm "\09.asciz \09\22driver_for_each_device\22\09\09\09\09\09"
module asm "__kstrtabns_driver_for_each_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_driver_find_device:\09\09\09\09\09"
module asm "\09.asciz \09\22driver_find_device\22\09\09\09\09\09"
module asm "__kstrtabns_driver_find_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_driver_create_file:\09\09\09\09\09"
module asm "\09.asciz \09\22driver_create_file\22\09\09\09\09\09"
module asm "__kstrtabns_driver_create_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_driver_remove_file:\09\09\09\09\09"
module asm "\09.asciz \09\22driver_remove_file\22\09\09\09\09\09"
module asm "__kstrtabns_driver_remove_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22driver_register\22\09\09\09\09\09"
module asm "__kstrtabns_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22driver_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_driver_find:\09\09\09\09\09"
module asm "\09.asciz \09\22driver_find\22\09\09\09\09\09"
module asm "__kstrtabns_driver_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.klist_iter = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.driver_private = type { %struct.kobject, %struct.klist, %struct.klist_node, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.klist_node = type { ptr, %struct.list_head, %struct.kref }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.device_private = type { %struct.klist, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.list_head, ptr, ptr, ptr, i8 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.subsys_private = type { %struct.kset, ptr, %struct.list_head, %struct.mutex, ptr, %struct.klist, %struct.klist, %struct.blocking_notifier_head, i8, ptr, %struct.kset, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, ptr }

@__kstrtab_driver_for_each_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_driver_for_each_device = external dso_local constant [0 x i8], align 1
@__ksymtab_driver_for_each_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @driver_for_each_device to i32), ptr @__kstrtab_driver_for_each_device, ptr @__kstrtabns_driver_for_each_device }, section "___ksymtab_gpl+driver_for_each_device", align 4
@__kstrtab_driver_find_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_driver_find_device = external dso_local constant [0 x i8], align 1
@__ksymtab_driver_find_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @driver_find_device to i32), ptr @__kstrtab_driver_find_device, ptr @__kstrtabns_driver_find_device }, section "___ksymtab_gpl+driver_find_device", align 4
@__kstrtab_driver_create_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_driver_create_file = external dso_local constant [0 x i8], align 1
@__ksymtab_driver_create_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @driver_create_file to i32), ptr @__kstrtab_driver_create_file, ptr @__kstrtabns_driver_create_file }, section "___ksymtab_gpl+driver_create_file", align 4
@__kstrtab_driver_remove_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_driver_remove_file = external dso_local constant [0 x i8], align 1
@__ksymtab_driver_remove_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @driver_remove_file to i32), ptr @__kstrtab_driver_remove_file, ptr @__kstrtabns_driver_remove_file }, section "___ksymtab_gpl+driver_remove_file", align 4
@.str = private unnamed_addr constant [94 x i8] c"\013Driver '%s' was unable to register with bus_type '%s' because the bus was not initialized.\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"\014Driver '%s' needs updating - please use bus_type methods\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"\013Error: Driver '%s' is already registered, aborting...\0A\00", align 1
@__kstrtab_driver_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_driver_register = external dso_local constant [0 x i8], align 1
@__ksymtab_driver_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @driver_register to i32), ptr @__kstrtab_driver_register, ptr @__kstrtabns_driver_register }, section "___ksymtab_gpl+driver_register", align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"drivers/base/driver.c\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Unexpected driver unregister!\0A\00", align 1
@__kstrtab_driver_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_driver_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_driver_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @driver_unregister to i32), ptr @__kstrtab_driver_unregister, ptr @__kstrtabns_driver_unregister }, section "___ksymtab_gpl+driver_unregister", align 4
@__kstrtab_driver_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_driver_find = external dso_local constant [0 x i8], align 1
@__ksymtab_driver_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @driver_find to i32), ptr @__kstrtab_driver_find, ptr @__kstrtabns_driver_find }, section "___ksymtab_gpl+driver_find", align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_driver_create_file, ptr @__ksymtab_driver_find, ptr @__ksymtab_driver_find_device, ptr @__ksymtab_driver_for_each_device, ptr @__ksymtab_driver_register, ptr @__ksymtab_driver_remove_file, ptr @__ksymtab_driver_unregister], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @driver_for_each_device(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca %struct.klist_iter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  store i64 0, ptr %5, align 8, !annotation !8
  %6 = icmp eq ptr %0, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 18
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.driver_private, ptr %9, i32 0, i32 1
  %11 = icmp eq ptr %1, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.device_private, ptr %14, i32 0, i32 2
  br label %16

16:                                               ; preds = %12, %7
  %17 = phi ptr [ %15, %12 ], [ null, %7 ]
  call void @klist_iter_init_node(ptr noundef %10, ptr noundef nonnull %5, ptr noundef %17) #4
  br label %18

18:                                               ; preds = %25, %16
  %19 = call ptr @klist_next(ptr noundef nonnull %5) #4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = getelementptr i8, ptr %19, i32 64
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = call i32 %3(ptr noundef nonnull %23, ptr noundef %2) #4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %18, label %28

28:                                               ; preds = %25, %21, %18
  %29 = phi i32 [ 0, %18 ], [ %26, %25 ], [ 0, %21 ]
  call void @klist_iter_exit(ptr noundef nonnull %5) #4
  br label %30

30:                                               ; preds = %28, %4
  %31 = phi i32 [ %29, %28 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  ret i32 %31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_iter_init_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_iter_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @driver_find_device(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca %struct.klist_iter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  store i64 0, ptr %5, align 8, !annotation !8
  %6 = icmp eq ptr %0, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 18
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %38, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.driver_private, ptr %9, i32 0, i32 1
  %13 = icmp eq ptr %1, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.device_private, ptr %16, i32 0, i32 2
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi ptr [ %17, %14 ], [ null, %11 ]
  call void @klist_iter_init_node(ptr noundef %12, ptr noundef nonnull %5, ptr noundef %19) #4
  %20 = call ptr @klist_next(ptr noundef nonnull %5) #4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %33, %18
  %23 = phi ptr [ %34, %33 ], [ %20, %18 ]
  %24 = getelementptr i8, ptr %23, i32 64
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %22
  %28 = call i32 %3(ptr noundef nonnull %25, ptr noundef %2) #4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = call ptr @get_device(ptr noundef nonnull %25) #4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %27
  %34 = call ptr @klist_next(ptr noundef nonnull %5) #4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %22

36:                                               ; preds = %33, %30, %22, %18
  %37 = phi ptr [ null, %18 ], [ null, %33 ], [ %25, %30 ], [ null, %22 ]
  call void @klist_iter_exit(ptr noundef nonnull %5) #4
  br label %38

38:                                               ; preds = %36, %7, %4
  %39 = phi ptr [ %37, %36 ], [ null, %7 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  ret ptr %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @driver_create_file(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 18
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @sysfs_create_file_ns(ptr noundef %6, ptr noundef %1, ptr noundef null) #4
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi i32 [ %7, %4 ], [ -22, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @driver_remove_file(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 18
  %6 = load ptr, ptr %5, align 4
  tail call void @sysfs_remove_file_ns(ptr noundef %6, ptr noundef %1, ptr noundef null) #4
  br label %7

7:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @driver_add_groups(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 18
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @sysfs_create_groups(ptr noundef %4, ptr noundef %1) #4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_groups(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @driver_remove_groups(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 18
  %4 = load ptr, ptr %3, align 4
  tail call void @sysfs_remove_groups(ptr noundef %4, ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_groups(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @driver_register(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bus_type, ptr %3, i32 0, i32 20
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 4
  %9 = load ptr, ptr %3, align 4
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %8, ptr noundef %9) #5
  br label %69

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.bus_type, ptr %3, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds %struct.bus_type, ptr %3, i32 0, i32 10
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 10
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds %struct.bus_type, ptr %3, i32 0, i32 11
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 11
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %31, %23, %15
  %36 = load ptr, ptr %0, align 4
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %36) #5
  %38 = load ptr, ptr %2, align 4
  %39 = getelementptr inbounds %struct.bus_type, ptr %38, i32 0, i32 20
  %40 = load ptr, ptr %39, align 4
  br label %41

41:                                               ; preds = %35, %31, %27
  %42 = phi ptr [ %40, %35 ], [ %5, %31 ], [ %5, %27 ]
  %43 = load ptr, ptr %0, align 4
  %44 = getelementptr inbounds %struct.subsys_private, ptr %42, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  %46 = tail call ptr @kset_find_obj(ptr noundef %45, ptr noundef %43) #4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  tail call void @kobject_put(ptr noundef nonnull %46) #4
  %49 = getelementptr inbounds %struct.driver_private, ptr %46, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %0, align 4
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %53) #5
  br label %69

55:                                               ; preds = %48, %41
  %56 = tail call i32 @bus_add_driver(ptr noundef %0) #4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 14
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 18
  %62 = load ptr, ptr %61, align 4
  %63 = tail call i32 @sysfs_create_groups(ptr noundef %62, ptr noundef %60) #4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  tail call void @bus_remove_driver(ptr noundef %0) #4
  br label %69

66:                                               ; preds = %58
  %67 = load ptr, ptr %61, align 4
  %68 = tail call i32 @kobject_uevent(ptr noundef %67, i32 noundef 0) #4
  br label %69

69:                                               ; preds = %66, %65, %55, %52, %7
  %70 = phi i32 [ -16, %52 ], [ %63, %65 ], [ 0, %66 ], [ -22, %7 ], [ %56, %55 ]
  ret i32 %70
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @driver_find(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.bus_type, ptr %1, i32 0, i32 20
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.subsys_private, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @kset_find_obj(ptr noundef %6, ptr noundef %0) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  tail call void @kobject_put(ptr noundef nonnull %7) #4
  %10 = getelementptr inbounds %struct.driver_private, ptr %7, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi ptr [ %11, %9 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_add_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_remove_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @driver_unregister(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 18
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 194, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 14
  %10 = load ptr, ptr %9, align 4
  tail call void @sysfs_remove_groups(ptr noundef nonnull %5, ptr noundef %10) #4
  tail call void @bus_remove_driver(ptr noundef nonnull %0) #4
  br label %11

11:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_find_obj(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @klist_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
