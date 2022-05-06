; ModuleID = '/llk/IR/drivers/cpuidle/sysfs.c_pt.bc'
source_filename = "../drivers/cpuidle/sysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.sysfs_ops = type { ptr, ptr }
%struct.cpuidle_state_attr = type { %struct.attribute, ptr, ptr }
%struct.cpuidle_driver_attr = type { %struct.attribute, ptr, ptr }
%struct.lock_class_key = type {}
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x ptr], ptr, ptr, %struct.list_head, %struct.cpumask, ptr }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cpumask = type { [1 x i32] }
%struct.cpuidle_driver = type { ptr, ptr, i8, [10 x %struct.cpuidle_state], i32, i32, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.cpuidle_device_kobj = type { ptr, %struct.completion, %struct.kobject }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.cpuidle_state_kobj = type { ptr, ptr, %struct.completion, %struct.kobject, ptr }
%struct.cpuidle_driver_kobj = type { ptr, %struct.completion, %struct.kobject }
%struct.cpuidle_attr = type { %struct.attribute, ptr, ptr }

@cpuidle_attr_group = internal global %struct.attribute_group { ptr @.str, ptr null, ptr null, ptr @cpuidle_attrs, ptr null }, align 4
@ktype_cpuidle = internal global %struct.kobj_type { ptr @cpuidle_sysfs_release, ptr @cpuidle_sysfs_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [8 x i8] c"cpuidle\00", align 1
@cpuidle_attrs = internal global [5 x ptr] [ptr @dev_attr_available_governors, ptr @dev_attr_current_driver, ptr @dev_attr_current_governor, ptr @dev_attr_current_governor_ro, ptr null], align 4
@dev_attr_available_governors = internal global %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292 }, ptr @show_available_governors, ptr null }, align 4
@dev_attr_current_driver = internal global %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @show_current_driver, ptr null }, align 4
@dev_attr_current_governor = internal global %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 420 }, ptr @show_current_governor, ptr @store_current_governor }, align 4
@dev_attr_current_governor_ro = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @show_current_governor, ptr null }, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"available_governors\00", align 1
@cpuidle_lock = external dso_local global %struct.mutex, align 4
@cpuidle_governors = external dso_local global %struct.list_head, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"current_driver\00", align 1
@cpuidle_driver_lock = external dso_local global %struct.spinlock, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"current_governor\00", align 1
@cpuidle_curr_governor = external dso_local local_unnamed_addr global ptr, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"%16s\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"current_governor_ro\00", align 1
@ktype_state_cpuidle = internal global %struct.kobj_type { ptr @cpuidle_state_sysfs_release, ptr @cpuidle_state_sysfs_ops, ptr null, ptr @cpuidle_state_default_groups, ptr null, ptr null, ptr null }, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"state%d\00", align 1
@cpuidle_state_sysfs_ops = internal constant %struct.sysfs_ops { ptr @cpuidle_state_show, ptr @cpuidle_state_store }, align 4
@cpuidle_state_default_groups = internal global [2 x ptr] [ptr @cpuidle_state_default_group, ptr null], align 4
@cpuidle_state_default_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @cpuidle_state_default_attrs, ptr null }, align 4
@cpuidle_state_default_attrs = internal global [13 x ptr] [ptr @attr_name, ptr @attr_desc, ptr @attr_latency, ptr @attr_residency, ptr @attr_power, ptr @attr_usage, ptr @attr_rejected, ptr @attr_time, ptr @attr_disable, ptr @attr_above, ptr @attr_below, ptr @attr_default_status, ptr null], align 4
@attr_name = internal global %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.11, i16 292 }, ptr @show_state_name, ptr null }, align 4
@attr_desc = internal global %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.13, i16 292 }, ptr @show_state_desc, ptr null }, align 4
@attr_latency = internal global %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.14, i16 292 }, ptr @show_state_exit_latency, ptr null }, align 4
@attr_residency = internal global %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.16, i16 292 }, ptr @show_state_target_residency, ptr null }, align 4
@attr_power = internal global %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.17, i16 292 }, ptr @show_state_power_usage, ptr null }, align 4
@attr_usage = internal global %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.19, i16 292 }, ptr @show_state_usage, ptr null }, align 4
@attr_rejected = internal global %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.20, i16 292 }, ptr @show_state_rejected, ptr null }, align 4
@attr_time = internal global %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.21, i16 292 }, ptr @show_state_time, ptr null }, align 4
@attr_disable = internal global %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.22, i16 420 }, ptr @show_state_disable, ptr @store_state_disable }, align 4
@attr_above = internal global %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.23, i16 292 }, ptr @show_state_above, ptr null }, align 4
@attr_below = internal global %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.24, i16 292 }, ptr @show_state_below, ptr null }, align 4
@attr_default_status = internal global %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.25, i16 292 }, ptr @show_state_default_status, ptr null }, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"desc\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"latency\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"residency\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"usage\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"rejected\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"above\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"below\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"default_status\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@cpuidle_state_s2idle_group = internal constant %struct.attribute_group { ptr @.str.28, ptr null, ptr null, ptr @cpuidle_state_s2idle_attrs, ptr null }, align 4
@.str.28 = private unnamed_addr constant [7 x i8] c"s2idle\00", align 1
@cpuidle_state_s2idle_attrs = internal global [3 x ptr] [ptr @attr_s2idle_usage, ptr @attr_s2idle_time, ptr null], align 4
@attr_s2idle_usage = internal global %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.19, i16 292 }, ptr @show_state_s2idle_usage, ptr null }, align 4
@attr_s2idle_time = internal global %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.21, i16 292 }, ptr @show_state_s2idle_time, ptr null }, align 4
@ktype_driver_cpuidle = internal global %struct.kobj_type { ptr @cpuidle_driver_sysfs_release, ptr @cpuidle_driver_sysfs_ops, ptr null, ptr @cpuidle_driver_default_groups, ptr null, ptr null, ptr null }, align 4
@.str.29 = private unnamed_addr constant [7 x i8] c"driver\00", align 1
@cpuidle_driver_sysfs_ops = internal constant %struct.sysfs_ops { ptr @cpuidle_driver_show, ptr @cpuidle_driver_store }, align 4
@cpuidle_driver_default_groups = internal global [2 x ptr] [ptr @cpuidle_driver_default_group, ptr null], align 4
@cpuidle_driver_default_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @cpuidle_driver_default_attrs, ptr null }, align 4
@cpuidle_driver_default_attrs = internal global [2 x ptr] [ptr @attr_driver_name, ptr null], align 4
@attr_driver_name = internal global %struct.cpuidle_driver_attr { %struct.attribute { ptr @.str.11, i16 292 }, ptr @show_driver_name, ptr null }, align 4
@.str.30 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@cpuidle_sysfs_ops = internal constant %struct.sysfs_ops { ptr @cpuidle_show, ptr @cpuidle_store }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpuidle_add_interface(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @sysfs_create_group(ptr noundef %0, ptr noundef nonnull @cpuidle_attr_group) #10
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpuidle_remove_interface(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @sysfs_remove_group(ptr noundef %0, ptr noundef nonnull @cpuidle_attr_group) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpuidle_add_device_sysfs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @cpuidle_get_cpu_driver(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.cpuidle_driver, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %61

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.cpuidle_device_kobj, ptr %3, i32 0, i32 2
  br label %10

10:                                               ; preds = %33, %8
  %11 = phi i32 [ 0, %8 ], [ %36, %33 ]
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 64) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %39, label %15

15:                                               ; preds = %10
  %16 = getelementptr %struct.cpuidle_driver, ptr %4, i32 0, i32 3, i32 %11
  store ptr %16, ptr %13, align 8
  %17 = getelementptr %struct.cpuidle_device, ptr %0, i32 0, i32 7, i32 %11
  %18 = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %13, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %13, i32 0, i32 4
  store ptr %0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %13, i32 0, i32 2
  store i32 0, ptr %20, align 8
  %21 = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %13, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %21, ptr noundef nonnull @.str.31, ptr noundef nonnull @init_completion.__key) #10
  %22 = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %13, i32 0, i32 3
  %23 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %22, ptr noundef nonnull @ktype_state_cpuidle, ptr noundef %9, ptr noundef nonnull @.str.10, i32 noundef %11) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  tail call void @kobject_put(ptr noundef %22) #10
  tail call void @kfree(ptr noundef nonnull %13) #10
  br label %39

26:                                               ; preds = %15
  %27 = load ptr, ptr %13, align 8
  %28 = getelementptr inbounds %struct.cpuidle_state, ptr %27, i32 0, i32 10
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = tail call i32 @sysfs_create_group(ptr noundef %22, ptr noundef nonnull @cpuidle_state_s2idle_group) #10
  br label %33

33:                                               ; preds = %31, %26
  %34 = tail call i32 @kobject_uevent(ptr noundef %22, i32 noundef 0) #10
  %35 = getelementptr %struct.cpuidle_device, ptr %0, i32 0, i32 8, i32 %11
  store ptr %13, ptr %35, align 4
  %36 = add nuw nsw i32 %11, 1
  %37 = load i32, ptr %5, align 8
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %10, label %61

39:                                               ; preds = %25, %10
  %40 = phi i32 [ %23, %25 ], [ -12, %10 ]
  %41 = icmp eq i32 %11, 0
  br i1 %41, label %80, label %42

42:                                               ; preds = %54, %39
  %43 = phi i32 [ %44, %54 ], [ %11, %39 ]
  %44 = add nsw i32 %43, -1
  %45 = getelementptr %struct.cpuidle_device, ptr %0, i32 0, i32 8, i32 %44
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.cpuidle_state, ptr %47, i32 0, i32 10
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %46, i32 0, i32 3
  tail call void @sysfs_remove_group(ptr noundef %52, ptr noundef nonnull @cpuidle_state_s2idle_group) #10
  %53 = load ptr, ptr %45, align 4
  br label %54

54:                                               ; preds = %51, %42
  %55 = phi ptr [ %46, %42 ], [ %53, %51 ]
  %56 = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %55, i32 0, i32 3
  tail call void @kobject_put(ptr noundef %56) #10
  %57 = load ptr, ptr %45, align 4
  %58 = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %57, i32 0, i32 2
  tail call void @wait_for_completion(ptr noundef %58) #10
  %59 = load ptr, ptr %45, align 4
  tail call void @kfree(ptr noundef %59) #10
  store ptr null, ptr %45, align 4
  %60 = icmp sgt i32 %43, 1
  br i1 %60, label %42, label %80

61:                                               ; preds = %33, %1
  %62 = load ptr, ptr %2, align 4
  %63 = tail call ptr @cpuidle_get_cpu_driver(ptr noundef %0) #10
  %64 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %65 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 3520, i32 noundef 56) #11
  %66 = icmp eq ptr %65, null
  br i1 %66, label %78, label %67

67:                                               ; preds = %61
  store ptr %63, ptr %65, align 8
  %68 = getelementptr inbounds %struct.cpuidle_driver_kobj, ptr %65, i32 0, i32 1
  store i32 0, ptr %68, align 4
  %69 = getelementptr inbounds %struct.cpuidle_driver_kobj, ptr %65, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %69, ptr noundef nonnull @.str.31, ptr noundef nonnull @init_completion.__key) #10
  %70 = getelementptr inbounds %struct.cpuidle_driver_kobj, ptr %65, i32 0, i32 2
  %71 = getelementptr inbounds %struct.cpuidle_device_kobj, ptr %62, i32 0, i32 2
  %72 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %70, ptr noundef nonnull @ktype_driver_cpuidle, ptr noundef %71, ptr noundef nonnull @.str.29) #10
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %67
  tail call void @kobject_put(ptr noundef %70) #10
  tail call void @kfree(ptr noundef nonnull %65) #10
  br label %78

75:                                               ; preds = %67
  %76 = tail call i32 @kobject_uevent(ptr noundef %70, i32 noundef 0) #10
  %77 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 9
  store ptr %65, ptr %77, align 8
  br label %80

78:                                               ; preds = %74, %61
  %79 = phi i32 [ -12, %61 ], [ %72, %74 ]
  tail call fastcc void @cpuidle_remove_state_sysfs(ptr noundef %0)
  br label %80

80:                                               ; preds = %78, %75, %54, %39
  %81 = phi i32 [ %79, %78 ], [ 0, %75 ], [ %40, %39 ], [ %40, %54 ]
  ret i32 %81
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpuidle_remove_state_sysfs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @cpuidle_get_cpu_driver(ptr noundef %0) #10
  %3 = getelementptr inbounds %struct.cpuidle_driver, ptr %2, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %17, %1
  %7 = phi i32 [ %23, %17 ], [ 0, %1 ]
  %8 = getelementptr %struct.cpuidle_device, ptr %0, i32 0, i32 8, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.cpuidle_state, ptr %10, i32 0, i32 10
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %9, i32 0, i32 3
  tail call void @sysfs_remove_group(ptr noundef %15, ptr noundef nonnull @cpuidle_state_s2idle_group) #10
  %16 = load ptr, ptr %8, align 4
  br label %17

17:                                               ; preds = %14, %6
  %18 = phi ptr [ %9, %6 ], [ %16, %14 ]
  %19 = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %18, i32 0, i32 3
  tail call void @kobject_put(ptr noundef %19) #10
  %20 = load ptr, ptr %8, align 4
  %21 = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %20, i32 0, i32 2
  tail call void @wait_for_completion(ptr noundef %21) #10
  %22 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %22) #10
  store ptr null, ptr %8, align 4
  %23 = add nuw nsw i32 %7, 1
  %24 = load i32, ptr %3, align 8
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %6, label %26

26:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpuidle_remove_device_sysfs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cpuidle_driver_kobj, ptr %3, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.cpuidle_driver_kobj, ptr %3, i32 0, i32 1
  tail call void @wait_for_completion(ptr noundef %5) #10
  tail call void @kfree(ptr noundef %3) #10
  tail call fastcc void @cpuidle_remove_state_sysfs(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpuidle_add_sysfs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = tail call ptr @get_cpu_device(i32 noundef %3) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 56) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  store ptr %0, ptr %8, align 8
  %11 = getelementptr inbounds %struct.cpuidle_device_kobj, ptr %8, i32 0, i32 1
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.cpuidle_device_kobj, ptr %8, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %12, ptr noundef nonnull @.str.31, ptr noundef nonnull @init_completion.__key) #10
  %13 = getelementptr inbounds %struct.cpuidle_device_kobj, ptr %8, i32 0, i32 2
  %14 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %13, ptr noundef nonnull @ktype_cpuidle, ptr noundef nonnull %4, ptr noundef nonnull @.str) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call void @kobject_put(ptr noundef %13) #10
  tail call void @kfree(ptr noundef nonnull %8) #10
  br label %20

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 10
  store ptr %8, ptr %18, align 4
  %19 = tail call i32 @kobject_uevent(ptr noundef %13, i32 noundef 0) #10
  br label %20

20:                                               ; preds = %17, %16, %6, %1
  %21 = phi i32 [ %14, %16 ], [ 0, %17 ], [ -19, %1 ], [ -12, %6 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpuidle_remove_sysfs(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cpuidle_device_kobj, ptr %3, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.cpuidle_device_kobj, ptr %3, i32 0, i32 1
  tail call void @wait_for_completion(ptr noundef %5) #10
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_available_governors(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @cpuidle_lock) #10
  %4 = load ptr, ptr @cpuidle_governors, align 4
  %5 = icmp eq ptr %4, @cpuidle_governors
  br i1 %5, label %17, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %13, %6 ], [ %4, %3 ]
  %8 = phi i32 [ %12, %6 ], [ 0, %3 ]
  %9 = getelementptr i8, ptr %7, i32 -16
  %10 = getelementptr i8, ptr %2, i32 %8
  %11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %10, i32 noundef 17, ptr noundef nonnull @.str.2, ptr noundef %9) #10
  %12 = add i32 %11, %8
  %13 = load ptr, ptr %7, align 4
  %14 = icmp eq ptr %13, @cpuidle_governors
  %15 = icmp sgt i32 %12, 4077
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %17, label %6

17:                                               ; preds = %6, %3
  %18 = phi i32 [ 0, %3 ], [ %12, %6 ]
  %19 = getelementptr i8, ptr %2, i32 %18
  store i16 10, ptr %19, align 1
  %20 = add i32 %18, 1
  tail call void @mutex_unlock(ptr noundef nonnull @cpuidle_lock) #10
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_current_driver(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @cpuidle_driver_lock) #10
  %4 = tail call ptr @cpuidle_get_driver() #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.5, ptr noundef %7)
  br label %10

9:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.6, i32 6, i1 false)
  br label %10

10:                                               ; preds = %9, %6
  %11 = phi i32 [ %8, %6 ], [ 5, %9 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %12 = load i16, ptr @cpuidle_driver_lock, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr @cpuidle_driver_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpuidle_get_driver() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_current_governor(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @cpuidle_lock) #10
  %4 = load ptr, ptr @cpuidle_curr_governor, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.5, ptr noundef nonnull %4)
  br label %9

8:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) @.str.6, i32 6, i1 false)
  br label %9

9:                                                ; preds = %8, %6
  %10 = phi i32 [ %7, %6 ], [ 5, %8 ]
  tail call void @mutex_unlock(ptr noundef nonnull @cpuidle_lock) #10
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_current_governor(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca [17 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(17) %5, i8 0, i32 17, i1 false), !annotation !12
  %6 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef nonnull %5)
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  call void @mutex_lock(ptr noundef nonnull @cpuidle_lock) #10
  br label %9

9:                                                ; preds = %14, %8
  %10 = phi ptr [ @cpuidle_governors, %8 ], [ %11, %14 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @cpuidle_governors
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  call void @mutex_unlock(ptr noundef nonnull @cpuidle_lock) #10
  br label %22

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %11, i32 -16
  %16 = call i32 @strncmp(ptr noundef %15, ptr noundef nonnull %5, i32 noundef 16)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %9

18:                                               ; preds = %14
  %19 = call i32 @cpuidle_switch_governor(ptr noundef %15) #10
  call void @mutex_unlock(ptr noundef nonnull @cpuidle_lock) #10
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 %3, i32 %19
  br label %22

22:                                               ; preds = %18, %13, %4
  %23 = phi i32 [ -22, %4 ], [ -22, %13 ], [ %21, %18 ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %5) #10
  ret i32 %23
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_switch_governor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpuidle_get_cpu_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpuidle_state_sysfs_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -16
  tail call void @complete(ptr noundef %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpuidle_state_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.cpuidle_state_attr, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -20
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 -24
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %5(ptr noundef %11, ptr noundef %9, ptr noundef %2) #10
  br label %13

13:                                               ; preds = %7, %3
  %14 = phi i32 [ %12, %7 ], [ -5, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpuidle_state_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 36
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cpuidle_state_attr, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %0, i32 -24
  %12 = getelementptr i8, ptr %0, i32 -20
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %11, align 4
  %15 = tail call i32 %8(ptr noundef %14, ptr noundef %13, ptr noundef %2, i32 noundef %3) #10
  br label %16

16:                                               ; preds = %10, %4
  %17 = phi i32 [ %15, %10 ], [ -5, %4 ]
  %18 = getelementptr inbounds %struct.cpuidle_device, ptr %6, i32 0, i32 5
  store i64 0, ptr %18, align 8
  ret i32 %17
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_state_name(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = load i8, ptr %0, align 8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  store i64 2883385164131900, ptr %2, align 1
  br label %9

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.5, ptr noundef %0)
  br label %9

9:                                                ; preds = %7, %6
  %10 = phi i32 [ 7, %6 ], [ %8, %7 ]
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_state_desc(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr inbounds %struct.cpuidle_state, ptr %0, i32 0, i32 1
  %5 = load i8, ptr %4, align 8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store i64 2883385164131900, ptr %2, align 1
  br label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.5, ptr noundef %4)
  br label %10

10:                                               ; preds = %8, %7
  %11 = phi i32 [ 7, %7 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_state_exit_latency(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.cpuidle_state, ptr %0, i32 0, i32 2
  %5 = load i64, ptr %4, align 8
  %6 = tail call i64 @llvm.abs.i64(i64 %5, i1 false) #10
  %7 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %6, i32 0) #12, !srcloc !13
  %8 = extractvalue { i64, i32 } %7, 0
  %9 = extractvalue { i64, i32 } %7, 1
  %10 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %6, i64 %8, i32 %9) #12, !srcloc !14
  %11 = extractvalue { i64, i32 } %10, 0
  %12 = icmp slt i64 %5, 0
  %13 = lshr i64 %11, 9
  %14 = sub nsw i64 0, %13
  %15 = select i1 %12, i64 %14, i64 %13
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.15, i64 noundef %15)
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_state_target_residency(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.cpuidle_state, ptr %0, i32 0, i32 3
  %5 = load i64, ptr %4, align 8
  %6 = tail call i64 @llvm.abs.i64(i64 %5, i1 false) #10
  %7 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %6, i32 0) #12, !srcloc !13
  %8 = extractvalue { i64, i32 } %7, 0
  %9 = extractvalue { i64, i32 } %7, 1
  %10 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %6, i64 %8, i32 %9) #12, !srcloc !14
  %11 = extractvalue { i64, i32 } %10, 0
  %12 = icmp slt i64 %5, 0
  %13 = lshr i64 %11, 9
  %14 = sub nsw i64 0, %13
  %15 = select i1 %12, i64 %14, i64 %13
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.15, i64 noundef %15)
  ret i32 %16
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_state_power_usage(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr inbounds %struct.cpuidle_state, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_state_usage(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr inbounds %struct.cpuidle_state_usage, ptr %1, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.15, i64 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_state_rejected(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr inbounds %struct.cpuidle_state_usage, ptr %1, i32 0, i32 5
  %5 = load i64, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.15, i64 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_state_time(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.cpuidle_state_usage, ptr %1, i32 0, i32 2
  %5 = load i64, ptr %4, align 8
  %6 = tail call i64 @llvm.abs.i64(i64 %5, i1 false) #10
  %7 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %6, i32 0) #12, !srcloc !13
  %8 = extractvalue { i64, i32 } %7, 0
  %9 = extractvalue { i64, i32 } %7, 1
  %10 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %6, i64 %8, i32 %9) #12, !srcloc !14
  %11 = extractvalue { i64, i32 } %10, 0
  %12 = icmp slt i64 %5, 0
  %13 = lshr i64 %11, 9
  %14 = sub nsw i64 0, %13
  %15 = select i1 %12, i64 %14, i64 %13
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.15, i64 noundef %15)
  ret i32 %16
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_state_disable(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 1
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.15, i64 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_state_disable(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !12
  %6 = tail call zeroext i1 @capable(i32 noundef 21) #10
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = load i32, ptr %5, align 4
  %12 = icmp eq i32 %11, 0
  %13 = load i64, ptr %1, align 8
  %14 = and i64 %13, 4294967294
  %15 = or i64 %13, 1
  %16 = select i1 %12, i64 %14, i64 %15
  store i64 %16, ptr %1, align 8
  br label %17

17:                                               ; preds = %10, %7, %4
  %18 = phi i32 [ %3, %10 ], [ -1, %4 ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_state_above(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr inbounds %struct.cpuidle_state_usage, ptr %1, i32 0, i32 3
  %5 = load i64, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.15, i64 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_state_below(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr inbounds %struct.cpuidle_state_usage, ptr %1, i32 0, i32 4
  %5 = load i64, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.15, i64 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_state_default_status(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr inbounds %struct.cpuidle_state, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 16
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, ptr @.str.27, ptr @.str.26
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.5, ptr noundef nonnull %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_state_s2idle_usage(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr inbounds %struct.cpuidle_state_usage, ptr %1, i32 0, i32 6
  %5 = load i64, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.15, i64 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_state_s2idle_time(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr inbounds %struct.cpuidle_state_usage, ptr %1, i32 0, i32 7
  %5 = load i64, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.15, i64 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpuidle_driver_sysfs_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -16
  tail call void @complete(ptr noundef %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpuidle_driver_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.cpuidle_driver_attr, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -20
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %5(ptr noundef %9, ptr noundef %2) #10
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ -5, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpuidle_driver_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.cpuidle_driver_attr, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 -20
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %6(ptr noundef %10, ptr noundef %2, i32 noundef %3) #10
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %11, %8 ], [ -5, %4 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_driver_name(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @cpuidle_driver_lock) #10
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi ptr [ %5, %4 ], [ @.str.30, %2 ]
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef %7)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %9 = load i16, ptr @cpuidle_driver_lock, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr @cpuidle_driver_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cpuidle_sysfs_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -16
  tail call void @complete(ptr noundef %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpuidle_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.cpuidle_attr, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 -20
  %9 = load ptr, ptr %8, align 4
  tail call void @mutex_lock(ptr noundef nonnull @cpuidle_lock) #10
  %10 = load ptr, ptr %4, align 4
  %11 = tail call i32 %10(ptr noundef %9, ptr noundef %2) #10
  tail call void @mutex_unlock(ptr noundef nonnull @cpuidle_lock) #10
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %11, %7 ], [ -5, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpuidle_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.cpuidle_attr, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 -20
  %10 = load ptr, ptr %9, align 4
  tail call void @mutex_lock(ptr noundef nonnull @cpuidle_lock) #10
  %11 = load ptr, ptr %5, align 4
  %12 = tail call i32 %11(ptr noundef %10, ptr noundef %2, i32 noundef %3) #10
  tail call void @mutex_unlock(ptr noundef nonnull @cpuidle_lock) #10
  br label %13

13:                                               ; preds = %8, %4
  %14 = phi i32 [ %12, %8 ], [ -5, %4 ]
  ret i32 %14
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }

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
!8 = !{i64 2149091237}
!9 = !{i64 2149087061}
!10 = !{i64 2149087136, i64 2149087163, i64 2149087210, i64 2149087232, i64 2149087260, i64 2149087280}
!11 = !{i64 2149114240}
!12 = !{!"auto-init"}
!13 = !{i64 857687, i64 857714, i64 857736, i64 857764}
!14 = !{i64 858095, i64 858122, i64 858155, i64 858176, i64 858203, i64 858229}
