; ModuleID = '/llk/IR/drivers/opp/cpu.c_pt.bc'
source_filename = "../drivers/opp/cpu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_init_cpufreq_table:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_init_cpufreq_table\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_init_cpufreq_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_free_cpufreq_table:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_free_cpufreq_table\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_free_cpufreq_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_cpumask_remove_table:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_cpumask_remove_table\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_cpumask_remove_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_set_sharing_cpus:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_set_sharing_cpus\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_set_sharing_cpus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_opp_get_sharing_cpus:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_opp_get_sharing_cpus\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_opp_get_sharing_cpus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }
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
%struct.opp_table = type { %struct.list_head, %struct.list_head, %struct.blocking_notifier_head, %struct.list_head, %struct.list_head, %struct.kref, %struct.mutex, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i8, i8, i8, ptr, ptr, ptr, ptr, [255 x i8] }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.opp_device = type { %struct.list_head, ptr, ptr }

@__kstrtab_dev_pm_opp_init_cpufreq_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_init_cpufreq_table = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_init_cpufreq_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_init_cpufreq_table to i32), ptr @__kstrtab_dev_pm_opp_init_cpufreq_table, ptr @__kstrtabns_dev_pm_opp_init_cpufreq_table }, section "___ksymtab_gpl+dev_pm_opp_init_cpufreq_table", align 4
@__kstrtab_dev_pm_opp_free_cpufreq_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_free_cpufreq_table = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_free_cpufreq_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_free_cpufreq_table to i32), ptr @__kstrtab_dev_pm_opp_free_cpufreq_table, ptr @__kstrtabns_dev_pm_opp_free_cpufreq_table }, section "___ksymtab_gpl+dev_pm_opp_free_cpufreq_table", align 4
@.str = private unnamed_addr constant [18 x i8] c"drivers/opp/cpu.c\00", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"\013cpu: %s: failed to get cpu%d device\0A\00", align 1
@__func__._dev_pm_opp_cpumask_remove_table = private unnamed_addr constant [33 x i8] c"_dev_pm_opp_cpumask_remove_table\00", align 1
@__kstrtab_dev_pm_opp_cpumask_remove_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_cpumask_remove_table = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_cpumask_remove_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_cpumask_remove_table to i32), ptr @__kstrtab_dev_pm_opp_cpumask_remove_table, ptr @__kstrtabns_dev_pm_opp_cpumask_remove_table }, section "___ksymtab_gpl+dev_pm_opp_cpumask_remove_table", align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: failed to get cpu%d device\0A\00", align 1
@__func__.dev_pm_opp_set_sharing_cpus = private unnamed_addr constant [28 x i8] c"dev_pm_opp_set_sharing_cpus\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"%s: failed to add opp-dev for cpu%d device\0A\00", align 1
@__kstrtab_dev_pm_opp_set_sharing_cpus = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_set_sharing_cpus = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_set_sharing_cpus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_set_sharing_cpus to i32), ptr @__kstrtab_dev_pm_opp_set_sharing_cpus, ptr @__kstrtabns_dev_pm_opp_set_sharing_cpus }, section "___ksymtab_gpl+dev_pm_opp_set_sharing_cpus", align 4
@__kstrtab_dev_pm_opp_get_sharing_cpus = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_opp_get_sharing_cpus = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_opp_get_sharing_cpus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_opp_get_sharing_cpus to i32), ptr @__kstrtab_dev_pm_opp_get_sharing_cpus, ptr @__kstrtabns_dev_pm_opp_get_sharing_cpus }, section "___ksymtab_gpl+dev_pm_opp_get_sharing_cpus", align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_dev_pm_opp_cpumask_remove_table, ptr @__ksymtab_dev_pm_opp_free_cpufreq_table, ptr @__ksymtab_dev_pm_opp_get_sharing_cpus, ptr @__ksymtab_dev_pm_opp_init_cpufreq_table, ptr @__ksymtab_dev_pm_opp_set_sharing_cpus], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_opp_init_cpufreq_table(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  %4 = tail call i32 @dev_pm_opp_get_opp_count(ptr noundef %0) #7
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = icmp eq i32 %4, 0
  %8 = select i1 %7, i32 -61, i32 %4
  br label %40

9:                                                ; preds = %2
  %10 = add nuw i32 %4, 1
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 12) #7
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %40, label %13, !prof !8

13:                                               ; preds = %9
  %14 = extractvalue { i32, i1 } %11, 0
  %15 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %40, label %17

17:                                               ; preds = %13
  store i32 0, ptr %3, align 4
  br label %18

18:                                               ; preds = %30, %17
  %19 = phi i32 [ %31, %30 ], [ 0, %17 ]
  %20 = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %0, ptr noundef nonnull %3) #7
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %38, label %22

22:                                               ; preds = %18
  %23 = getelementptr %struct.cpufreq_frequency_table, ptr %15, i32 %19, i32 1
  store i32 %19, ptr %23, align 4
  %24 = load i32, ptr %3, align 4
  %25 = udiv i32 %24, 1000
  %26 = getelementptr %struct.cpufreq_frequency_table, ptr %15, i32 %19, i32 2
  store i32 %25, ptr %26, align 4
  %27 = call zeroext i1 @dev_pm_opp_is_turbo(ptr noundef %20) #7
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = getelementptr %struct.cpufreq_frequency_table, ptr %15, i32 %19
  store i32 1, ptr %29, align 4
  br label %30

30:                                               ; preds = %28, %22
  call void @dev_pm_opp_put(ptr noundef %20) #7
  %31 = add nuw nsw i32 %19, 1
  %32 = load i32, ptr %3, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %3, align 4
  %34 = icmp eq i32 %31, %4
  br i1 %34, label %35, label %18

35:                                               ; preds = %30
  %36 = getelementptr %struct.cpufreq_frequency_table, ptr %15, i32 %4, i32 1
  store i32 %4, ptr %36, align 4
  %37 = getelementptr %struct.cpufreq_frequency_table, ptr %15, i32 %4, i32 2
  store i32 -2, ptr %37, align 4
  store ptr %15, ptr %1, align 4
  br label %40

38:                                               ; preds = %18
  %39 = ptrtoint ptr %20 to i32
  call void @kfree(ptr noundef nonnull %15) #7
  br label %40

40:                                               ; preds = %38, %35, %13, %9, %6
  %41 = phi i32 [ %8, %6 ], [ -12, %13 ], [ %39, %38 ], [ 0, %35 ], [ -12, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %41
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_opp_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_ceil(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dev_pm_opp_is_turbo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_opp_free_cpufreq_table(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %5) #7
  store ptr null, ptr %1, align 4
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @_dev_pm_opp_cpumask_remove_table(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 4
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 114, i32 noundef 9, ptr noundef null) #7
  br label %7

7:                                                ; preds = %6, %2
  %8 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %0) #9
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %10 = icmp uge i32 %8, %9
  %11 = icmp eq i32 %8, %1
  %12 = or i1 %11, %10
  br i1 %12, label %26, label %13

13:                                               ; preds = %19, %7
  %14 = phi i32 [ %20, %19 ], [ %8, %7 ]
  %15 = tail call ptr @get_cpu_device(i32 noundef %14) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__._dev_pm_opp_cpumask_remove_table, i32 noundef %14) #10
  br label %19

19:                                               ; preds = %25, %17
  %20 = tail call i32 @cpumask_next(i32 noundef %14, ptr noundef %0) #9
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %22 = icmp uge i32 %20, %21
  %23 = icmp eq i32 %20, %1
  %24 = or i1 %23, %22
  br i1 %24, label %26, label %13

25:                                               ; preds = %13
  tail call void @dev_pm_opp_remove_table(ptr noundef nonnull %15) #7
  br label %19

26:                                               ; preds = %19, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_remove_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_opp_cpumask_remove_table(ptr noundef %0) #0 {
  tail call void @_dev_pm_opp_cpumask_remove_table(ptr noundef %0, i32 noundef -1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_opp_set_sharing_cpus(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @_find_opp_table(ptr noundef %0) #7
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %1) #9
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %31

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 28
  %11 = getelementptr inbounds %struct.opp_table, ptr %3, i32 0, i32 11
  br label %14

12:                                               ; preds = %2
  %13 = ptrtoint ptr %3 to i32
  br label %32

14:                                               ; preds = %22, %9
  %15 = phi i32 [ %6, %9 ], [ %23, %22 ]
  %16 = load i32, ptr %10, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @get_cpu_device(i32 noundef %15) #7
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.dev_pm_opp_set_sharing_cpus, i32 noundef %15) #10
  br label %22

22:                                               ; preds = %30, %29, %21, %14
  %23 = tail call i32 @cpumask_next(i32 noundef %15, ptr noundef %1) #9
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %14, label %31

26:                                               ; preds = %18
  %27 = tail call ptr @_add_opp_dev(ptr noundef nonnull %19, ptr noundef %3) #7
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %19, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.dev_pm_opp_set_sharing_cpus, i32 noundef %15) #10
  br label %22

30:                                               ; preds = %26
  store i32 2, ptr %11, align 4
  br label %22

31:                                               ; preds = %22, %5
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %3) #7
  br label %32

32:                                               ; preds = %31, %12
  %33 = phi i32 [ %13, %12 ], [ 0, %31 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_find_opp_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_add_opp_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put_opp_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_opp_get_sharing_cpus(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @_find_opp_table(ptr noundef %0) #7
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  br label %33

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.opp_table, ptr %3, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %7
  store i32 0, ptr %1, align 4
  %12 = load i32, ptr %8, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.opp_table, ptr %3, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %15) #7
  %16 = getelementptr inbounds %struct.opp_table, ptr %3, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %27, label %19

19:                                               ; preds = %19, %14
  %20 = phi ptr [ %25, %19 ], [ %17, %14 ]
  %21 = getelementptr inbounds %struct.opp_device, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 28
  %24 = load i32, ptr %23, align 4
  tail call void @_set_bit(i32 noundef %24, ptr noundef %1) #7
  %25 = load ptr, ptr %20, align 4
  %26 = icmp eq ptr %25, %16
  br i1 %26, label %27, label %19

27:                                               ; preds = %19, %14
  tail call void @mutex_unlock(ptr noundef %15) #7
  br label %31

28:                                               ; preds = %11
  %29 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 28
  %30 = load i32, ptr %29, align 4
  tail call void @_set_bit(i32 noundef %30, ptr noundef %1) #7
  br label %31

31:                                               ; preds = %28, %27, %7
  %32 = phi i32 [ 0, %27 ], [ 0, %28 ], [ -22, %7 ]
  tail call void @dev_pm_opp_put_opp_table(ptr noundef %3) #7
  br label %33

33:                                               ; preds = %31, %5
  %34 = phi i32 [ %6, %5 ], [ %32, %31 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { cold nounwind }

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
