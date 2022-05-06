; ModuleID = '/llk/IR/drivers/cpufreq/cpufreq_governor.c_pt.bc'
source_filename = "../drivers/cpufreq/cpufreq_governor.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_store_sampling_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22store_sampling_rate\22\09\09\09\09\09"
module asm "__kstrtabns_store_sampling_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gov_update_cpu_data:\09\09\09\09\09"
module asm "\09.asciz \09\22gov_update_cpu_data\22\09\09\09\09\09"
module asm "__kstrtabns_gov_update_cpu_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dbs_update:\09\09\09\09\09"
module asm "\09.asciz \09\22dbs_update\22\09\09\09\09\09"
module asm "__kstrtabns_dbs_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_dbs_governor_init:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_dbs_governor_init\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_dbs_governor_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_dbs_governor_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_dbs_governor_exit\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_dbs_governor_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_dbs_governor_start:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_dbs_governor_start\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_dbs_governor_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_dbs_governor_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_dbs_governor_stop\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_dbs_governor_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_dbs_governor_limits:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_dbs_governor_limits\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_dbs_governor_limits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpu_dbs_info = type { i64, i64, i64, i32, %struct.update_util_data, ptr }
%struct.update_util_data = type { ptr }
%struct.kernel_cpustat = type { [10 x i64] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.dbs_data = type { %struct.gov_attr_set, ptr, i32, i32, i32, i32, i32 }
%struct.gov_attr_set = type { %struct.kobject, %struct.list_head, %struct.mutex, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.policy_dbs_info = type { ptr, %struct.mutex, i64, i64, %struct.atomic_t, %struct.irq_work, %struct.work_struct, ptr, %struct.list_head, i32, i32, i8, i8 }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.5 }
%struct.llist_node = type { ptr }
%union.anon.5 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dbs_governor = type { %struct.cpufreq_governor, %struct.kobj_type, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpufreq_governor = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i8 }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@__kstrtab_store_sampling_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_store_sampling_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_store_sampling_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @store_sampling_rate to i32), ptr @__kstrtab_store_sampling_rate, ptr @__kstrtabns_store_sampling_rate }, section "___ksymtab_gpl+store_sampling_rate", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_dbs = internal global %struct.cpu_dbs_info zeroinitializer, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@kernel_cpustat = external dso_local global %struct.kernel_cpustat, section ".data..percpu", align 8
@__kstrtab_gov_update_cpu_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_gov_update_cpu_data = external dso_local constant [0 x i8], align 1
@__ksymtab_gov_update_cpu_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gov_update_cpu_data to i32), ptr @__kstrtab_gov_update_cpu_data, ptr @__kstrtabns_gov_update_cpu_data }, section "___ksymtab_gpl+gov_update_cpu_data", align 4
@__kstrtab_dbs_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_dbs_update = external dso_local constant [0 x i8], align 1
@__ksymtab_dbs_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dbs_update to i32), ptr @__kstrtab_dbs_update, ptr @__kstrtabns_dbs_update }, section "___ksymtab_gpl+dbs_update", align 4
@gov_dbs_data_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @gov_dbs_data_mutex, i64 12), ptr getelementptr (i8, ptr @gov_dbs_data_mutex, i64 12) } }, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"drivers/cpufreq/cpufreq_governor.c\00", align 1
@governor_sysfs_ops = external dso_local constant %struct.sysfs_ops, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"\013cpufreq_governor: initialization failed (dbs_data kobject init error %d)\0A\00", align 1
@__kstrtab_cpufreq_dbs_governor_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_dbs_governor_init = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_dbs_governor_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_dbs_governor_init to i32), ptr @__kstrtab_cpufreq_dbs_governor_init, ptr @__kstrtabns_cpufreq_dbs_governor_init }, section "___ksymtab_gpl+cpufreq_dbs_governor_init", align 4
@__kstrtab_cpufreq_dbs_governor_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_dbs_governor_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_dbs_governor_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_dbs_governor_exit to i32), ptr @__kstrtab_cpufreq_dbs_governor_exit, ptr @__kstrtabns_cpufreq_dbs_governor_exit }, section "___ksymtab_gpl+cpufreq_dbs_governor_exit", align 4
@__kstrtab_cpufreq_dbs_governor_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_dbs_governor_start = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_dbs_governor_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_dbs_governor_start to i32), ptr @__kstrtab_cpufreq_dbs_governor_start, ptr @__kstrtabns_cpufreq_dbs_governor_start }, section "___ksymtab_gpl+cpufreq_dbs_governor_start", align 4
@__kstrtab_cpufreq_dbs_governor_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_dbs_governor_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_dbs_governor_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_dbs_governor_stop to i32), ptr @__kstrtab_cpufreq_dbs_governor_stop, ptr @__kstrtabns_cpufreq_dbs_governor_stop }, section "___ksymtab_gpl+cpufreq_dbs_governor_stop", align 4
@__kstrtab_cpufreq_dbs_governor_limits = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_dbs_governor_limits = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_dbs_governor_limits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_dbs_governor_limits to i32), ptr @__kstrtab_cpufreq_dbs_governor_limits, ptr @__kstrtabns_cpufreq_dbs_governor_limits }, section "___ksymtab_gpl+cpufreq_dbs_governor_limits", align 4
@alloc_policy_dbs_info.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"&policy_dbs->update_mutex\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_cpufreq_dbs_governor_exit, ptr @__ksymtab_cpufreq_dbs_governor_init, ptr @__ksymtab_cpufreq_dbs_governor_limits, ptr @__ksymtab_cpufreq_dbs_governor_start, ptr @__ksymtab_cpufreq_dbs_governor_stop, ptr @__ksymtab_dbs_update, ptr @__ksymtab_gov_update_cpu_data, ptr @__ksymtab_store_sampling_rate], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @store_sampling_rate(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %4)
  %6 = icmp ne i32 %5, 1
  %7 = load i32, ptr %4, align 4
  %8 = icmp ult i32 %7, 20000
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %21, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 3
  store i32 %7, ptr %11, align 4
  %12 = getelementptr inbounds %struct.gov_attr_set, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %21, label %15

15:                                               ; preds = %15, %10
  %16 = phi ptr [ %19, %15 ], [ %13, %10 ]
  %17 = getelementptr i8, ptr %16, i32 -76
  call void @mutex_lock(ptr noundef %17) #9
  %18 = getelementptr i8, ptr %16, i32 -48
  store i64 0, ptr %18, align 8
  call void @mutex_unlock(ptr noundef %17) #9
  %19 = load ptr, ptr %16, align 4
  %20 = icmp eq ptr %19, %12
  br i1 %20, label %21, label %15

21:                                               ; preds = %15, %10, %3
  %22 = phi i32 [ -22, %3 ], [ %2, %10 ], [ %2, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gov_update_cpu_data(ptr noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gov_attr_set, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %43, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.dbs_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr @nr_cpu_ids, align 4
  br label %13

9:                                                ; preds = %38, %13
  %10 = phi i32 [ %14, %13 ], [ %41, %38 ]
  %11 = load ptr, ptr %15, align 4
  %12 = icmp eq ptr %11, %2
  br i1 %12, label %43, label %13

13:                                               ; preds = %9, %5
  %14 = phi i32 [ %8, %5 ], [ %10, %9 ]
  %15 = phi ptr [ %3, %5 ], [ %11, %9 ]
  %16 = getelementptr i8, ptr %15, i32 -80
  %17 = load ptr, ptr %16, align 8
  %18 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %17) #10
  %19 = icmp ult i32 %18, %14
  br i1 %19, label %20, label %9

20:                                               ; preds = %38, %13
  %21 = phi i32 [ %40, %38 ], [ %18, %13 ]
  %22 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, ptrtoint (ptr @cpu_dbs to i32)
  %25 = inttoptr i32 %24 to ptr
  %26 = getelementptr inbounds %struct.cpu_dbs_info, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %6, align 4
  %28 = tail call i64 @get_cpu_idle_time(i32 noundef %21, ptr noundef %26, i32 noundef %27) #9
  store i64 %28, ptr %25, align 8
  %29 = load i32, ptr %7, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %20
  %32 = load i32, ptr %22, align 4
  %33 = add i32 %32, ptrtoint (ptr @kernel_cpustat to i32)
  %34 = inttoptr i32 %33 to ptr
  %35 = getelementptr [10 x i64], ptr %34, i32 0, i32 1
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds %struct.cpu_dbs_info, ptr %25, i32 0, i32 2
  store i64 %36, ptr %37, align 8
  br label %38

38:                                               ; preds = %31, %20
  %39 = load ptr, ptr %16, align 8
  %40 = tail call i32 @cpumask_next(i32 noundef %21, ptr noundef %39) #10
  %41 = load i32, ptr @nr_cpu_ids, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %20, label %9

43:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_cpu_idle_time(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dbs_update(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.policy_dbs_info, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dbs_data, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.policy_dbs_info, ptr %4, i32 0, i32 9
  %10 = load i32, ptr %9, align 8
  %11 = mul i32 %10, %8
  %12 = getelementptr inbounds %struct.dbs_data, ptr %6, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = call i32 @cpumask_next(i32 noundef -1, ptr noundef %0) #10
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %93

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.dbs_data, ptr %6, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  %21 = shl i32 %11, 1
  br label %22

22:                                               ; preds = %87, %17
  %23 = phi i32 [ %14, %17 ], [ %90, %87 ]
  %24 = phi i32 [ 0, %17 ], [ %89, %87 ]
  %25 = phi i32 [ -1, %17 ], [ %88, %87 ]
  %26 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, ptrtoint (ptr @cpu_dbs to i32)
  %29 = inttoptr i32 %28 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  store i64 0, ptr %2, align 8, !annotation !8
  %30 = call i64 @get_cpu_idle_time(i32 noundef %23, ptr noundef nonnull %2, i32 noundef %13) #9
  %31 = load i64, ptr %2, align 8
  %32 = getelementptr inbounds %struct.cpu_dbs_info, ptr %29, i32 0, i32 1
  %33 = load i64, ptr %32, align 8
  %34 = sub i64 %31, %33
  %35 = trunc i64 %34 to i32
  store i64 %31, ptr %32, align 8
  %36 = load i64, ptr %29, align 8
  %37 = sub i64 %30, %36
  %38 = trunc i64 %37 to i32
  store i64 %30, ptr %29, align 8
  br i1 %20, label %56, label %39

39:                                               ; preds = %22
  %40 = load i32, ptr %26, align 4
  %41 = add i32 %40, ptrtoint (ptr @kernel_cpustat to i32)
  %42 = inttoptr i32 %41 to ptr
  %43 = getelementptr [10 x i64], ptr %42, i32 0, i32 1
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds %struct.cpu_dbs_info, ptr %29, i32 0, i32 2
  %46 = load i64, ptr %45, align 8
  %47 = sub i64 %44, %46
  %48 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %47, i32 0) #11, !srcloc !9
  %49 = extractvalue { i64, i32 } %48, 0
  %50 = extractvalue { i64, i32 } %48, 1
  %51 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %47, i64 %49, i32 %50) #11, !srcloc !10
  %52 = extractvalue { i64, i32 } %51, 0
  %53 = lshr i64 %52, 9
  %54 = add i64 %53, %37
  %55 = trunc i64 %54 to i32
  store i64 %44, ptr %45, align 8
  br label %56

56:                                               ; preds = %39, %22
  %57 = phi i32 [ %55, %39 ], [ %38, %22 ]
  %58 = icmp eq i32 %35, 0
  br i1 %58, label %59, label %62, !prof !11

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.cpu_dbs_info, ptr %29, i32 0, i32 3
  %61 = load i32, ptr %60, align 8
  br label %81

62:                                               ; preds = %56
  %63 = icmp ugt i32 %57, %21
  br i1 %63, label %64, label %69

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.cpu_dbs_info, ptr %29, i32 0, i32 3
  %66 = load i32, ptr %65, align 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68, !prof !12

68:                                               ; preds = %64
  store i32 0, ptr %65, align 8
  br label %81

69:                                               ; preds = %64, %62
  %70 = icmp ugt i32 %57, %35
  br i1 %70, label %75, label %71

71:                                               ; preds = %69
  %72 = sub i32 %35, %57
  %73 = mul i32 %72, 100
  %74 = udiv i32 %73, %35
  br label %78

75:                                               ; preds = %69
  %76 = icmp slt i32 %57, 0
  %77 = select i1 %76, i32 100, i32 0
  br label %78

78:                                               ; preds = %75, %71
  %79 = phi i32 [ %74, %71 ], [ %77, %75 ]
  %80 = getelementptr inbounds %struct.cpu_dbs_info, ptr %29, i32 0, i32 3
  store i32 %79, ptr %80, align 8
  br label %81

81:                                               ; preds = %78, %68, %59
  %82 = phi i32 [ %61, %59 ], [ %66, %68 ], [ %79, %78 ]
  %83 = icmp ugt i32 %57, %21
  br i1 %83, label %84, label %87, !prof !11

84:                                               ; preds = %81
  %85 = udiv i32 %57, %11
  %86 = call i32 @llvm.umin.i32(i32 %85, i32 %25)
  br label %87

87:                                               ; preds = %84, %81
  %88 = phi i32 [ %86, %84 ], [ %25, %81 ]
  %89 = call i32 @llvm.umax.i32(i32 %82, i32 %24)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  %90 = call i32 @cpumask_next(i32 noundef %23, ptr noundef %0) #10
  %91 = load i32, ptr @nr_cpu_ids, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %22, label %93

93:                                               ; preds = %87, %1
  %94 = phi i32 [ -1, %1 ], [ %88, %87 ]
  %95 = phi i32 [ 0, %1 ], [ %89, %87 ]
  %96 = getelementptr inbounds %struct.policy_dbs_info, ptr %4, i32 0, i32 10
  store i32 %94, ptr %96, align 4
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpufreq_dbs_governor_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %100

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dbs_governor, ptr %3, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr %9() #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %100, label %12

12:                                               ; preds = %7
  store ptr %0, ptr %10, align 8
  %13 = getelementptr inbounds %struct.policy_dbs_info, ptr %10, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef nonnull @alloc_policy_dbs_info.__key) #9
  %14 = getelementptr inbounds %struct.policy_dbs_info, ptr %10, i32 0, i32 4
  store volatile i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.policy_dbs_info, ptr %10, i32 0, i32 5
  store ptr null, ptr %15, align 4
  %16 = getelementptr inbounds %struct.policy_dbs_info, ptr %10, i32 0, i32 5, i32 0, i32 1
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.policy_dbs_info, ptr %10, i32 0, i32 5, i32 1
  store ptr @dbs_irq_work, ptr %17, align 4
  %18 = getelementptr inbounds %struct.policy_dbs_info, ptr %10, i32 0, i32 5, i32 2
  store ptr null, ptr %18, align 4
  %19 = getelementptr inbounds %struct.policy_dbs_info, ptr %10, i32 0, i32 6
  store i32 -32, ptr %19, align 4
  %20 = getelementptr inbounds %struct.policy_dbs_info, ptr %10, i32 0, i32 6, i32 1
  store volatile ptr %20, ptr %20, align 4
  %21 = getelementptr inbounds %struct.policy_dbs_info, ptr %10, i32 0, i32 6, i32 1, i32 1
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.policy_dbs_info, ptr %10, i32 0, i32 6, i32 2
  store ptr @dbs_work_handler, ptr %22, align 4
  %23 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 1
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %25 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %23) #10
  %26 = icmp ult i32 %25, %24
  br i1 %26, label %27, label %36

27:                                               ; preds = %27, %12
  %28 = phi i32 [ %34, %27 ], [ %25, %12 ]
  %29 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, ptrtoint (ptr @cpu_dbs to i32)
  %32 = inttoptr i32 %31 to ptr
  %33 = getelementptr inbounds %struct.cpu_dbs_info, ptr %32, i32 0, i32 5
  store ptr %10, ptr %33, align 8
  %34 = tail call i32 @cpumask_next(i32 noundef %28, ptr noundef %23) #10
  %35 = icmp ult i32 %34, %24
  br i1 %35, label %27, label %36

36:                                               ; preds = %27, %12
  tail call void @mutex_lock(ptr noundef nonnull @gov_dbs_data_mutex) #9
  %37 = getelementptr inbounds %struct.dbs_governor, ptr %3, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = tail call zeroext i1 @have_governor_per_policy() #9
  br i1 %41, label %42, label %43, !prof !11

42:                                               ; preds = %40
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 411, i32 noundef 9, ptr noundef null) #9
  br label %76

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.policy_dbs_info, ptr %10, i32 0, i32 7
  store ptr %38, ptr %44, align 4
  store ptr %10, ptr %4, align 4
  %45 = getelementptr inbounds %struct.policy_dbs_info, ptr %10, i32 0, i32 8
  tail call void @gov_attr_set_get(ptr noundef nonnull %38, ptr noundef %45) #9
  br label %98

46:                                               ; preds = %36
  %47 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %48 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3520, i32 noundef 92) #12
  %49 = icmp eq ptr %48, null
  br i1 %49, label %76, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.policy_dbs_info, ptr %10, i32 0, i32 8
  tail call void @gov_attr_set_init(ptr noundef nonnull %48, ptr noundef %51) #9
  %52 = getelementptr inbounds %struct.dbs_governor, ptr %3, i32 0, i32 6
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 %53(ptr noundef nonnull %48) #9
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %50
  %57 = tail call i32 @cpufreq_policy_transition_delay_us(ptr noundef %0) #9
  %58 = tail call i32 @llvm.umax.i32(i32 %57, i32 20000)
  %59 = getelementptr inbounds %struct.dbs_data, ptr %48, i32 0, i32 3
  store i32 %58, ptr %59, align 4
  %60 = tail call zeroext i1 @have_governor_per_policy() #9
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  store ptr %48, ptr %37, align 4
  br label %62

62:                                               ; preds = %61, %56
  %63 = getelementptr inbounds %struct.policy_dbs_info, ptr %10, i32 0, i32 7
  store ptr %48, ptr %63, align 4
  store ptr %10, ptr %4, align 4
  %64 = getelementptr inbounds %struct.dbs_governor, ptr %3, i32 0, i32 1
  %65 = getelementptr inbounds %struct.dbs_governor, ptr %3, i32 0, i32 1, i32 1
  store ptr @governor_sysfs_ops, ptr %65, align 4
  %66 = tail call ptr @get_governor_parent_kobj(ptr noundef %0) #9
  %67 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %48, ptr noundef %64, ptr noundef %66, ptr noundef nonnull @.str.2, ptr noundef %3) #9
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %98, label %69

69:                                               ; preds = %62
  %70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %67) #13
  tail call void @kobject_put(ptr noundef nonnull %48) #9
  store ptr null, ptr %4, align 4
  %71 = tail call zeroext i1 @have_governor_per_policy() #9
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  store ptr null, ptr %37, align 4
  br label %73

73:                                               ; preds = %72, %69
  %74 = getelementptr inbounds %struct.dbs_governor, ptr %3, i32 0, i32 7
  %75 = load ptr, ptr %74, align 4
  tail call void %75(ptr noundef nonnull %48) #9
  tail call void @kfree(ptr noundef nonnull %48) #9
  br label %76

76:                                               ; preds = %73, %50, %46, %42
  %77 = phi i32 [ -22, %42 ], [ %54, %50 ], [ %67, %73 ], [ -12, %46 ]
  %78 = load i32, ptr @nr_cpu_ids, align 4
  %79 = load ptr, ptr %10, align 8
  %80 = getelementptr inbounds %struct.cpufreq_policy, ptr %79, i32 0, i32 1
  %81 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %80) #10
  %82 = icmp ult i32 %81, %78
  br i1 %82, label %83, label %95

83:                                               ; preds = %83, %76
  %84 = phi i32 [ %93, %83 ], [ %81, %76 ]
  %85 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %84
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %86, ptrtoint (ptr @cpu_dbs to i32)
  %88 = inttoptr i32 %87 to ptr
  %89 = getelementptr inbounds %struct.cpu_dbs_info, ptr %88, i32 0, i32 5
  store ptr null, ptr %89, align 8
  %90 = getelementptr inbounds %struct.cpu_dbs_info, ptr %88, i32 0, i32 4
  store ptr null, ptr %90, align 4
  %91 = load ptr, ptr %10, align 8
  %92 = getelementptr inbounds %struct.cpufreq_policy, ptr %91, i32 0, i32 1
  %93 = tail call i32 @cpumask_next(i32 noundef %84, ptr noundef %92) #10
  %94 = icmp ult i32 %93, %78
  br i1 %94, label %83, label %95

95:                                               ; preds = %83, %76
  %96 = getelementptr inbounds %struct.dbs_governor, ptr %3, i32 0, i32 5
  %97 = load ptr, ptr %96, align 4
  tail call void %97(ptr noundef %10) #9
  br label %98

98:                                               ; preds = %95, %62, %43
  %99 = phi i32 [ %77, %95 ], [ 0, %43 ], [ 0, %62 ]
  tail call void @mutex_unlock(ptr noundef nonnull @gov_dbs_data_mutex) #9
  br label %100

100:                                              ; preds = %98, %7, %1
  %101 = phi i32 [ %99, %98 ], [ -16, %1 ], [ -12, %7 ]
  ret i32 %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @have_governor_per_policy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gov_attr_set_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gov_attr_set_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_policy_transition_delay_us(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_governor_parent_kobj(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpufreq_dbs_governor_exit(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.policy_dbs_info, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  tail call void @mutex_lock(ptr noundef nonnull @gov_dbs_data_mutex) #9
  %8 = getelementptr inbounds %struct.policy_dbs_info, ptr %5, i32 0, i32 8
  %9 = tail call i32 @gov_attr_set_put(ptr noundef %7, ptr noundef %8) #9
  store ptr null, ptr %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = tail call zeroext i1 @have_governor_per_policy() #9
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.dbs_governor, ptr %3, i32 0, i32 2
  store ptr null, ptr %14, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = getelementptr inbounds %struct.dbs_governor, ptr %3, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  tail call void %17(ptr noundef %7) #9
  tail call void @kfree(ptr noundef %7) #9
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds %struct.cpufreq_policy, ptr %20, i32 0, i32 1
  %22 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %21) #10
  %23 = icmp ult i32 %22, %19
  br i1 %23, label %24, label %36

24:                                               ; preds = %24, %18
  %25 = phi i32 [ %34, %24 ], [ %22, %18 ]
  %26 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, ptrtoint (ptr @cpu_dbs to i32)
  %29 = inttoptr i32 %28 to ptr
  %30 = getelementptr inbounds %struct.cpu_dbs_info, ptr %29, i32 0, i32 5
  store ptr null, ptr %30, align 8
  %31 = getelementptr inbounds %struct.cpu_dbs_info, ptr %29, i32 0, i32 4
  store ptr null, ptr %31, align 4
  %32 = load ptr, ptr %5, align 8
  %33 = getelementptr inbounds %struct.cpufreq_policy, ptr %32, i32 0, i32 1
  %34 = tail call i32 @cpumask_next(i32 noundef %25, ptr noundef %33) #10
  %35 = icmp ult i32 %34, %19
  br i1 %35, label %24, label %36

36:                                               ; preds = %24, %18
  %37 = getelementptr inbounds %struct.dbs_governor, ptr %3, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  tail call void %38(ptr noundef %5) #9
  tail call void @mutex_unlock(ptr noundef nonnull @gov_dbs_data_mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gov_attr_set_put(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpufreq_dbs_governor_start(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %71, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.policy_dbs_info, ptr %5, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %0, align 4
  %13 = and i32 %12, 65535
  %14 = tail call i32 @__sw_hweight32(i32 noundef %13) #9
  %15 = icmp ugt i32 %14, 1
  %16 = getelementptr inbounds %struct.policy_dbs_info, ptr %5, i32 0, i32 11
  %17 = zext i1 %15 to i8
  store i8 %17, ptr %16, align 8
  %18 = getelementptr inbounds %struct.policy_dbs_info, ptr %5, i32 0, i32 9
  store i32 1, ptr %18, align 8
  %19 = getelementptr inbounds %struct.dbs_data, ptr %11, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dbs_data, ptr %11, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %0) #10
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %9
  %27 = getelementptr inbounds %struct.dbs_data, ptr %11, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br label %30

30:                                               ; preds = %46, %26
  %31 = phi i32 [ %23, %26 ], [ %47, %46 ]
  %32 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, ptrtoint (ptr @cpu_dbs to i32)
  %35 = inttoptr i32 %34 to ptr
  %36 = getelementptr inbounds %struct.cpu_dbs_info, ptr %35, i32 0, i32 1
  %37 = tail call i64 @get_cpu_idle_time(i32 noundef %31, ptr noundef %36, i32 noundef %22) #9
  store i64 %37, ptr %35, align 8
  %38 = getelementptr inbounds %struct.cpu_dbs_info, ptr %35, i32 0, i32 3
  store i32 0, ptr %38, align 8
  br i1 %29, label %46, label %39

39:                                               ; preds = %30
  %40 = load i32, ptr %32, align 4
  %41 = add i32 %40, ptrtoint (ptr @kernel_cpustat to i32)
  %42 = inttoptr i32 %41 to ptr
  %43 = getelementptr [10 x i64], ptr %42, i32 0, i32 1
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds %struct.cpu_dbs_info, ptr %35, i32 0, i32 2
  store i64 %44, ptr %45, align 8
  br label %46

46:                                               ; preds = %39, %30
  %47 = tail call i32 @cpumask_next(i32 noundef %31, ptr noundef %0) #10
  %48 = load i32, ptr @nr_cpu_ids, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %30, label %50

50:                                               ; preds = %46, %9
  %51 = getelementptr inbounds %struct.dbs_governor, ptr %3, i32 0, i32 8
  %52 = load ptr, ptr %51, align 4
  tail call void %52(ptr noundef %0) #9
  %53 = load ptr, ptr %5, align 8
  %54 = mul i32 %20, 1000
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.policy_dbs_info, ptr %5, i32 0, i32 3
  store i64 %55, ptr %56, align 8
  %57 = getelementptr inbounds %struct.policy_dbs_info, ptr %5, i32 0, i32 2
  store i64 0, ptr %57, align 8
  %58 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %53) #10
  %59 = load i32, ptr @nr_cpu_ids, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %61, %50
  %62 = phi i32 [ %68, %61 ], [ %58, %50 ]
  %63 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %62
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, ptrtoint (ptr @cpu_dbs to i32)
  %66 = inttoptr i32 %65 to ptr
  %67 = getelementptr inbounds %struct.cpu_dbs_info, ptr %66, i32 0, i32 4
  tail call void @cpufreq_add_update_util_hook(i32 noundef %62, ptr noundef %67, ptr noundef nonnull @dbs_update_util_handler) #9
  %68 = tail call i32 @cpumask_next(i32 noundef %62, ptr noundef %53) #10
  %69 = load i32, ptr @nr_cpu_ids, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %61, label %71

71:                                               ; preds = %61, %50, %1
  %72 = phi i32 [ -22, %1 ], [ 0, %50 ], [ 0, %61 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpufreq_dbs_governor_stop(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %4) #10
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %8, %1
  %9 = phi i32 [ %10, %8 ], [ %5, %1 ]
  tail call void @cpufreq_remove_update_util_hook(i32 noundef %9) #9
  %10 = tail call i32 @cpumask_next(i32 noundef %9, ptr noundef %4) #10
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %8, label %13

13:                                               ; preds = %8, %1
  tail call void @synchronize_rcu() #9
  %14 = getelementptr inbounds %struct.policy_dbs_info, ptr %3, i32 0, i32 5
  tail call void @irq_work_sync(ptr noundef %14) #9
  %15 = getelementptr inbounds %struct.policy_dbs_info, ptr %3, i32 0, i32 6
  %16 = tail call zeroext i1 @cancel_work_sync(ptr noundef %15) #9
  %17 = getelementptr inbounds %struct.policy_dbs_info, ptr %3, i32 0, i32 4
  store volatile i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.policy_dbs_info, ptr %3, i32 0, i32 12
  store i8 0, ptr %18, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpufreq_dbs_governor_limits(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @gov_dbs_data_mutex) #9
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.policy_dbs_info, ptr %3, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 9
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = tail call i32 @__cpufreq_driver_target(ptr noundef %0, i32 noundef %8, i32 noundef 5) #9
  br label %20

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, %10
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = tail call i32 @__cpufreq_driver_target(ptr noundef %0, i32 noundef %16, i32 noundef 4) #9
  br label %20

20:                                               ; preds = %18, %14, %12
  %21 = getelementptr inbounds %struct.policy_dbs_info, ptr %3, i32 0, i32 3
  store i64 0, ptr %21, align 8
  tail call void @mutex_unlock(ptr noundef %6) #9
  br label %22

22:                                               ; preds = %20, %1
  tail call void @mutex_unlock(ptr noundef nonnull @gov_dbs_data_mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dbs_irq_work(ptr noundef %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #9
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i32 16
  %6 = load ptr, ptr @system_wq, align 4
  %7 = tail call zeroext i1 @queue_work_on(i32 noundef %4, ptr noundef %6, ptr noundef %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dbs_work_handler(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -60
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cpufreq_policy, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 -56
  tail call void @mutex_lock(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.dbs_governor, ptr %5, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %3) #9
  %10 = mul i32 %9, 1000
  %11 = zext i32 %10 to i64
  %12 = getelementptr i8, ptr %0, i32 -28
  store i64 %11, ptr %12, align 8
  tail call void @mutex_unlock(ptr noundef %6) #9
  %13 = getelementptr i8, ptr %0, i32 -20
  store volatile i32 0, ptr %13, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !13
  %14 = getelementptr i8, ptr %0, i32 37
  store i8 0, ptr %14, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_add_update_util_hook(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dbs_update_util_handler(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call zeroext i1 @cpufreq_this_cpu_can_update(ptr noundef %6) #9
  br i1 %7, label %8, label %35

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.policy_dbs_info, ptr %5, i32 0, i32 12
  %10 = load i8, ptr %9, align 1, !range !14
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  %13 = getelementptr inbounds %struct.policy_dbs_info, ptr %5, i32 0, i32 2
  %14 = load volatile i64, ptr %13, align 8
  %15 = sub i64 %1, %14
  %16 = getelementptr inbounds %struct.policy_dbs_info, ptr %5, i32 0, i32 3
  %17 = load i64, ptr %16, align 8
  %18 = icmp slt i64 %15, %17
  br i1 %18, label %35, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.policy_dbs_info, ptr %5, i32 0, i32 11
  %21 = load i8, ptr %20, align 8, !range !14
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.policy_dbs_info, ptr %5, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #9, !srcloc !17
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, i32 1, ptr elementtype(i32) %24) #9, !srcloc !18
  %26 = extractvalue { i32, i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %35, label %28

28:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !19
  %29 = load volatile i64, ptr %13, align 8
  %30 = icmp eq i64 %14, %29
  br i1 %30, label %32, label %31, !prof !12

31:                                               ; preds = %28
  store volatile i32 0, ptr %24, align 4
  br label %35

32:                                               ; preds = %28, %19
  store i64 %1, ptr %13, align 8
  store i8 1, ptr %9, align 1
  %33 = getelementptr inbounds %struct.policy_dbs_info, ptr %5, i32 0, i32 5
  %34 = tail call zeroext i1 @irq_work_queue(ptr noundef %33) #9
  br label %35

35:                                               ; preds = %32, %31, %23, %12, %8, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpufreq_this_cpu_can_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_work_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_remove_update_util_hook(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpufreq_driver_target(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

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
!9 = !{i64 995587, i64 995614, i64 995636, i64 995664}
!10 = !{i64 995995, i64 996022, i64 996055, i64 996076, i64 996103, i64 996129}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2152158107}
!14 = !{i8 0, i8 2}
!15 = !{i64 2152160877}
!16 = !{i64 2148063337}
!17 = !{i64 561647, i64 2148051618, i64 2148051644, i64 2148051691, i64 2148051713, i64 2148051741, i64 2148051761}
!18 = !{i64 548216, i64 548241, i64 548263, i64 548279, i64 548291, i64 548311, i64 548335, i64 548351, i64 548363}
!19 = !{i64 2148063463}
