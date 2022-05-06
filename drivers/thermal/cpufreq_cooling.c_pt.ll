; ModuleID = '/llk/IR/drivers/thermal/cpufreq_cooling.c_pt.bc'
source_filename = "../drivers/thermal/cpufreq_cooling.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_cooling_register:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_cooling_register\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_cooling_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_cpufreq_cooling_register:\09\09\09\09\09"
module asm "\09.asciz \09\22of_cpufreq_cooling_register\22\09\09\09\09\09"
module asm "__kstrtabns_of_cpufreq_cooling_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpufreq_cooling_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22cpufreq_cooling_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_cpufreq_cooling_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.cpufreq_frequency_table = type { i32, i32, i32 }
%struct.cpufreq_cooling_device = type { i32, i32, i32, ptr, ptr, %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }

@__kstrtab_cpufreq_cooling_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_cooling_register = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_cooling_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_cooling_register to i32), ptr @__kstrtab_cpufreq_cooling_register, ptr @__kstrtabns_cpufreq_cooling_register }, section "___ksymtab_gpl+cpufreq_cooling_register", align 4
@.str = private unnamed_addr constant [52 x i8] c"\013cpufreq_cooling: OF node not available for cpu%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"#cooling-cells\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"\013cpufreq_cooling: cpu%d failed to register as cooling device: %ld\0A\00", align 1
@__kstrtab_of_cpufreq_cooling_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_cpufreq_cooling_register = external dso_local constant [0 x i8], align 1
@__ksymtab_of_cpufreq_cooling_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_cpufreq_cooling_register to i32), ptr @__kstrtab_of_cpufreq_cooling_register, ptr @__kstrtabns_of_cpufreq_cooling_register }, section "___ksymtab_gpl+of_cpufreq_cooling_register", align 4
@__kstrtab_cpufreq_cooling_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpufreq_cooling_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_cpufreq_cooling_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpufreq_cooling_unregister to i32), ptr @__kstrtab_cpufreq_cooling_unregister, ptr @__kstrtabns_cpufreq_cooling_unregister }, section "___ksymtab_gpl+cpufreq_cooling_unregister", align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"\014No cpu device for cpu %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"\013%s: cpufreq policy isn't valid: %p\0A\00", align 1
@__func__.__cpufreq_cooling_register = private unnamed_addr constant [27 x i8] c"__cpufreq_cooling_register\00", align 1
@cpufreq_cooling_ops = internal global %struct.thermal_cooling_device_ops { ptr @cpufreq_get_max_state, ptr @cpufreq_get_cur_state, ptr @cpufreq_set_cur_state, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"\013%s: unsorted frequency tables are not supported\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"\013%s: Failed to add freq constraint (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"cpufreq-%s\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_cpufreq_cooling_register, ptr @__ksymtab_cpufreq_cooling_unregister, ptr @__ksymtab_of_cpufreq_cooling_register], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cpufreq_cooling_register(ptr noundef %0) #0 {
  %2 = tail call fastcc ptr @__cpufreq_cooling_register(ptr noundef null, ptr noundef %0)
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__cpufreq_cooling_register(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = tail call ptr @get_cpu_device(i32 noundef %4) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10, !prof !8

7:                                                ; preds = %2
  %8 = load i32, ptr %3, align 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %8) #6
  br label %76

10:                                               ; preds = %2
  %11 = icmp eq ptr %1, null
  %12 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.__cpufreq_cooling_register, ptr noundef %1) #6
  br label %76

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.cpufreq_policy, ptr %1, i32 0, i32 20
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %76, label %20, !prof !8

20:                                               ; preds = %27, %16
  %21 = phi ptr [ %29, %27 ], [ %18, %16 ]
  %22 = phi i32 [ %28, %27 ], [ 0, %16 ]
  %23 = getelementptr inbounds %struct.cpufreq_frequency_table, ptr %21, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  switch i32 %24, label %25 [
    i32 -2, label %30
    i32 -1, label %27
  ]

25:                                               ; preds = %20
  %26 = add i32 %22, 1
  br label %27

27:                                               ; preds = %25, %20
  %28 = phi i32 [ %26, %25 ], [ %22, %20 ]
  %29 = getelementptr %struct.cpufreq_frequency_table, ptr %21, i32 1
  br label %20

30:                                               ; preds = %20
  %31 = icmp eq i32 %22, 0
  br i1 %31, label %76, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %34 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 48) #7
  %35 = icmp eq ptr %34, null
  br i1 %35, label %76, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %34, i32 0, i32 4
  store ptr %1, ptr %37, align 8
  %38 = add i32 %22, -1
  %39 = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %34, i32 0, i32 2
  store i32 %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.cpufreq_policy, ptr %1, i32 0, i32 21
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.__cpufreq_cooling_register) #6
  br label %74

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.cpufreq_policy, ptr %1, i32 0, i32 17
  %47 = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %34, i32 0, i32 5
  %48 = icmp eq i32 %41, 1
  %49 = select i1 %48, i32 %38, i32 0
  %50 = load ptr, ptr %17, align 4
  %51 = getelementptr %struct.cpufreq_frequency_table, ptr %50, i32 %49, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = tail call i32 @freq_qos_add_request(ptr noundef %46, ptr noundef %47, i32 noundef 2, i32 noundef %52) #5
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.__cpufreq_cooling_register, i32 noundef %53) #6
  %57 = inttoptr i32 %53 to ptr
  br label %74

58:                                               ; preds = %45
  %59 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load ptr, ptr %5, align 4
  br label %64

64:                                               ; preds = %62, %58
  %65 = phi ptr [ %63, %62 ], [ %60, %58 ]
  %66 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.7, ptr noundef %65) #5
  %67 = icmp eq ptr %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = tail call ptr @thermal_of_cooling_device_register(ptr noundef %0, ptr noundef nonnull %66, ptr noundef nonnull %34, ptr noundef nonnull @cpufreq_cooling_ops) #5
  tail call void @kfree(ptr noundef nonnull %66) #5
  %70 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %71, label %76

71:                                               ; preds = %68, %64
  %72 = phi ptr [ %69, %68 ], [ inttoptr (i32 -12 to ptr), %64 ]
  %73 = tail call i32 @freq_qos_remove_request(ptr noundef %47) #5
  br label %74

74:                                               ; preds = %71, %55, %43
  %75 = phi ptr [ inttoptr (i32 -22 to ptr), %43 ], [ %57, %55 ], [ %72, %71 ]
  tail call void @kfree(ptr noundef nonnull %34) #5
  br label %76

76:                                               ; preds = %74, %68, %32, %30, %16, %14, %7
  %77 = phi ptr [ inttoptr (i32 -19 to ptr), %7 ], [ inttoptr (i32 -22 to ptr), %14 ], [ %75, %74 ], [ %69, %68 ], [ inttoptr (i32 -19 to ptr), %30 ], [ inttoptr (i32 -12 to ptr), %32 ], [ inttoptr (i32 -19 to ptr), %16 ]
  ret ptr %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_cpufreq_cooling_register(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = tail call ptr @of_get_cpu_node(i32 noundef %3, ptr noundef null) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %7) #6
  br label %21

9:                                                ; preds = %1
  %10 = tail call ptr @of_find_property(ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef null) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = tail call fastcc ptr @__cpufreq_cooling_register(ptr noundef nonnull %4, ptr noundef %0)
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, ptr %2, align 4
  %17 = ptrtoint ptr %13 to i32
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %16, i32 noundef %17) #6
  br label %19

19:                                               ; preds = %15, %12, %9
  %20 = phi ptr [ null, %9 ], [ null, %15 ], [ %13, %12 ]
  tail call void @of_node_put(ptr noundef nonnull %4) #5
  br label %21

21:                                               ; preds = %19, %6
  %22 = phi ptr [ %20, %19 ], [ null, %6 ]
  ret ptr %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpufreq_cooling_unregister(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call void @thermal_cooling_device_unregister(ptr noundef nonnull %0) #5
  %6 = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %5, i32 0, i32 5
  %7 = tail call i32 @freq_qos_remove_request(ptr noundef %6) #5
  tail call void @kfree(ptr noundef %5) #5
  br label %8

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_cooling_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freq_qos_remove_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freq_qos_add_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_of_cooling_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @cpufreq_get_max_state(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @cpufreq_get_cur_state(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpufreq_set_cur_state(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %6, %1
  br i1 %7, label %30, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %4, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %30, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %4, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.cpufreq_policy, ptr %14, i32 0, i32 21
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 1
  %18 = sub i32 %6, %1
  %19 = select i1 %17, i32 %18, i32 %1
  %20 = getelementptr inbounds %struct.cpufreq_policy, ptr %14, i32 0, i32 20
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr %struct.cpufreq_frequency_table, ptr %21, i32 %19, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.cpufreq_cooling_device, ptr %4, i32 0, i32 5
  %25 = tail call i32 @freq_qos_update_request(ptr noundef %24, i32 noundef %23) #5
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %12
  store i32 %1, ptr %9, align 4
  %28 = load ptr, ptr %13, align 4
  %29 = getelementptr inbounds %struct.cpufreq_policy, ptr %28, i32 0, i32 1
  tail call void @topology_update_thermal_pressure(ptr noundef %29, i32 noundef %23) #5
  br label %30

30:                                               ; preds = %27, %12, %8, %2
  %31 = phi i32 [ -22, %2 ], [ 0, %8 ], [ 0, %27 ], [ %25, %12 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freq_qos_update_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @topology_update_thermal_pressure(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind allocsize(2) }

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
