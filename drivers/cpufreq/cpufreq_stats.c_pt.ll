; ModuleID = '/llk/IR/drivers/cpufreq/cpufreq_stats.c_pt.bc'
source_filename = "../drivers/cpufreq/cpufreq_stats.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.freq_attr = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.cpufreq_policy = type { [1 x %struct.cpumask], [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpumask = type { [1 x i32] }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cpufreq_stats = type { i32, i64, i32, i32, i32, ptr, ptr, ptr, i32, i64 }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }

@stats_attr_group = internal constant %struct.attribute_group { ptr @.str, ptr null, ptr null, ptr @default_attrs, ptr null }, align 4
@.str = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@default_attrs = internal global [5 x ptr] [ptr @total_trans, ptr @time_in_state, ptr @reset, ptr @trans_table, ptr null], align 4
@total_trans = internal global %struct.freq_attr { %struct.attribute { ptr @.str.1, i16 292 }, ptr @show_total_trans, ptr null }, align 4
@time_in_state = internal global %struct.freq_attr { %struct.attribute { ptr @.str.4, i16 292 }, ptr @show_time_in_state, ptr null }, align 4
@reset = internal global %struct.freq_attr { %struct.attribute { ptr @.str.6, i16 128 }, ptr null, ptr @store_reset }, align 4
@trans_table = internal global %struct.freq_attr { %struct.attribute { ptr @.str.7, i16 292 }, ptr @show_trans_table, ptr null }, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"total_trans\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"time_in_state\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%u %llu\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"trans_table\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"   From  :    To\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"         : \00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%9u \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%9u: \00", align 1
@show_trans_table.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"\014cpufreq transition table exceeds PAGE_SIZE. Disabling\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpufreq_stats_free_table(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 38
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 23
  tail call void @sysfs_remove_group(ptr noundef %6, ptr noundef nonnull @stats_attr_group) #8
  %7 = getelementptr inbounds %struct.cpufreq_stats, ptr %3, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %8) #8
  tail call void @kfree(ptr noundef nonnull %3) #8
  store ptr null, ptr %2, align 4
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpufreq_stats_create_table(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %91, label %5, !prof !8

5:                                                ; preds = %12, %1
  %6 = phi ptr [ %14, %12 ], [ %3, %1 ]
  %7 = phi i32 [ %13, %12 ], [ 0, %1 ]
  %8 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %6, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %10 [
    i32 -2, label %15
    i32 -1, label %12
  ]

10:                                               ; preds = %5
  %11 = add i32 %7, 1
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi i32 [ %11, %10 ], [ %7, %5 ]
  %14 = getelementptr %struct.cpufreq_frequency_table, ptr %6, i32 1
  br label %5

15:                                               ; preds = %5
  %16 = icmp eq i32 %7, 0
  br i1 %16, label %91, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 38
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %91

21:                                               ; preds = %17
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 56) #9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %91, label %25

25:                                               ; preds = %21
  %26 = shl i32 %7, 2
  %27 = add i32 %26, 12
  %28 = mul i32 %27, %7
  %29 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %28, i32 noundef 3520) #10
  %30 = getelementptr inbounds %struct.cpufreq_stats, ptr %23, i32 0, i32 5
  store ptr %29, ptr %30, align 4
  %31 = icmp eq ptr %29, null
  br i1 %31, label %90, label %32

32:                                               ; preds = %25
  %33 = getelementptr i64, ptr %29, i32 %7
  %34 = getelementptr inbounds %struct.cpufreq_stats, ptr %23, i32 0, i32 6
  store ptr %33, ptr %34, align 8
  %35 = getelementptr i32, ptr %33, i32 %7
  %36 = getelementptr inbounds %struct.cpufreq_stats, ptr %23, i32 0, i32 7
  store ptr %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.cpufreq_stats, ptr %23, i32 0, i32 2
  store i32 %7, ptr %37, align 8
  %38 = load ptr, ptr %2, align 4
  br label %39

39:                                               ; preds = %61, %32
  %40 = phi i32 [ 0, %32 ], [ %62, %61 ]
  %41 = phi ptr [ %38, %32 ], [ %63, %61 ]
  %42 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  switch i32 %43, label %44 [
    i32 -2, label %64
    i32 -1, label %61
  ]

44:                                               ; preds = %39
  %45 = load i32, ptr %37, align 8
  %46 = icmp eq i32 %45, 0
  %47 = load ptr, ptr %34, align 8
  br i1 %46, label %58, label %48

48:                                               ; preds = %53, %44
  %49 = phi i32 [ %54, %53 ], [ 0, %44 ]
  %50 = getelementptr i32, ptr %47, i32 %49
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, %43
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = add nuw i32 %49, 1
  %55 = icmp eq i32 %54, %45
  br i1 %55, label %58, label %48

56:                                               ; preds = %48
  %57 = icmp eq i32 %49, -1
  br i1 %57, label %58, label %61

58:                                               ; preds = %56, %53, %44
  %59 = add i32 %40, 1
  %60 = getelementptr i32, ptr %47, i32 %40
  store i32 %43, ptr %60, align 4
  br label %61

61:                                               ; preds = %58, %56, %39
  %62 = phi i32 [ %59, %58 ], [ %40, %56 ], [ %40, %39 ]
  %63 = getelementptr %struct.cpufreq_frequency_table, ptr %41, i32 1
  br label %39

64:                                               ; preds = %39
  %65 = getelementptr inbounds %struct.cpufreq_stats, ptr %23, i32 0, i32 3
  store i32 %40, ptr %65, align 4
  %66 = tail call i64 @sched_clock() #8
  %67 = getelementptr inbounds %struct.cpufreq_stats, ptr %23, i32 0, i32 1
  store i64 %66, ptr %67, align 8
  %68 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 9
  %69 = load i32, ptr %68, align 4
  %70 = load i32, ptr %37, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %64
  %73 = load ptr, ptr %34, align 8
  br label %74

74:                                               ; preds = %79, %72
  %75 = phi i32 [ 0, %72 ], [ %80, %79 ]
  %76 = getelementptr i32, ptr %73, i32 %75
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, %69
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = add nuw i32 %75, 1
  %81 = icmp eq i32 %80, %70
  br i1 %81, label %82, label %74

82:                                               ; preds = %79, %74, %64
  %83 = phi i32 [ -1, %64 ], [ %75, %74 ], [ -1, %79 ]
  %84 = getelementptr inbounds %struct.cpufreq_stats, ptr %23, i32 0, i32 4
  store i32 %83, ptr %84, align 8
  store ptr %23, ptr %18, align 4
  %85 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 23
  %86 = tail call i32 @sysfs_create_group(ptr noundef %85, ptr noundef nonnull @stats_attr_group) #8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %82
  store ptr null, ptr %18, align 4
  %89 = load ptr, ptr %30, align 4
  tail call void @kfree(ptr noundef %89) #8
  br label %90

90:                                               ; preds = %88, %25
  tail call void @kfree(ptr noundef nonnull %23) #8
  br label %91

91:                                               ; preds = %90, %82, %21, %17, %15, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpufreq_stats_record_transition(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 38
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %55, label %6, !prof !8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cpufreq_stats, ptr %4, i32 0, i32 8
  %8 = load volatile i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10, !prof !9

10:                                               ; preds = %6
  tail call fastcc void @cpufreq_stats_reset_table(ptr noundef nonnull %4)
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.cpufreq_stats, ptr %4, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.cpufreq_stats, ptr %4, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %55, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.cpufreq_stats, ptr %4, i32 0, i32 6
  %19 = load ptr, ptr %18, align 8
  br label %20

20:                                               ; preds = %25, %17
  %21 = phi i32 [ 0, %17 ], [ %26, %25 ]
  %22 = getelementptr i32, ptr %19, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, %1
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = add nuw i32 %21, 1
  %27 = icmp eq i32 %26, %15
  br i1 %27, label %55, label %20

28:                                               ; preds = %20
  %29 = icmp eq i32 %13, -1
  %30 = icmp eq i32 %21, -1
  %31 = select i1 %29, i1 true, i1 %30
  %32 = icmp eq i32 %13, %21
  %33 = select i1 %31, i1 true, i1 %32, !prof !10
  br i1 %33, label %55, label %34, !prof !8

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.cpufreq_stats, ptr %4, i32 0, i32 1
  %36 = load i64, ptr %35, align 8
  %37 = tail call i64 @sched_clock() #8
  %38 = sub i64 %37, %36
  %39 = getelementptr inbounds %struct.cpufreq_stats, ptr %4, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = load i32, ptr %12, align 8
  %42 = getelementptr i64, ptr %40, i32 %41
  %43 = load i64, ptr %42, align 8
  %44 = add i64 %38, %43
  store i64 %44, ptr %42, align 8
  store i64 %37, ptr %35, align 8
  store i32 %21, ptr %12, align 8
  %45 = getelementptr inbounds %struct.cpufreq_stats, ptr %4, i32 0, i32 7
  %46 = load ptr, ptr %45, align 4
  %47 = load i32, ptr %14, align 8
  %48 = mul i32 %47, %13
  %49 = add i32 %48, %21
  %50 = getelementptr i32, ptr %46, i32 %49
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 4
  %53 = load i32, ptr %4, align 8
  %54 = add i32 %53, 1
  store i32 %54, ptr %4, align 8
  br label %55

55:                                               ; preds = %34, %28, %25, %11, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cpufreq_stats_reset_table(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpufreq_stats, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr inbounds %struct.cpufreq_stats, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = shl i32 %3, 3
  tail call void @llvm.memset.p0.i32(ptr align 8 %5, i8 0, i32 %6, i1 false)
  %7 = getelementptr inbounds %struct.cpufreq_stats, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = shl i32 %3, 2
  %10 = mul i32 %9, %3
  tail call void @llvm.memset.p0.i32(ptr align 4 %8, i8 0, i32 %10, i1 false)
  %11 = tail call i64 @sched_clock() #8
  %12 = getelementptr inbounds %struct.cpufreq_stats, ptr %0, i32 0, i32 1
  store i64 %11, ptr %12, align 8
  store i32 0, ptr %0, align 8
  %13 = getelementptr inbounds %struct.cpufreq_stats, ptr %0, i32 0, i32 8
  store volatile i32 0, ptr %13, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  %14 = getelementptr inbounds %struct.cpufreq_stats, ptr %0, i32 0, i32 9
  %15 = load volatile i64, ptr %14, align 8
  %16 = tail call i64 @sched_clock() #8
  %17 = sub i64 %16, %15
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds %struct.cpufreq_stats, ptr %0, i32 0, i32 4
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr i64, ptr %18, i32 %20
  %22 = load i64, ptr %21, align 8
  %23 = add i64 %17, %22
  store i64 %23, ptr %21, align 8
  store i64 %16, ptr %12, align 8
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_total_trans(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 38
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cpufreq_stats, ptr %4, i32 0, i32 8
  %6 = load volatile i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef 0)
  br label %13

10:                                               ; preds = %2
  %11 = load i32, ptr %4, align 8
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %11)
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi i32 [ %9, %8 ], [ %12, %10 ]
  ret i32 %14
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_time_in_state(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 38
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cpufreq_stats, ptr %4, i32 0, i32 8
  %6 = load volatile i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.cpufreq_stats, ptr %4, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %50, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.cpufreq_stats, ptr %4, i32 0, i32 4
  %13 = getelementptr inbounds %struct.cpufreq_stats, ptr %4, i32 0, i32 9
  %14 = getelementptr inbounds %struct.cpufreq_stats, ptr %4, i32 0, i32 5
  %15 = getelementptr inbounds %struct.cpufreq_stats, ptr %4, i32 0, i32 1
  %16 = getelementptr inbounds %struct.cpufreq_stats, ptr %4, i32 0, i32 6
  br label %17

17:                                               ; preds = %38, %11
  %18 = phi i32 [ 0, %11 ], [ %47, %38 ]
  %19 = phi i32 [ 0, %11 ], [ %46, %38 ]
  br i1 %7, label %27, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr %12, align 8
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %24 = tail call i64 @sched_clock() #8
  %25 = load volatile i64, ptr %13, align 8
  %26 = sub i64 %24, %25
  br label %38

27:                                               ; preds = %17
  %28 = load ptr, ptr %14, align 4
  %29 = getelementptr i64, ptr %28, i32 %18
  %30 = load i64, ptr %29, align 8
  %31 = load i32, ptr %12, align 8
  %32 = icmp eq i32 %18, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = tail call i64 @sched_clock() #8
  %35 = load i64, ptr %15, align 8
  %36 = add i64 %34, %30
  %37 = sub i64 %36, %35
  br label %38

38:                                               ; preds = %33, %27, %23, %20
  %39 = phi i64 [ %26, %23 ], [ %37, %33 ], [ %30, %27 ], [ 0, %20 ]
  %40 = getelementptr i8, ptr %1, i32 %19
  %41 = load ptr, ptr %16, align 8
  %42 = getelementptr i32, ptr %41, i32 %18
  %43 = load i32, ptr %42, align 4
  %44 = tail call i64 @nsec_to_clock_t(i64 noundef %39) #8
  %45 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %40, ptr noundef nonnull @.str.5, i32 noundef %43, i64 noundef %44)
  %46 = add i32 %45, %19
  %47 = add nuw i32 %18, 1
  %48 = load i32, ptr %8, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %17, label %50

50:                                               ; preds = %38, %2
  %51 = phi i32 [ 0, %2 ], [ %46, %38 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nsec_to_clock_t(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @store_reset(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef returned %2) #0 {
  %4 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 38
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i64 @sched_clock() #8
  %7 = getelementptr inbounds %struct.cpufreq_stats, ptr %5, i32 0, i32 9
  store volatile i64 %6, ptr %7, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #8, !srcloc !13
  %8 = getelementptr inbounds %struct.cpufreq_stats, ptr %5, i32 0, i32 8
  store volatile i32 1, ptr %8, align 8
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_trans_table(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 38
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cpufreq_stats, ptr %4, i32 0, i32 8
  %6 = load volatile i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  %8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %1, i32 noundef 4096, ptr noundef nonnull @.str.8) #8
  %9 = getelementptr i8, ptr %1, i32 %8
  %10 = sub i32 4096, %8
  %11 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %9, i32 noundef %10, ptr noundef nonnull @.str.9) #8
  %12 = add i32 %11, %8
  %13 = getelementptr inbounds %struct.cpufreq_stats, ptr %4, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = icmp ugt i32 %12, 4095
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %35, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.cpufreq_stats, ptr %4, i32 0, i32 6
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi i32 [ 0, %18 ], [ %30, %20 ]
  %22 = phi i32 [ %12, %18 ], [ %29, %20 ]
  %23 = getelementptr i8, ptr %1, i32 %22
  %24 = sub nuw nsw i32 4096, %22
  %25 = load ptr, ptr %19, align 8
  %26 = getelementptr i32, ptr %25, i32 %21
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %23, i32 noundef %24, ptr noundef nonnull @.str.10, i32 noundef %27) #8
  %29 = add i32 %28, %22
  %30 = add nuw i32 %21, 1
  %31 = load i32, ptr %13, align 4
  %32 = icmp uge i32 %30, %31
  %33 = icmp ugt i32 %29, 4095
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %35, label %20

35:                                               ; preds = %20, %2
  %36 = phi i32 [ %12, %2 ], [ %29, %20 ]
  %37 = phi i1 [ %16, %2 ], [ %33, %20 ]
  br i1 %37, label %106, label %38

38:                                               ; preds = %35
  %39 = getelementptr i8, ptr %1, i32 %36
  %40 = sub nuw nsw i32 4096, %36
  %41 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %39, i32 noundef %40, ptr noundef nonnull @.str.11) #8
  %42 = add i32 %41, %36
  %43 = load i32, ptr %13, align 4
  %44 = icmp eq i32 %43, 0
  %45 = icmp ugt i32 %42, 4095
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %99, label %47

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.cpufreq_stats, ptr %4, i32 0, i32 6
  %49 = getelementptr inbounds %struct.cpufreq_stats, ptr %4, i32 0, i32 7
  %50 = getelementptr inbounds %struct.cpufreq_stats, ptr %4, i32 0, i32 2
  br label %51

51:                                               ; preds = %89, %47
  %52 = phi i32 [ 0, %47 ], [ %94, %89 ]
  %53 = phi i32 [ %42, %47 ], [ %93, %89 ]
  %54 = getelementptr i8, ptr %1, i32 %53
  %55 = sub nuw nsw i32 4096, %53
  %56 = load ptr, ptr %48, align 8
  %57 = getelementptr i32, ptr %56, i32 %52
  %58 = load i32, ptr %57, align 4
  %59 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %54, i32 noundef %55, ptr noundef nonnull @.str.12, i32 noundef %58) #8
  %60 = add i32 %59, %53
  %61 = load i32, ptr %13, align 4
  %62 = icmp eq i32 %61, 0
  %63 = icmp ugt i32 %60, 4095
  %64 = select i1 %62, i1 true, i1 %63
  br i1 %64, label %86, label %65

65:                                               ; preds = %75, %51
  %66 = phi i32 [ %81, %75 ], [ 0, %51 ]
  %67 = phi i32 [ %80, %75 ], [ %60, %51 ]
  br i1 %7, label %68, label %75

68:                                               ; preds = %65
  %69 = load ptr, ptr %49, align 4
  %70 = load i32, ptr %50, align 8
  %71 = mul i32 %70, %52
  %72 = add i32 %71, %66
  %73 = getelementptr i32, ptr %69, i32 %72
  %74 = load i32, ptr %73, align 4
  br label %75

75:                                               ; preds = %68, %65
  %76 = phi i32 [ %74, %68 ], [ 0, %65 ]
  %77 = getelementptr i8, ptr %1, i32 %67
  %78 = sub nuw nsw i32 4096, %67
  %79 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %77, i32 noundef %78, ptr noundef nonnull @.str.10, i32 noundef %76) #8
  %80 = add i32 %79, %67
  %81 = add nuw i32 %66, 1
  %82 = load i32, ptr %13, align 4
  %83 = icmp uge i32 %81, %82
  %84 = icmp ugt i32 %80, 4095
  %85 = select i1 %83, i1 true, i1 %84
  br i1 %85, label %86, label %65

86:                                               ; preds = %75, %51
  %87 = phi i32 [ %60, %51 ], [ %80, %75 ]
  %88 = phi i1 [ %63, %51 ], [ %84, %75 ]
  br i1 %88, label %102, label %89

89:                                               ; preds = %86
  %90 = getelementptr i8, ptr %1, i32 %87
  %91 = sub nuw nsw i32 4096, %87
  %92 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %90, i32 noundef %91, ptr noundef nonnull @.str.11) #8
  %93 = add i32 %92, %87
  %94 = add nuw i32 %52, 1
  %95 = load i32, ptr %13, align 4
  %96 = icmp uge i32 %94, %95
  %97 = icmp ugt i32 %93, 4095
  %98 = select i1 %96, i1 true, i1 %97
  br i1 %98, label %99, label %51

99:                                               ; preds = %89, %38
  %100 = phi i32 [ %42, %38 ], [ %93, %89 ]
  %101 = icmp ugt i32 %100, 4095
  br i1 %101, label %102, label %106

102:                                              ; preds = %99, %86
  %103 = load i1, ptr @show_trans_table.__already_done, align 1
  br i1 %103, label %106, label %104, !prof !9

104:                                              ; preds = %102
  store i1 true, ptr @show_trans_table.__already_done, align 1
  %105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #11
  br label %106

106:                                              ; preds = %104, %102, %99, %35
  %107 = phi i32 [ 4096, %35 ], [ -27, %104 ], [ -27, %102 ], [ %100, %99 ]
  ret i32 %107
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 4001, i32 4000000}
!11 = !{i64 2151540081}
!12 = !{i64 2151550617}
!13 = !{i64 2151557321}
