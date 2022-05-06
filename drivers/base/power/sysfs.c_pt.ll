; ModuleID = '/llk/IR/drivers/base/power/sysfs.c_pt.bc'
source_filename = "../drivers/base/power/sysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_group_name:\09\09\09\09\09"
module asm "\09.asciz \09\22power_group_name\22\09\09\09\09\09"
module asm "__kstrtabns_power_group_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.wakeup_source = type { ptr, i32, %struct.list_head, %struct.spinlock, ptr, %struct.timer_list, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, ptr, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_pm_qos = type { %struct.pm_qos_constraints, %struct.pm_qos_constraints, %struct.freq_constraints, %struct.pm_qos_flags, ptr, ptr, ptr }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.pm_qos_flags = type { %struct.list_head, i32 }
%struct.dev_pm_qos_request = type { i32, %union.anon.5, ptr }
%union.anon.5 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }

@power_group_name = dso_local constant [6 x i8] c"power\00", align 1
@__kstrtab_power_group_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_group_name = external dso_local constant [0 x i8], align 1
@__ksymtab_power_group_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_group_name to i32), ptr @__kstrtab_power_group_name, ptr @__kstrtabns_power_group_name }, section "___ksymtab_gpl+power_group_name", align 4
@pm_attr_group = internal constant %struct.attribute_group { ptr @power_group_name, ptr null, ptr null, ptr @power_attrs, ptr null }, align 4
@pm_runtime_attr_group = internal constant %struct.attribute_group { ptr @power_group_name, ptr null, ptr null, ptr @runtime_attrs, ptr null }, align 4
@pm_wakeup_attr_group = internal constant %struct.attribute_group { ptr @power_group_name, ptr null, ptr null, ptr @wakeup_attrs, ptr null }, align 4
@pm_qos_latency_tolerance_attr_group = internal constant %struct.attribute_group { ptr @power_group_name, ptr null, ptr null, ptr @pm_qos_latency_tolerance_attrs, ptr null }, align 4
@pm_qos_resume_latency_attr_group = internal constant %struct.attribute_group { ptr @power_group_name, ptr null, ptr null, ptr @pm_qos_resume_latency_attrs, ptr null }, align 4
@pm_qos_flags_attr_group = internal constant %struct.attribute_group { ptr @power_group_name, ptr null, ptr null, ptr @pm_qos_flags_attrs, ptr null }, align 4
@power_attrs = internal global [1 x ptr] zeroinitializer, align 4
@runtime_attrs = internal global [6 x ptr] [ptr @dev_attr_runtime_status, ptr @dev_attr_control, ptr @dev_attr_runtime_suspended_time, ptr @dev_attr_runtime_active_time, ptr @dev_attr_autosuspend_delay_ms, ptr null], align 4
@dev_attr_runtime_status = internal global %struct.device_attribute { %struct.attribute { ptr @.str, i16 292 }, ptr @runtime_status_show, ptr null }, align 4
@dev_attr_control = internal global %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 420 }, ptr @control_show, ptr @control_store }, align 4
@dev_attr_runtime_suspended_time = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @runtime_suspended_time_show, ptr null }, align 4
@dev_attr_runtime_active_time = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292 }, ptr @runtime_active_time_show, ptr null }, align 4
@dev_attr_autosuspend_delay_ms = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420 }, ptr @autosuspend_delay_ms_show, ptr @autosuspend_delay_ms_store }, align 4
@.str = private unnamed_addr constant [15 x i8] c"runtime_status\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"unsupported\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"suspended\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"suspending\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"resuming\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@ctrl_on = internal constant [3 x i8] c"on\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"runtime_suspended_time\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"runtime_active_time\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"autosuspend_delay_ms\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@wakeup_attrs = internal global [10 x ptr] [ptr @dev_attr_wakeup, ptr @dev_attr_wakeup_count, ptr @dev_attr_wakeup_active_count, ptr @dev_attr_wakeup_abort_count, ptr @dev_attr_wakeup_expire_count, ptr @dev_attr_wakeup_active, ptr @dev_attr_wakeup_total_time_ms, ptr @dev_attr_wakeup_max_time_ms, ptr @dev_attr_wakeup_last_time_ms, ptr null], align 4
@dev_attr_wakeup = internal global %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420 }, ptr @wakeup_show, ptr @wakeup_store }, align 4
@dev_attr_wakeup_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292 }, ptr @wakeup_count_show, ptr null }, align 4
@dev_attr_wakeup_active_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292 }, ptr @wakeup_active_count_show, ptr null }, align 4
@dev_attr_wakeup_abort_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292 }, ptr @wakeup_abort_count_show, ptr null }, align 4
@dev_attr_wakeup_expire_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292 }, ptr @wakeup_expire_count_show, ptr null }, align 4
@dev_attr_wakeup_active = internal global %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292 }, ptr @wakeup_active_show, ptr null }, align 4
@dev_attr_wakeup_total_time_ms = internal global %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292 }, ptr @wakeup_total_time_ms_show, ptr null }, align 4
@dev_attr_wakeup_max_time_ms = internal global %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292 }, ptr @wakeup_max_time_ms_show, ptr null }, align 4
@dev_attr_wakeup_last_time_ms = internal global %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292 }, ptr @wakeup_last_time_ms_show, ptr null }, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"wakeup\00", align 1
@_enabled = internal constant [8 x i8] c"enabled\00", align 1
@_disabled = internal constant [9 x i8] c"disabled\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"wakeup_count\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"wakeup_active_count\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"wakeup_abort_count\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"wakeup_expire_count\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"wakeup_active\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"wakeup_total_time_ms\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"wakeup_max_time_ms\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"wakeup_last_time_ms\00", align 1
@pm_qos_latency_tolerance_attrs = internal global [2 x ptr] [ptr @dev_attr_pm_qos_latency_tolerance_us, ptr null], align 4
@dev_attr_pm_qos_latency_tolerance_us = internal global %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420 }, ptr @pm_qos_latency_tolerance_us_show, ptr @pm_qos_latency_tolerance_us_store }, align 4
@.str.28 = private unnamed_addr constant [28 x i8] c"pm_qos_latency_tolerance_us\00", align 1
@.str.29 = private constant [5 x i8] c"auto\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@pm_qos_resume_latency_attrs = internal global [2 x ptr] [ptr @dev_attr_pm_qos_resume_latency_us, ptr null], align 4
@dev_attr_pm_qos_resume_latency_us = internal global %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420 }, ptr @pm_qos_resume_latency_us_show, ptr @pm_qos_resume_latency_us_store }, align 4
@.str.31 = private unnamed_addr constant [25 x i8] c"pm_qos_resume_latency_us\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"n/a\0A\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"n/a\00", align 1
@pm_qos_flags_attrs = internal global [2 x ptr] [ptr @dev_attr_pm_qos_no_power_off, ptr null], align 4
@dev_attr_pm_qos_no_power_off = internal global %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420 }, ptr @pm_qos_no_power_off_show, ptr @pm_qos_no_power_off_store }, align 4
@.str.34 = private unnamed_addr constant [20 x i8] c"pm_qos_no_power_off\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_power_group_name], section "llvm.metadata"
@switch.table.runtime_status_show = private unnamed_addr constant [4 x ptr] [ptr @.str.6, ptr @.str.5, ptr @.str.3, ptr @.str.4], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpm_sysfs_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 128
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %41

6:                                                ; preds = %1
  %7 = tail call i32 @sysfs_create_group(ptr noundef %0, ptr noundef nonnull @pm_attr_group) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %11 = load i16, ptr %10, align 8
  %12 = and i16 %11, 512
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = tail call i32 @sysfs_merge_group(ptr noundef %0, ptr noundef nonnull @pm_runtime_attr_group) #4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %14, %9
  %18 = load i16, ptr %2, align 4
  %19 = and i16 %18, 1
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @sysfs_merge_group(ptr noundef %0, ptr noundef nonnull @pm_wakeup_attr_group) #4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %21, %17
  %25 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 27
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @sysfs_merge_group(ptr noundef %0, ptr noundef nonnull @pm_qos_latency_tolerance_attr_group) #4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28, %24
  %32 = tail call i32 @pm_wakeup_source_sysfs_add(ptr noundef %0) #4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  tail call void @sysfs_unmerge_group(ptr noundef %0, ptr noundef nonnull @pm_qos_latency_tolerance_attr_group) #4
  br label %35

35:                                               ; preds = %34, %28
  %36 = phi i32 [ %29, %28 ], [ %32, %34 ]
  tail call void @sysfs_unmerge_group(ptr noundef %0, ptr noundef nonnull @pm_wakeup_attr_group) #4
  br label %37

37:                                               ; preds = %35, %21
  %38 = phi i32 [ %22, %21 ], [ %36, %35 ]
  tail call void @sysfs_unmerge_group(ptr noundef %0, ptr noundef nonnull @pm_runtime_attr_group) #4
  br label %39

39:                                               ; preds = %37, %14
  %40 = phi i32 [ %38, %37 ], [ %15, %14 ]
  tail call void @sysfs_remove_group(ptr noundef %0, ptr noundef nonnull @pm_attr_group) #4
  br label %41

41:                                               ; preds = %39, %31, %6, %1
  %42 = phi i32 [ %40, %39 ], [ 0, %1 ], [ %7, %6 ], [ 0, %31 ]
  ret i32 %42
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_merge_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_wakeup_source_sysfs_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_unmerge_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpm_sysfs_change_owner(ptr noundef %0, [1 x i32] %1, [1 x i32] %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 128
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %45

8:                                                ; preds = %3
  %9 = tail call i32 @sysfs_group_change_owner(ptr noundef %0, ptr noundef nonnull @pm_attr_group, [1 x i32] %1, [1 x i32] %2) #4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %45

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %13 = load i16, ptr %12, align 8
  %14 = and i16 %13, 512
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = tail call i32 @sysfs_group_change_owner(ptr noundef %0, ptr noundef nonnull @pm_runtime_attr_group, [1 x i32] %1, [1 x i32] %2) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %16, %11
  %20 = load i16, ptr %4, align 4
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @sysfs_group_change_owner(ptr noundef %0, ptr noundef nonnull @pm_wakeup_attr_group, [1 x i32] %1, [1 x i32] %2) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.wakeup_source, ptr %28, i32 0, i32 17
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @device_change_owner(ptr noundef nonnull %32, [1 x i32] %1, [1 x i32] %2) #4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34, %30, %26, %19
  %38 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 27
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = tail call i32 @sysfs_group_change_owner(ptr noundef %0, ptr noundef nonnull @pm_qos_latency_tolerance_attr_group, [1 x i32] %1, [1 x i32] %2) #4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %37
  br label %45

45:                                               ; preds = %44, %41, %34, %23, %16, %8, %3
  %46 = phi i32 [ 0, %44 ], [ 0, %3 ], [ %9, %8 ], [ %17, %16 ], [ %24, %23 ], [ %35, %34 ], [ %42, %41 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_group_change_owner(ptr noundef, ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wakeup_sysfs_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @sysfs_merge_group(ptr noundef %0, ptr noundef nonnull @pm_wakeup_attr_group) #4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @kobject_uevent(ptr noundef %0, i32 noundef 2) #4
  br label %6

6:                                                ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wakeup_sysfs_remove(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @sysfs_unmerge_group(ptr noundef %0, ptr noundef nonnull @pm_wakeup_attr_group) #4
  %2 = tail call i32 @kobject_uevent(ptr noundef %0, i32 noundef 2) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pm_qos_sysfs_add_resume_latency(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @sysfs_merge_group(ptr noundef %0, ptr noundef nonnull @pm_qos_resume_latency_attr_group) #4
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_qos_sysfs_remove_resume_latency(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @sysfs_unmerge_group(ptr noundef %0, ptr noundef nonnull @pm_qos_resume_latency_attr_group) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pm_qos_sysfs_add_flags(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @sysfs_merge_group(ptr noundef %0, ptr noundef nonnull @pm_qos_flags_attr_group) #4
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_qos_sysfs_remove_flags(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @sysfs_unmerge_group(ptr noundef %0, ptr noundef nonnull @pm_qos_flags_attr_group) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pm_qos_sysfs_add_latency_tolerance(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @sysfs_merge_group(ptr noundef %0, ptr noundef nonnull @pm_qos_latency_tolerance_attr_group) #4
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_qos_sysfs_remove_latency_tolerance(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @sysfs_unmerge_group(ptr noundef %0, ptr noundef nonnull @pm_qos_latency_tolerance_attr_group) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rpm_sysfs_remove(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @sysfs_unmerge_group(ptr noundef %0, ptr noundef nonnull @pm_runtime_attr_group) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpm_sysfs_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 128
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @sysfs_unmerge_group(ptr noundef %0, ptr noundef nonnull @pm_qos_latency_tolerance_attr_group) #4
  tail call void @dev_pm_qos_constraints_destroy(ptr noundef %0) #4
  tail call void @sysfs_unmerge_group(ptr noundef %0, ptr noundef nonnull @pm_runtime_attr_group) #4
  tail call void @sysfs_unmerge_group(ptr noundef %0, ptr noundef nonnull @pm_wakeup_attr_group) #4
  tail call void @sysfs_remove_group(ptr noundef %0, ptr noundef nonnull @pm_attr_group) #4
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_qos_constraints_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @runtime_status_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 20
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %9 = load i16, ptr %8, align 8
  %10 = and i16 %9, 7
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = getelementptr inbounds [4 x ptr], ptr @switch.table.runtime_status_show, i32 0, i32 %14
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %7, %3
  %20 = phi ptr [ @.str.1, %3 ], [ @.str.2, %7 ], [ %18, %16 ]
  %21 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef nonnull %20) #4
  br label %22

22:                                               ; preds = %19, %12
  %23 = phi i32 [ %21, %19 ], [ -5, %12 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @control_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 128
  %7 = icmp eq i16 %6, 0
  %8 = select i1 %7, ptr @ctrl_on, ptr @.str.29
  %9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef nonnull %8) #4
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @control_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %5) #4
  %6 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.29) #4
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @pm_runtime_allow(ptr noundef %0) #4
  br label %11

8:                                                ; preds = %4
  %9 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @ctrl_on) #4
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  tail call void @pm_runtime_forbid(ptr noundef %0) #4
  br label %11

11:                                               ; preds = %10, %8, %7
  %12 = phi i32 [ %3, %7 ], [ %3, %10 ], [ -22, %8 ]
  tail call void @mutex_unlock(ptr noundef %5) #4
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @runtime_suspended_time_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call i64 @pm_runtime_suspended_time(ptr noundef %0) #4
  %5 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %4) #5, !srcloc !8
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %4, i64 %5, i32 0) #5, !srcloc !9
  %7 = extractvalue { i64, i32 } %6, 0
  %8 = lshr i64 %7, 18
  %9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.10, i64 noundef %8) #4
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @pm_runtime_suspended_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @runtime_active_time_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call i64 @pm_runtime_active_time(ptr noundef %0) #4
  %5 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %4) #5, !srcloc !8
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %4, i64 %5, i32 0) #5, !srcloc !9
  %7 = extractvalue { i64, i32 } %6, 0
  %8 = lshr i64 %7, 18
  %9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.10, i64 noundef %8) #4
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @pm_runtime_active_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @autosuspend_delay_ms_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 2048
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 21
  %10 = load i32, ptr %9, align 8
  %11 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef %10) #4
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i32 [ %11, %8 ], [ -5, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @autosuspend_delay_ms_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4, !annotation !10
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 2048
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %4
  %11 = call i32 @_kstrtol(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  call void @mutex_lock(ptr noundef %14) #4
  %15 = load i32, ptr %5, align 4
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %0, i32 noundef %15) #4
  call void @mutex_unlock(ptr noundef %14) #4
  br label %16

16:                                               ; preds = %13, %10, %4
  %17 = phi i32 [ %3, %13 ], [ -5, %4 ], [ -22, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wakeup_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, ptr @_disabled, ptr @_enabled
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi ptr [ %12, %8 ], [ @.str.15, %3 ]
  %15 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef nonnull %14) #4
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wakeup_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %4
  %10 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @_enabled) #4
  br i1 %10, label %13, label %11

11:                                               ; preds = %9
  %12 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @_disabled) #4
  br i1 %12, label %13, label %15

13:                                               ; preds = %11, %9
  %14 = tail call i32 @device_set_wakeup_enable(ptr noundef %0, i1 noundef zeroext %10) #4
  br label %15

15:                                               ; preds = %13, %11, %4
  %16 = phi i32 [ -22, %4 ], [ -22, %11 ], [ %3, %13 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wakeup_count_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wakeup_source, ptr %6, i32 0, i32 16
  %10 = load i32, ptr %9, align 8
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi i32 [ %10, %8 ], [ 0, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !11
  %13 = load i16, ptr %4, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !15
  br i1 %7, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.17) #4
  br label %19

17:                                               ; preds = %11
  %18 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %12) #4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %18, %17 ], [ %16, %15 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wakeup_active_count_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wakeup_source, ptr %6, i32 0, i32 13
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi i32 [ %10, %8 ], [ 0, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !11
  %13 = load i16, ptr %4, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !15
  br i1 %7, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.17) #4
  br label %19

17:                                               ; preds = %11
  %18 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %12) #4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %18, %17 ], [ %16, %15 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wakeup_abort_count_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wakeup_source, ptr %6, i32 0, i32 16
  %10 = load i32, ptr %9, align 8
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi i32 [ %10, %8 ], [ 0, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !11
  %13 = load i16, ptr %4, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !15
  br i1 %7, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.17) #4
  br label %19

17:                                               ; preds = %11
  %18 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %12) #4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %18, %17 ], [ %16, %15 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wakeup_expire_count_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wakeup_source, ptr %6, i32 0, i32 15
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi i32 [ %10, %8 ], [ 0, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !11
  %13 = load i16, ptr %4, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !15
  br i1 %7, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.17) #4
  br label %19

17:                                               ; preds = %11
  %18 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %12) #4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %18, %17 ], [ %16, %15 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wakeup_active_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wakeup_source, ptr %6, i32 0, i32 18
  %10 = load i8, ptr %9, align 8
  %11 = and i8 %10, 1
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ 0, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !11
  %15 = load i16, ptr %4, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !15
  br i1 %7, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.17) #4
  br label %21

19:                                               ; preds = %13
  %20 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef %14) #4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %20, %19 ], [ %18, %17 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wakeup_total_time_ms_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wakeup_source, ptr %6, i32 0, i32 7
  %10 = load i64, ptr %9, align 8
  %11 = tail call i64 @llvm.abs.i64(i64 %10, i1 false) #4
  %12 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %11) #5, !srcloc !8
  %13 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %11, i64 %12, i32 0) #5, !srcloc !9
  %14 = extractvalue { i64, i32 } %13, 0
  %15 = icmp slt i64 %10, 0
  %16 = lshr i64 %14, 18
  %17 = sub nsw i64 0, %16
  %18 = select i1 %15, i64 %17, i64 %16
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i64 [ %18, %8 ], [ 0, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !11
  %21 = load i16, ptr %4, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !15
  br i1 %7, label %23, label %25

23:                                               ; preds = %19
  %24 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.17) #4
  br label %27

25:                                               ; preds = %19
  %26 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.25, i64 noundef %20) #4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %26, %25 ], [ %24, %23 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wakeup_max_time_ms_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wakeup_source, ptr %6, i32 0, i32 8
  %10 = load i64, ptr %9, align 8
  %11 = tail call i64 @llvm.abs.i64(i64 %10, i1 false) #4
  %12 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %11) #5, !srcloc !8
  %13 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %11, i64 %12, i32 0) #5, !srcloc !9
  %14 = extractvalue { i64, i32 } %13, 0
  %15 = icmp slt i64 %10, 0
  %16 = lshr i64 %14, 18
  %17 = sub nsw i64 0, %16
  %18 = select i1 %15, i64 %17, i64 %16
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i64 [ %18, %8 ], [ 0, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !11
  %21 = load i16, ptr %4, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !15
  br i1 %7, label %23, label %25

23:                                               ; preds = %19
  %24 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.17) #4
  br label %27

25:                                               ; preds = %19
  %26 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.25, i64 noundef %20) #4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %26, %25 ], [ %24, %23 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wakeup_last_time_ms_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wakeup_source, ptr %6, i32 0, i32 9
  %10 = load i64, ptr %9, align 8
  %11 = tail call i64 @llvm.abs.i64(i64 %10, i1 false) #4
  %12 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %11) #5, !srcloc !8
  %13 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %11, i64 %12, i32 0) #5, !srcloc !9
  %14 = extractvalue { i64, i32 } %13, 0
  %15 = icmp slt i64 %10, 0
  %16 = lshr i64 %14, 18
  %17 = sub nsw i64 0, %16
  %18 = select i1 %15, i64 %17, i64 %16
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i64 [ %18, %8 ], [ 0, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !11
  %21 = load i16, ptr %4, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !15
  br i1 %7, label %23, label %25

23:                                               ; preds = %19
  %24 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.17) #4
  br label %27

25:                                               ; preds = %19
  %26 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.25, i64 noundef %20) #4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %26, %25 ], [ %24, %23 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm_qos_latency_tolerance_us_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call i32 @dev_pm_qos_get_user_latency_tolerance(ptr noundef %0) #4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.29) #4
  br label %14

8:                                                ; preds = %3
  %9 = icmp eq i32 %4, 2147483647
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30) #4
  br label %14

12:                                               ; preds = %8
  %13 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef %4) #4
  br label %14

14:                                               ; preds = %12, %10, %6
  %15 = phi i32 [ %7, %6 ], [ %11, %10 ], [ %13, %12 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm_qos_latency_tolerance_us_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4, !annotation !10
  %6 = call i32 @kstrtoint(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load i32, ptr %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %22, label %17

11:                                               ; preds = %4
  %12 = call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.29) #4
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  store i32 -1, ptr %5, align 4
  br label %17

14:                                               ; preds = %11
  %15 = call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.30) #4
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  store i32 2147483647, ptr %5, align 4
  br label %17

17:                                               ; preds = %16, %13, %8
  %18 = phi i32 [ -1, %13 ], [ 2147483647, %16 ], [ %9, %8 ]
  %19 = call i32 @dev_pm_qos_update_user_latency_tolerance(ptr noundef %0, i32 noundef %18) #4
  %20 = icmp slt i32 %19, 0
  %21 = select i1 %20, i32 %19, i32 %3
  br label %22

22:                                               ; preds = %17, %14, %8
  %23 = phi i32 [ %21, %17 ], [ -22, %8 ], [ -22, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_get_user_latency_tolerance(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_update_user_latency_tolerance(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_change_owner(ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm_qos_resume_latency_us_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 28
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dev_pm_qos, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dev_pm_qos_request, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.32) #4
  br label %17

13:                                               ; preds = %3
  %14 = icmp eq i32 %9, 2147483647
  %15 = select i1 %14, i32 0, i32 %9
  %16 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef %15) #4
  br label %17

17:                                               ; preds = %13, %11
  %18 = phi i32 [ %12, %11 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm_qos_resume_latency_us_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4, !annotation !10
  %6 = call i32 @kstrtoint(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = load i32, ptr %5, align 4
  %10 = icmp ugt i32 %9, 2147483646
  br i1 %10, label %26, label %11

11:                                               ; preds = %8
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  store i32 2147483647, ptr %5, align 4
  br label %17

14:                                               ; preds = %4
  %15 = call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.33) #4
  br i1 %15, label %16, label %26

16:                                               ; preds = %14
  store i32 0, ptr %5, align 4
  br label %17

17:                                               ; preds = %16, %13, %11
  %18 = phi i32 [ %9, %11 ], [ 2147483647, %13 ], [ 0, %16 ]
  %19 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 28
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.dev_pm_qos, ptr %20, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 @dev_pm_qos_update_request(ptr noundef %22, i32 noundef %18) #4
  %24 = icmp slt i32 %23, 0
  %25 = select i1 %24, i32 %23, i32 %3
  br label %26

26:                                               ; preds = %17, %14, %8
  %27 = phi i32 [ %25, %17 ], [ -22, %8 ], [ -22, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_update_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm_qos_no_power_off_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 28
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dev_pm_qos, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dev_pm_qos_request, ptr %7, i32 0, i32 1, i32 0, i32 1, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef %10) #4
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm_qos_no_power_off_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4, !annotation !10
  %6 = call i32 @kstrtoint(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = load i32, ptr %5, align 4
  %10 = icmp ugt i32 %9, 1
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = icmp ne i32 %9, 0
  %13 = call i32 @dev_pm_qos_update_flags(ptr noundef %0, i32 noundef 1, i1 noundef zeroext %12) #4
  %14 = icmp slt i32 %13, 0
  %15 = select i1 %14, i32 %13, i32 %3
  br label %16

16:                                               ; preds = %11, %8, %4
  %17 = phi i32 [ %15, %11 ], [ -22, %4 ], [ -22, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_update_flags(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

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
!8 = !{i64 1151790, i64 1151817}
!9 = !{i64 1152485, i64 1152512, i64 1152545, i64 1152566, i64 1152593, i64 1152619}
!10 = !{!"auto-init"}
!11 = !{i64 2149229511}
!12 = !{i64 2149225335}
!13 = !{i64 2149225410, i64 2149225437, i64 2149225484, i64 2149225506, i64 2149225534, i64 2149225554}
!14 = !{i64 621562}
!15 = !{i64 2149253655}
