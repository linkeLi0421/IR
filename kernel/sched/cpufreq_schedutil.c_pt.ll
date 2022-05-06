; ModuleID = '/llk/IR/kernel/sched/cpufreq_schedutil.c_pt.bc'
source_filename = "../kernel/sched/cpufreq_schedutil.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpufreq_governor = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.sysfs_ops = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.governor_attr = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.sugov_cpu = type { %struct.update_util_data, ptr, i32, i8, i32, i64, i32, i32, i32, i32 }
%struct.update_util_data = type { ptr }
%struct.rq = type { %struct.raw_spinlock, i32, i32, i32, %struct.__call_single_data, i32, %struct.atomic_t, i32, i64, [8 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, i32, ptr, ptr, ptr, i32, ptr, i32, i64, [16 x i8], i64, i64, i32, %struct.atomic_t, i64, i32, i32, ptr, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [12 x i8], %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, i64, i64, i32, i64, i64, %struct.rcuwait, i32, i32, [12 x i8], %struct.__call_single_data, %struct.hrtimer, i64, ptr, i32, i32, %struct.cpu_stop_work, [20 x i8] }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i32, i64, i64, i64, %struct.rb_root_cached, ptr, ptr, ptr, ptr, i32, [52 x i8], %struct.sched_avg, i64, [56 x i8], %struct.anon.122 }
%struct.load_weight = type { i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon.122 = type { %struct.raw_spinlock, i32, i32, i32, i32, [44 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon.123, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock }
%struct.rt_prio_array = type { [4 x i32], [100 x %struct.list_head] }
%struct.anon.123 = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon.124, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon.124 = type { i64, i64 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.rcuwait = type { ptr }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.cpu_stop_work = type { %struct.list_head, ptr, i32, ptr, ptr }
%struct.sched_attr = type { i32, i32, i64, i32, i32, i64, i64, i64, i32, i32 }
%struct.cpufreq_policy = type { [1 x %struct.cpumask], [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpumask = type { [1 x i32] }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.sugov_policy = type { ptr, ptr, %struct.list_head, %struct.raw_spinlock, i64, i64, i32, i32, %struct.irq_work, %struct.kthread_work, %struct.mutex, %struct.kthread_worker, ptr, i8, i8, i8 }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.sugov_tunables = type { %struct.gov_attr_set, i32 }
%struct.gov_attr_set = type { %struct.kobject, %struct.list_head, %struct.mutex, i32 }

@schedutil_gov = dso_local global %struct.cpufreq_governor { [16 x i8] c"schedutil\00\00\00\00\00\00\00", ptr @sugov_init, ptr @sugov_exit, ptr @sugov_start, ptr @sugov_stop, ptr @sugov_limits, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i8 1 }, align 4
@__initcall__kmod_cpufreq_schedutil__450_837_schedutil_gov_init1 = internal global ptr @schedutil_gov_init, section ".initcall1.init", align 4
@global_tunables_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @global_tunables_lock, i64 12), ptr getelementptr (i8, ptr @global_tunables_lock, i64 12) } }, align 4
@global_tunables = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [33 x i8] c"kernel/sched/cpufreq_schedutil.c\00", align 1
@sugov_tunables_ktype = internal global %struct.kobj_type { ptr @sugov_tunables_free, ptr @governor_sysfs_ops, ptr null, ptr @sugov_groups, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"\013cpufreq_schedutil: initialization failed (error %d)\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@sugov_kthread_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"(&sg_policy->worker)->lock\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"sugov:%d\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"\013cpufreq_schedutil: failed to create sugov thread: %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"\014cpufreq_schedutil: %s: failed to set SCHED_DEADLINE\0A\00", align 1
@__func__.sugov_kthread_create = private unnamed_addr constant [21 x i8] c"sugov_kthread_create\00", align 1
@sugov_kthread_create.__key.7 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"&sg_policy->work_lock\00", align 1
@governor_sysfs_ops = external dso_local constant %struct.sysfs_ops, align 4
@sugov_groups = internal global [2 x ptr] [ptr @sugov_group, ptr null], align 4
@sugov_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sugov_attrs, ptr null }, align 4
@sugov_attrs = internal global [2 x ptr] [ptr @rate_limit_us, ptr null], align 4
@rate_limit_us = internal global %struct.governor_attr { %struct.attribute { ptr @.str.9, i16 420 }, ptr @rate_limit_us_show, ptr @rate_limit_us_store }, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"rate_limit_us\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@sugov_cpu = internal global %struct.sugov_cpu zeroinitializer, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@runqueues = external dso_local global %struct.rq, section ".data..percpu..shared_aligned", align 64
@cpu_scale = external dso_local global i32, section ".data..percpu", align 4
@sysctl_sched_features = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_cpufreq_schedutil__450_837_schedutil_gov_init1], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sugov_init(ptr noundef %0) #0 {
  %2 = alloca %struct.sched_attr, align 8
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %83

6:                                                ; preds = %1
  tail call void @cpufreq_enable_fast_switch(ptr noundef %0) #12
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 144) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %80, label %10

10:                                               ; preds = %6
  store ptr %0, ptr %8, align 8
  %11 = getelementptr inbounds %struct.sugov_policy, ptr %8, i32 0, i32 3
  store i32 0, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #12
  %12 = getelementptr inbounds i8, ptr %2, i32 16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %12, i8 0, i32 40, i1 false) #12
  store i32 56, ptr %2, align 8
  %13 = getelementptr inbounds %struct.sched_attr, ptr %2, i32 0, i32 1
  store i32 6, ptr %13, align 4
  %14 = getelementptr inbounds %struct.sched_attr, ptr %2, i32 0, i32 2
  store i64 268435456, ptr %14, align 8
  %15 = getelementptr inbounds %struct.sched_attr, ptr %2, i32 0, i32 5
  store i64 1000000, ptr %15, align 8
  %16 = getelementptr inbounds %struct.sched_attr, ptr %2, i32 0, i32 6
  store i64 10000000, ptr %16, align 8
  %17 = getelementptr inbounds %struct.sched_attr, ptr %2, i32 0, i32 7
  store i64 10000000, ptr %17, align 8
  %18 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 27
  %19 = load i8, ptr %18, align 1, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.sugov_policy, ptr %8, i32 0, i32 9
  %23 = getelementptr inbounds %struct.sugov_policy, ptr %8, i32 0, i32 9, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(20) %23, i8 0, i32 12, i1 false) #12
  store volatile ptr %22, ptr %22, align 8
  %24 = getelementptr inbounds %struct.sugov_policy, ptr %8, i32 0, i32 9, i32 0, i32 1
  store ptr %22, ptr %24, align 4
  store ptr @sugov_work, ptr %23, align 8
  %25 = getelementptr inbounds %struct.sugov_policy, ptr %8, i32 0, i32 11
  tail call void @__kthread_init_worker(ptr noundef %25, ptr noundef nonnull @.str.3, ptr noundef nonnull @sugov_kthread_create.__key) #12
  %26 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 1
  %27 = tail call i32 @_find_first_bit_le(ptr noundef %26, i32 noundef 16) #12
  %28 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @kthread_worker_fn, ptr noundef %25, i32 noundef -1, ptr noundef nonnull @.str.4, i32 noundef %27) #12
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %47, label %30

30:                                               ; preds = %21
  %31 = call i32 @sched_setattr_nocheck(ptr noundef %28, ptr noundef nonnull %2) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = call i32 @kthread_stop(ptr noundef %28) #12
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.sugov_kthread_create) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #12
  br label %78

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.sugov_policy, ptr %8, i32 0, i32 12
  store ptr %28, ptr %37, align 8
  call void @kthread_bind_mask(ptr noundef %28, ptr noundef %26) #12
  %38 = getelementptr inbounds %struct.sugov_policy, ptr %8, i32 0, i32 8
  store ptr null, ptr %38, align 8
  %39 = getelementptr inbounds %struct.sugov_policy, ptr %8, i32 0, i32 8, i32 0, i32 1
  store i32 0, ptr %39, align 4
  %40 = getelementptr inbounds %struct.sugov_policy, ptr %8, i32 0, i32 8, i32 1
  store ptr @sugov_irq_work, ptr %40, align 8
  %41 = getelementptr inbounds %struct.sugov_policy, ptr %8, i32 0, i32 8, i32 2
  store ptr null, ptr %41, align 4
  %42 = getelementptr inbounds %struct.sugov_policy, ptr %8, i32 0, i32 10
  call void @__mutex_init(ptr noundef %42, ptr noundef nonnull @.str.8, ptr noundef nonnull @sugov_kthread_create.__key.7) #12
  %43 = call i32 @wake_up_process(ptr noundef %28) #12
  br label %44

44:                                               ; preds = %36, %10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #12
  call void @mutex_lock(ptr noundef nonnull @global_tunables_lock) #12
  %45 = load ptr, ptr @global_tunables, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %57, label %50

47:                                               ; preds = %21
  %48 = ptrtoint ptr %28 to i32
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %48) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #12
  br label %78

50:                                               ; preds = %44
  %51 = call zeroext i1 @have_governor_per_policy() #12
  br i1 %51, label %52, label %53, !prof !9

52:                                               ; preds = %50
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 681, i32 noundef 9, ptr noundef null) #12
  br label %76

53:                                               ; preds = %50
  store ptr %8, ptr %3, align 4
  %54 = load ptr, ptr @global_tunables, align 4
  %55 = getelementptr inbounds %struct.sugov_policy, ptr %8, i32 0, i32 1
  store ptr %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.sugov_policy, ptr %8, i32 0, i32 2
  call void @gov_attr_set_get(ptr noundef %54, ptr noundef %56) #12
  br label %72

57:                                               ; preds = %44
  %58 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %59 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %58, i32 noundef 3520, i32 noundef 72) #13
  %60 = icmp eq ptr %59, null
  br i1 %60, label %76, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.sugov_policy, ptr %8, i32 0, i32 2
  call void @gov_attr_set_init(ptr noundef nonnull %59, ptr noundef %62) #12
  %63 = call zeroext i1 @have_governor_per_policy() #12
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  store ptr %59, ptr @global_tunables, align 4
  br label %65

65:                                               ; preds = %64, %61
  %66 = call i32 @cpufreq_policy_transition_delay_us(ptr noundef %0) #12
  %67 = getelementptr inbounds %struct.sugov_tunables, ptr %59, i32 0, i32 1
  store i32 %66, ptr %67, align 4
  store ptr %8, ptr %3, align 4
  %68 = getelementptr inbounds %struct.sugov_policy, ptr %8, i32 0, i32 1
  store ptr %59, ptr %68, align 4
  %69 = call ptr @get_governor_parent_kobj(ptr noundef %0) #12
  %70 = call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %59, ptr noundef nonnull @sugov_tunables_ktype, ptr noundef %69, ptr noundef nonnull @.str.1, ptr noundef nonnull @schedutil_gov) #12
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65, %53
  call void @mutex_unlock(ptr noundef nonnull @global_tunables_lock) #12
  br label %83

73:                                               ; preds = %65
  call void @kobject_put(ptr noundef nonnull %59) #12
  store ptr null, ptr %3, align 4
  %74 = call zeroext i1 @have_governor_per_policy() #12
  br i1 %74, label %76, label %75

75:                                               ; preds = %73
  store ptr null, ptr @global_tunables, align 4
  br label %76

76:                                               ; preds = %75, %73, %57, %52
  %77 = phi i32 [ -22, %52 ], [ -12, %57 ], [ %70, %73 ], [ %70, %75 ]
  call fastcc void @sugov_kthread_stop(ptr noundef nonnull %8)
  call void @mutex_unlock(ptr noundef nonnull @global_tunables_lock) #12
  br label %78

78:                                               ; preds = %76, %47, %33
  %79 = phi i32 [ %48, %47 ], [ %77, %76 ], [ %31, %33 ]
  call void @kfree(ptr noundef nonnull %8) #12
  br label %80

80:                                               ; preds = %78, %6
  %81 = phi i32 [ %79, %78 ], [ -12, %6 ]
  call void @cpufreq_disable_fast_switch(ptr noundef %0) #12
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %81) #14
  br label %83

83:                                               ; preds = %80, %72, %1
  %84 = phi i32 [ %81, %80 ], [ 0, %72 ], [ -16, %1 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sugov_exit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sugov_policy, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @mutex_lock(ptr noundef nonnull @global_tunables_lock) #12
  %6 = getelementptr inbounds %struct.sugov_policy, ptr %3, i32 0, i32 2
  %7 = tail call i32 @gov_attr_set_put(ptr noundef %5, ptr noundef %6) #12
  store ptr null, ptr %2, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = tail call zeroext i1 @have_governor_per_policy() #12
  br i1 %10, label %12, label %11

11:                                               ; preds = %9
  store ptr null, ptr @global_tunables, align 4
  br label %12

12:                                               ; preds = %11, %9, %1
  tail call void @mutex_unlock(ptr noundef nonnull @global_tunables_lock) #12
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct.cpufreq_policy, ptr %13, i32 0, i32 27
  %15 = load i8, ptr %14, align 1, !range !8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.sugov_policy, ptr %3, i32 0, i32 11
  tail call void @kthread_flush_worker(ptr noundef %18) #12
  %19 = getelementptr inbounds %struct.sugov_policy, ptr %3, i32 0, i32 12
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 @kthread_stop(ptr noundef %20) #12
  br label %22

22:                                               ; preds = %17, %12
  tail call void @kfree(ptr noundef %3) #12
  tail call void @cpufreq_disable_fast_switch(ptr noundef %0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sugov_start(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sugov_policy, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sugov_tunables, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = mul i32 %7, 1000
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.sugov_policy, ptr %3, i32 0, i32 5
  store i64 %9, ptr %10, align 8
  %11 = getelementptr inbounds %struct.sugov_policy, ptr %3, i32 0, i32 4
  store i64 0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.sugov_policy, ptr %3, i32 0, i32 6
  store i32 0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.sugov_policy, ptr %3, i32 0, i32 13
  store i8 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.sugov_policy, ptr %3, i32 0, i32 14
  store i8 0, ptr %14, align 1
  %15 = getelementptr inbounds %struct.sugov_policy, ptr %3, i32 0, i32 7
  store i32 0, ptr %15, align 4
  %16 = tail call zeroext i1 @cpufreq_driver_test_flags(i16 noundef zeroext 1) #12
  %17 = getelementptr inbounds %struct.sugov_policy, ptr %3, i32 0, i32 15
  %18 = zext i1 %16 to i8
  store i8 %18, ptr %17, align 2
  %19 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %0) #15
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %22, %1
  %23 = phi i32 [ %30, %22 ], [ %19, %1 ]
  %24 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, ptrtoint (ptr @sugov_cpu to i32)
  %27 = inttoptr i32 %26 to ptr
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(48) %27, i8 0, i32 48, i1 false)
  %28 = getelementptr inbounds %struct.sugov_cpu, ptr %27, i32 0, i32 2
  store i32 %23, ptr %28, align 8
  %29 = getelementptr inbounds %struct.sugov_cpu, ptr %27, i32 0, i32 1
  store ptr %3, ptr %29, align 4
  %30 = tail call i32 @cpumask_next(i32 noundef %23, ptr noundef %0) #15
  %31 = load i32, ptr @nr_cpu_ids, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %22, label %33

33:                                               ; preds = %22, %1
  %34 = load i32, ptr %0, align 4
  %35 = and i32 %34, 65535
  %36 = tail call i32 @__sw_hweight32(i32 noundef %35) #12
  %37 = icmp ugt i32 %36, 1
  br i1 %37, label %45, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 27
  %40 = load i8, ptr %39, align 1, !range !8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = tail call zeroext i1 @cpufreq_driver_has_adjust_perf() #12
  br i1 %43, label %45, label %44

44:                                               ; preds = %42, %38
  br label %45

45:                                               ; preds = %44, %42, %33
  %46 = phi ptr [ @sugov_update_single_freq, %44 ], [ @sugov_update_shared, %33 ], [ @sugov_update_single_perf, %42 ]
  %47 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %0) #15
  %48 = load i32, ptr @nr_cpu_ids, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %50, %45
  %51 = phi i32 [ %56, %50 ], [ %47, %45 ]
  %52 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %51
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, ptrtoint (ptr @sugov_cpu to i32)
  %55 = inttoptr i32 %54 to ptr
  tail call void @cpufreq_add_update_util_hook(i32 noundef %51, ptr noundef %55, ptr noundef nonnull %46) #12
  %56 = tail call i32 @cpumask_next(i32 noundef %51, ptr noundef %0) #15
  %57 = load i32, ptr @nr_cpu_ids, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %50, label %59

59:                                               ; preds = %50, %45
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sugov_stop(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %0) #15
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %7, %1
  %8 = phi i32 [ %9, %7 ], [ %4, %1 ]
  tail call void @cpufreq_remove_update_util_hook(i32 noundef %8) #12
  %9 = tail call i32 @cpumask_next(i32 noundef %8, ptr noundef %0) #15
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %7, label %12

12:                                               ; preds = %7, %1
  tail call void @synchronize_rcu() #12
  %13 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 27
  %14 = load i8, ptr %13, align 1, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.sugov_policy, ptr %3, i32 0, i32 8
  tail call void @irq_work_sync(ptr noundef %17) #12
  %18 = getelementptr inbounds %struct.sugov_policy, ptr %3, i32 0, i32 9
  %19 = tail call zeroext i1 @kthread_cancel_work_sync(ptr noundef %18) #12
  br label %20

20:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sugov_limits(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 27
  %5 = load i8, ptr %4, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sugov_policy, ptr %3, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %8) #12
  %9 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = tail call i32 @__cpufreq_driver_target(ptr noundef %0, i32 noundef %10, i32 noundef 5) #12
  br label %22

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %18, %12
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = tail call i32 @__cpufreq_driver_target(ptr noundef %0, i32 noundef %18, i32 noundef 4) #12
  br label %22

22:                                               ; preds = %20, %16, %14
  tail call void @mutex_unlock(ptr noundef %8) #12
  br label %23

23:                                               ; preds = %22, %1
  %24 = getelementptr inbounds %struct.sugov_policy, ptr %3, i32 0, i32 14
  store i8 1, ptr %24, align 1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @schedutil_gov_init() #1 section ".init.text" {
  %1 = tail call i32 @cpufreq_register_governor(ptr noundef nonnull @schedutil_gov) #12
  ret i32 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_enable_fast_switch(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @have_governor_per_policy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gov_attr_set_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_policy_transition_delay_us(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_governor_parent_kobj(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sugov_kthread_stop(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %2, i32 0, i32 27
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sugov_policy, ptr %0, i32 0, i32 11
  tail call void @kthread_flush_worker(ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.sugov_policy, ptr %0, i32 0, i32 12
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @kthread_stop(ptr noundef %9) #12
  br label %11

11:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_disable_fast_switch(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sugov_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = getelementptr i8, ptr %0, i32 -48
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #12
  %5 = getelementptr i8, ptr %0, i32 -24
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr i8, ptr %0, i32 76
  store i8 0, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #12
  %8 = getelementptr i8, ptr %0, i32 20
  tail call void @mutex_lock(ptr noundef %8) #12
  %9 = load ptr, ptr %2, align 8
  %10 = tail call i32 @__cpufreq_driver_target(ptr noundef %9, i32 noundef %6, i32 noundef 0) #12
  tail call void @mutex_unlock(ptr noundef %8) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kthread_init_worker(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_worker_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_setattr_nocheck(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_bind_mask(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sugov_irq_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 56
  %3 = getelementptr i8, ptr %0, i32 16
  %4 = tail call zeroext i1 @kthread_queue_work(ptr noundef %2, ptr noundef %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpufreq_driver_target(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gov_attr_set_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sugov_tunables_free(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rate_limit_us_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.sugov_tunables, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rate_limit_us_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !10
  %5 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %4) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = load i32, ptr %4, align 4
  %9 = getelementptr inbounds %struct.sugov_tunables, ptr %0, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.gov_attr_set, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %21, label %13

13:                                               ; preds = %7
  %14 = mul i32 %8, 1000
  %15 = zext i32 %14 to i64
  br label %16

16:                                               ; preds = %16, %13
  %17 = phi ptr [ %11, %13 ], [ %19, %16 ]
  %18 = getelementptr i8, ptr %17, i32 24
  store i64 %15, ptr %18, align 8
  %19 = load ptr, ptr %17, align 4
  %20 = icmp eq ptr %19, %10
  br i1 %20, label %21, label %16

21:                                               ; preds = %16, %7, %3
  %22 = phi i32 [ -22, %3 ], [ %2, %7 ], [ %2, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %22
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_flush_worker(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gov_attr_set_put(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpufreq_driver_test_flags(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sugov_update_shared(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sugov_policy, ptr %5, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %6) #12
  %7 = and i32 %2, 1
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 5
  %14 = load i64, ptr %13, align 8
  %15 = sub i64 %1, %14
  %16 = icmp slt i64 %15, 10000001
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = trunc i32 %7 to i8
  %19 = shl nuw nsw i32 %7, 7
  store i32 %19, ptr %9, align 8
  %20 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 3
  store i8 %18, ptr %20, align 4
  br label %35

21:                                               ; preds = %12
  br i1 %8, label %35, label %27

22:                                               ; preds = %3
  br i1 %8, label %35, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 3
  %25 = load i8, ptr %24, align 4, !range !8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %34, label %35

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 3
  %29 = load i8, ptr %28, align 4, !range !8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  store i8 1, ptr %28, align 4
  %32 = shl i32 %10, 1
  %33 = tail call i32 @llvm.umin.i32(i32 %32, i32 1024) #12
  store i32 %33, ptr %9, align 8
  br label %35

34:                                               ; preds = %23
  store i8 1, ptr %24, align 4
  store i32 128, ptr %9, align 8
  br label %35

35:                                               ; preds = %34, %31, %27, %23, %22, %21, %17
  %36 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 5
  store i64 %1, ptr %36, align 8
  %37 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, ptrtoint (ptr @runqueues to i32)
  %42 = inttoptr i32 %41 to ptr
  %43 = getelementptr inbounds %struct.rq, ptr %42, i32 0, i32 12, i32 6
  %44 = load i64, ptr %43, align 8
  %45 = lshr i64 %44, 10
  %46 = trunc i64 %45 to i32
  %47 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 7
  %48 = load i32, ptr %47, align 4
  %49 = icmp ult i32 %48, %46
  br i1 %49, label %50, label %53

50:                                               ; preds = %35
  %51 = load ptr, ptr %4, align 4
  %52 = getelementptr inbounds %struct.sugov_policy, ptr %51, i32 0, i32 14
  store i8 1, ptr %52, align 1
  br label %53

53:                                               ; preds = %50, %35
  %54 = load ptr, ptr %5, align 8
  %55 = tail call zeroext i1 @cpufreq_this_cpu_can_update(ptr noundef %54) #12
  br i1 %55, label %56, label %208

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.sugov_policy, ptr %5, i32 0, i32 14
  %58 = load i8, ptr %57, align 1, !range !8
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60, !prof !11

60:                                               ; preds = %56
  store i8 0, ptr %57, align 1
  %61 = getelementptr inbounds %struct.sugov_policy, ptr %5, i32 0, i32 15
  store i8 1, ptr %61, align 2
  br label %69

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.sugov_policy, ptr %5, i32 0, i32 4
  %64 = load i64, ptr %63, align 8
  %65 = sub i64 %1, %64
  %66 = getelementptr inbounds %struct.sugov_policy, ptr %5, i32 0, i32 5
  %67 = load i64, ptr %66, align 8
  %68 = icmp slt i64 %65, %67
  br i1 %68, label %208, label %69

69:                                               ; preds = %62, %60
  %70 = load ptr, ptr %4, align 4
  %71 = load ptr, ptr %70, align 8
  %72 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %71) #15
  %73 = load i32, ptr @nr_cpu_ids, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %155

75:                                               ; preds = %142, %69
  %76 = phi i32 [ %150, %142 ], [ %72, %69 ]
  %77 = phi i32 [ %149, %142 ], [ 0, %69 ]
  %78 = phi i32 [ %148, %142 ], [ 1, %69 ]
  %79 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %76
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, ptrtoint (ptr @sugov_cpu to i32)
  %82 = inttoptr i32 %81 to ptr
  %83 = getelementptr inbounds %struct.sugov_cpu, ptr %82, i32 0, i32 2
  %84 = load i32, ptr %83, align 8
  %85 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %84
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %86, ptrtoint (ptr @runqueues to i32)
  %88 = inttoptr i32 %87 to ptr
  %89 = add i32 %86, ptrtoint (ptr @cpu_scale to i32)
  %90 = inttoptr i32 %89 to ptr
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.sugov_cpu, ptr %82, i32 0, i32 8
  store i32 %91, ptr %92, align 8
  %93 = getelementptr inbounds %struct.rq, ptr %88, i32 0, i32 12, i32 6
  %94 = load i64, ptr %93, align 8
  %95 = lshr i64 %94, 10
  %96 = trunc i64 %95 to i32
  %97 = getelementptr inbounds %struct.sugov_cpu, ptr %82, i32 0, i32 7
  store i32 %96, ptr %97, align 4
  %98 = load i32, ptr %85, align 4
  %99 = add i32 %98, ptrtoint (ptr @runqueues to i32)
  %100 = inttoptr i32 %99 to ptr
  %101 = getelementptr inbounds %struct.rq, ptr %100, i32 0, i32 10, i32 15, i32 7
  %102 = load volatile i32, ptr %101, align 8
  %103 = load i32, ptr @sysctl_sched_features, align 4
  %104 = and i32 %103, 1048576
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %75
  %107 = getelementptr inbounds %struct.rq, ptr %100, i32 0, i32 10, i32 15, i32 9
  %108 = load volatile i32, ptr %107, align 16
  %109 = tail call i32 @llvm.umax.i32(i32 %102, i32 %108) #12
  br label %110

110:                                              ; preds = %106, %75
  %111 = phi i32 [ %109, %106 ], [ %102, %75 ]
  %112 = getelementptr inbounds %struct.rq, ptr %100, i32 0, i32 32
  %113 = load i32, ptr %112, align 4
  %114 = tail call i32 @llvm.umin.i32(i32 %111, i32 %113) #12
  %115 = tail call i32 @effective_cpu_util(i32 noundef %84, i32 noundef %114, i32 noundef %91, i32 noundef 0, ptr noundef null) #12
  %116 = getelementptr inbounds %struct.sugov_cpu, ptr %82, i32 0, i32 6
  store i32 %115, ptr %116, align 8
  %117 = getelementptr inbounds %struct.sugov_cpu, ptr %82, i32 0, i32 4
  %118 = load i32, ptr %117, align 8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %142, label %120

120:                                              ; preds = %110
  %121 = getelementptr inbounds %struct.sugov_cpu, ptr %82, i32 0, i32 5
  %122 = load i64, ptr %121, align 8
  %123 = sub i64 %1, %122
  %124 = icmp slt i64 %123, 10000001
  br i1 %124, label %127, label %125

125:                                              ; preds = %120
  store i32 0, ptr %117, align 8
  %126 = getelementptr inbounds %struct.sugov_cpu, ptr %82, i32 0, i32 3
  store i8 0, ptr %126, align 4
  br label %142

127:                                              ; preds = %120
  %128 = getelementptr inbounds %struct.sugov_cpu, ptr %82, i32 0, i32 3
  %129 = load i8, ptr %128, align 4, !range !8
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = lshr i32 %118, 1
  store i32 %132, ptr %117, align 8
  %133 = icmp ult i32 %118, 256
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  store i32 0, ptr %117, align 8
  br label %142

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %132, %131 ], [ %118, %127 ]
  store i8 0, ptr %128, align 4
  %137 = load i32, ptr %92, align 8
  %138 = mul i32 %137, %136
  %139 = lshr i32 %138, 10
  %140 = icmp ult i32 %115, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  store i32 %139, ptr %116, align 8
  br label %142

142:                                              ; preds = %141, %135, %134, %125, %110
  %143 = phi i32 [ %115, %110 ], [ %115, %125 ], [ %115, %134 ], [ %115, %135 ], [ %139, %141 ]
  %144 = load i32, ptr %92, align 8
  %145 = mul i32 %143, %78
  %146 = mul i32 %144, %77
  %147 = icmp ugt i32 %145, %146
  %148 = select i1 %147, i32 %144, i32 %78
  %149 = select i1 %147, i32 %143, i32 %77
  %150 = tail call i32 @cpumask_next(i32 noundef %76, ptr noundef %71) #15
  %151 = load i32, ptr @nr_cpu_ids, align 4
  %152 = icmp ult i32 %150, %151
  br i1 %152, label %75, label %153

153:                                              ; preds = %142
  %154 = load ptr, ptr %70, align 8
  br label %155

155:                                              ; preds = %153, %69
  %156 = phi ptr [ %71, %69 ], [ %154, %153 ]
  %157 = phi i32 [ 1, %69 ], [ %148, %153 ]
  %158 = phi i32 [ 0, %69 ], [ %149, %153 ]
  %159 = tail call zeroext i1 @topology_scale_freq_invariant() #12
  %160 = getelementptr inbounds %struct.cpufreq_policy, ptr %156, i32 0, i32 6
  %161 = getelementptr inbounds %struct.cpufreq_policy, ptr %156, i32 0, i32 9
  %162 = select i1 %159, ptr %160, ptr %161
  %163 = load i32, ptr %162, align 4
  %164 = lshr i32 %158, 2
  %165 = add i32 %164, %158
  %166 = mul i32 %163, %165
  %167 = udiv i32 %166, %157
  %168 = getelementptr inbounds %struct.sugov_policy, ptr %70, i32 0, i32 7
  %169 = load i32, ptr %168, align 4
  %170 = icmp eq i32 %167, %169
  br i1 %170, label %171, label %178

171:                                              ; preds = %155
  %172 = getelementptr inbounds %struct.sugov_policy, ptr %70, i32 0, i32 15
  %173 = load i8, ptr %172, align 2, !range !8
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.sugov_policy, ptr %70, i32 0, i32 6
  %177 = load i32, ptr %176, align 8
  br label %180

178:                                              ; preds = %171, %155
  store i32 %167, ptr %168, align 4
  %179 = tail call i32 @cpufreq_driver_resolve_freq(ptr noundef %156, i32 noundef %167) #12
  br label %180

180:                                              ; preds = %178, %175
  %181 = phi i32 [ %179, %178 ], [ %177, %175 ]
  %182 = getelementptr inbounds %struct.sugov_policy, ptr %5, i32 0, i32 15
  %183 = load i8, ptr %182, align 2, !range !8
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %180
  %186 = tail call zeroext i1 @cpufreq_driver_test_flags(i16 noundef zeroext 1) #12
  %187 = zext i1 %186 to i8
  store i8 %187, ptr %182, align 2
  br label %192

188:                                              ; preds = %180
  %189 = getelementptr inbounds %struct.sugov_policy, ptr %5, i32 0, i32 6
  %190 = load i32, ptr %189, align 8
  %191 = icmp eq i32 %190, %181
  br i1 %191, label %208, label %192

192:                                              ; preds = %188, %185
  %193 = getelementptr inbounds %struct.sugov_policy, ptr %5, i32 0, i32 6
  store i32 %181, ptr %193, align 8
  %194 = getelementptr inbounds %struct.sugov_policy, ptr %5, i32 0, i32 4
  store i64 %1, ptr %194, align 8
  %195 = load ptr, ptr %5, align 8
  %196 = getelementptr inbounds %struct.cpufreq_policy, ptr %195, i32 0, i32 27
  %197 = load i8, ptr %196, align 1, !range !8
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %192
  %200 = tail call i32 @cpufreq_driver_fast_switch(ptr noundef %195, i32 noundef %181) #12
  br label %208

201:                                              ; preds = %192
  %202 = getelementptr inbounds %struct.sugov_policy, ptr %5, i32 0, i32 13
  %203 = load i8, ptr %202, align 4, !range !8
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  store i8 1, ptr %202, align 4
  %206 = getelementptr inbounds %struct.sugov_policy, ptr %5, i32 0, i32 8
  %207 = tail call zeroext i1 @irq_work_queue(ptr noundef %206) #12
  br label %208

208:                                              ; preds = %205, %201, %199, %188, %62, %53
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  %209 = load i16, ptr %6, align 4
  %210 = add i16 %209, 1
  store i16 %210, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpufreq_driver_has_adjust_perf() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sugov_update_single_perf(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call zeroext i1 @topology_scale_freq_invariant() #12
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @sugov_update_single_freq(ptr noundef %0, i64 noundef %1, i32 noundef %2)
  br label %35

8:                                                ; preds = %3
  %9 = tail call fastcc zeroext i1 @sugov_update_single_common(ptr noundef %0, i64 noundef %1, i32 noundef %2)
  br i1 %9, label %10, label %35

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 @tick_nohz_get_idle_calls_cpu(i32 noundef %12) #12
  %14 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 9
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %13, %15
  store i32 %13, ptr %14, align 4
  %17 = load i32, ptr %4, align 8
  %18 = icmp ult i32 %17, %5
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  store i32 %5, ptr %4, align 8
  br label %21

21:                                               ; preds = %20, %10
  %22 = phi i32 [ %5, %20 ], [ %17, %10 ]
  %23 = load i32, ptr %11, align 8
  %24 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = lshr i32 %25, 2
  %27 = add i32 %26, %25
  %28 = lshr i32 %22, 2
  %29 = add i32 %28, %22
  %30 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 8
  %31 = load i32, ptr %30, align 8
  tail call void @cpufreq_driver_adjust_perf(i32 noundef %23, i32 noundef %27, i32 noundef %29, i32 noundef %31) #12
  %32 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.sugov_policy, ptr %33, i32 0, i32 4
  store i64 %1, ptr %34, align 8
  br label %35

35:                                               ; preds = %21, %8, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sugov_update_single_freq(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sugov_policy, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = tail call fastcc zeroext i1 @sugov_update_single_common(ptr noundef %0, i64 noundef %1, i32 noundef %2)
  br i1 %8, label %9, label %80

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 8
  %13 = load i32, ptr %12, align 8
  %14 = load ptr, ptr %5, align 8
  %15 = tail call zeroext i1 @topology_scale_freq_invariant() #12
  %16 = getelementptr inbounds %struct.cpufreq_policy, ptr %14, i32 0, i32 6
  %17 = getelementptr inbounds %struct.cpufreq_policy, ptr %14, i32 0, i32 9
  %18 = select i1 %15, ptr %16, ptr %17
  %19 = load i32, ptr %18, align 4
  %20 = lshr i32 %11, 2
  %21 = add i32 %20, %11
  %22 = mul i32 %19, %21
  %23 = udiv i32 %22, %13
  %24 = load i32, ptr %6, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %9
  %27 = getelementptr inbounds %struct.sugov_policy, ptr %5, i32 0, i32 15
  %28 = load i8, ptr %27, align 2, !range !8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.sugov_policy, ptr %5, i32 0, i32 6
  %32 = load i32, ptr %31, align 8
  br label %35

33:                                               ; preds = %26, %9
  store i32 %23, ptr %6, align 4
  %34 = tail call i32 @cpufreq_driver_resolve_freq(ptr noundef %14, i32 noundef %23) #12
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i32 [ %34, %33 ], [ %32, %30 ]
  %37 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = tail call i32 @tick_nohz_get_idle_calls_cpu(i32 noundef %38) #12
  %40 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 9
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %39, %41
  store i32 %39, ptr %40, align 4
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.sugov_policy, ptr %5, i32 0, i32 6
  %45 = load i32, ptr %44, align 8
  %46 = icmp ult i32 %36, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 %7, ptr %6, align 4
  br label %48

48:                                               ; preds = %47, %43, %35
  %49 = phi i32 [ %45, %47 ], [ %36, %43 ], [ %36, %35 ]
  %50 = getelementptr inbounds %struct.sugov_policy, ptr %5, i32 0, i32 15
  %51 = load i8, ptr %50, align 2, !range !8
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = tail call zeroext i1 @cpufreq_driver_test_flags(i16 noundef zeroext 1) #12
  %55 = zext i1 %54 to i8
  store i8 %55, ptr %50, align 2
  br label %60

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.sugov_policy, ptr %5, i32 0, i32 6
  %58 = load i32, ptr %57, align 8
  %59 = icmp eq i32 %58, %49
  br i1 %59, label %80, label %60

60:                                               ; preds = %56, %53
  %61 = getelementptr inbounds %struct.sugov_policy, ptr %5, i32 0, i32 6
  store i32 %49, ptr %61, align 8
  %62 = getelementptr inbounds %struct.sugov_policy, ptr %5, i32 0, i32 4
  store i64 %1, ptr %62, align 8
  %63 = load ptr, ptr %5, align 8
  %64 = getelementptr inbounds %struct.cpufreq_policy, ptr %63, i32 0, i32 27
  %65 = load i8, ptr %64, align 1, !range !8
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %60
  %68 = tail call i32 @cpufreq_driver_fast_switch(ptr noundef %63, i32 noundef %49) #12
  br label %80

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.sugov_policy, ptr %5, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %70) #12
  %71 = getelementptr inbounds %struct.sugov_policy, ptr %5, i32 0, i32 13
  %72 = load i8, ptr %71, align 4, !range !8
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  store i8 1, ptr %71, align 4
  %75 = getelementptr inbounds %struct.sugov_policy, ptr %5, i32 0, i32 8
  %76 = tail call zeroext i1 @irq_work_queue(ptr noundef %75) #12
  br label %77

77:                                               ; preds = %74, %69
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  %78 = load i16, ptr %70, align 4
  %79 = add i16 %78, 1
  store i16 %79, ptr %70, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  br label %80

80:                                               ; preds = %77, %67, %56, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_add_update_util_hook(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_driver_fast_switch(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpufreq_this_cpu_can_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @effective_cpu_util(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @topology_scale_freq_invariant() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_driver_resolve_freq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_work_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sugov_update_single_common(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #10 {
  %4 = and i32 %2, 1
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 5
  %11 = load i64, ptr %10, align 8
  %12 = sub i64 %1, %11
  %13 = icmp slt i64 %12, 10000001
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = trunc i32 %4 to i8
  %16 = shl nuw nsw i32 %4, 7
  store i32 %16, ptr %6, align 8
  %17 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 3
  store i8 %15, ptr %17, align 4
  br label %32

18:                                               ; preds = %9
  br i1 %5, label %32, label %24

19:                                               ; preds = %3
  br i1 %5, label %32, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 3
  %22 = load i8, ptr %21, align 4, !range !8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %31, label %32

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 3
  %26 = load i8, ptr %25, align 4, !range !8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  store i8 1, ptr %25, align 4
  %29 = shl i32 %7, 1
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 1024) #12
  store i32 %30, ptr %6, align 8
  br label %32

31:                                               ; preds = %20
  store i8 1, ptr %21, align 4
  store i32 128, ptr %6, align 8
  br label %32

32:                                               ; preds = %31, %28, %24, %20, %19, %18, %14
  %33 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 5
  store i64 %1, ptr %33, align 8
  %34 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, ptrtoint (ptr @runqueues to i32)
  %39 = inttoptr i32 %38 to ptr
  %40 = getelementptr inbounds %struct.rq, ptr %39, i32 0, i32 12, i32 6
  %41 = load i64, ptr %40, align 8
  %42 = lshr i64 %41, 10
  %43 = trunc i64 %42 to i32
  %44 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = icmp ult i32 %45, %43
  br i1 %46, label %47, label %51

47:                                               ; preds = %32
  %48 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.sugov_policy, ptr %49, i32 0, i32 14
  store i8 1, ptr %50, align 1
  br label %51

51:                                               ; preds = %47, %32
  %52 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %53, align 8
  %55 = tail call zeroext i1 @cpufreq_this_cpu_can_update(ptr noundef %54) #12
  br i1 %55, label %56, label %125

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.sugov_policy, ptr %53, i32 0, i32 14
  %58 = load i8, ptr %57, align 1, !range !8
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60, !prof !11

60:                                               ; preds = %56
  store i8 0, ptr %57, align 1
  %61 = getelementptr inbounds %struct.sugov_policy, ptr %53, i32 0, i32 15
  store i8 1, ptr %61, align 2
  br label %69

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.sugov_policy, ptr %53, i32 0, i32 4
  %64 = load i64, ptr %63, align 8
  %65 = sub i64 %1, %64
  %66 = getelementptr inbounds %struct.sugov_policy, ptr %53, i32 0, i32 5
  %67 = load i64, ptr %66, align 8
  %68 = icmp slt i64 %65, %67
  br i1 %68, label %125, label %69

69:                                               ; preds = %62, %60
  %70 = load i32, ptr %34, align 8
  %71 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %70
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, ptrtoint (ptr @runqueues to i32)
  %74 = inttoptr i32 %73 to ptr
  %75 = add i32 %72, ptrtoint (ptr @cpu_scale to i32)
  %76 = inttoptr i32 %75 to ptr
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 8
  store i32 %77, ptr %78, align 8
  %79 = getelementptr inbounds %struct.rq, ptr %74, i32 0, i32 12, i32 6
  %80 = load i64, ptr %79, align 8
  %81 = lshr i64 %80, 10
  %82 = trunc i64 %81 to i32
  store i32 %82, ptr %44, align 4
  %83 = load i32, ptr %71, align 4
  %84 = add i32 %83, ptrtoint (ptr @runqueues to i32)
  %85 = inttoptr i32 %84 to ptr
  %86 = getelementptr inbounds %struct.rq, ptr %85, i32 0, i32 10, i32 15, i32 7
  %87 = load volatile i32, ptr %86, align 8
  %88 = load i32, ptr @sysctl_sched_features, align 4
  %89 = and i32 %88, 1048576
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %69
  %92 = getelementptr inbounds %struct.rq, ptr %85, i32 0, i32 10, i32 15, i32 9
  %93 = load volatile i32, ptr %92, align 16
  %94 = tail call i32 @llvm.umax.i32(i32 %87, i32 %93) #12
  br label %95

95:                                               ; preds = %91, %69
  %96 = phi i32 [ %94, %91 ], [ %87, %69 ]
  %97 = getelementptr inbounds %struct.rq, ptr %85, i32 0, i32 32
  %98 = load i32, ptr %97, align 4
  %99 = tail call i32 @llvm.umin.i32(i32 %96, i32 %98) #12
  %100 = tail call i32 @effective_cpu_util(i32 noundef %70, i32 noundef %99, i32 noundef %77, i32 noundef 0, ptr noundef null) #12
  %101 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 6
  store i32 %100, ptr %101, align 8
  %102 = load i32, ptr %6, align 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %125, label %104

104:                                              ; preds = %95
  %105 = load i64, ptr %33, align 8
  %106 = sub i64 %1, %105
  %107 = icmp slt i64 %106, 10000001
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  store i32 0, ptr %6, align 8
  %109 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 3
  store i8 0, ptr %109, align 4
  br label %125

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.sugov_cpu, ptr %0, i32 0, i32 3
  %112 = load i8, ptr %111, align 4, !range !8
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = lshr i32 %102, 1
  store i32 %115, ptr %6, align 8
  %116 = icmp ult i32 %102, 256
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 0, ptr %6, align 8
  br label %125

118:                                              ; preds = %114, %110
  %119 = phi i32 [ %115, %114 ], [ %102, %110 ]
  store i8 0, ptr %111, align 4
  %120 = load i32, ptr %78, align 8
  %121 = mul i32 %120, %119
  %122 = lshr i32 %121, 10
  %123 = icmp ult i32 %100, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  store i32 %122, ptr %101, align 8
  br label %125

125:                                              ; preds = %124, %118, %117, %108, %95, %62, %51
  %126 = phi i1 [ false, %62 ], [ true, %95 ], [ true, %108 ], [ true, %117 ], [ true, %118 ], [ true, %124 ], [ false, %51 ]
  ret i1 %126
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_driver_adjust_perf(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_nohz_get_idle_calls_cpu(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_remove_update_util_hook(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_governor(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readonly willreturn }

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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2149269733}
!13 = !{i64 2149265557}
!14 = !{i64 2149265632, i64 2149265659, i64 2149265706, i64 2149265728, i64 2149265756, i64 2149265776}
!15 = !{i64 2149292736}
