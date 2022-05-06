; ModuleID = '/llk/IR/drivers/base/soc.c_pt.bc'
source_filename = "../drivers/base/soc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_soc_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22soc_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_soc_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_soc_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22soc_device_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_soc_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_soc_device_match:\09\09\09\09\09"
module asm "\09.asciz \09\22soc_device_match\22\09\09\09\09\09"
module asm "__kstrtabns_soc_device_match:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.soc_device = type { %struct.device, ptr, i32 }
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

@soc_bus_type = internal global %struct.bus_type { ptr @.str.1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@early_soc_dev_attr = internal unnamed_addr global ptr null, align 4
@soc_attr_group = internal constant %struct.attribute_group { ptr null, ptr @soc_attribute_mode, ptr null, ptr @soc_attr, ptr null }, align 4
@soc_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@.str = private unnamed_addr constant [6 x i8] c"soc%d\00", align 1
@__kstrtab_soc_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_soc_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_soc_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @soc_device_register to i32), ptr @__kstrtab_soc_device_register, ptr @__kstrtabns_soc_device_register }, section "___ksymtab_gpl+soc_device_register", align 4
@__kstrtab_soc_device_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_soc_device_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_soc_device_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @soc_device_unregister to i32), ptr @__kstrtab_soc_device_unregister, ptr @__kstrtabns_soc_device_unregister }, section "___ksymtab_gpl+soc_device_unregister", align 4
@__initcall__kmod_soc__166_192_soc_bus_register1 = internal global ptr @soc_bus_register, section ".initcall1.init", align 4
@__kstrtab_soc_device_match = external dso_local constant [0 x i8], align 1
@__kstrtabns_soc_device_match = external dso_local constant [0 x i8], align 1
@__ksymtab_soc_device_match = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @soc_device_match to i32), ptr @__kstrtab_soc_device_match, ptr @__kstrtabns_soc_device_match }, section "___ksymtab_gpl+soc_device_match", align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"soc\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@soc_attr = internal global [6 x ptr] [ptr @dev_attr_machine, ptr @dev_attr_family, ptr @dev_attr_serial_number, ptr @dev_attr_soc_id, ptr @dev_attr_revision, ptr null], align 4
@dev_attr_machine = internal global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292 }, ptr @soc_info_show, ptr null }, align 4
@dev_attr_family = internal global %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @soc_info_show, ptr null }, align 4
@dev_attr_revision = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @soc_info_show, ptr null }, align 4
@dev_attr_serial_number = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @soc_info_show, ptr null }, align 4
@dev_attr_soc_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @soc_info_show, ptr null }, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"machine\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"family\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"revision\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"serial_number\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"soc_id\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__initcall__kmod_soc__166_192_soc_bus_register1, ptr @__ksymtab_soc_device_match, ptr @__ksymtab_soc_device_register, ptr @__ksymtab_soc_device_unregister], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @soc_device_to_device(ptr noundef readnone returned %0) local_unnamed_addr #0 {
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @soc_device_register(ptr noundef %0) #1 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.bus_type, ptr @soc_bus_type, i32 0, i32 20), align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = load ptr, ptr @early_soc_dev_attr, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %39

7:                                                ; preds = %4
  store ptr %0, ptr @early_soc_dev_attr, align 4
  br label %39

8:                                                ; preds = %1
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 480) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %36, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 12) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %34, label %16

16:                                               ; preds = %12
  store ptr @soc_attr_group, ptr %14, align 8
  %17 = getelementptr inbounds %struct.soc_device_attribute, ptr %0, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr ptr, ptr %14, i32 1
  store ptr %18, ptr %19, align 4
  %20 = tail call i32 @ida_alloc_range(ptr noundef nonnull @soc_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #9
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.soc_device, ptr %10, i32 0, i32 2
  store i32 %20, ptr %23, align 4
  %24 = getelementptr inbounds %struct.soc_device, ptr %10, i32 0, i32 1
  store ptr %0, ptr %24, align 8
  %25 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 5
  store ptr @soc_bus_type, ptr %25, align 4
  %26 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 32
  store ptr %14, ptr %26, align 8
  %27 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 33
  store ptr @soc_release, ptr %27, align 4
  %28 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %10, ptr noundef nonnull @.str, i32 noundef %20) #9
  %29 = tail call i32 @device_register(ptr noundef nonnull %10) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %22
  tail call void @put_device(ptr noundef nonnull %10) #9
  %32 = inttoptr i32 %29 to ptr
  br label %39

33:                                               ; preds = %16
  tail call void @kfree(ptr noundef nonnull %14) #9
  br label %34

34:                                               ; preds = %33, %12
  %35 = phi i32 [ %20, %33 ], [ -12, %12 ]
  tail call void @kfree(ptr noundef nonnull %10) #9
  br label %36

36:                                               ; preds = %34, %8
  %37 = phi i32 [ %35, %34 ], [ -12, %8 ]
  %38 = inttoptr i32 %37 to ptr
  br label %39

39:                                               ; preds = %36, %31, %22, %7, %4
  %40 = phi ptr [ %38, %36 ], [ %32, %31 ], [ null, %7 ], [ %10, %22 ], [ inttoptr (i32 -16 to ptr), %4 ]
  ret ptr %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @soc_release(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.soc_device, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  tail call void @ida_free(ptr noundef nonnull @soc_ida, i32 noundef %3) #9
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 32
  %5 = load ptr, ptr %4, align 8
  tail call void @kfree(ptr noundef %5) #9
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @soc_device_unregister(ptr noundef %0) #1 {
  tail call void @device_unregister(ptr noundef %0) #9
  store ptr null, ptr @early_soc_dev_attr, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @soc_bus_register() #3 section ".init.text" {
  %1 = tail call i32 @bus_register(ptr noundef nonnull @soc_bus_type) #9
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = load ptr, ptr @early_soc_dev_attr, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @soc_device_register(ptr noundef nonnull %4)
  %8 = ptrtoint ptr %7 to i32
  br label %9

9:                                                ; preds = %6, %3, %0
  %10 = phi i32 [ %8, %6 ], [ %1, %0 ], [ 0, %3 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @soc_device_match(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %34, label %3

3:                                                ; preds = %32, %1
  %4 = phi ptr [ %33, %32 ], [ %0, %1 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.soc_device_attribute, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.soc_device_attribute, ptr %4, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.soc_device_attribute, ptr %4, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %34, label %19

19:                                               ; preds = %15, %11, %7, %3
  %20 = tail call i32 @bus_for_each_dev(ptr noundef nonnull @soc_bus_type, ptr noundef null, ptr noundef %4, ptr noundef nonnull @soc_device_match_one) #9
  %21 = icmp slt i32 %20, 0
  %22 = load ptr, ptr @early_soc_dev_attr, align 4
  %23 = icmp ne ptr %22, null
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = tail call fastcc i32 @soc_device_match_attr(ptr noundef nonnull %22, ptr noundef %4)
  br label %27

27:                                               ; preds = %25, %19
  %28 = phi i32 [ %26, %25 ], [ %20, %19 ]
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = icmp eq i32 %28, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = getelementptr %struct.soc_device_attribute, ptr %4, i32 1
  br label %3

34:                                               ; preds = %30, %27, %15, %1
  %35 = phi ptr [ null, %1 ], [ null, %15 ], [ %4, %30 ], [ null, %27 ]
  ret ptr %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @soc_device_match_one(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.soc_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc i32 @soc_device_match_attr(ptr noundef %4, ptr noundef %1)
  ret i32 %5
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc i32 @soc_device_match_attr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %41, label %8

8:                                                ; preds = %5
  %9 = tail call zeroext i1 @glob_match(ptr noundef nonnull %3, ptr noundef nonnull %6) #10
  br i1 %9, label %10, label %41

10:                                               ; preds = %8, %2
  %11 = getelementptr inbounds %struct.soc_device_attribute, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.soc_device_attribute, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %41, label %18

18:                                               ; preds = %14
  %19 = tail call zeroext i1 @glob_match(ptr noundef nonnull %12, ptr noundef nonnull %16) #10
  br i1 %19, label %20, label %41

20:                                               ; preds = %18, %10
  %21 = getelementptr inbounds %struct.soc_device_attribute, ptr %1, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.soc_device_attribute, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %24
  %29 = tail call zeroext i1 @glob_match(ptr noundef nonnull %22, ptr noundef nonnull %26) #10
  br i1 %29, label %30, label %41

30:                                               ; preds = %28, %20
  %31 = getelementptr inbounds %struct.soc_device_attribute, ptr %1, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.soc_device_attribute, ptr %0, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = tail call zeroext i1 @glob_match(ptr noundef nonnull %32, ptr noundef nonnull %36) #10
  br i1 %39, label %40, label %41

40:                                               ; preds = %38, %30
  br label %41

41:                                               ; preds = %40, %38, %34, %28, %24, %18, %14, %8, %5
  %42 = phi i32 [ 1, %40 ], [ 0, %8 ], [ 0, %5 ], [ 0, %18 ], [ 0, %14 ], [ 0, %28 ], [ 0, %24 ], [ 0, %38 ], [ 0, %34 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @soc_attribute_mode(ptr nocapture noundef readonly %0, ptr noundef readnone %1, i32 noundef %2) #6 {
  %4 = icmp eq ptr %1, @dev_attr_machine
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.soc_device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  br label %32

8:                                                ; preds = %3
  %9 = icmp eq ptr %1, @dev_attr_family
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.soc_device, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.soc_device_attribute, ptr %12, i32 0, i32 1
  br label %32

14:                                               ; preds = %8
  %15 = icmp eq ptr %1, @dev_attr_revision
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.soc_device, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.soc_device_attribute, ptr %18, i32 0, i32 2
  br label %32

20:                                               ; preds = %14
  %21 = icmp eq ptr %1, @dev_attr_serial_number
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.soc_device, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.soc_device_attribute, ptr %24, i32 0, i32 3
  br label %32

26:                                               ; preds = %20
  %27 = icmp eq ptr %1, @dev_attr_soc_id
  br i1 %27, label %28, label %39

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.soc_device, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.soc_device_attribute, ptr %30, i32 0, i32 4
  br label %32

32:                                               ; preds = %28, %22, %16, %10, %5
  %33 = phi ptr [ %25, %22 ], [ %19, %16 ], [ %13, %10 ], [ %7, %5 ], [ %31, %28 ]
  %34 = phi ptr [ getelementptr inbounds (%struct.device_attribute, ptr @dev_attr_serial_number, i32 0, i32 0, i32 1), %22 ], [ getelementptr inbounds (%struct.device_attribute, ptr @dev_attr_revision, i32 0, i32 0, i32 1), %16 ], [ getelementptr inbounds (%struct.device_attribute, ptr @dev_attr_family, i32 0, i32 0, i32 1), %10 ], [ getelementptr inbounds (%struct.device_attribute, ptr @dev_attr_machine, i32 0, i32 0, i32 1), %5 ], [ getelementptr inbounds (%struct.device_attribute, ptr @dev_attr_soc_id, i32 0, i32 0, i32 1), %28 ]
  %35 = load ptr, ptr %33, align 4
  %36 = icmp eq ptr %35, null
  %37 = load i16, ptr %34, align 4
  %38 = select i1 %36, i16 0, i16 %37
  br label %39

39:                                               ; preds = %32, %26
  %40 = phi i16 [ 0, %26 ], [ %38, %32 ]
  ret i16 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @soc_info_show(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef %2) #1 {
  %4 = icmp eq ptr %1, @dev_attr_machine
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.soc_device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  br label %32

8:                                                ; preds = %3
  %9 = icmp eq ptr %1, @dev_attr_family
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.soc_device, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.soc_device_attribute, ptr %12, i32 0, i32 1
  br label %32

14:                                               ; preds = %8
  %15 = icmp eq ptr %1, @dev_attr_revision
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.soc_device, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.soc_device_attribute, ptr %18, i32 0, i32 2
  br label %32

20:                                               ; preds = %14
  %21 = icmp eq ptr %1, @dev_attr_serial_number
  br i1 %21, label %22, label %26

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.soc_device, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.soc_device_attribute, ptr %24, i32 0, i32 3
  br label %32

26:                                               ; preds = %20
  %27 = icmp eq ptr %1, @dev_attr_soc_id
  br i1 %27, label %28, label %36

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.soc_device, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.soc_device_attribute, ptr %30, i32 0, i32 4
  br label %32

32:                                               ; preds = %28, %22, %16, %10, %5
  %33 = phi ptr [ %7, %5 ], [ %13, %10 ], [ %19, %16 ], [ %25, %22 ], [ %31, %28 ]
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.3, ptr noundef %34) #9
  br label %36

36:                                               ; preds = %32, %26
  %37 = phi i32 [ %35, %32 ], [ -22, %26 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local zeroext i1 @glob_match(ptr noundef, ptr noundef) local_unnamed_addr #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }

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
