; ModuleID = '/llk/IR/kernel/power/qos.c_pt.bc'
source_filename = "../kernel/power/qos.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_latency_qos_request_active:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_latency_qos_request_active\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_latency_qos_request_active:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_latency_qos_add_request:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_latency_qos_add_request\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_latency_qos_add_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_latency_qos_update_request:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_latency_qos_update_request\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_latency_qos_update_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cpu_latency_qos_remove_request:\09\09\09\09\09"
module asm "\09.asciz \09\22cpu_latency_qos_remove_request\22\09\09\09\09\09"
module asm "__kstrtabns_cpu_latency_qos_remove_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_freq_qos_add_request:\09\09\09\09\09"
module asm "\09.asciz \09\22freq_qos_add_request\22\09\09\09\09\09"
module asm "__kstrtabns_freq_qos_add_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_freq_qos_update_request:\09\09\09\09\09"
module asm "\09.asciz \09\22freq_qos_update_request\22\09\09\09\09\09"
module asm "__kstrtabns_freq_qos_update_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_freq_qos_remove_request:\09\09\09\09\09"
module asm "\09.asciz \09\22freq_qos_remove_request\22\09\09\09\09\09"
module asm "__kstrtabns_freq_qos_remove_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_freq_qos_add_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22freq_qos_add_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_freq_qos_add_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_freq_qos_remove_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22freq_qos_remove_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_freq_qos_remove_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pm_qos_flags = type { %struct.list_head, i32 }
%struct.pm_qos_flags_request = type { %struct.list_head, i32 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.file = type { %union.anon.8, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.8 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@pm_qos_lock = internal global %struct.spinlock zeroinitializer, align 4
@cpu_latency_constraints = internal global %struct.pm_qos_constraints { %struct.plist_head { %struct.list_head { ptr @cpu_latency_constraints, ptr @cpu_latency_constraints } }, i32 2000000000, i32 2000000000, i32 2000000000, i32 2, ptr null }, align 4
@__kstrtab_cpu_latency_qos_request_active = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_latency_qos_request_active = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_latency_qos_request_active = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_latency_qos_request_active to i32), ptr @__kstrtab_cpu_latency_qos_request_active, ptr @__kstrtabns_cpu_latency_qos_request_active }, section "___ksymtab_gpl+cpu_latency_qos_request_active", align 4
@.str = private unnamed_addr constant [19 x i8] c"kernel/power/qos.c\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"\013%s called for already added request\0A\00", align 1
@__func__.cpu_latency_qos_add_request = private unnamed_addr constant [28 x i8] c"cpu_latency_qos_add_request\00", align 1
@__kstrtab_cpu_latency_qos_add_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_latency_qos_add_request = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_latency_qos_add_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_latency_qos_add_request to i32), ptr @__kstrtab_cpu_latency_qos_add_request, ptr @__kstrtabns_cpu_latency_qos_add_request }, section "___ksymtab_gpl+cpu_latency_qos_add_request", align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"\013%s called for unknown object\0A\00", align 1
@__func__.cpu_latency_qos_update_request = private unnamed_addr constant [31 x i8] c"cpu_latency_qos_update_request\00", align 1
@__kstrtab_cpu_latency_qos_update_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_latency_qos_update_request = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_latency_qos_update_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_latency_qos_update_request to i32), ptr @__kstrtab_cpu_latency_qos_update_request, ptr @__kstrtabns_cpu_latency_qos_update_request }, section "___ksymtab_gpl+cpu_latency_qos_update_request", align 4
@__func__.cpu_latency_qos_remove_request = private unnamed_addr constant [31 x i8] c"cpu_latency_qos_remove_request\00", align 1
@__kstrtab_cpu_latency_qos_remove_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_cpu_latency_qos_remove_request = external dso_local constant [0 x i8], align 1
@__ksymtab_cpu_latency_qos_remove_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cpu_latency_qos_remove_request to i32), ptr @__kstrtab_cpu_latency_qos_remove_request, ptr @__kstrtabns_cpu_latency_qos_remove_request }, section "___ksymtab_gpl+cpu_latency_qos_remove_request", align 4
@__initcall__kmod_qos__297_424_cpu_latency_qos_init7 = internal global ptr @cpu_latency_qos_init, section ".initcall7.init", align 4
@freq_constraints_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"&(c->notifiers)->rwsem\00", align 1
@freq_constraints_init.__key.4 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"%s() called for active request\0A\00", align 1
@__func__.freq_qos_add_request = private unnamed_addr constant [21 x i8] c"freq_qos_add_request\00", align 1
@__kstrtab_freq_qos_add_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_freq_qos_add_request = external dso_local constant [0 x i8], align 1
@__ksymtab_freq_qos_add_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @freq_qos_add_request to i32), ptr @__kstrtab_freq_qos_add_request, ptr @__kstrtabns_freq_qos_add_request }, section "___ksymtab_gpl+freq_qos_add_request", align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"%s() called for unknown object\0A\00", align 1
@__func__.freq_qos_update_request = private unnamed_addr constant [24 x i8] c"freq_qos_update_request\00", align 1
@__kstrtab_freq_qos_update_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_freq_qos_update_request = external dso_local constant [0 x i8], align 1
@__ksymtab_freq_qos_update_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @freq_qos_update_request to i32), ptr @__kstrtab_freq_qos_update_request, ptr @__kstrtabns_freq_qos_update_request }, section "___ksymtab_gpl+freq_qos_update_request", align 4
@__func__.freq_qos_remove_request = private unnamed_addr constant [24 x i8] c"freq_qos_remove_request\00", align 1
@__kstrtab_freq_qos_remove_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_freq_qos_remove_request = external dso_local constant [0 x i8], align 1
@__ksymtab_freq_qos_remove_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @freq_qos_remove_request to i32), ptr @__kstrtab_freq_qos_remove_request, ptr @__kstrtabns_freq_qos_remove_request }, section "___ksymtab_gpl+freq_qos_remove_request", align 4
@__kstrtab_freq_qos_add_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_freq_qos_add_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_freq_qos_add_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @freq_qos_add_notifier to i32), ptr @__kstrtab_freq_qos_add_notifier, ptr @__kstrtabns_freq_qos_add_notifier }, section "___ksymtab_gpl+freq_qos_add_notifier", align 4
@__kstrtab_freq_qos_remove_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_freq_qos_remove_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_freq_qos_remove_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @freq_qos_remove_notifier to i32), ptr @__kstrtab_freq_qos_remove_notifier, ptr @__kstrtabns_freq_qos_remove_notifier }, section "___ksymtab_gpl+freq_qos_remove_notifier", align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"Unknown PM QoS type in %s\0A\00", align 1
@__func__.pm_qos_get_value = private unnamed_addr constant [17 x i8] c"pm_qos_get_value\00", align 1
@__tracepoint_pm_qos_update_target = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_pm_qos_update_flags = external dso_local global %struct.tracepoint, align 4
@__tracepoint_pm_qos_add_request = external dso_local global %struct.tracepoint, align 4
@__tracepoint_pm_qos_update_request = external dso_local global %struct.tracepoint, align 4
@__tracepoint_pm_qos_remove_request = external dso_local global %struct.tracepoint, align 4
@cpu_latency_qos_miscdev = internal global %struct.miscdevice { i32 255, ptr @.str.10, ptr @cpu_latency_qos_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"\013%s: %s setup failed\0A\00", align 1
@__func__.cpu_latency_qos_init = private unnamed_addr constant [21 x i8] c"cpu_latency_qos_init\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"cpu_dma_latency\00", align 1
@cpu_latency_qos_fops = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr @cpu_latency_qos_read, ptr @cpu_latency_qos_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @cpu_latency_qos_open, ptr null, ptr @cpu_latency_qos_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [10 x ptr] [ptr @__initcall__kmod_qos__297_424_cpu_latency_qos_init7, ptr @__ksymtab_cpu_latency_qos_add_request, ptr @__ksymtab_cpu_latency_qos_remove_request, ptr @__ksymtab_cpu_latency_qos_request_active, ptr @__ksymtab_cpu_latency_qos_update_request, ptr @__ksymtab_freq_qos_add_notifier, ptr @__ksymtab_freq_qos_add_request, ptr @__ksymtab_freq_qos_remove_notifier, ptr @__ksymtab_freq_qos_remove_request, ptr @__ksymtab_freq_qos_update_request], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @pm_qos_read_value(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pm_qos_constraints, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pm_qos_update_target(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pm_qos_lock) #11
  %6 = load volatile ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.pm_qos_constraints, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  br label %23

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.pm_qos_constraints, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %22 [
    i32 2, label %14
    i32 1, label %17
  ]

14:                                               ; preds = %11
  %15 = getelementptr i8, ptr %6, i32 -12
  %16 = load i32, ptr %15, align 4
  br label %23

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 -12
  %21 = load i32, ptr %20, align 4
  br label %23

22:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.pm_qos_get_value) #11
  br label %23

23:                                               ; preds = %22, %17, %14, %8
  %24 = phi i32 [ %10, %8 ], [ -1, %22 ], [ %21, %17 ], [ %16, %14 ]
  %25 = icmp eq i32 %3, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.pm_qos_constraints, ptr %0, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i32 [ %28, %26 ], [ %3, %23 ]
  switch i32 %2, label %38 [
    i32 2, label %31
    i32 1, label %32
    i32 0, label %33
  ]

31:                                               ; preds = %29
  tail call void @plist_del(ptr noundef %1, ptr noundef %0) #11
  br label %38

32:                                               ; preds = %29
  tail call void @plist_del(ptr noundef %1, ptr noundef %0) #11
  br label %33

33:                                               ; preds = %32, %29
  store i32 %30, ptr %1, align 4
  %34 = getelementptr inbounds %struct.plist_node, ptr %1, i32 0, i32 1
  store volatile ptr %34, ptr %34, align 4
  %35 = getelementptr inbounds %struct.plist_node, ptr %1, i32 0, i32 1, i32 1
  store ptr %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.plist_node, ptr %1, i32 0, i32 2
  store volatile ptr %36, ptr %36, align 4
  %37 = getelementptr inbounds %struct.plist_node, ptr %1, i32 0, i32 2, i32 1
  store ptr %36, ptr %37, align 4
  tail call void @plist_add(ptr noundef %1, ptr noundef %0) #11
  br label %38

38:                                               ; preds = %33, %31, %29
  %39 = load volatile ptr, ptr %0, align 4
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.pm_qos_constraints, ptr %0, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  br label %56

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.pm_qos_constraints, ptr %0, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  switch i32 %46, label %55 [
    i32 2, label %47
    i32 1, label %50
  ]

47:                                               ; preds = %44
  %48 = getelementptr i8, ptr %39, i32 -12
  %49 = load i32, ptr %48, align 4
  br label %56

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 -12
  %54 = load i32, ptr %53, align 4
  br label %56

55:                                               ; preds = %44
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.pm_qos_get_value) #11
  br label %56

56:                                               ; preds = %55, %50, %47, %41
  %57 = phi i32 [ %43, %41 ], [ -1, %55 ], [ %54, %50 ], [ %49, %47 ]
  %58 = getelementptr inbounds %struct.pm_qos_constraints, ptr %0, i32 0, i32 1
  store volatile i32 %57, ptr %58, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pm_qos_lock, i32 noundef %5) #11
  %59 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pm_qos_update_target, i32 0, i32 1), align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = tail call ptr @llvm.thread.pointer() #11
  %63 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %64 = load i32, ptr %63, align 8
  %65 = lshr i32 %64, 5
  %66 = getelementptr i32, ptr @__cpu_online_mask, i32 %65
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %64, 31
  %69 = shl nuw i32 1, %68
  %70 = and i32 %69, %67
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %61
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %73 = tail call i32 @__traceiter_pm_qos_update_target(ptr noundef null, i32 noundef %2, i32 noundef %24, i32 noundef %57) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  br label %74

74:                                               ; preds = %72, %61, %56
  %75 = icmp eq i32 %24, %57
  br i1 %75, label %82, label %76

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.pm_qos_constraints, ptr %0, i32 0, i32 5
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull %78, i32 noundef %57, ptr noundef null) #11
  br label %82

82:                                               ; preds = %80, %76, %74
  %83 = phi i32 [ 0, %74 ], [ 1, %80 ], [ 1, %76 ]
  ret i32 %83
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @plist_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @plist_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @pm_qos_update_flags(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pm_qos_lock) #11
  %6 = load volatile ptr, ptr %0, align 4
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.pm_qos_flags, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i32 [ %10, %8 ], [ 0, %4 ]
  switch i32 %2, label %57 [
    i32 2, label %13
    i32 1, label %31
    i32 0, label %49
  ]

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %1, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store volatile ptr %16, ptr %15, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  %18 = load ptr, ptr %0, align 4
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %28, label %20

20:                                               ; preds = %20, %13
  %21 = phi ptr [ %26, %20 ], [ %18, %13 ]
  %22 = phi i32 [ %25, %20 ], [ 0, %13 ]
  %23 = getelementptr inbounds %struct.pm_qos_flags_request, ptr %21, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, %22
  %26 = load ptr, ptr %21, align 4
  %27 = icmp eq ptr %26, %0
  br i1 %27, label %28, label %20

28:                                               ; preds = %20, %13
  %29 = phi i32 [ 0, %13 ], [ %25, %20 ]
  %30 = getelementptr inbounds %struct.pm_qos_flags, ptr %0, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  br label %57

31:                                               ; preds = %11
  %32 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %1, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %33, ptr %35, align 4
  store volatile ptr %34, ptr %33, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %32, align 4
  %36 = load ptr, ptr %0, align 4
  %37 = icmp eq ptr %36, %0
  br i1 %37, label %46, label %38

38:                                               ; preds = %38, %31
  %39 = phi ptr [ %44, %38 ], [ %36, %31 ]
  %40 = phi i32 [ %43, %38 ], [ 0, %31 ]
  %41 = getelementptr inbounds %struct.pm_qos_flags_request, ptr %39, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = or i32 %42, %40
  %44 = load ptr, ptr %39, align 4
  %45 = icmp eq ptr %44, %0
  br i1 %45, label %46, label %38

46:                                               ; preds = %38, %31
  %47 = phi i32 [ 0, %31 ], [ %43, %38 ]
  %48 = getelementptr inbounds %struct.pm_qos_flags, ptr %0, i32 0, i32 1
  store i32 %47, ptr %48, align 4
  br label %49

49:                                               ; preds = %46, %11
  %50 = getelementptr inbounds %struct.pm_qos_flags_request, ptr %1, i32 0, i32 1
  store i32 %3, ptr %50, align 4
  store volatile ptr %1, ptr %1, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %1, ptr %51, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  store ptr %1, ptr %52, align 4
  store ptr %0, ptr %1, align 4
  store ptr %53, ptr %51, align 4
  store volatile ptr %1, ptr %53, align 4
  %54 = getelementptr inbounds %struct.pm_qos_flags, ptr %0, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = or i32 %55, %3
  store i32 %56, ptr %54, align 4
  br label %57

57:                                               ; preds = %49, %28, %11
  %58 = load volatile ptr, ptr %0, align 4
  %59 = icmp eq ptr %58, %0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.pm_qos_flags, ptr %0, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  br label %63

63:                                               ; preds = %60, %57
  %64 = phi i32 [ %62, %60 ], [ 0, %57 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pm_qos_lock, i32 noundef %5) #11
  %65 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pm_qos_update_flags, i32 0, i32 1), align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = tail call ptr @llvm.thread.pointer() #11
  %69 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %70 = load i32, ptr %69, align 8
  %71 = lshr i32 %70, 5
  %72 = getelementptr i32, ptr @__cpu_online_mask, i32 %71
  %73 = load volatile i32, ptr %72, align 4
  %74 = and i32 %70, 31
  %75 = shl nuw i32 1, %74
  %76 = and i32 %75, %73
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %67
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !10
  %79 = tail call i32 @__traceiter_pm_qos_update_flags(ptr noundef null, i32 noundef %2, i32 noundef %12, i32 noundef %64) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  br label %80

80:                                               ; preds = %78, %67, %63
  %81 = icmp ne i32 %12, %64
  ret i1 %81
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @cpu_latency_qos_limit() local_unnamed_addr #4 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.pm_qos_constraints, ptr @cpu_latency_constraints, i32 0, i32 1), align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cpu_latency_qos_request_active(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.pm_qos_request, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @cpu_latency_constraints
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpu_latency_qos_add_request(ptr noundef %0, i32 noundef %1) #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %29, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.pm_qos_request, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @cpu_latency_constraints
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 270, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cpu_latency_qos_add_request) #11
  br label %29

9:                                                ; preds = %4
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pm_qos_add_request, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = tail call ptr @llvm.thread.pointer() #11
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 5
  %17 = getelementptr i32, ptr @__cpu_online_mask, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %15, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !12
  %24 = tail call i32 @__traceiter_pm_qos_add_request(ptr noundef null, i32 noundef %1) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  br label %25

25:                                               ; preds = %23, %12, %9
  store ptr @cpu_latency_constraints, ptr %5, align 4
  %26 = tail call i32 @pm_qos_update_target(ptr noundef nonnull @cpu_latency_constraints, ptr noundef nonnull %0, i32 noundef 0, i32 noundef %1) #11
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  tail call void @wake_up_all_idle_cpus() #11
  br label %29

29:                                               ; preds = %28, %25, %8, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpu_latency_qos_update_request(ptr noundef %0, i32 noundef %1) #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %33, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.pm_qos_request, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @cpu_latency_constraints
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 296, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cpu_latency_qos_update_request) #11
  br label %33

9:                                                ; preds = %4
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pm_qos_update_request, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = tail call ptr @llvm.thread.pointer() #11
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 5
  %17 = getelementptr i32, ptr @__cpu_online_mask, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %15, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  %24 = tail call i32 @__traceiter_pm_qos_update_request(ptr noundef null, i32 noundef %1) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  br label %25

25:                                               ; preds = %23, %12, %9
  %26 = load i32, ptr %0, align 4
  %27 = icmp eq i32 %26, %1
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %5, align 4
  %30 = tail call i32 @pm_qos_update_target(ptr noundef %29, ptr noundef nonnull %0, i32 noundef 1, i32 noundef %1) #11
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call void @wake_up_all_idle_cpus() #11
  br label %33

33:                                               ; preds = %32, %28, %25, %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpu_latency_qos_remove_request(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %31, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pm_qos_request, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @cpu_latency_constraints
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 322, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cpu_latency_qos_remove_request) #11
  br label %31

8:                                                ; preds = %3
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pm_qos_remove_request, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = tail call ptr @llvm.thread.pointer() #11
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 5
  %16 = getelementptr i32, ptr @__cpu_online_mask, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %14, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %23 = tail call i32 @__traceiter_pm_qos_remove_request(ptr noundef null, i32 noundef -1) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  %24 = load ptr, ptr %4, align 4
  br label %25

25:                                               ; preds = %22, %11, %8
  %26 = phi ptr [ @cpu_latency_constraints, %8 ], [ @cpu_latency_constraints, %11 ], [ %24, %22 ]
  %27 = tail call i32 @pm_qos_update_target(ptr noundef %26, ptr noundef nonnull %0, i32 noundef 2, i32 noundef -1) #11
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  tail call void @wake_up_all_idle_cpus() #11
  br label %30

30:                                               ; preds = %29, %25
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %0, i8 0, i32 24, i1 false)
  br label %31

31:                                               ; preds = %30, %7, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cpu_latency_qos_init() #7 section ".init.text" {
  %1 = tail call i32 @misc_register(ptr noundef nonnull @cpu_latency_qos_miscdev) #11
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.miscdevice, ptr @cpu_latency_qos_miscdev, i32 0, i32 1), align 4
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cpu_latency_qos_init, ptr noundef %4) #12
  br label %6

6:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @freq_constraints_init(ptr noundef %0) local_unnamed_addr #1 {
  store volatile ptr %0, ptr %0, align 4
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.pm_qos_constraints, ptr %0, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.pm_qos_constraints, ptr %0, i32 0, i32 2
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.pm_qos_constraints, ptr %0, i32 0, i32 3
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.pm_qos_constraints, ptr %0, i32 0, i32 4
  store i32 1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.freq_constraints, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.pm_qos_constraints, ptr %0, i32 0, i32 5
  store ptr %7, ptr %8, align 4
  tail call void @__init_rwsem(ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef nonnull @freq_constraints_init.__key) #11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.blocking_notifier_head, ptr %9, i32 0, i32 1
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.freq_constraints, ptr %0, i32 0, i32 2
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.freq_constraints, ptr %0, i32 0, i32 2, i32 0, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.freq_constraints, ptr %0, i32 0, i32 2, i32 1
  store i32 2147483647, ptr %13, align 4
  %14 = getelementptr inbounds %struct.freq_constraints, ptr %0, i32 0, i32 2, i32 2
  store i32 2147483647, ptr %14, align 4
  %15 = getelementptr inbounds %struct.freq_constraints, ptr %0, i32 0, i32 2, i32 3
  store i32 2147483647, ptr %15, align 4
  %16 = getelementptr inbounds %struct.freq_constraints, ptr %0, i32 0, i32 2, i32 4
  store i32 2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.freq_constraints, ptr %0, i32 0, i32 3
  %18 = getelementptr inbounds %struct.freq_constraints, ptr %0, i32 0, i32 2, i32 5
  store ptr %17, ptr %18, align 4
  tail call void @__init_rwsem(ptr noundef %17, ptr noundef nonnull @.str.3, ptr noundef nonnull @freq_constraints_init.__key.4) #11
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.blocking_notifier_head, ptr %19, i32 0, i32 1
  store ptr null, ptr %20, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @freq_qos_read_value(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  switch i32 %1, label %17 [
    i32 1, label %3
    i32 2, label %10
  ]

3:                                                ; preds = %2
  %4 = icmp eq ptr %0, null
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.pm_qos_constraints, ptr %0, i32 0, i32 1
  %9 = load volatile i32, ptr %8, align 4
  br label %18

10:                                               ; preds = %2
  %11 = icmp eq ptr %0, null
  %12 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %13 = or i1 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.freq_constraints, ptr %0, i32 0, i32 2, i32 1
  %16 = load volatile i32, ptr %15, align 4
  br label %18

17:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 478, i32 noundef 9, ptr noundef null) #11
  br label %18

18:                                               ; preds = %17, %14, %10, %7, %3
  %19 = phi i32 [ 0, %17 ], [ %9, %7 ], [ 0, %3 ], [ %16, %14 ], [ 2147483647, %10 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @freq_qos_apply(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = load i32, ptr %0, align 4
  switch i32 %4, label %16 [
    i32 1, label %5
    i32 2, label %8
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.freq_qos_request, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  br label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.freq_qos_request, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.freq_constraints, ptr %10, i32 0, i32 2
  br label %12

12:                                               ; preds = %8, %5
  %13 = phi ptr [ %11, %8 ], [ %7, %5 ]
  %14 = getelementptr inbounds %struct.freq_qos_request, ptr %0, i32 0, i32 1
  %15 = tail call i32 @pm_qos_update_target(ptr noundef %13, ptr noundef %14, i32 noundef %1, i32 noundef %2)
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i32 [ -22, %3 ], [ %15, %12 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @freq_qos_add_request(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = icmp eq ptr %0, null
  %6 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  %8 = icmp eq ptr %1, null
  %9 = or i1 %7, %8
  br i1 %9, label %27, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.freq_qos_request, ptr %1, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  %15 = or i1 %13, %14
  br i1 %15, label %17, label %16, !prof !18

16:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 538, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.freq_qos_add_request) #11
  br label %27

17:                                               ; preds = %10
  store ptr %0, ptr %11, align 4
  store i32 %2, ptr %1, align 4
  switch i32 %2, label %25 [
    i32 1, label %20
    i32 2, label %18
  ]

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.freq_constraints, ptr %0, i32 0, i32 2
  br label %20

20:                                               ; preds = %18, %17
  %21 = phi ptr [ %19, %18 ], [ %0, %17 ]
  %22 = getelementptr inbounds %struct.freq_qos_request, ptr %1, i32 0, i32 1
  %23 = tail call i32 @pm_qos_update_target(ptr noundef %21, ptr noundef %22, i32 noundef 0, i32 noundef %3) #11
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %17
  %26 = phi i32 [ %23, %20 ], [ -22, %17 ]
  store ptr null, ptr %11, align 4
  store i32 0, ptr %1, align 4
  br label %27

27:                                               ; preds = %25, %20, %16, %4
  %28 = phi i32 [ -22, %16 ], [ -22, %4 ], [ %26, %25 ], [ %23, %20 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @freq_qos_update_request(ptr noundef %0, i32 noundef %1) #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.freq_qos_request, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  br i1 %9, label %10, label %11, !prof !19

10:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 570, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.freq_qos_update_request) #11
  br label %22

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.freq_qos_request, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = load i32, ptr %0, align 4
  switch i32 %16, label %22 [
    i32 1, label %19
    i32 2, label %17
  ]

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.freq_constraints, ptr %6, i32 0, i32 2
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi ptr [ %18, %17 ], [ %6, %15 ]
  %21 = tail call i32 @pm_qos_update_target(ptr noundef %20, ptr noundef %12, i32 noundef 1, i32 noundef %1) #11
  br label %22

22:                                               ; preds = %19, %15, %11, %10, %2
  %23 = phi i32 [ -22, %10 ], [ -22, %2 ], [ 0, %11 ], [ -22, %15 ], [ %21, %19 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @freq_qos_remove_request(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.freq_qos_request, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %8 = or i1 %6, %7
  br i1 %8, label %9, label %10, !prof !19

9:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 598, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.freq_qos_remove_request) #11
  br label %20

10:                                               ; preds = %3
  %11 = load i32, ptr %0, align 4
  switch i32 %11, label %18 [
    i32 1, label %14
    i32 2, label %12
  ]

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.freq_constraints, ptr %5, i32 0, i32 2
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %13, %12 ], [ %5, %10 ]
  %16 = getelementptr inbounds %struct.freq_qos_request, ptr %0, i32 0, i32 1
  %17 = tail call i32 @pm_qos_update_target(ptr noundef %15, ptr noundef %16, i32 noundef 2, i32 noundef -1) #11
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i32 [ -22, %10 ], [ %17, %14 ]
  store ptr null, ptr %4, align 4
  store i32 0, ptr %0, align 4
  br label %20

20:                                               ; preds = %18, %9, %1
  %21 = phi i32 [ -22, %9 ], [ %19, %18 ], [ -22, %1 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @freq_qos_add_notifier(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = icmp eq ptr %0, null
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  %7 = icmp eq ptr %2, null
  %8 = or i1 %6, %7
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  switch i32 %1, label %18 [
    i32 1, label %10
    i32 2, label %14
  ]

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.pm_qos_constraints, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @blocking_notifier_chain_register(ptr noundef %12, ptr noundef nonnull %2) #11
  br label %19

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.freq_constraints, ptr %0, i32 0, i32 2, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @blocking_notifier_chain_register(ptr noundef %16, ptr noundef nonnull %2) #11
  br label %19

18:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 634, i32 noundef 9, ptr noundef null) #11
  br label %19

19:                                               ; preds = %18, %14, %10, %3
  %20 = phi i32 [ -22, %3 ], [ -22, %18 ], [ %17, %14 ], [ %13, %10 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @freq_qos_remove_notifier(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = icmp eq ptr %0, null
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  %7 = icmp eq ptr %2, null
  %8 = or i1 %6, %7
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  switch i32 %1, label %18 [
    i32 1, label %10
    i32 2, label %14
  ]

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.pm_qos_constraints, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %12, ptr noundef nonnull %2) #11
  br label %19

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.freq_constraints, ptr %0, i32 0, i32 2, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %16, ptr noundef nonnull %2) #11
  br label %19

18:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 667, i32 noundef 9, ptr noundef null) #11
  br label %19

19:                                               ; preds = %18, %14, %10, %3
  %20 = phi i32 [ -22, %3 ], [ -22, %18 ], [ %17, %14 ], [ %13, %10 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pm_qos_update_target(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pm_qos_update_flags(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pm_qos_add_request(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_all_idle_cpus() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pm_qos_update_request(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_pm_qos_remove_request(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpu_latency_qos_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.pm_qos_request, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @cpu_latency_constraints
  br i1 %12, label %13, label %32

13:                                               ; preds = %9
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pm_qos_lock) #11
  %15 = load volatile ptr, ptr @cpu_latency_constraints, align 4
  %16 = icmp eq ptr %15, @cpu_latency_constraints
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, ptr getelementptr inbounds (%struct.pm_qos_constraints, ptr @cpu_latency_constraints, i32 0, i32 3), align 4
  br label %29

19:                                               ; preds = %13
  %20 = load i32, ptr getelementptr inbounds (%struct.pm_qos_constraints, ptr @cpu_latency_constraints, i32 0, i32 4), align 4
  switch i32 %20, label %28 [
    i32 2, label %21
    i32 1, label %24
  ]

21:                                               ; preds = %19
  %22 = getelementptr i8, ptr %15, i32 -12
  %23 = load i32, ptr %22, align 4
  br label %29

24:                                               ; preds = %19
  %25 = load ptr, ptr getelementptr inbounds (%struct.pm_qos_constraints, ptr @cpu_latency_constraints, i32 0, i32 0, i32 0, i32 1), align 4
  %26 = getelementptr i8, ptr %25, i32 -12
  %27 = load i32, ptr %26, align 4
  br label %29

28:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.pm_qos_get_value) #11
  br label %29

29:                                               ; preds = %28, %24, %21, %17
  %30 = phi i32 [ %18, %17 ], [ -1, %28 ], [ %27, %24 ], [ %23, %21 ]
  store i32 %30, ptr %5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pm_qos_lock, i32 noundef %14) #11
  %31 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef 4) #11
  br label %32

32:                                               ; preds = %29, %9, %4
  %33 = phi i32 [ %31, %29 ], [ -22, %9 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpu_latency_qos_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #1 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !20
  %6 = icmp eq i32 %2, 4
  br i1 %6, label %7, label %23

7:                                                ; preds = %4
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 4, i32 -1090519040) #13, !srcloc !21
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19, !prof !18

11:                                               ; preds = %7
  %12 = tail call ptr @llvm.thread.pointer() #11
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #14, !srcloc !22
  %15 = and i32 %14, -13
  %16 = or i32 %15, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #11, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !24
  %17 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #11, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !24
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19, !prof !18

19:                                               ; preds = %11, %7
  %20 = phi i32 [ %17, %11 ], [ 4, %7 ]
  %21 = sub i32 4, %20
  %22 = getelementptr i8, ptr %5, i32 %21
  call void @llvm.memset.p0.i32(ptr align 1 %22, i8 0, i32 %20, i1 false) #11
  br label %30

23:                                               ; preds = %4
  %24 = call i32 @kstrtoint_from_user(ptr noundef %1, i32 noundef %2, i32 noundef 16, ptr noundef nonnull %5) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23, %11
  %27 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %28 = load ptr, ptr %27, align 8
  %29 = load i32, ptr %5, align 4
  call void @cpu_latency_qos_update_request(ptr noundef %28, i32 noundef %29)
  br label %30

30:                                               ; preds = %26, %23, %19
  %31 = phi i32 [ %2, %26 ], [ %24, %23 ], [ -14, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpu_latency_qos_open(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 24) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  tail call void @cpu_latency_qos_add_request(ptr noundef nonnull %4, i32 noundef -1)
  %7 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %4, ptr %7, align 8
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ 0, %6 ], [ -12, %2 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpu_latency_qos_release(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  store ptr null, ptr %3, align 8
  tail call void @cpu_latency_qos_remove_request(ptr noundef %4)
  tail call void @kfree(ptr noundef %4) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

attributes #0 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind readonly }
attributes #15 = { nounwind allocsize(2) }

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
!8 = !{i64 2154131759}
!9 = !{i64 2154131971}
!10 = !{i64 2154149086}
!11 = !{i64 2154149296}
!12 = !{i64 2154078345}
!13 = !{i64 2154078503}
!14 = !{i64 2154094383}
!15 = !{i64 2154094547}
!16 = !{i64 2154114644}
!17 = !{i64 2154114808}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{!"auto-init"}
!21 = !{i64 2151605437, i64 2151605462}
!22 = !{i64 4101549}
!23 = !{i64 4101746}
!24 = !{i64 2151587025}
