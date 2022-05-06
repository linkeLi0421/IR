; ModuleID = '/llk/IR/kernel/events/hw_breakpoint.c_pt.bc'
source_filename = "../kernel/events/hw_breakpoint.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_user_hw_breakpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22register_user_hw_breakpoint\22\09\09\09\09\09"
module asm "__kstrtabns_register_user_hw_breakpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_modify_user_hw_breakpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22modify_user_hw_breakpoint\22\09\09\09\09\09"
module asm "__kstrtabns_modify_user_hw_breakpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_hw_breakpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_hw_breakpoint\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_hw_breakpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_wide_hw_breakpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22register_wide_hw_breakpoint\22\09\09\09\09\09"
module asm "__kstrtabns_register_wide_hw_breakpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_wide_hw_breakpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_wide_hw_breakpoint\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_wide_hw_breakpoint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.pmu = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.atomic_t, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.bp_cpuinfo = type { i32, ptr, i32 }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i32, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, %struct.irq_work, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i32, ptr, ptr, %struct.callback_head, ptr, i64, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.local64_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.66, i64, i64, i64, %union.anon.67, i32, %union.anon.68, %union.anon.69, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64 }
%union.anon.66 = type { i64 }
%union.anon.67 = type { i32 }
%union.anon.68 = type { i64 }
%union.anon.69 = type { i64 }
%struct.hw_perf_event = type { %union.anon.70, ptr, ptr, i32, i32, %struct.local64_t, i64, %union.anon.77, i64, i64, i64, i64 }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { i64, %struct.local64_t }
%struct.atomic64_t = type { i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.arch_hw_breakpoint = type { i32, i32, %struct.arch_hw_breakpoint_ctrl, %struct.arch_hw_breakpoint_ctrl }
%struct.arch_hw_breakpoint_ctrl = type { i32 }
%struct.perf_event_context = type { ptr, %struct.raw_spinlock, %struct.mutex, %struct.list_head, %struct.perf_event_groups, %struct.perf_event_groups, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.refcount_struct, ptr, i64, i64, i64, ptr, i64, i64, i32, ptr, %struct.callback_head }
%struct.perf_event_groups = type { %struct.rb_root, i64 }
%struct.rb_root = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }

@nr_bp_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nr_bp_mutex, i64 12), ptr getelementptr (i8, ptr @nr_bp_mutex, i64 12) } }, align 4
@__kstrtab_register_user_hw_breakpoint = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_user_hw_breakpoint = external dso_local constant [0 x i8], align 1
@__ksymtab_register_user_hw_breakpoint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_user_hw_breakpoint to i32), ptr @__kstrtab_register_user_hw_breakpoint, ptr @__kstrtabns_register_user_hw_breakpoint }, section "___ksymtab_gpl+register_user_hw_breakpoint", align 4
@__kstrtab_modify_user_hw_breakpoint = external dso_local constant [0 x i8], align 1
@__kstrtabns_modify_user_hw_breakpoint = external dso_local constant [0 x i8], align 1
@__ksymtab_modify_user_hw_breakpoint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @modify_user_hw_breakpoint to i32), ptr @__kstrtab_modify_user_hw_breakpoint, ptr @__kstrtabns_modify_user_hw_breakpoint }, section "___ksymtab_gpl+modify_user_hw_breakpoint", align 4
@__kstrtab_unregister_hw_breakpoint = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_hw_breakpoint = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_hw_breakpoint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_hw_breakpoint to i32), ptr @__kstrtab_unregister_hw_breakpoint, ptr @__kstrtabns_unregister_hw_breakpoint }, section "___ksymtab_gpl+unregister_hw_breakpoint", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__kstrtab_register_wide_hw_breakpoint = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_wide_hw_breakpoint = external dso_local constant [0 x i8], align 1
@__ksymtab_register_wide_hw_breakpoint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_wide_hw_breakpoint to i32), ptr @__kstrtab_register_wide_hw_breakpoint, ptr @__kstrtabns_register_wide_hw_breakpoint }, section "___ksymtab_gpl+register_wide_hw_breakpoint", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@__kstrtab_unregister_wide_hw_breakpoint = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_wide_hw_breakpoint = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_wide_hw_breakpoint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_wide_hw_breakpoint to i32), ptr @__kstrtab_unregister_wide_hw_breakpoint, ptr @__kstrtabns_unregister_wide_hw_breakpoint }, section "___ksymtab_gpl+unregister_wide_hw_breakpoint", align 4
@nr_slots = internal unnamed_addr global [2 x i32] zeroinitializer, align 4
@constraints_initialized = internal unnamed_addr global i1 false, align 4
@perf_breakpoint = internal global %struct.pmu { %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, ptr null, %struct.atomic_t zeroinitializer, i32 1, i32 0, i32 0, ptr null, ptr null, ptr @hw_breakpoint_event_init, ptr null, ptr null, ptr @hw_breakpoint_add, ptr @hw_breakpoint_del, ptr @hw_breakpoint_start, ptr @hw_breakpoint_stop, ptr @hw_breakpoint_pmu_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [11 x i8] c"breakpoint\00", align 1
@hw_breakpoint_exceptions_nb = internal global %struct.notifier_block { ptr @hw_breakpoint_exceptions_notify, ptr null, i32 2147483647 }, align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@bp_task_head = internal global %struct.list_head { ptr @bp_task_head, ptr @bp_task_head }, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"kernel/events/hw_breakpoint.c\00", align 1
@bp_cpuinfo = internal global [2 x %struct.bp_cpuinfo] zeroinitializer, section ".data..percpu", align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_modify_user_hw_breakpoint, ptr @__ksymtab_register_user_hw_breakpoint, ptr @__ksymtab_register_wide_hw_breakpoint, ptr @__ksymtab_unregister_hw_breakpoint, ptr @__ksymtab_unregister_wide_hw_breakpoint], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @hw_breakpoint_weight(ptr noundef %0) local_unnamed_addr #0 {
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @arch_reserve_bp_slot(ptr noundef %0) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @arch_release_bp_slot(ptr noundef %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @arch_unregister_hw_breakpoint(ptr noundef %0) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @reserve_bp_slot(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @nr_bp_mutex) #12
  %2 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21, i32 8
  %3 = load i32, ptr %2, align 4
  %4 = zext i32 %3 to i64
  %5 = tail call fastcc i32 @__reserve_bp_slot(ptr noundef %0, i64 noundef %4)
  tail call void @mutex_unlock(ptr noundef nonnull @nr_bp_mutex) #12
  ret i32 %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__reserve_bp_slot(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = load i1, ptr @constraints_initialized, align 4
  br i1 %3, label %4, label %108

4:                                                ; preds = %2
  switch i64 %1, label %5 [
    i64 7, label %108
    i64 0, label %108
  ]

5:                                                ; preds = %4
  %6 = and i64 %1, 3
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = tail call i32 @hw_breakpoint_weight(ptr noundef %0)
  %10 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 34
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, -1
  %13 = and i32 %11, 31
  %14 = add nuw nsw i32 %13, 1
  %15 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %14
  %16 = lshr i32 %11, 5
  %17 = sub nsw i32 0, %16
  %18 = getelementptr i32, ptr %15, i32 %17
  %19 = select i1 %12, ptr %18, ptr @__cpu_possible_mask
  %20 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %19) #13
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %96

23:                                               ; preds = %5
  %24 = getelementptr %struct.bp_cpuinfo, ptr @bp_cpuinfo, i32 %8
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 1
  %27 = getelementptr [2 x i32], ptr @nr_slots, i32 0, i32 %8
  br label %28

28:                                               ; preds = %83, %23
  %29 = phi i32 [ %21, %23 ], [ %84, %83 ]
  %30 = phi i32 [ 0, %23 ], [ %90, %83 ]
  %31 = phi i32 [ 0, %23 ], [ %87, %83 ]
  %32 = phi i32 [ %20, %23 ], [ %91, %83 ]
  %33 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %25
  %36 = inttoptr i32 %35 to ptr
  %37 = load i32, ptr %36, align 4
  %38 = load ptr, ptr %26, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.bp_cpuinfo, ptr %36, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load i32, ptr %27, align 4
  br label %44

44:                                               ; preds = %48, %40
  %45 = phi i32 [ %43, %40 ], [ %46, %48 ]
  %46 = add i32 %45, -1
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %48, label %83

48:                                               ; preds = %44
  %49 = getelementptr i32, ptr %42, i32 %46
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %44, label %83

52:                                               ; preds = %28
  %53 = load ptr, ptr @bp_task_head, align 4
  %54 = icmp eq ptr %53, @bp_task_head
  br i1 %54, label %83, label %55

55:                                               ; preds = %77, %52
  %56 = phi ptr [ %79, %77 ], [ %53, %52 ]
  %57 = phi i32 [ %78, %77 ], [ 0, %52 ]
  %58 = getelementptr i8, ptr %56, i32 -296
  %59 = getelementptr i8, ptr %56, i32 72
  %60 = load ptr, ptr %59, align 8
  %61 = icmp eq ptr %60, %38
  br i1 %61, label %62, label %77

62:                                               ; preds = %55
  %63 = getelementptr i8, ptr %56, i32 -100
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 3
  %66 = icmp eq i32 %65, 0
  %67 = xor i1 %7, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = getelementptr i8, ptr %56, i32 212
  %70 = load i32, ptr %69, align 4
  %71 = icmp slt i32 %70, 0
  %72 = icmp eq i32 %70, %32
  %73 = or i1 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = tail call i32 @hw_breakpoint_weight(ptr noundef %58) #12
  %76 = add i32 %75, %57
  br label %77

77:                                               ; preds = %74, %68, %62, %55
  %78 = phi i32 [ %76, %74 ], [ %57, %62 ], [ %57, %55 ], [ %57, %68 ]
  %79 = load ptr, ptr %56, align 4
  %80 = icmp eq ptr %79, @bp_task_head
  br i1 %80, label %81, label %55

81:                                               ; preds = %77
  %82 = load i32, ptr @nr_cpu_ids, align 4
  br label %83

83:                                               ; preds = %81, %52, %48, %44
  %84 = phi i32 [ %29, %52 ], [ %82, %81 ], [ %29, %44 ], [ %29, %48 ]
  %85 = phi i32 [ 0, %52 ], [ %78, %81 ], [ %45, %48 ], [ 0, %44 ]
  %86 = add i32 %85, %37
  %87 = tail call i32 @llvm.umax.i32(i32 %86, i32 %31)
  %88 = getelementptr inbounds %struct.bp_cpuinfo, ptr %36, i32 0, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = tail call i32 @llvm.umax.i32(i32 %89, i32 %30)
  %91 = tail call i32 @cpumask_next(i32 noundef %32, ptr noundef %19) #13
  %92 = icmp ult i32 %91, %84
  br i1 %92, label %28, label %93

93:                                               ; preds = %83
  %94 = icmp ne i32 %90, 0
  %95 = zext i1 %94 to i32
  br label %96

96:                                               ; preds = %93, %5
  %97 = phi i32 [ 0, %5 ], [ %95, %93 ]
  %98 = phi i32 [ 0, %5 ], [ %87, %93 ]
  %99 = add i32 %98, %9
  %100 = add i32 %99, %97
  %101 = getelementptr [2 x i32], ptr @nr_slots, i32 0, i32 %8
  %102 = load i32, ptr %101, align 4
  %103 = icmp ugt i32 %100, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %96
  %105 = tail call i32 @arch_reserve_bp_slot(ptr noundef %0)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  tail call fastcc void @toggle_bp_slot(ptr noundef %0, i1 noundef zeroext true, i32 noundef %8, i32 noundef %9)
  br label %108

108:                                              ; preds = %107, %104, %96, %4, %4, %2
  %109 = phi i32 [ 0, %107 ], [ -12, %2 ], [ -22, %4 ], [ -22, %4 ], [ -28, %96 ], [ %105, %104 ]
  ret i32 %109
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @release_bp_slot(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @nr_bp_mutex) #12
  tail call void @arch_unregister_hw_breakpoint(ptr noundef %0)
  %2 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21, i32 8
  %3 = load i32, ptr %2, align 4
  tail call void @arch_release_bp_slot(ptr noundef %0) #12
  %4 = and i32 %3, 3
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i32
  %7 = tail call i32 @hw_breakpoint_weight(ptr noundef %0) #12
  tail call fastcc void @toggle_bp_slot(ptr noundef %0, i1 noundef zeroext false, i32 noundef %6, i32 noundef %7) #12
  tail call void @mutex_unlock(ptr noundef nonnull @nr_bp_mutex) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dbg_reserve_bp_slot(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @nr_bp_mutex) #12
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = tail call fastcc i32 @__reserve_bp_slot(ptr noundef %0, i64 noundef %6)
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi i32 [ %7, %3 ], [ -1, %1 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dbg_release_bp_slot(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @nr_bp_mutex) #12
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21, i32 8
  %5 = load i32, ptr %4, align 4
  tail call void @arch_release_bp_slot(ptr noundef %0) #12
  %6 = and i32 %5, 3
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = tail call i32 @hw_breakpoint_weight(ptr noundef %0) #12
  tail call fastcc void @toggle_bp_slot(ptr noundef %0, i1 noundef zeroext false, i32 noundef %8, i32 noundef %9) #12
  br label %10

10:                                               ; preds = %3, %1
  %11 = phi i32 [ 0, %3 ], [ -1, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_perf_hw_breakpoint(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.arch_hw_breakpoint, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false)
  tail call void @mutex_lock(ptr noundef nonnull @nr_bp_mutex) #12
  %3 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = zext i32 %4 to i64
  %6 = tail call fastcc i32 @__reserve_bp_slot(ptr noundef %0, i64 noundef %5) #12
  tail call void @mutex_unlock(ptr noundef nonnull @nr_bp_mutex) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21
  %10 = call i32 @hw_breakpoint_arch_parse(ptr noundef %0, ptr noundef %9, ptr noundef nonnull %2) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = call i32 @arch_check_bp_in_kernelspace(ptr noundef nonnull %2) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21, i32 6
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 32
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %21, label %29, label %22

22:                                               ; preds = %20, %15, %8
  %23 = phi i32 [ -1, %20 ], [ -22, %15 ], [ %10, %8 ]
  call void @mutex_lock(ptr noundef nonnull @nr_bp_mutex) #12
  call void @arch_unregister_hw_breakpoint(ptr noundef %0) #12
  %24 = load i32, ptr %3, align 4
  call void @arch_release_bp_slot(ptr noundef %0) #12
  %25 = and i32 %24, 3
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @hw_breakpoint_weight(ptr noundef %0) #12
  call fastcc void @toggle_bp_slot(ptr noundef %0, i1 noundef zeroext false, i32 noundef %27, i32 noundef %28) #12
  call void @mutex_unlock(ptr noundef nonnull @nr_bp_mutex) #12
  br label %31

29:                                               ; preds = %20, %12
  %30 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %30, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 16, i1 false)
  br label %31

31:                                               ; preds = %29, %22, %1
  %32 = phi i32 [ %23, %22 ], [ 0, %29 ], [ %6, %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  ret i32 %32
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @register_user_hw_breakpoint(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @perf_event_create_kernel_counter(ptr noundef %0, i32 noundef -1, ptr noundef %3, ptr noundef %1, ptr noundef %2) #12
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_event_create_kernel_counter(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @modify_user_hw_breakpoint_check(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.arch_hw_breakpoint, align 4
  %5 = alloca %struct.perf_event_attr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false)
  %6 = call i32 @hw_breakpoint_arch_parse(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %79

8:                                                ; preds = %3
  %9 = call i32 @arch_check_bp_in_kernelspace(ptr noundef nonnull %4) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.perf_event_attr, ptr %1, i32 0, i32 6
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 32
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %79

16:                                               ; preds = %11
  %17 = call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %17, label %18, label %79

18:                                               ; preds = %16, %8
  br i1 %2, label %22, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.perf_event_attr, ptr %1, i32 0, i32 8
  %21 = load i32, ptr %20, align 4
  br label %42

22:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #12
  %23 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef align 8 dereferenceable(128) %23, i32 128, i1 false)
  %24 = getelementptr inbounds %struct.perf_event_attr, ptr %1, i32 0, i32 9
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds %struct.perf_event_attr, ptr %5, i32 0, i32 9
  store i64 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.perf_event_attr, ptr %1, i32 0, i32 8
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.perf_event_attr, ptr %5, i32 0, i32 8
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.perf_event_attr, ptr %1, i32 0, i32 10
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds %struct.perf_event_attr, ptr %5, i32 0, i32 10
  store i64 %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.perf_event_attr, ptr %1, i32 0, i32 6
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 1
  %36 = getelementptr inbounds %struct.perf_event_attr, ptr %5, i32 0, i32 6
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, -2
  %39 = or i64 %38, %35
  store i64 %39, ptr %36, align 8
  %40 = call i32 @bcmp(ptr noundef nonnull dereferenceable(128) %5, ptr noundef dereferenceable(128) %1, i32 128)
  %41 = icmp eq i32 %40, 0
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #12
  br i1 %41, label %42, label %79

42:                                               ; preds = %22, %19
  %43 = phi i32 [ %21, %19 ], [ %28, %22 ]
  %44 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21, i32 8
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.perf_event_attr, ptr %1, i32 0, i32 8
  %47 = icmp eq i32 %45, %43
  br i1 %47, label %63, label %48

48:                                               ; preds = %42
  %49 = zext i32 %45 to i64
  %50 = zext i32 %43 to i64
  call void @mutex_lock(ptr noundef nonnull @nr_bp_mutex) #12
  call void @arch_release_bp_slot(ptr noundef %0) #12
  %51 = and i64 %49, 3
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @hw_breakpoint_weight(ptr noundef %0) #12
  call fastcc void @toggle_bp_slot(ptr noundef %0, i1 noundef zeroext false, i32 noundef %53, i32 noundef %54) #12
  %55 = call fastcc i32 @__reserve_bp_slot(ptr noundef %0, i64 noundef %50) #12
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %48
  %58 = call fastcc i32 @__reserve_bp_slot(ptr noundef %0, i64 noundef %49) #12
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60, !prof !8

60:                                               ; preds = %57
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 367, i32 noundef 9, ptr noundef null) #12
  br label %61

61:                                               ; preds = %60, %57
  call void @mutex_unlock(ptr noundef nonnull @nr_bp_mutex) #12
  br label %79

62:                                               ; preds = %48
  call void @mutex_unlock(ptr noundef nonnull @nr_bp_mutex) #12
  br label %63

63:                                               ; preds = %62, %42
  %64 = getelementptr inbounds %struct.perf_event_attr, ptr %1, i32 0, i32 9
  %65 = load i64, ptr %64, align 8
  %66 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21, i32 9
  store i64 %65, ptr %66, align 8
  %67 = load i32, ptr %46, align 4
  store i32 %67, ptr %44, align 4
  %68 = getelementptr inbounds %struct.perf_event_attr, ptr %1, i32 0, i32 10
  %69 = load i64, ptr %68, align 8
  %70 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21, i32 10
  store i64 %69, ptr %70, align 8
  %71 = getelementptr inbounds %struct.perf_event_attr, ptr %1, i32 0, i32 6
  %72 = load i64, ptr %71, align 8
  %73 = and i64 %72, 1
  %74 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21, i32 6
  %75 = load i64, ptr %74, align 8
  %76 = and i64 %75, -2
  %77 = or i64 %76, %73
  store i64 %77, ptr %74, align 8
  %78 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %78, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false)
  br label %79

79:                                               ; preds = %63, %61, %22, %16, %11, %3
  %80 = phi i32 [ 0, %63 ], [ -22, %22 ], [ %55, %61 ], [ -1, %16 ], [ -22, %11 ], [ %6, %3 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @modify_user_hw_breakpoint(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !9
  %4 = and i32 %3, 128
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 26
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.perf_event_context, ptr %8, i32 0, i32 18
  %12 = load ptr, ptr %11, align 4
  %13 = tail call ptr @llvm.thread.pointer() #12
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  tail call void @perf_event_disable_local(ptr noundef %0) #12
  br label %17

16:                                               ; preds = %10, %6, %2
  tail call void @perf_event_disable(ptr noundef %0) #12
  br label %17

17:                                               ; preds = %16, %15
  %18 = tail call i32 @modify_user_hw_breakpoint_check(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false)
  %19 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21, i32 6
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 1
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  tail call void @perf_event_enable(ptr noundef %0) #12
  br label %24

24:                                               ; preds = %23, %17
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_disable_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unregister_hw_breakpoint(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @perf_event_release_kernel(ptr noundef nonnull %0) #12
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_event_release_kernel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @register_wide_hw_breakpoint(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %3
  tail call void @cpus_read_lock() #12
  %7 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #13
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = ptrtoint ptr %4 to i32
  br label %13

12:                                               ; preds = %17, %6
  tail call void @cpus_read_unlock() #12
  br label %26

13:                                               ; preds = %17, %10
  %14 = phi i32 [ %7, %10 ], [ %22, %17 ]
  %15 = tail call ptr @perf_event_create_kernel_counter(ptr noundef %0, i32 noundef %14, ptr noundef null, ptr noundef %1, ptr noundef %2) #12
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %11
  %21 = inttoptr i32 %20 to ptr
  store ptr %15, ptr %21, align 4
  %22 = tail call i32 @cpumask_next(i32 noundef %14, ptr noundef nonnull @__cpu_online_mask) #13
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %13, label %12

25:                                               ; preds = %13
  tail call void @cpus_read_unlock() #12
  tail call void @unregister_wide_hw_breakpoint(ptr noundef nonnull %4)
  br label %26

26:                                               ; preds = %25, %12, %3
  %27 = phi ptr [ %15, %25 ], [ inttoptr (i32 -12 to ptr), %3 ], [ %4, %12 ]
  ret ptr %27
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unregister_wide_hw_breakpoint(ptr noundef %0) #0 {
  %2 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = icmp ult i32 %2, %3
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = ptrtoint ptr %0 to i32
  br label %7

7:                                                ; preds = %19, %5
  %8 = phi i32 [ %3, %5 ], [ %20, %19 ]
  %9 = phi i32 [ %2, %5 ], [ %21, %19 ]
  %10 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, %6
  %13 = inttoptr i32 %12 to ptr
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %7
  %17 = tail call i32 @perf_event_release_kernel(ptr noundef nonnull %14) #12
  %18 = load i32, ptr @nr_cpu_ids, align 4
  br label %19

19:                                               ; preds = %16, %7
  %20 = phi i32 [ %8, %7 ], [ %18, %16 ]
  %21 = tail call i32 @cpumask_next(i32 noundef %9, ptr noundef nonnull @__cpu_possible_mask) #13
  %22 = icmp ult i32 %21, %20
  br i1 %22, label %7, label %23

23:                                               ; preds = %19, %1
  tail call void @free_percpu(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_hw_breakpoint() local_unnamed_addr #7 section ".init.text" {
  %1 = tail call i32 @hw_breakpoint_slots(i32 noundef 0) #12
  store i32 %1, ptr @nr_slots, align 4
  %2 = tail call i32 @hw_breakpoint_slots(i32 noundef 1) #12
  store i32 %2, ptr getelementptr inbounds ([2 x i32], ptr @nr_slots, i32 0, i32 1), align 4
  %3 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %10, label %35

6:                                                ; preds = %34
  %7 = tail call i32 @cpumask_next(i32 noundef %11, ptr noundef nonnull @__cpu_possible_mask) #13
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %6, %0
  %11 = phi i32 [ %7, %6 ], [ %3, %0 ]
  %12 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  br label %13

13:                                               ; preds = %34, %10
  %14 = phi i1 [ true, %10 ], [ false, %34 ]
  %15 = phi i32 [ 0, %10 ], [ 1, %34 ]
  %16 = getelementptr %struct.bp_cpuinfo, ptr @bp_cpuinfo, i32 %15
  %17 = ptrtoint ptr %16 to i32
  %18 = load i32, ptr %12, align 4
  %19 = add i32 %18, %17
  %20 = getelementptr [2 x i32], ptr @nr_slots, i32 0, i32 %15
  %21 = load i32, ptr %20, align 4
  %22 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %21, i32 4) #12
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %24, label %28, !prof !10

24:                                               ; preds = %13
  %25 = inttoptr i32 %19 to ptr
  %26 = getelementptr inbounds %struct.bp_cpuinfo, ptr %25, i32 0, i32 1
  store ptr null, ptr %26, align 4
  br label %27

27:                                               ; preds = %28, %24
  br label %38

28:                                               ; preds = %13
  %29 = extractvalue { i32, i1 } %22, 0
  %30 = inttoptr i32 %19 to ptr
  %31 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %29, i32 noundef 3520) #14
  %32 = getelementptr inbounds %struct.bp_cpuinfo, ptr %30, i32 0, i32 1
  store ptr %31, ptr %32, align 4
  %33 = icmp eq ptr %31, null
  br i1 %33, label %27, label %34

34:                                               ; preds = %28
  br i1 %14, label %13, label %6

35:                                               ; preds = %6, %0
  store i1 true, ptr @constraints_initialized, align 4
  %36 = tail call i32 @perf_pmu_register(ptr noundef nonnull @perf_breakpoint, ptr noundef nonnull @.str, i32 noundef 5) #12
  %37 = tail call i32 @register_die_notifier(ptr noundef nonnull @hw_breakpoint_exceptions_nb) #12
  br label %56

38:                                               ; preds = %43, %27
  %39 = phi i32 [ %40, %43 ], [ -1, %27 ]
  %40 = tail call i32 @cpumask_next(i32 noundef %39, ptr noundef nonnull @__cpu_possible_mask) #13
  %41 = load i32, ptr @nr_cpu_ids, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, ptrtoint (ptr @bp_cpuinfo to i32)
  %47 = inttoptr i32 %46 to ptr
  %48 = getelementptr inbounds %struct.bp_cpuinfo, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  tail call void @kfree(ptr noundef %49) #12
  %50 = load i32, ptr %44, align 4
  %51 = add i32 %50, ptrtoint (ptr getelementptr inbounds ([2 x %struct.bp_cpuinfo], ptr @bp_cpuinfo, i32 0, i32 1) to i32)
  %52 = inttoptr i32 %51 to ptr
  %53 = getelementptr inbounds %struct.bp_cpuinfo, ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  tail call void @kfree(ptr noundef %54) #12
  %55 = icmp eq i32 %40, %11
  br i1 %55, label %56, label %38

56:                                               ; preds = %43, %38, %35
  %57 = phi i32 [ %37, %35 ], [ -12, %43 ], [ -12, %38 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_breakpoint_slots(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_pmu_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_die_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @toggle_bp_slot(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 34
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, -1
  %8 = and i32 %6, 31
  %9 = add nuw nsw i32 %8, 1
  %10 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %9
  %11 = lshr i32 %6, 5
  %12 = sub nsw i32 0, %11
  %13 = getelementptr i32, ptr %10, i32 %12
  %14 = select i1 %7, ptr %13, ptr @__cpu_possible_mask
  %15 = sub i32 0, %3
  %16 = select i1 %1, i32 %3, i32 %15
  %17 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %4
  %21 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %14) #13
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %95

24:                                               ; preds = %20
  %25 = getelementptr %struct.bp_cpuinfo, ptr @bp_cpuinfo, i32 %2
  %26 = ptrtoint ptr %25 to i32
  br label %36

27:                                               ; preds = %4
  %28 = getelementptr %struct.bp_cpuinfo, ptr @bp_cpuinfo, i32 %2
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, %29
  %33 = inttoptr i32 %32 to ptr
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %16
  store i32 %35, ptr %33, align 4
  br label %105

36:                                               ; preds = %93, %24
  %37 = phi ptr [ %18, %24 ], [ %94, %93 ]
  %38 = phi i32 [ %21, %24 ], [ %90, %93 ]
  %39 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %26
  %42 = inttoptr i32 %41 to ptr
  %43 = getelementptr inbounds %struct.bp_cpuinfo, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr @bp_task_head, align 4
  %46 = icmp eq ptr %45, @bp_task_head
  br i1 %46, label %81, label %47

47:                                               ; preds = %70, %36
  %48 = phi ptr [ %72, %70 ], [ %45, %36 ]
  %49 = phi i32 [ %71, %70 ], [ 0, %36 ]
  %50 = getelementptr i8, ptr %48, i32 -296
  %51 = getelementptr i8, ptr %48, i32 72
  %52 = load ptr, ptr %51, align 8
  %53 = icmp eq ptr %52, %37
  br i1 %53, label %54, label %70

54:                                               ; preds = %47
  %55 = getelementptr i8, ptr %48, i32 -100
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 3
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = icmp eq i32 %59, %2
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = getelementptr i8, ptr %48, i32 212
  %63 = load i32, ptr %62, align 4
  %64 = icmp slt i32 %63, 0
  %65 = icmp eq i32 %63, %38
  %66 = or i1 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = tail call i32 @hw_breakpoint_weight(ptr noundef %50) #12
  %69 = add i32 %68, %49
  br label %70

70:                                               ; preds = %67, %61, %54, %47
  %71 = phi i32 [ %69, %67 ], [ %49, %54 ], [ %49, %47 ], [ %49, %61 ]
  %72 = load ptr, ptr %48, align 4
  %73 = icmp eq ptr %72, @bp_task_head
  br i1 %73, label %74, label %47

74:                                               ; preds = %70
  %75 = add i32 %71, -1
  %76 = icmp sgt i32 %75, -1
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = getelementptr i32, ptr %44, i32 %75
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, -1
  store i32 %80, ptr %78, align 4
  br label %81

81:                                               ; preds = %77, %74, %36
  %82 = phi i32 [ %75, %77 ], [ %75, %74 ], [ -1, %36 ]
  %83 = add i32 %82, %16
  %84 = icmp sgt i32 %83, -1
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = getelementptr i32, ptr %44, i32 %83
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %87, 1
  store i32 %88, ptr %86, align 4
  br label %89

89:                                               ; preds = %85, %81
  %90 = tail call i32 @cpumask_next(i32 noundef %38, ptr noundef %14) #13
  %91 = load i32, ptr @nr_cpu_ids, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load ptr, ptr %17, align 8
  br label %36

95:                                               ; preds = %89, %20
  %96 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 2
  br i1 %1, label %97, label %100

97:                                               ; preds = %95
  %98 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @bp_task_head, i32 0, i32 1), align 4
  store ptr %96, ptr getelementptr inbounds (%struct.list_head, ptr @bp_task_head, i32 0, i32 1), align 4
  store ptr @bp_task_head, ptr %96, align 4
  %99 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 3
  store ptr %98, ptr %99, align 4
  store volatile ptr %96, ptr %98, align 4
  br label %105

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 0, i32 0, i32 3
  %102 = load ptr, ptr %101, align 4
  %103 = load ptr, ptr %96, align 4
  %104 = getelementptr inbounds %struct.list_head, ptr %103, i32 0, i32 1
  store ptr %102, ptr %104, align 4
  store volatile ptr %103, ptr %102, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %96, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %101, align 4
  br label %105

105:                                              ; preds = %100, %97, %27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_breakpoint_arch_parse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_check_bp_in_kernelspace(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hw_breakpoint_event_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 5
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21, i32 4
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 2048
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = tail call i32 @register_perf_hw_breakpoint(ptr noundef %0)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 55
  store ptr @bp_perf_event_destroy, ptr %14, align 8
  br label %15

15:                                               ; preds = %13, %10, %5, %1
  %16 = phi i32 [ 0, %13 ], [ -2, %1 ], [ -95, %5 ], [ %11, %10 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hw_breakpoint_add(ptr noundef %0, i32 noundef %1) #0 {
  %3 = and i32 %1, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 4
  store i32 1, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %2
  %8 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21, i32 3
  %9 = load i64, ptr %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 6
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 7
  store i64 %13, ptr %14, align 8
  %15 = tail call i64 @perf_swevent_set_period(ptr noundef %0) #12
  br label %16

16:                                               ; preds = %11, %7
  %17 = tail call i32 @arch_install_hw_breakpoint(ptr noundef %0) #12
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hw_breakpoint_del(ptr noundef %0, i32 noundef %1) #0 {
  tail call void @arch_uninstall_hw_breakpoint(ptr noundef %0) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @hw_breakpoint_start(ptr nocapture noundef writeonly %0, i32 noundef %1) #10 {
  %3 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 4
  store i32 0, ptr %3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @hw_breakpoint_stop(ptr nocapture noundef writeonly %0, i32 noundef %1) #10 {
  %3 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 4
  store i32 1, ptr %3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_breakpoint_pmu_read(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bp_perf_event_destroy(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @nr_bp_mutex) #12
  tail call void @arch_unregister_hw_breakpoint(ptr noundef %0) #12
  %2 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21, i32 8
  %3 = load i32, ptr %2, align 4
  tail call void @arch_release_bp_slot(ptr noundef %0) #12
  %4 = and i32 %3, 3
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i32
  %7 = tail call i32 @hw_breakpoint_weight(ptr noundef %0) #12
  tail call fastcc void @toggle_bp_slot(ptr noundef %0, i1 noundef zeroext false, i32 noundef %6, i32 noundef %7) #12
  tail call void @mutex_unlock(ptr noundef nonnull @nr_bp_mutex) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @perf_swevent_set_period(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_install_hw_breakpoint(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_uninstall_hw_breakpoint(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_breakpoint_exceptions_notify(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { nounwind allocsize(0) }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 194711}
!10 = !{!"branch_weights", i32 1, i32 2000}
