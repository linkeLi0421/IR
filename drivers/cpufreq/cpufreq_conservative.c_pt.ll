; ModuleID = '/llk/IR/drivers/cpufreq/cpufreq_conservative.c_pt.bc'
source_filename = "../drivers/cpufreq/cpufreq_conservative.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dbs_governor = type { %struct.cpufreq_governor, %struct.kobj_type, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpufreq_governor = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.governor_attr = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.cpufreq_policy = type { [1 x %struct.cpumask], [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpumask = type { [1 x i32] }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cs_policy_dbs_info = type { %struct.policy_dbs_info, i32, i32 }
%struct.policy_dbs_info = type { ptr, %struct.mutex, i64, i64, %struct.atomic_t, %struct.irq_work, %struct.work_struct, ptr, %struct.list_head, i32, i32, i8, i8 }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4 }
%struct.llist_node = type { ptr }
%union.anon.4 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dbs_data = type { %struct.gov_attr_set, ptr, i32, i32, i32, i32, i32 }
%struct.gov_attr_set = type { %struct.kobject, %struct.list_head, %struct.mutex, i32 }
%struct.cs_dbs_tuners = type { i32, i32 }

@__UNIQUE_ID_author207 = internal constant [46 x i8] c"author=Alexander Clouter <alex@digriz.org.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description208 = internal constant [163 x i8] c"description='cpufreq_conservative' - A dynamic cpufreq governor for Low Latency Frequency Transition capable processors optimised for use in a battery environment\00", section ".modinfo", align 1
@__UNIQUE_ID_license209 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@cs_governor = internal global %struct.dbs_governor { %struct.cpufreq_governor { [16 x i8] c"conservative\00\00\00\00", ptr @cpufreq_dbs_governor_init, ptr @cpufreq_dbs_governor_exit, ptr @cpufreq_dbs_governor_start, ptr @cpufreq_dbs_governor_stop, ptr @cpufreq_dbs_governor_limits, ptr null, ptr null, %struct.list_head zeroinitializer, ptr @__this_module, i8 1 }, %struct.kobj_type { ptr null, ptr null, ptr null, ptr @cs_groups, ptr null, ptr null, ptr null }, ptr null, ptr @cs_dbs_update, ptr @cs_alloc, ptr @cs_free, ptr @cs_init, ptr @cs_exit, ptr @cs_start }, align 4
@__this_module = external dso_local global %struct.module, align 64
@cs_groups = internal global [2 x ptr] [ptr @cs_group, ptr null], align 4
@cs_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @cs_attrs, ptr null }, align 4
@cs_attrs = internal global [7 x ptr] [ptr @sampling_rate, ptr @sampling_down_factor, ptr @up_threshold, ptr @down_threshold, ptr @ignore_nice_load, ptr @freq_step, ptr null], align 4
@sampling_rate = internal global %struct.governor_attr { %struct.attribute { ptr @.str, i16 420 }, ptr @show_sampling_rate, ptr @store_sampling_rate }, align 4
@sampling_down_factor = internal global %struct.governor_attr { %struct.attribute { ptr @.str.2, i16 420 }, ptr @show_sampling_down_factor, ptr @store_sampling_down_factor }, align 4
@up_threshold = internal global %struct.governor_attr { %struct.attribute { ptr @.str.4, i16 420 }, ptr @show_up_threshold, ptr @store_up_threshold }, align 4
@down_threshold = internal global %struct.governor_attr { %struct.attribute { ptr @.str.5, i16 420 }, ptr @show_down_threshold, ptr @store_down_threshold }, align 4
@ignore_nice_load = internal global %struct.governor_attr { %struct.attribute { ptr @.str.6, i16 420 }, ptr @show_ignore_nice_load, ptr @store_ignore_nice_load }, align 4
@freq_step = internal global %struct.governor_attr { %struct.attribute { ptr @.str.7, i16 420 }, ptr @show_freq_step, ptr @store_freq_step }, align 4
@.str = private unnamed_addr constant [14 x i8] c"sampling_rate\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"sampling_down_factor\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"up_threshold\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"down_threshold\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"ignore_nice_load\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"freq_step\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author207, ptr @__UNIQUE_ID_description208, ptr @__UNIQUE_ID_license209], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @cpufreq_register_governor(ptr noundef nonnull @cs_governor) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @cpufreq_unregister_governor(ptr noundef nonnull @cs_governor) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_governor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_dbs_governor_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_dbs_governor_exit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_dbs_governor_start(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_dbs_governor_stop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_dbs_governor_limits(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cs_dbs_update(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cs_policy_dbs_info, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.policy_dbs_info, ptr %3, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dbs_data, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @dbs_update(ptr noundef %0) #9
  %11 = getelementptr inbounds %struct.cs_dbs_tuners, ptr %9, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %81, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %5, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %5, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18, %14
  %23 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 9
  %24 = load i32, ptr %23, align 4
  store i32 %24, ptr %4, align 4
  %25 = load i32, ptr %11, align 4
  %26 = load i32, ptr %15, align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = phi i32 [ %26, %22 ], [ %16, %18 ]
  %29 = phi i32 [ %25, %22 ], [ %12, %18 ]
  %30 = phi i32 [ %24, %22 ], [ %5, %18 ]
  %31 = mul i32 %28, %29
  %32 = udiv i32 %31, 100
  %33 = icmp ult i32 %31, 100
  br i1 %33, label %34, label %35, !prof !8

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %27
  %36 = phi i32 [ 5, %34 ], [ %32, %27 ]
  %37 = getelementptr inbounds %struct.policy_dbs_info, ptr %3, i32 0, i32 10
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %48, label %40

40:                                               ; preds = %35
  %41 = mul i32 %38, %36
  %42 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 7
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, %41
  %45 = icmp ugt i32 %30, %44
  %46 = sub i32 %30, %41
  %47 = select i1 %45, i32 %46, i32 %43
  store i32 -1, ptr %37, align 4
  br label %48

48:                                               ; preds = %40, %35
  %49 = phi i32 [ %47, %40 ], [ %30, %35 ]
  %50 = getelementptr inbounds %struct.dbs_data, ptr %7, i32 0, i32 5
  %51 = load i32, ptr %50, align 4
  %52 = icmp ugt i32 %10, %51
  %53 = getelementptr inbounds %struct.cs_policy_dbs_info, ptr %3, i32 0, i32 1
  br i1 %52, label %54, label %61

54:                                               ; preds = %48
  store i32 0, ptr %53, align 8
  %55 = load i32, ptr %15, align 4
  %56 = icmp eq i32 %49, %55
  br i1 %56, label %81, label %57

57:                                               ; preds = %54
  %58 = add i32 %49, %36
  %59 = tail call i32 @llvm.umin.i32(i32 %58, i32 %55)
  %60 = tail call i32 @__cpufreq_driver_target(ptr noundef %0, i32 noundef %59, i32 noundef 5) #9
  br label %79

61:                                               ; preds = %48
  %62 = load i32, ptr %53, align 8
  %63 = add i32 %62, 1
  store i32 %63, ptr %53, align 8
  %64 = getelementptr inbounds %struct.dbs_data, ptr %7, i32 0, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = icmp ult i32 %63, %65
  br i1 %66, label %81, label %67

67:                                               ; preds = %61
  store i32 0, ptr %53, align 8
  %68 = load i32, ptr %9, align 4
  %69 = icmp ult i32 %10, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 7
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %49, %72
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = icmp ugt i32 %49, %36
  %76 = sub i32 %49, %36
  %77 = select i1 %75, i32 %76, i32 %72
  %78 = tail call i32 @__cpufreq_driver_target(ptr noundef %0, i32 noundef %77, i32 noundef 4) #9
  br label %79

79:                                               ; preds = %74, %57
  %80 = phi i32 [ %77, %74 ], [ %59, %57 ]
  store i32 %80, ptr %4, align 4
  br label %81

81:                                               ; preds = %79, %70, %67, %61, %54, %1
  %82 = getelementptr inbounds %struct.dbs_data, ptr %7, i32 0, i32 3
  %83 = load i32, ptr %82, align 4
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @cs_alloc() #2 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 112) #10
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cs_free(ptr noundef %0) #2 {
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cs_init(ptr nocapture noundef writeonly %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 8) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  store i32 20, ptr %3, align 8
  %6 = getelementptr inbounds %struct.cs_dbs_tuners, ptr %3, i32 0, i32 1
  store i32 5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 5
  store i32 80, ptr %7, align 4
  %8 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 4
  store i32 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 2
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 1
  store ptr %3, ptr %10, align 4
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i32 [ 0, %5 ], [ -12, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cs_exit(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @cs_start(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cs_policy_dbs_info, ptr %3, i32 0, i32 1
  store i32 0, ptr %4, align 8
  %5 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.cs_policy_dbs_info, ptr %3, i32 0, i32 2
  store i32 %6, ptr %7, align 4
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_sampling_rate(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @store_sampling_rate(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_sampling_down_factor(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_sampling_down_factor(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #4 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %4)
  %6 = icmp ne i32 %5, 1
  %7 = load i32, ptr %4, align 4
  %8 = icmp ugt i32 %7, 10
  %9 = select i1 %6, i1 true, i1 %8
  %10 = icmp eq i32 %7, 0
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 4
  store i32 %7, ptr %13, align 4
  br label %14

14:                                               ; preds = %12, %3
  %15 = phi i32 [ %2, %12 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %15
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_up_threshold(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_up_threshold(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #4 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  %7 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %4)
  %8 = icmp ne i32 %7, 1
  %9 = load i32, ptr %4, align 4
  %10 = icmp ugt i32 %9, 100
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load i32, ptr %6, align 4
  %14 = icmp ugt i32 %9, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 5
  store i32 %9, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %12, %3
  %18 = phi i32 [ %2, %15 ], [ -22, %12 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %18
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_down_threshold(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_down_threshold(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #4 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  %7 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %4)
  %8 = icmp ne i32 %7, 1
  %9 = load i32, ptr %4, align 4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  %12 = icmp ugt i32 %9, 100
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %9, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 %9, ptr %6, align 4
  br label %19

19:                                               ; preds = %18, %14, %3
  %20 = phi i32 [ %2, %18 ], [ -22, %14 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %20
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_ignore_nice_load(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %4)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_ignore_nice_load(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = load i32, ptr %4, align 4
  %9 = icmp ugt i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 1, ptr %4, align 4
  br label %11

11:                                               ; preds = %10, %7
  %12 = phi i32 [ 1, %10 ], [ %8, %7 ]
  %13 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 %12, ptr %13, align 4
  call void @gov_update_cpu_data(ptr noundef %0) #9
  br label %17

17:                                               ; preds = %16, %11, %3
  %18 = phi i32 [ %2, %16 ], [ -22, %3 ], [ %2, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gov_update_cpu_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_freq_step(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cs_dbs_tuners, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_freq_step(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #4 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  %7 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %4)
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load i32, ptr %4, align 4
  %11 = call i32 @llvm.umin.i32(i32 %10, i32 100)
  %12 = getelementptr inbounds %struct.cs_dbs_tuners, ptr %6, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi i32 [ %2, %9 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbs_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpufreq_driver_target(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_unregister_governor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!9 = !{!"auto-init"}
