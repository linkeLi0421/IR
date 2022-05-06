; ModuleID = '/llk/IR/kernel/trace/trace_event_perf.c_pt.bc'
source_filename = "../kernel/trace/trace_event_perf.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_perf_trace_buf_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22perf_trace_buf_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_perf_trace_buf_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.pt_regs = type { [18 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type {}
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i32, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, %struct.irq_work, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i32, ptr, ptr, %struct.callback_head, ptr, i64, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.local64_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.70, i64, i64, i64, %union.anon.71, i32, %union.anon.72, %union.anon.73, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64 }
%union.anon.70 = type { i64 }
%union.anon.71 = type { i32 }
%union.anon.72 = type { i64 }
%union.anon.73 = type { i64 }
%struct.hw_perf_event = type { %union.anon.74, ptr, ptr, i32, i32, %struct.local64_t, i64, %union.anon.81, i64, i64, i64, i64 }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i64, %struct.local64_t }
%struct.atomic64_t = type { i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.67, %struct.trace_event, ptr, ptr, %union.anon.68, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.67 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%union.anon.68 = type { ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@event_mutex = external dso_local global %struct.mutex, align 4
@ftrace_events = external dso_local global %struct.list_head, align 4
@perf_trace_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [32 x i8] c"kernel/trace/trace_event_perf.c\00", align 1
@perf_trace_buf_alloc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"perf buffer not large enough, wanted %d, have %d\00", align 1
@__perf_regs = external dso_local global [4 x %struct.pt_regs], section ".data..percpu", align 4
@perf_trace_buf = internal unnamed_addr global [4 x ptr] zeroinitializer, align 4
@__kstrtab_perf_trace_buf_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_perf_trace_buf_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_perf_trace_buf_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @perf_trace_buf_alloc to i32), ptr @__kstrtab_perf_trace_buf_alloc, ptr @__kstrtabns_perf_trace_buf_alloc }, section "___ksymtab_gpl+perf_trace_buf_alloc", align 4
@sysctl_perf_event_paranoid = external dso_local local_unnamed_addr global i32, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@total_ref_count = internal unnamed_addr global i32 0, align 4
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_perf_trace_buf_alloc], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @perf_trace_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21, i32 2
  %3 = load i64, ptr %2, align 8
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #6
  %4 = load ptr, ptr @ftrace_events, align 4
  %5 = icmp eq ptr %4, @ftrace_events
  br i1 %5, label %46, label %6

6:                                                ; preds = %43, %1
  %7 = phi ptr [ %44, %43 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %7, i32 0, i32 3, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp eq i64 %3, %10
  br i1 %11, label %12, label %43

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %7, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %43, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.trace_event_class, ptr %14, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %43, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.trace_event_call, ptr %7, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = tail call zeroext i1 @trace_event_dyn_try_get_ref(ptr noundef %7) #6
  br i1 %26, label %31, label %43

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.trace_event_call, ptr %7, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = tail call zeroext i1 @try_module_get(ptr noundef %29) #6
  br i1 %30, label %31, label %43

31:                                               ; preds = %27, %25
  %32 = tail call fastcc i32 @perf_trace_event_init(ptr noundef %7, ptr noundef %0)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.trace_event_call, ptr %7, i32 0, i32 8
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  tail call void @trace_event_dyn_put_ref(ptr noundef %7) #6
  br label %46

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.trace_event_call, ptr %7, i32 0, i32 6
  %42 = load ptr, ptr %41, align 4
  tail call void @module_put(ptr noundef %42) #6
  br label %46

43:                                               ; preds = %27, %25, %16, %12, %6
  %44 = load ptr, ptr %7, align 4
  %45 = icmp eq ptr %44, @ftrace_events
  br i1 %45, label %46, label %6

46:                                               ; preds = %43, %40, %39, %31, %1
  %47 = phi i32 [ 0, %31 ], [ %32, %39 ], [ %32, %40 ], [ -22, %1 ], [ -22, %43 ]
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #6
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @perf_trace_event_init(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call i32 %4(ptr noundef %0, ptr noundef %1) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %138

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 32
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %62

13:                                               ; preds = %9
  %14 = tail call zeroext i1 @ftrace_event_is_function(ptr noundef %0) #6
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 21, i32 4
  %17 = load i64, ptr %16, align 8
  br label %39

18:                                               ; preds = %13
  %19 = load i32, ptr @sysctl_perf_event_paranoid, align 4
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = tail call zeroext i1 @capable(i32 noundef 38) #6
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = tail call zeroext i1 @capable(i32 noundef 21) #6
  br i1 %24, label %25, label %138

25:                                               ; preds = %23, %21, %18
  %26 = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 21, i32 3
  %27 = load i64, ptr %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %62, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 21, i32 6
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 4194304
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %138, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 21, i32 4
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 8192
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %138

39:                                               ; preds = %34, %15
  %40 = phi i64 [ %17, %15 ], [ %36, %34 ]
  %41 = and i64 %40, 1024
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %62, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 15
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 4
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 8
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 2
  %51 = icmp eq i32 %50, 0
  %52 = load i32, ptr @sysctl_perf_event_paranoid, align 4
  %53 = icmp sgt i32 %52, -1
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %58, label %62

55:                                               ; preds = %43
  %56 = load i32, ptr @sysctl_perf_event_paranoid, align 4
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %58, label %62

58:                                               ; preds = %55, %47
  %59 = tail call zeroext i1 @capable(i32 noundef 38) #6
  br i1 %59, label %62, label %60

60:                                               ; preds = %58
  %61 = tail call zeroext i1 @capable(i32 noundef 21) #6
  br i1 %61, label %62, label %138

62:                                               ; preds = %60, %58, %55, %47, %39, %25, %9
  %63 = getelementptr inbounds %struct.perf_event, ptr %1, i32 0, i32 62
  store ptr %0, ptr %63, align 4
  %64 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 9
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, 1
  store i32 %66, ptr %64, align 4
  %67 = icmp sgt i32 %65, 0
  br i1 %67, label %129, label %68

68:                                               ; preds = %62
  %69 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #7
  %70 = icmp eq ptr %69, null
  br i1 %70, label %113, label %71

71:                                               ; preds = %68
  %72 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #8
  %73 = load i32, ptr @nr_cpu_ids, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = ptrtoint ptr %69 to i32
  br label %77

77:                                               ; preds = %77, %75
  %78 = phi i32 [ %72, %75 ], [ %83, %77 ]
  %79 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %78
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, %76
  %82 = inttoptr i32 %81 to ptr
  store ptr null, ptr %82, align 4
  %83 = tail call i32 @cpumask_next(i32 noundef %78, ptr noundef nonnull @__cpu_possible_mask) #8
  %84 = load i32, ptr @nr_cpu_ids, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %77, label %86

86:                                               ; preds = %77, %71
  %87 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  store ptr %69, ptr %87, align 4
  %88 = load i32, ptr @total_ref_count, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %86
  %91 = tail call noalias ptr @__alloc_percpu(i32 noundef 8192, i32 noundef 4) #7
  %92 = icmp eq ptr %91, null
  br i1 %92, label %113, label %93

93:                                               ; preds = %90
  store ptr %91, ptr @perf_trace_buf, align 4
  %94 = tail call noalias ptr @__alloc_percpu(i32 noundef 8192, i32 noundef 4) #7
  %95 = icmp eq ptr %94, null
  br i1 %95, label %113, label %96

96:                                               ; preds = %93
  store ptr %94, ptr getelementptr inbounds ([4 x ptr], ptr @perf_trace_buf, i32 0, i32 1), align 4
  %97 = tail call noalias ptr @__alloc_percpu(i32 noundef 8192, i32 noundef 4) #7
  %98 = icmp eq ptr %97, null
  br i1 %98, label %113, label %99

99:                                               ; preds = %96
  store ptr %97, ptr getelementptr inbounds ([4 x ptr], ptr @perf_trace_buf, i32 0, i32 2), align 4
  %100 = tail call noalias ptr @__alloc_percpu(i32 noundef 8192, i32 noundef 4) #7
  %101 = icmp eq ptr %100, null
  br i1 %101, label %113, label %102

102:                                              ; preds = %99
  store ptr %100, ptr getelementptr inbounds ([4 x ptr], ptr @perf_trace_buf, i32 0, i32 3), align 4
  br label %103

103:                                              ; preds = %102, %86
  %104 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.trace_event_class, ptr %105, i32 0, i32 3
  %107 = load ptr, ptr %106, align 4
  %108 = tail call i32 %107(ptr noundef %0, i32 noundef 2, ptr noundef null) #6
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load i32, ptr @total_ref_count, align 4
  %112 = add i32 %111, 1
  store i32 %112, ptr @total_ref_count, align 4
  br label %129

113:                                              ; preds = %103, %99, %96, %93, %90, %68
  %114 = phi i32 [ %108, %103 ], [ -12, %68 ], [ -12, %99 ], [ -12, %96 ], [ -12, %93 ], [ -12, %90 ]
  %115 = load i32, ptr @total_ref_count, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load ptr, ptr @perf_trace_buf, align 4
  tail call void @free_percpu(ptr noundef %118) #6
  store ptr null, ptr @perf_trace_buf, align 4
  %119 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @perf_trace_buf, i32 0, i32 1), align 4
  tail call void @free_percpu(ptr noundef %119) #6
  store ptr null, ptr getelementptr inbounds ([4 x ptr], ptr @perf_trace_buf, i32 0, i32 1), align 4
  %120 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @perf_trace_buf, i32 0, i32 2), align 4
  tail call void @free_percpu(ptr noundef %120) #6
  store ptr null, ptr getelementptr inbounds ([4 x ptr], ptr @perf_trace_buf, i32 0, i32 2), align 4
  %121 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @perf_trace_buf, i32 0, i32 3), align 4
  tail call void @free_percpu(ptr noundef %121) #6
  store ptr null, ptr getelementptr inbounds ([4 x ptr], ptr @perf_trace_buf, i32 0, i32 3), align 4
  br label %122

122:                                              ; preds = %117, %113
  %123 = load i32, ptr %64, align 4
  %124 = add i32 %123, -1
  store i32 %124, ptr %64, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %128 = load ptr, ptr %127, align 4
  tail call void @free_percpu(ptr noundef %128) #6
  store ptr null, ptr %127, align 4
  br label %138

129:                                              ; preds = %110, %62
  %130 = load ptr, ptr %63, align 4
  %131 = getelementptr inbounds %struct.trace_event_call, ptr %130, i32 0, i32 1
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.trace_event_class, ptr %132, i32 0, i32 3
  %134 = load ptr, ptr %133, align 4
  %135 = tail call i32 %134(ptr noundef %130, i32 noundef 4, ptr noundef %1) #6
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %129
  tail call fastcc void @perf_trace_event_unreg(ptr noundef %1)
  br label %138

138:                                              ; preds = %137, %129, %126, %122, %60, %34, %29, %23, %6
  %139 = phi i32 [ %135, %137 ], [ 0, %129 ], [ %7, %6 ], [ -22, %29 ], [ -22, %34 ], [ -1, %23 ], [ -1, %60 ], [ %114, %126 ], [ %114, %122 ]
  ret i32 %139
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @perf_trace_destroy(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #6
  %2 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 62
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.trace_event_call, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.trace_event_class, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %3, i32 noundef 5, ptr noundef %0) #6
  tail call fastcc void @perf_trace_event_unreg(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @perf_trace_event_unreg(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 62
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.trace_event_call, ptr %3, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -1
  store i32 %6, ptr %4, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.trace_event_class, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %3, i32 noundef 3, ptr noundef null) #6
  tail call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #6
  tail call void @synchronize_rcu() #6
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %3, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  tail call void @free_percpu(ptr noundef %15) #6
  store ptr null, ptr %14, align 4
  %16 = load i32, ptr @total_ref_count, align 4
  %17 = add i32 %16, -1
  store i32 %17, ptr @total_ref_count, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %8
  %20 = load ptr, ptr @perf_trace_buf, align 4
  tail call void @free_percpu(ptr noundef %20) #6
  store ptr null, ptr @perf_trace_buf, align 4
  %21 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @perf_trace_buf, i32 0, i32 1), align 4
  tail call void @free_percpu(ptr noundef %21) #6
  store ptr null, ptr getelementptr inbounds ([4 x ptr], ptr @perf_trace_buf, i32 0, i32 1), align 4
  %22 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @perf_trace_buf, i32 0, i32 2), align 4
  tail call void @free_percpu(ptr noundef %22) #6
  store ptr null, ptr getelementptr inbounds ([4 x ptr], ptr @perf_trace_buf, i32 0, i32 2), align 4
  %23 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @perf_trace_buf, i32 0, i32 3), align 4
  tail call void @free_percpu(ptr noundef %23) #6
  store ptr null, ptr getelementptr inbounds ([4 x ptr], ptr @perf_trace_buf, i32 0, i32 3), align 4
  br label %24

24:                                               ; preds = %19, %8, %1
  %25 = getelementptr inbounds %struct.trace_event_call, ptr %3, i32 0, i32 8
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  tail call void @trace_event_dyn_put_ref(ptr noundef %3) #6
  br label %33

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.trace_event_call, ptr %3, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  tail call void @module_put(ptr noundef %32) #6
  br label %33

33:                                               ; preds = %30, %29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @perf_uprobe_init(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21, i32 9
  %5 = load i64, ptr %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %34, label %7

7:                                                ; preds = %3
  %8 = trunc i64 %5 to i32
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call ptr @strndup_user(ptr noundef %9, i32 noundef 4096) #6
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = ptrtoint ptr %10 to i32
  %14 = icmp eq ptr %10, inttoptr (i32 -22 to ptr)
  %15 = select i1 %14, i32 -7, i32 %13
  br label %34

16:                                               ; preds = %7
  %17 = load i8, ptr %10, align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 21, i32 10
  %21 = load i64, ptr %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = tail call ptr @create_local_trace_uprobe(ptr noundef %10, i32 noundef %22, i32 noundef %1, i1 noundef zeroext %2) #6
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = ptrtoint ptr %23 to i32
  br label %32

27:                                               ; preds = %19
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #6
  %28 = tail call fastcc i32 @perf_trace_event_init(ptr noundef %23, ptr noundef %0)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call void @destroy_local_trace_uprobe(ptr noundef %23) #6
  br label %31

31:                                               ; preds = %30, %27
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #6
  br label %32

32:                                               ; preds = %31, %25, %16
  %33 = phi i32 [ %26, %25 ], [ %28, %31 ], [ -22, %16 ]
  tail call void @kfree(ptr noundef %10) #6
  br label %34

34:                                               ; preds = %32, %12, %3
  %35 = phi i32 [ %15, %12 ], [ %33, %32 ], [ -22, %3 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strndup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @create_local_trace_uprobe(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_local_trace_uprobe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @perf_uprobe_destroy(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #6
  %2 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 62
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.trace_event_call, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.trace_event_class, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %3, i32 noundef 5, ptr noundef %0) #6
  tail call fastcc void @perf_trace_event_unreg(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #6
  %9 = load ptr, ptr %2, align 4
  tail call void @destroy_local_trace_uprobe(ptr noundef %9) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @perf_trace_add(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 62
  %4 = load ptr, ptr %3, align 4
  %5 = and i32 %1, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 25, i32 4
  store i32 1, ptr %8, align 4
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.trace_event_call, ptr %4, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_class, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %4, i32 noundef 6, ptr noundef %0) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %4, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  %20 = load i1, ptr @perf_trace_add.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %24, !prof !9

23:                                               ; preds = %16
  store i1 true, ptr @perf_trace_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 372, i32 noundef 9, ptr noundef null) #6
  br label %24

24:                                               ; preds = %23, %16
  br i1 %19, label %38, label %25

25:                                               ; preds = %24
  %26 = ptrtoint ptr %18 to i32
  %27 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %28 = inttoptr i32 %27 to ptr
  %29 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %28) #4, !srcloc !10
  %30 = add i32 %29, %26
  %31 = inttoptr i32 %30 to ptr
  %32 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 6
  %33 = load ptr, ptr %31, align 4
  store ptr %33, ptr %32, align 4
  %34 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 6, i32 1
  store volatile ptr %31, ptr %34, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !11
  store volatile ptr %32, ptr %31, align 4
  %35 = icmp eq ptr %33, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.hlist_node, ptr %33, i32 0, i32 1
  store volatile ptr %32, ptr %37, align 4
  br label %38

38:                                               ; preds = %36, %25, %24, %9
  %39 = phi i32 [ 0, %9 ], [ -22, %24 ], [ 0, %25 ], [ 0, %36 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @perf_trace_del(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 62
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.trace_event_class, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %4, i32 noundef 7, ptr noundef %0) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 6, i32 1
  %15 = load ptr, ptr %14, align 4
  store volatile ptr %13, ptr %15, align 4
  %16 = icmp eq ptr %13, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  store volatile ptr %15, ptr %18, align 4
  br label %19

19:                                               ; preds = %17, %11
  store volatile ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  br label %20

20:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @perf_trace_buf_alloc(i32 noundef %0, ptr noundef writeonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = icmp sgt i32 %0, 8192
  %5 = load i1, ptr @perf_trace_buf_alloc.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %3
  store i1 true, ptr @perf_trace_buf_alloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 404, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %0, i32 noundef 8192) #6
  br label %9

9:                                                ; preds = %8, %3
  br i1 %4, label %34, label %10

10:                                               ; preds = %9
  %11 = tail call i32 @perf_swevent_get_recursion_context() #6
  store i32 %11, ptr %2, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %10
  %14 = icmp eq ptr %1, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %13
  %16 = getelementptr [4 x %struct.pt_regs], ptr @__perf_regs, i32 0, i32 %11
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #4, !srcloc !10
  %21 = add i32 %20, %17
  %22 = inttoptr i32 %21 to ptr
  store ptr %22, ptr %1, align 4
  br label %23

23:                                               ; preds = %15, %13
  %24 = getelementptr [4 x ptr], ptr @perf_trace_buf, i32 0, i32 %11
  %25 = load ptr, ptr %24, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = tail call i32 @llvm.read_register.i32(metadata !0) #6
  %28 = inttoptr i32 %27 to ptr
  %29 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %28) #4, !srcloc !10
  %30 = add i32 %29, %26
  %31 = inttoptr i32 %30 to ptr
  %32 = add i32 %0, -8
  %33 = getelementptr i8, ptr %31, i32 %32
  store i64 0, ptr %33, align 1
  br label %34

34:                                               ; preds = %23, %10, %9
  %35 = phi ptr [ %31, %23 ], [ null, %9 ], [ null, %10 ]
  ret ptr %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_swevent_get_recursion_context() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @perf_trace_buf_update(ptr nocapture noundef writeonly %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !12
  %4 = lshr i32 %3, 7
  %5 = and i32 %4, 1
  %6 = tail call i32 @tracing_gen_ctx_irq_test(i32 noundef %5) #6
  %7 = trunc i32 %6 to i8
  %8 = getelementptr inbounds %struct.trace_entry, ptr %0, i32 0, i32 2
  store i8 %7, ptr %8, align 1
  %9 = tail call ptr @llvm.thread.pointer() #6
  %10 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 52
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_entry, ptr %0, i32 0, i32 3
  store i32 %11, ptr %12, align 4
  store i16 %1, ptr %0, align 4
  %13 = lshr i32 %6, 16
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds %struct.trace_entry, ptr %0, i32 0, i32 1
  store i8 %14, ptr %15, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @trace_event_dyn_try_get_ref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ftrace_event_is_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_dyn_put_ref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_gen_ctx_irq_test(i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind readonly willreturn }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 476634}
!11 = !{i64 2150654501}
!12 = !{i64 460666}
