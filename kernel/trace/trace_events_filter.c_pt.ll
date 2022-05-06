; ModuleID = '/llk/IR/kernel/trace/trace_events_filter.c_pt.bc'
source_filename = "../kernel/trace/trace_events_filter.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_filter_match_preds:\09\09\09\09\09"
module asm "\09.asciz \09\22filter_match_preds\22\09\09\09\09\09"
module asm "__kstrtabns_filter_match_preds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type {}
%struct.prog_entry = type { i32, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.event_filter = type { ptr, ptr }
%struct.event_subsystem = type { %struct.list_head, ptr, ptr, i32 }
%struct.trace_subsystem_dir = type { %struct.list_head, ptr, ptr, ptr, i32, i32 }
%struct.trace_array = type { %struct.list_head, ptr, %struct.array_buffer, ptr, ptr, %struct.arch_spinlock_t, i32, i32, i32, i32, i8, i32, i32, ptr, i32, [32 x i8], i32, %struct.raw_spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr, [1 x %struct.cpumask], i32, i32, i32, %struct.list_head, ptr }
%struct.array_buffer = type { ptr, ptr, ptr, i64, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.filter_parse_error = type { i32, i32 }
%struct.filter_list = type { %struct.list_head, ptr }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i32, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, %struct.irq_work, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i32, ptr, ptr, %struct.callback_head, ptr, i64, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.local64_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.69, i64, i64, i64, %union.anon.70, i32, %union.anon.71, %union.anon.72, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64 }
%union.anon.69 = type { i64 }
%union.anon.70 = type { i32 }
%union.anon.71 = type { i64 }
%union.anon.72 = type { i64 }
%struct.hw_perf_event = type { %union.anon.73, ptr, ptr, i32, i32, %struct.local64_t, i64, %union.anon.80, i64, i64, i64, i64 }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type { i64, %struct.local64_t }
%struct.atomic64_t = type { i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.filter_pred = type { ptr, i64, %struct.regex, ptr, ptr, i32, i32, i32 }
%struct.regex = type { [256 x i8], i32, i32, ptr }
%struct.ftrace_event_field = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.44 }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.64 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = private unnamed_addr constant [4 x i8] c"[?\\\00", align 1
@__kstrtab_filter_match_preds = external dso_local constant [0 x i8], align 1
@__kstrtabns_filter_match_preds = external dso_local constant [0 x i8], align 1
@__ksymtab_filter_match_preds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @filter_match_preds to i32), ptr @__kstrtab_filter_match_preds, ptr @__kstrtabns_filter_match_preds }, section "___ksymtab_gpl+filter_match_preds", align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1
@event_mutex = external dso_local global %struct.mutex, align 4
@.str.3 = private unnamed_addr constant [193 x i8] c"### global filter ###\0A# Use this to set filters for multiple events.\0A# Only events with the given fields will be affected.\0A# If no events are modified, an error message will be displayed here\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"__data_loc\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"__rel_loc\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"char *\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"const char *\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"kernel/trace/trace_events_filter.c\00", align 1
@create_filter_start.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.11 = private unnamed_addr constant [9 x i8] c".ustring\00", align 1
@ops = internal unnamed_addr constant [9 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr null], align 4
@.str.12 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@ustring_per_cpu = internal unnamed_addr global ptr null, align 4
@.str.13 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@select_comparison_fn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@select_comparison_fn.__already_done.21 = internal unnamed_addr global i1 false, section ".data.once", align 1
@pred_funcs_s64 = internal unnamed_addr constant [5 x ptr] [ptr @filter_pred_LE_s64, ptr @filter_pred_LT_s64, ptr @filter_pred_GE_s64, ptr @filter_pred_GT_s64, ptr @filter_pred_BAND_s64], align 4
@pred_funcs_u64 = internal unnamed_addr constant [5 x ptr] [ptr @filter_pred_LE_u64, ptr @filter_pred_LT_u64, ptr @filter_pred_GE_u64, ptr @filter_pred_GT_u64, ptr @filter_pred_BAND_u64], align 4
@pred_funcs_s32 = internal unnamed_addr constant [5 x ptr] [ptr @filter_pred_LE_s32, ptr @filter_pred_LT_s32, ptr @filter_pred_GE_s32, ptr @filter_pred_GT_s32, ptr @filter_pred_BAND_s32], align 4
@pred_funcs_u32 = internal unnamed_addr constant [5 x ptr] [ptr @filter_pred_LE_u32, ptr @filter_pred_LT_u32, ptr @filter_pred_GE_u32, ptr @filter_pred_GT_u32, ptr @filter_pred_BAND_u32], align 4
@pred_funcs_s16 = internal unnamed_addr constant [5 x ptr] [ptr @filter_pred_LE_s16, ptr @filter_pred_LT_s16, ptr @filter_pred_GE_s16, ptr @filter_pred_GT_s16, ptr @filter_pred_BAND_s16], align 4
@pred_funcs_u16 = internal unnamed_addr constant [5 x ptr] [ptr @filter_pred_LE_u16, ptr @filter_pred_LT_u16, ptr @filter_pred_GE_u16, ptr @filter_pred_GT_u16, ptr @filter_pred_BAND_u16], align 4
@pred_funcs_s8 = internal unnamed_addr constant [5 x ptr] [ptr @filter_pred_LE_s8, ptr @filter_pred_LT_s8, ptr @filter_pred_GE_s8, ptr @filter_pred_GT_s8, ptr @filter_pred_BAND_s8], align 4
@pred_funcs_u8 = internal unnamed_addr constant [5 x ptr] [ptr @filter_pred_LE_u8, ptr @filter_pred_LT_u8, ptr @filter_pred_GE_u8, ptr @filter_pred_GT_u8, ptr @filter_pred_BAND_u8], align 4
@.str.22 = private unnamed_addr constant [5 x i8] c"\0A%*s\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"\0Aparse_error: %s\0A\00", align 1
@err_text = internal global [18 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], align 4
@.str.25 = private unnamed_addr constant [25 x i8] c"event filter parse error\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"\0AError: (%d)\0A\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"No error\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"Invalid operator\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"Too many '('\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"Too few '('\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"Missing matching quote\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"Operand too long\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"Expecting string field\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"Expecting numeric field\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"Illegal operation for field type\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"Field not found\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"Illegal integer value\00", align 1
@.str.38 = private unnamed_addr constant [58 x i8] c"Couldn't find or set field in one of a subsystem's events\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"Too many terms in predicate expression\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"Meaningless filter expression\00", align 1
@.str.41 = private unnamed_addr constant [48 x i8] c"Only 'ip' field is supported for function trace\00", align 1
@.str.42 = private unnamed_addr constant [39 x i8] c"Invalid value (did you forget quotes)?\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"No filter found\00", align 1
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_filter_match_preds], section "llvm.metadata"
@switch.table.process_preds = private unnamed_addr constant [6 x ptr] [ptr @regex_match_full, ptr @regex_match_front, ptr @regex_match_middle, ptr @regex_match_end, ptr @regex_match_glob, ptr @regex_match_full], align 4

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @filter_parse_regex(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load i8, ptr %0, align 1
  %6 = icmp eq i8 %5, 33
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  store i32 1, ptr %3, align 4
  %8 = getelementptr i8, ptr %0, i32 1
  %9 = add i32 %1, -1
  br label %11

10:                                               ; preds = %4
  store i32 0, ptr %3, align 4
  br label %11

11:                                               ; preds = %10, %7
  %12 = phi i32 [ %9, %7 ], [ %1, %10 ]
  %13 = phi ptr [ %8, %7 ], [ %0, %10 ]
  store ptr %13, ptr %2, align 4
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = add nsw i32 %15, -58
  %17 = icmp ult i32 %16, -10
  br i1 %17, label %18, label %52

18:                                               ; preds = %11
  %19 = icmp sgt i32 %12, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %43, %18
  %21 = phi i8 [ %45, %43 ], [ %14, %18 ]
  %22 = phi i32 [ %41, %43 ], [ 0, %18 ]
  %23 = phi i32 [ %40, %43 ], [ 0, %18 ]
  %24 = icmp eq i8 %21, 42
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = icmp eq i32 %22, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %25
  %28 = add nsw i32 %12, -1
  %29 = icmp eq i32 %22, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %27
  %31 = getelementptr i8, ptr %13, i32 %22
  %32 = icmp eq i32 %23, 3
  %33 = select i1 %32, i32 2, i32 1
  store i8 0, ptr %31, align 1
  %34 = load i8, ptr %13, align 1
  br label %46

35:                                               ; preds = %20
  %36 = zext i8 %21 to i32
  %37 = tail call ptr @memchr(ptr noundef nonnull @.str, i32 %36, i32 4)
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %35, %25
  %40 = phi i32 [ %23, %35 ], [ 3, %25 ]
  %41 = add nuw nsw i32 %22, 1
  %42 = icmp eq i32 %41, %12
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = getelementptr i8, ptr %13, i32 %41
  %45 = load i8, ptr %44, align 1
  br label %20

46:                                               ; preds = %39, %30, %18
  %47 = phi i8 [ %34, %30 ], [ %14, %18 ], [ %14, %39 ]
  %48 = phi i32 [ %33, %30 ], [ 0, %18 ], [ %40, %39 ]
  %49 = icmp eq i8 %47, 42
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = getelementptr i8, ptr %13, i32 1
  store ptr %51, ptr %2, align 4
  br label %52

52:                                               ; preds = %50, %46, %35, %27, %11
  %53 = phi i32 [ 5, %11 ], [ 4, %27 ], [ %48, %50 ], [ %48, %46 ], [ 4, %35 ]
  ret i32 %53
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @filter_match_preds(ptr noundef %0, ptr noundef %1) #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %2
  %5 = load volatile ptr, ptr %0, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %4
  %8 = getelementptr %struct.prog_entry, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %29, label %11

11:                                               ; preds = %22, %7
  %12 = phi ptr [ %27, %22 ], [ %9, %7 ]
  %13 = phi ptr [ %25, %22 ], [ %5, %7 ]
  %14 = phi i32 [ %24, %22 ], [ 0, %7 ]
  %15 = load ptr, ptr %12, align 8
  %16 = tail call i32 %15(ptr noundef nonnull %12, ptr noundef %1) #20
  %17 = getelementptr %struct.prog_entry, ptr %5, i32 %14, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = load i32, ptr %13, align 4
  br label %22

22:                                               ; preds = %20, %11
  %23 = phi i32 [ %21, %20 ], [ %14, %11 ]
  %24 = add i32 %23, 1
  %25 = getelementptr %struct.prog_entry, ptr %5, i32 %24
  %26 = getelementptr %struct.prog_entry, ptr %5, i32 %24, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %11

29:                                               ; preds = %22, %7
  %30 = phi ptr [ %5, %7 ], [ %25, %22 ]
  %31 = load i32, ptr %30, align 4
  br label %32

32:                                               ; preds = %29, %4, %2
  %33 = phi i32 [ %31, %29 ], [ 1, %2 ], [ 1, %4 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @print_event_filter(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.event_filter, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %8) #20
  br label %12

11:                                               ; preds = %6, %2
  tail call void @trace_seq_puts(ptr noundef %1, ptr noundef nonnull @.str.2) #20
  br label %12

12:                                               ; preds = %11, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @print_subsystem_event_filter(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 {
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #20
  %3 = getelementptr inbounds %struct.event_subsystem, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.event_filter, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %8) #20
  br label %12

11:                                               ; preds = %6, %2
  tail call void @trace_seq_puts(ptr noundef %1, ptr noundef nonnull @.str.3) #20
  br label %12

12:                                               ; preds = %11, %10
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_event_filter(ptr noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = load volatile ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %3
  %7 = getelementptr %struct.prog_entry, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %10, %6
  %11 = phi ptr [ %15, %10 ], [ %8, %6 ]
  %12 = phi i32 [ %13, %10 ], [ 0, %6 ]
  tail call void @kfree(ptr noundef nonnull %11) #20
  %13 = add i32 %12, 1
  %14 = getelementptr %struct.prog_entry, ptr %4, i32 %13, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %10

17:                                               ; preds = %10, %6
  tail call void @kfree(ptr noundef nonnull %4) #20
  br label %18

18:                                               ; preds = %17, %3
  %19 = getelementptr inbounds %struct.event_filter, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void @kfree(ptr noundef %20) #20
  tail call void @kfree(ptr noundef nonnull %0) #20
  br label %21

21:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @filter_assign_type(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = tail call ptr @strstr(ptr noundef %0, ptr noundef nonnull @.str.4)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @strstr(ptr noundef %0, ptr noundef nonnull @.str.5)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %26

7:                                                ; preds = %4, %1
  %8 = tail call ptr @strstr(ptr noundef %0, ptr noundef nonnull @.str.6)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @strstr(ptr noundef %0, ptr noundef nonnull @.str.5)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %10, %7
  %14 = tail call ptr @strchr(ptr noundef %0, i32 noundef 91)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @strstr(ptr noundef %0, ptr noundef nonnull @.str.5)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16, %13
  %20 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(7) @.str.7)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(13) @.str.8)
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 4, i32 0
  br label %26

26:                                               ; preds = %22, %19, %16, %10, %4
  %27 = phi i32 [ 2, %4 ], [ 3, %10 ], [ 1, %16 ], [ 4, %19 ], [ %25, %22 ]
  ret i32 %27
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @create_event_filter(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr nocapture noundef %4) local_unnamed_addr #3 {
  %6 = tail call fastcc i32 @create_filter(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @create_filter(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr nocapture noundef %4) unnamed_addr #3 {
  %6 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  store ptr null, ptr %6, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !9

9:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1842, i32 noundef 9, ptr noundef null) #20
  store ptr null, ptr %4, align 4
  br label %10

10:                                               ; preds = %9, %5
  %11 = call fastcc i32 @create_filter_start(ptr noundef %2, i1 noundef zeroext %3, ptr noundef nonnull %6, ptr noundef %4)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load ptr, ptr %4, align 4
  %15 = load ptr, ptr %6, align 4
  %16 = tail call fastcc i32 @process_preds(ptr noundef %1, ptr noundef %2, ptr noundef %14, ptr noundef %15)
  %17 = icmp ne i32 %16, 0
  %18 = and i1 %17, %3
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load ptr, ptr %4, align 4
  tail call fastcc void @append_filter_err(ptr noundef %0, ptr noundef %15, ptr noundef %20)
  br label %21

21:                                               ; preds = %19, %13
  tail call void @kfree(ptr noundef %15) #20
  br label %22

22:                                               ; preds = %21, %10
  %23 = phi i32 [ %16, %21 ], [ %11, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @apply_event_filter(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  store ptr null, ptr %3, align 4
  %6 = tail call ptr @strim(ptr noundef %1) #20
  %7 = tail call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(2) @.str.9)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, -9
  store i32 %12, ptr %10, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void @trace_buffered_event_disable() #20
  br label %15

15:                                               ; preds = %14, %9
  %16 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %78, label %19

19:                                               ; preds = %15
  store volatile ptr null, ptr %16, align 4
  tail call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #20
  tail call void @synchronize_rcu() #20
  %20 = load volatile ptr, ptr %17, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %73, label %22

22:                                               ; preds = %19
  %23 = getelementptr %struct.prog_entry, ptr %20, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %69, label %26

26:                                               ; preds = %26, %22
  %27 = phi ptr [ %31, %26 ], [ %24, %22 ]
  %28 = phi i32 [ %29, %26 ], [ 0, %22 ]
  tail call void @kfree(ptr noundef nonnull %27) #20
  %29 = add i32 %28, 1
  %30 = getelementptr %struct.prog_entry, ptr %20, i32 %29, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %69, label %26

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = call fastcc i32 @create_filter(ptr noundef %35, ptr noundef %5, ptr noundef %1, i1 noundef zeroext true, ptr noundef nonnull %3)
  %37 = load ptr, ptr %3, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %78, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq i32 %36, 0
  %43 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %44 = load i32, ptr %43, align 4
  br i1 %42, label %45, label %49

45:                                               ; preds = %39
  %46 = or i32 %44, 8
  store i32 %46, ptr %43, align 4
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  tail call void @trace_buffered_event_enable() #20
  br label %53

49:                                               ; preds = %39
  %50 = and i32 %44, -9
  store i32 %50, ptr %43, align 4
  %51 = icmp eq i32 %44, %50
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  tail call void @trace_buffered_event_disable() #20
  br label %53

53:                                               ; preds = %52, %49, %48, %45
  tail call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !10
  store volatile ptr %37, ptr %40, align 4
  %54 = icmp eq ptr %41, null
  br i1 %54, label %78, label %55

55:                                               ; preds = %53
  tail call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #20
  tail call void @synchronize_rcu() #20
  %56 = load volatile ptr, ptr %41, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %73, label %58

58:                                               ; preds = %55
  %59 = getelementptr %struct.prog_entry, ptr %56, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %69, label %62

62:                                               ; preds = %62, %58
  %63 = phi ptr [ %67, %62 ], [ %60, %58 ]
  %64 = phi i32 [ %65, %62 ], [ 0, %58 ]
  tail call void @kfree(ptr noundef nonnull %63) #20
  %65 = add i32 %64, 1
  %66 = getelementptr %struct.prog_entry, ptr %56, i32 %65, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %62

69:                                               ; preds = %62, %58, %26, %22
  %70 = phi ptr [ %20, %22 ], [ %56, %58 ], [ %20, %26 ], [ %56, %62 ]
  %71 = phi ptr [ %17, %22 ], [ %41, %58 ], [ %17, %26 ], [ %41, %62 ]
  %72 = phi i32 [ 0, %22 ], [ %36, %58 ], [ 0, %26 ], [ %36, %62 ]
  tail call void @kfree(ptr noundef nonnull %70) #20
  br label %73

73:                                               ; preds = %69, %55, %19
  %74 = phi ptr [ %17, %19 ], [ %41, %55 ], [ %71, %69 ]
  %75 = phi i32 [ 0, %19 ], [ %36, %55 ], [ %72, %69 ]
  %76 = getelementptr inbounds %struct.event_filter, ptr %74, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  tail call void @kfree(ptr noundef %77) #20
  tail call void @kfree(ptr noundef nonnull %74) #20
  br label %78

78:                                               ; preds = %73, %53, %33, %15
  %79 = phi i32 [ 0, %15 ], [ %36, %53 ], [ %36, %33 ], [ %75, %73 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @apply_subsystem_event_filter(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.list_head, align 8
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.trace_subsystem_dir, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.trace_subsystem_dir, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store ptr null, ptr %5, align 4
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #20
  %10 = getelementptr inbounds %struct.trace_subsystem_dir, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %304, label %13

13:                                               ; preds = %2
  %14 = tail call ptr @strim(ptr noundef %1) #20
  %15 = tail call i32 @strcmp(ptr noundef %14, ptr noundef nonnull dereferenceable(2) @.str.9)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %105

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.trace_array, ptr %9, i32 0, i32 25
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %42, label %21

21:                                               ; preds = %39, %17
  %22 = phi ptr [ %40, %39 ], [ %19, %17 ]
  %23 = getelementptr inbounds %struct.trace_event_file, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.trace_event_file, ptr %22, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, -9
  store i32 %29, ptr %27, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call void @trace_buffered_event_disable() #20
  br label %32

32:                                               ; preds = %31, %26
  %33 = getelementptr inbounds %struct.trace_event_file, ptr %22, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.event_filter, ptr %34, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  tail call void @kfree(ptr noundef %38) #20
  store ptr null, ptr %37, align 4
  br label %39

39:                                               ; preds = %36, %32, %21
  %40 = load ptr, ptr %22, align 4
  %41 = icmp eq ptr %40, %18
  br i1 %41, label %42, label %21

42:                                               ; preds = %39, %17
  %43 = getelementptr inbounds %struct.event_subsystem, ptr %7, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.event_filter, ptr %44, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  tail call void @kfree(ptr noundef %48) #20
  store ptr null, ptr %47, align 4
  %49 = load ptr, ptr %43, align 4
  br label %50

50:                                               ; preds = %46, %42
  %51 = phi ptr [ null, %42 ], [ %49, %46 ]
  store ptr null, ptr %43, align 4
  tail call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #20
  tail call void @synchronize_rcu() #20
  %52 = load ptr, ptr %18, align 4
  %53 = icmp eq ptr %52, %18
  br i1 %53, label %85, label %54

54:                                               ; preds = %82, %50
  %55 = phi ptr [ %83, %82 ], [ %52, %50 ]
  %56 = getelementptr inbounds %struct.trace_event_file, ptr %55, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %0
  br i1 %58, label %59, label %82

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.trace_event_file, ptr %55, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %81, label %63

63:                                               ; preds = %59
  %64 = load volatile ptr, ptr %61, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %78, label %66

66:                                               ; preds = %63
  %67 = getelementptr %struct.prog_entry, ptr %64, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %77, label %70

70:                                               ; preds = %70, %66
  %71 = phi ptr [ %75, %70 ], [ %68, %66 ]
  %72 = phi i32 [ %73, %70 ], [ 0, %66 ]
  tail call void @kfree(ptr noundef nonnull %71) #20
  %73 = add i32 %72, 1
  %74 = getelementptr %struct.prog_entry, ptr %64, i32 %73, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %70

77:                                               ; preds = %70, %66
  tail call void @kfree(ptr noundef nonnull %64) #20
  br label %78

78:                                               ; preds = %77, %63
  %79 = getelementptr inbounds %struct.event_filter, ptr %61, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  tail call void @kfree(ptr noundef %80) #20
  tail call void @kfree(ptr noundef nonnull %61) #20
  br label %81

81:                                               ; preds = %78, %59
  store ptr null, ptr %60, align 4
  br label %82

82:                                               ; preds = %81, %54
  %83 = load ptr, ptr %55, align 4
  %84 = icmp eq ptr %83, %18
  br i1 %84, label %85, label %54

85:                                               ; preds = %82, %50
  %86 = icmp eq ptr %51, null
  br i1 %86, label %304, label %87

87:                                               ; preds = %85
  %88 = load volatile ptr, ptr %51, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %102, label %90

90:                                               ; preds = %87
  %91 = getelementptr %struct.prog_entry, ptr %88, i32 0, i32 2
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %101, label %94

94:                                               ; preds = %94, %90
  %95 = phi ptr [ %99, %94 ], [ %92, %90 ]
  %96 = phi i32 [ %97, %94 ], [ 0, %90 ]
  tail call void @kfree(ptr noundef nonnull %95) #20
  %97 = add i32 %96, 1
  %98 = getelementptr %struct.prog_entry, ptr %88, i32 %97, i32 2
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %94

101:                                              ; preds = %94, %90
  tail call void @kfree(ptr noundef nonnull %88) #20
  br label %102

102:                                              ; preds = %101, %87
  %103 = getelementptr inbounds %struct.event_filter, ptr %51, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  tail call void @kfree(ptr noundef %104) #20
  tail call void @kfree(ptr noundef nonnull %51) #20
  br label %304

105:                                              ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store ptr null, ptr %4, align 4
  %106 = call fastcc i32 @create_filter_start(ptr noundef %1, i1 noundef zeroext true, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load ptr, ptr %4, align 4
  %110 = load ptr, ptr %5, align 4
  br label %276

111:                                              ; preds = %105
  %112 = load ptr, ptr %8, align 4
  %113 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  store ptr %3, ptr %3, align 8
  %114 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %114, align 4
  %115 = getelementptr inbounds %struct.trace_array, ptr %112, i32 0, i32 25
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, %115
  br i1 %117, label %212, label %118

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.filter_parse_error, ptr %113, i32 0, i32 1
  br label %120

120:                                              ; preds = %159, %118
  %121 = phi ptr [ %165, %159 ], [ %116, %118 ]
  %122 = phi i1 [ false, %159 ], [ true, %118 ]
  br label %123

123:                                              ; preds = %156, %120
  %124 = phi ptr [ %157, %156 ], [ %121, %120 ]
  %125 = getelementptr inbounds %struct.trace_event_file, ptr %124, i32 0, i32 5
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, %0
  br i1 %127, label %128, label %156

128:                                              ; preds = %123
  %129 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %130 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %129, i32 noundef 3520, i32 noundef 8) #21
  %131 = icmp eq ptr %130, null
  br i1 %131, label %232, label %132

132:                                              ; preds = %128
  %133 = call noalias ptr @kstrdup(ptr noundef %1, i32 noundef 3264) #20
  %134 = getelementptr inbounds %struct.event_filter, ptr %130, i32 0, i32 1
  store ptr %133, ptr %134, align 4
  %135 = icmp eq ptr %133, null
  br i1 %135, label %214, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.trace_event_file, ptr %124, i32 0, i32 1
  %138 = load ptr, ptr %137, align 4
  %139 = call fastcc i32 @process_preds(ptr noundef %138, ptr noundef %1, ptr noundef nonnull %130, ptr noundef %113) #20
  %140 = icmp eq i32 %139, 0
  %141 = getelementptr inbounds %struct.trace_event_file, ptr %124, i32 0, i32 7
  %142 = load i32, ptr %141, align 4
  br i1 %140, label %148, label %143

143:                                              ; preds = %136
  %144 = and i32 %142, -9
  store i32 %144, ptr %141, align 4
  %145 = icmp eq i32 %142, %144
  br i1 %145, label %147, label %146

146:                                              ; preds = %143
  call void @trace_buffered_event_disable() #20
  br label %147

147:                                              ; preds = %146, %143
  store i32 11, ptr %113, align 4
  store i32 0, ptr %119, align 4
  call fastcc void @append_filter_err(ptr noundef %112, ptr noundef %113, ptr noundef nonnull %130) #20
  br label %152

148:                                              ; preds = %136
  %149 = or i32 %142, 8
  store i32 %149, ptr %141, align 4
  %150 = icmp eq i32 %142, %149
  br i1 %150, label %152, label %151

151:                                              ; preds = %148
  call void @trace_buffered_event_enable() #20
  br label %152

152:                                              ; preds = %151, %148, %147
  %153 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %154 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %153, i32 noundef 3520, i32 noundef 12) #21
  %155 = icmp eq ptr %154, null
  br i1 %155, label %214, label %159

156:                                              ; preds = %123
  %157 = load ptr, ptr %124, align 4
  %158 = icmp eq ptr %157, %115
  br i1 %158, label %167, label %123

159:                                              ; preds = %152
  %160 = load ptr, ptr %114, align 4
  store ptr %154, ptr %114, align 4
  store ptr %3, ptr %154, align 8
  %161 = getelementptr inbounds %struct.list_head, ptr %154, i32 0, i32 1
  store ptr %160, ptr %161, align 4
  store volatile ptr %154, ptr %160, align 4
  %162 = getelementptr inbounds %struct.trace_event_file, ptr %124, i32 0, i32 2
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.filter_list, ptr %154, i32 0, i32 1
  store ptr %163, ptr %164, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !10
  store volatile ptr %130, ptr %162, align 4
  %165 = load ptr, ptr %124, align 4
  %166 = icmp eq ptr %165, %115
  br i1 %166, label %168, label %120

167:                                              ; preds = %156
  br i1 %122, label %202, label %168

168:                                              ; preds = %167, %159
  call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #20
  call void @synchronize_rcu() #20
  %169 = load ptr, ptr %3, align 8
  %170 = icmp eq ptr %169, %3
  br i1 %170, label %268, label %171

171:                                              ; preds = %196, %168
  %172 = phi ptr [ %173, %196 ], [ %169, %168 ]
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr inbounds %struct.filter_list, ptr %172, i32 0, i32 1
  %175 = load ptr, ptr %174, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %196, label %177

177:                                              ; preds = %171
  %178 = load volatile ptr, ptr %175, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %192, label %180

180:                                              ; preds = %177
  %181 = getelementptr %struct.prog_entry, ptr %178, i32 0, i32 2
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %191, label %184

184:                                              ; preds = %184, %180
  %185 = phi ptr [ %189, %184 ], [ %182, %180 ]
  %186 = phi i32 [ %187, %184 ], [ 0, %180 ]
  call void @kfree(ptr noundef nonnull %185) #20
  %187 = add i32 %186, 1
  %188 = getelementptr %struct.prog_entry, ptr %178, i32 %187, i32 2
  %189 = load ptr, ptr %188, align 4
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %184

191:                                              ; preds = %184, %180
  call void @kfree(ptr noundef nonnull %178) #20
  br label %192

192:                                              ; preds = %191, %177
  %193 = getelementptr inbounds %struct.event_filter, ptr %175, i32 0, i32 1
  %194 = load ptr, ptr %193, align 4
  call void @kfree(ptr noundef %194) #20
  call void @kfree(ptr noundef nonnull %175) #20
  %195 = load ptr, ptr %172, align 4
  br label %196

196:                                              ; preds = %192, %171
  %197 = phi ptr [ %173, %171 ], [ %195, %192 ]
  %198 = getelementptr inbounds %struct.list_head, ptr %172, i32 0, i32 1
  %199 = load ptr, ptr %198, align 4
  %200 = getelementptr inbounds %struct.list_head, ptr %197, i32 0, i32 1
  store ptr %199, ptr %200, align 4
  store volatile ptr %197, ptr %199, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %172, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %198, align 4
  call void @kfree(ptr noundef %172) #20
  %201 = icmp eq ptr %173, %3
  br i1 %201, label %268, label %171

202:                                              ; preds = %167
  %203 = load ptr, ptr %3, align 8
  %204 = icmp eq ptr %203, %3
  br i1 %204, label %212, label %205

205:                                              ; preds = %205, %202
  %206 = phi ptr [ %207, %205 ], [ %203, %202 ]
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr inbounds %struct.list_head, ptr %206, i32 0, i32 1
  %209 = load ptr, ptr %208, align 4
  %210 = getelementptr inbounds %struct.list_head, ptr %207, i32 0, i32 1
  store ptr %209, ptr %210, align 4
  store volatile ptr %207, ptr %209, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %206, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %208, align 4
  call void @kfree(ptr noundef %206) #20
  %211 = icmp eq ptr %207, %3
  br i1 %211, label %212, label %205

212:                                              ; preds = %205, %202, %111
  store i32 11, ptr %113, align 4
  %213 = getelementptr inbounds %struct.filter_parse_error, ptr %113, i32 0, i32 1
  store i32 0, ptr %213, align 4
  br label %272

214:                                              ; preds = %152, %132
  %215 = getelementptr inbounds %struct.event_filter, ptr %130, i32 0, i32 1
  %216 = load volatile ptr, ptr %130, align 8
  %217 = icmp eq ptr %216, null
  br i1 %217, label %230, label %218

218:                                              ; preds = %214
  %219 = getelementptr %struct.prog_entry, ptr %216, i32 0, i32 2
  %220 = load ptr, ptr %219, align 4
  %221 = icmp eq ptr %220, null
  br i1 %221, label %229, label %222

222:                                              ; preds = %222, %218
  %223 = phi ptr [ %227, %222 ], [ %220, %218 ]
  %224 = phi i32 [ %225, %222 ], [ 0, %218 ]
  call void @kfree(ptr noundef nonnull %223) #20
  %225 = add i32 %224, 1
  %226 = getelementptr %struct.prog_entry, ptr %216, i32 %225, i32 2
  %227 = load ptr, ptr %226, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %222

229:                                              ; preds = %222, %218
  call void @kfree(ptr noundef nonnull %216) #20
  br label %230

230:                                              ; preds = %229, %214
  %231 = load ptr, ptr %215, align 4
  call void @kfree(ptr noundef %231) #20
  call void @kfree(ptr noundef nonnull %130) #20
  br label %232

232:                                              ; preds = %230, %128
  br i1 %122, label %234, label %233

233:                                              ; preds = %232
  call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #20
  call void @synchronize_rcu() #20
  br label %234

234:                                              ; preds = %233, %232
  %235 = load ptr, ptr %3, align 8
  %236 = icmp eq ptr %235, %3
  br i1 %236, label %272, label %237

237:                                              ; preds = %262, %234
  %238 = phi ptr [ %239, %262 ], [ %235, %234 ]
  %239 = load ptr, ptr %238, align 4
  %240 = getelementptr inbounds %struct.filter_list, ptr %238, i32 0, i32 1
  %241 = load ptr, ptr %240, align 4
  %242 = icmp eq ptr %241, null
  br i1 %242, label %262, label %243

243:                                              ; preds = %237
  %244 = load volatile ptr, ptr %241, align 4
  %245 = icmp eq ptr %244, null
  br i1 %245, label %258, label %246

246:                                              ; preds = %243
  %247 = getelementptr %struct.prog_entry, ptr %244, i32 0, i32 2
  %248 = load ptr, ptr %247, align 4
  %249 = icmp eq ptr %248, null
  br i1 %249, label %257, label %250

250:                                              ; preds = %250, %246
  %251 = phi ptr [ %255, %250 ], [ %248, %246 ]
  %252 = phi i32 [ %253, %250 ], [ 0, %246 ]
  call void @kfree(ptr noundef nonnull %251) #20
  %253 = add i32 %252, 1
  %254 = getelementptr %struct.prog_entry, ptr %244, i32 %253, i32 2
  %255 = load ptr, ptr %254, align 4
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %250

257:                                              ; preds = %250, %246
  call void @kfree(ptr noundef nonnull %244) #20
  br label %258

258:                                              ; preds = %257, %243
  %259 = getelementptr inbounds %struct.event_filter, ptr %241, i32 0, i32 1
  %260 = load ptr, ptr %259, align 4
  call void @kfree(ptr noundef %260) #20
  call void @kfree(ptr noundef nonnull %241) #20
  %261 = load ptr, ptr %238, align 4
  br label %262

262:                                              ; preds = %258, %237
  %263 = phi ptr [ %239, %237 ], [ %261, %258 ]
  %264 = getelementptr inbounds %struct.list_head, ptr %238, i32 0, i32 1
  %265 = load ptr, ptr %264, align 4
  %266 = getelementptr inbounds %struct.list_head, ptr %263, i32 0, i32 1
  store ptr %265, ptr %266, align 4
  store volatile ptr %263, ptr %265, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %238, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %264, align 4
  call void @kfree(ptr noundef %238) #20
  %267 = icmp eq ptr %239, %3
  br i1 %267, label %272, label %237

268:                                              ; preds = %196, %168
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  %269 = load ptr, ptr %5, align 4
  %270 = getelementptr inbounds %struct.event_filter, ptr %269, i32 0, i32 1
  %271 = load ptr, ptr %270, align 4
  call void @kfree(ptr noundef %271) #20
  store ptr null, ptr %270, align 4
  br label %276

272:                                              ; preds = %262, %234, %212
  %273 = phi i32 [ -12, %234 ], [ -22, %212 ], [ -12, %262 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  %274 = load ptr, ptr %8, align 4
  %275 = load ptr, ptr %5, align 4
  call fastcc void @append_filter_err(ptr noundef %274, ptr noundef %113, ptr noundef %275) #20
  br label %276

276:                                              ; preds = %272, %268, %108
  %277 = phi ptr [ %110, %108 ], [ %269, %268 ], [ %275, %272 ]
  %278 = phi ptr [ %109, %108 ], [ %113, %268 ], [ %113, %272 ]
  %279 = phi i32 [ %106, %108 ], [ 0, %268 ], [ %273, %272 ]
  call void @kfree(ptr noundef %278) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  %280 = icmp eq ptr %277, null
  br i1 %280, label %304, label %281

281:                                              ; preds = %276
  %282 = getelementptr inbounds %struct.event_subsystem, ptr %7, i32 0, i32 2
  %283 = load ptr, ptr %282, align 4
  %284 = icmp eq ptr %283, null
  br i1 %284, label %303, label %285

285:                                              ; preds = %281
  %286 = load volatile ptr, ptr %283, align 4
  %287 = icmp eq ptr %286, null
  br i1 %287, label %300, label %288

288:                                              ; preds = %285
  %289 = getelementptr %struct.prog_entry, ptr %286, i32 0, i32 2
  %290 = load ptr, ptr %289, align 4
  %291 = icmp eq ptr %290, null
  br i1 %291, label %299, label %292

292:                                              ; preds = %292, %288
  %293 = phi ptr [ %297, %292 ], [ %290, %288 ]
  %294 = phi i32 [ %295, %292 ], [ 0, %288 ]
  call void @kfree(ptr noundef nonnull %293) #20
  %295 = add i32 %294, 1
  %296 = getelementptr %struct.prog_entry, ptr %286, i32 %295, i32 2
  %297 = load ptr, ptr %296, align 4
  %298 = icmp eq ptr %297, null
  br i1 %298, label %299, label %292

299:                                              ; preds = %292, %288
  call void @kfree(ptr noundef nonnull %286) #20
  br label %300

300:                                              ; preds = %299, %285
  %301 = getelementptr inbounds %struct.event_filter, ptr %283, i32 0, i32 1
  %302 = load ptr, ptr %301, align 4
  call void @kfree(ptr noundef %302) #20
  call void @kfree(ptr noundef nonnull %283) #20
  br label %303

303:                                              ; preds = %300, %281
  store ptr %277, ptr %282, align 4
  br label %304

304:                                              ; preds = %303, %276, %102, %85, %2
  %305 = phi i32 [ %279, %303 ], [ %279, %276 ], [ -19, %2 ], [ 0, %85 ], [ 0, %102 ]
  call void @mutex_unlock(ptr noundef nonnull @event_mutex) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret i32 %305
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ftrace_profile_free_filter(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 63
  %3 = load ptr, ptr %2, align 8
  store ptr null, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = load volatile ptr, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %5
  %9 = getelementptr %struct.prog_entry, ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %12, %8
  %13 = phi ptr [ %17, %12 ], [ %10, %8 ]
  %14 = phi i32 [ %15, %12 ], [ 0, %8 ]
  tail call void @kfree(ptr noundef nonnull %13) #20
  %15 = add i32 %14, 1
  %16 = getelementptr %struct.prog_entry, ptr %6, i32 %15, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %12

19:                                               ; preds = %12, %8
  tail call void @kfree(ptr noundef nonnull %6) #20
  br label %20

20:                                               ; preds = %19, %5
  %21 = getelementptr inbounds %struct.event_filter, ptr %3, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %22) #20
  tail call void @kfree(ptr noundef nonnull %3) #20
  br label %23

23:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ftrace_profile_set_filter(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  store ptr null, ptr %5, align 4
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #20
  %6 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 62
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %49, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.perf_event, ptr %0, i32 0, i32 63
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %49

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #20
  store ptr null, ptr %4, align 4
  %14 = call fastcc i32 @create_filter_start(ptr noundef %2, i1 noundef zeroext false, ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  %17 = load ptr, ptr %5, align 4
  br label %27

18:                                               ; preds = %13
  %19 = load ptr, ptr %5, align 4
  %20 = load ptr, ptr %4, align 4
  %21 = tail call fastcc i32 @process_preds(ptr noundef nonnull %7, ptr noundef %2, ptr noundef %19, ptr noundef %20) #20
  tail call void @kfree(ptr noundef %20) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = tail call zeroext i1 @ftrace_event_is_function(ptr noundef nonnull %7) #20
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  store ptr %19, ptr %10, align 8
  %26 = tail call zeroext i1 @ftrace_event_is_function(ptr noundef nonnull %7) #20
  br i1 %26, label %27, label %49

27:                                               ; preds = %25, %23, %18, %16
  %28 = phi ptr [ %19, %25 ], [ %19, %23 ], [ %17, %16 ], [ %19, %18 ]
  %29 = phi i32 [ 0, %25 ], [ -19, %23 ], [ %14, %16 ], [ %21, %18 ]
  %30 = icmp eq ptr %28, null
  br i1 %30, label %49, label %31

31:                                               ; preds = %27
  %32 = load volatile ptr, ptr %28, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %46, label %34

34:                                               ; preds = %31
  %35 = getelementptr %struct.prog_entry, ptr %32, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %38, %34
  %39 = phi ptr [ %43, %38 ], [ %36, %34 ]
  %40 = phi i32 [ %41, %38 ], [ 0, %34 ]
  tail call void @kfree(ptr noundef nonnull %39) #20
  %41 = add i32 %40, 1
  %42 = getelementptr %struct.prog_entry, ptr %32, i32 %41, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %38

45:                                               ; preds = %38, %34
  tail call void @kfree(ptr noundef nonnull %32) #20
  br label %46

46:                                               ; preds = %45, %31
  %47 = getelementptr inbounds %struct.event_filter, ptr %28, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  tail call void @kfree(ptr noundef %48) #20
  tail call void @kfree(ptr noundef nonnull %28) #20
  br label %49

49:                                               ; preds = %46, %27, %25, %9, %3
  %50 = phi i32 [ -17, %9 ], [ 0, %25 ], [ -22, %3 ], [ %29, %27 ], [ %29, %46 ]
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ftrace_event_is_function(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @create_filter_start(ptr noundef %0, i1 noundef zeroext %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #3 {
  %5 = load ptr, ptr %2, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load ptr, ptr %3, align 4
  %9 = icmp ne ptr %8, null
  br label %10

10:                                               ; preds = %7, %4
  %11 = phi i1 [ true, %4 ], [ %9, %7 ]
  %12 = load i1, ptr @create_filter_start.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !11

15:                                               ; preds = %10
  store i1 true, ptr @create_filter_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1785, i32 noundef 9, ptr noundef null) #20
  br label %16

16:                                               ; preds = %15, %10
  br i1 %11, label %54, label %17

17:                                               ; preds = %16
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 8) #21
  %20 = icmp eq ptr %19, null
  %21 = xor i1 %1, true
  %22 = or i1 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = tail call noalias ptr @kstrdup(ptr noundef %0, i32 noundef 3264) #20
  %25 = getelementptr inbounds %struct.event_filter, ptr %19, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  %26 = icmp eq ptr %24, null
  br label %27

27:                                               ; preds = %23, %17
  %28 = phi i1 [ false, %17 ], [ %26, %23 ]
  %29 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %30 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 8) #21
  %31 = icmp eq ptr %30, null
  %32 = select i1 %20, i1 true, i1 %31
  %33 = or i1 %28, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %27
  tail call void @kfree(ptr noundef %30) #20
  br i1 %20, label %54, label %35

35:                                               ; preds = %34
  %36 = load volatile ptr, ptr %19, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %35
  %39 = getelementptr %struct.prog_entry, ptr %36, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %42, %38
  %43 = phi ptr [ %47, %42 ], [ %40, %38 ]
  %44 = phi i32 [ %45, %42 ], [ 0, %38 ]
  tail call void @kfree(ptr noundef nonnull %43) #20
  %45 = add i32 %44, 1
  %46 = getelementptr %struct.prog_entry, ptr %36, i32 %45, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %42

49:                                               ; preds = %42, %38
  tail call void @kfree(ptr noundef nonnull %36) #20
  br label %50

50:                                               ; preds = %49, %35
  %51 = getelementptr inbounds %struct.event_filter, ptr %19, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  tail call void @kfree(ptr noundef %52) #20
  tail call void @kfree(ptr noundef nonnull %19) #20
  br label %54

53:                                               ; preds = %27
  store ptr %19, ptr %3, align 4
  store ptr %30, ptr %2, align 4
  br label %54

54:                                               ; preds = %53, %50, %34, %16
  %55 = phi i32 [ 0, %53 ], [ -22, %16 ], [ -12, %34 ], [ -12, %50 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @process_preds(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly %3) unnamed_addr #3 {
  %5 = alloca [24 x i8], align 1
  %6 = alloca i64, align 8
  %7 = load i8, ptr %1, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %682, label %9

9:                                                ; preds = %48, %4
  %10 = phi i8 [ %57, %48 ], [ %7, %4 ]
  %11 = phi i32 [ %55, %48 ], [ 0, %4 ]
  %12 = phi i32 [ %54, %48 ], [ 0, %4 ]
  %13 = phi i32 [ %53, %48 ], [ 1, %4 ]
  %14 = phi i32 [ %52, %48 ], [ 0, %4 ]
  %15 = phi i32 [ %51, %48 ], [ 1, %4 ]
  %16 = phi i32 [ %50, %48 ], [ 0, %4 ]
  %17 = phi i1 [ %49, %48 ], [ false, %4 ]
  %18 = zext i8 %10 to i32
  %19 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %18
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, 32
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %9
  %24 = icmp eq i32 %12, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %23
  %26 = icmp eq i32 %12, %18
  %27 = select i1 %26, i32 0, i32 %12
  br label %48

28:                                               ; preds = %23
  switch i8 %10, label %42 [
    i8 39, label %29
    i8 34, label %29
    i8 124, label %30
    i8 38, label %30
    i8 40, label %35
    i8 41, label %38
  ]

29:                                               ; preds = %28, %28
  br label %42

30:                                               ; preds = %28, %28
  %31 = add i32 %11, 1
  %32 = getelementptr i8, ptr %1, i32 %31
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, %10
  br i1 %34, label %48, label %42

35:                                               ; preds = %28
  %36 = add i32 %15, 1
  %37 = tail call i32 @llvm.smax.i32(i32 %36, i32 %13) #20
  br label %48

38:                                               ; preds = %28
  %39 = icmp eq i32 %15, 1
  br i1 %39, label %95, label %40

40:                                               ; preds = %38
  %41 = add i32 %15, -1
  br label %48

42:                                               ; preds = %30, %29, %28
  %43 = phi i32 [ %14, %28 ], [ %14, %30 ], [ %11, %29 ]
  %44 = phi i32 [ 0, %28 ], [ 0, %30 ], [ %18, %29 ]
  %45 = xor i1 %17, true
  %46 = zext i1 %45 to i32
  %47 = add i32 %16, %46
  br label %48

48:                                               ; preds = %42, %40, %35, %30, %25, %9
  %49 = phi i1 [ %17, %9 ], [ %17, %25 ], [ false, %40 ], [ false, %30 ], [ false, %35 ], [ true, %42 ]
  %50 = phi i32 [ %16, %9 ], [ %16, %25 ], [ %16, %40 ], [ %16, %30 ], [ %16, %35 ], [ %47, %42 ]
  %51 = phi i32 [ %15, %9 ], [ %15, %25 ], [ %41, %40 ], [ %15, %30 ], [ %36, %35 ], [ %15, %42 ]
  %52 = phi i32 [ %14, %9 ], [ %14, %25 ], [ %14, %40 ], [ %14, %30 ], [ %14, %35 ], [ %43, %42 ]
  %53 = phi i32 [ %13, %9 ], [ %13, %25 ], [ %13, %40 ], [ %13, %30 ], [ %37, %35 ], [ %13, %42 ]
  %54 = phi i32 [ %12, %9 ], [ %27, %25 ], [ 0, %40 ], [ 0, %30 ], [ 0, %35 ], [ %44, %42 ]
  %55 = add i32 %11, 1
  %56 = getelementptr i8, ptr %1, i32 %55
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %9

59:                                               ; preds = %48
  %60 = icmp eq i32 %54, 0
  br i1 %60, label %61, label %90

61:                                               ; preds = %59
  %62 = icmp eq i32 %51, 1
  br i1 %62, label %97, label %63

63:                                               ; preds = %61
  %64 = icmp eq i32 %11, 0
  br i1 %64, label %92, label %65

65:                                               ; preds = %85, %63
  %66 = phi i32 [ %88, %85 ], [ %11, %63 ]
  %67 = phi i32 [ %87, %85 ], [ %51, %63 ]
  %68 = phi i32 [ %86, %85 ], [ 0, %63 ]
  %69 = icmp eq i32 %68, 0
  %70 = getelementptr i8, ptr %1, i32 %66
  %71 = load i8, ptr %70, align 1
  br i1 %69, label %76, label %72

72:                                               ; preds = %65
  %73 = zext i8 %71 to i32
  %74 = icmp eq i32 %68, %73
  %75 = select i1 %74, i32 0, i32 %68
  br label %85

76:                                               ; preds = %65
  switch i8 %71, label %85 [
    i8 40, label %77
    i8 41, label %81
    i8 39, label %83
    i8 34, label %83
  ]

77:                                               ; preds = %76
  %78 = icmp eq i32 %67, %51
  br i1 %78, label %92, label %79

79:                                               ; preds = %77
  %80 = add i32 %67, -1
  br label %85

81:                                               ; preds = %76
  %82 = add i32 %67, 1
  br label %85

83:                                               ; preds = %76, %76
  %84 = zext i8 %71 to i32
  br label %85

85:                                               ; preds = %83, %81, %79, %76, %72
  %86 = phi i32 [ %75, %72 ], [ 0, %76 ], [ %84, %83 ], [ 0, %81 ], [ 0, %79 ]
  %87 = phi i32 [ %67, %72 ], [ %67, %76 ], [ %67, %83 ], [ %82, %81 ], [ %80, %79 ]
  %88 = add i32 %66, -1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %65

90:                                               ; preds = %59
  store i32 4, ptr %3, align 4
  %91 = getelementptr inbounds %struct.filter_parse_error, ptr %3, i32 0, i32 1
  store i32 %52, ptr %91, align 4
  br label %682

92:                                               ; preds = %85, %77, %63
  %93 = phi i32 [ 0, %63 ], [ %66, %77 ], [ 0, %85 ]
  store i32 2, ptr %3, align 4
  %94 = getelementptr inbounds %struct.filter_parse_error, ptr %3, i32 0, i32 1
  store i32 %93, ptr %94, align 4
  br label %682

95:                                               ; preds = %38
  store i32 3, ptr %3, align 4
  %96 = getelementptr inbounds %struct.filter_parse_error, ptr %3, i32 0, i32 1
  store i32 %11, ptr %96, align 4
  br label %682

97:                                               ; preds = %61
  %98 = icmp eq i32 %50, 0
  br i1 %98, label %682, label %99

99:                                               ; preds = %97
  %100 = add i32 %50, 2
  %101 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %53, i32 4) #20
  %102 = extractvalue { i32, i1 } %101, 1
  br i1 %102, label %678, label %103, !prof !11

103:                                              ; preds = %99
  %104 = extractvalue { i32, i1 } %101, 0
  %105 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %104, i32 noundef 3264) #22
  %106 = icmp eq ptr %105, null
  br i1 %106, label %678, label %107

107:                                              ; preds = %103
  %108 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %100, i32 12) #20
  %109 = extractvalue { i32, i1 } %108, 1
  br i1 %109, label %114, label %110, !prof !11

110:                                              ; preds = %107
  %111 = extractvalue { i32, i1 } %108, 0
  %112 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %111, i32 noundef 3520) #22
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %110, %107
  store i32 -12, ptr %3, align 4
  %115 = getelementptr inbounds %struct.filter_parse_error, ptr %3, i32 0, i32 1
  store i32 0, ptr %115, align 4
  br label %656

116:                                              ; preds = %110
  %117 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %100, i32 noundef 3264) #22
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  store i32 -12, ptr %3, align 4
  %120 = getelementptr inbounds %struct.filter_parse_error, ptr %3, i32 0, i32 1
  store i32 0, ptr %120, align 4
  br label %656

121:                                              ; preds = %116
  store i32 0, ptr %105, align 64
  %122 = load i8, ptr %1, align 1
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %604, label %124

124:                                              ; preds = %121
  %125 = ptrtoint ptr %105 to i32
  br label %126

126:                                              ; preds = %583, %124
  %127 = phi i8 [ %122, %124 ], [ %584, %583 ]
  %128 = phi i32 [ 0, %124 ], [ %589, %583 ]
  %129 = phi i32 [ -12, %124 ], [ %588, %583 ]
  %130 = phi i32 [ 0, %124 ], [ %587, %583 ]
  %131 = phi ptr [ %105, %124 ], [ %586, %583 ]
  %132 = phi ptr [ %1, %124 ], [ %585, %583 ]
  %133 = getelementptr i8, ptr %132, i32 1
  %134 = zext i8 %127 to i32
  %135 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %134
  %136 = load i8, ptr %135, align 1
  %137 = and i8 %136, 32
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %576

139:                                              ; preds = %126
  switch i8 %127, label %152 [
    i8 40, label %140
    i8 33, label %147
  ]

140:                                              ; preds = %139
  %141 = ptrtoint ptr %131 to i32
  %142 = sub i32 %141, %125
  %143 = ashr exact i32 %142, 2
  %144 = icmp sgt i32 %143, %53
  br i1 %144, label %656, label %145

145:                                              ; preds = %140
  %146 = getelementptr i32, ptr %131, i32 1
  store i32 %130, ptr %146, align 4
  br label %576

147:                                              ; preds = %139
  %148 = load i8, ptr %133, align 1
  switch i8 %148, label %149 [
    i8 126, label %152
    i8 61, label %152
  ]

149:                                              ; preds = %147
  %150 = icmp eq i32 %130, 0
  %151 = zext i1 %150 to i32
  br label %583

152:                                              ; preds = %147, %147, %139
  %153 = icmp slt i32 %128, %100
  br i1 %153, label %159, label %154

154:                                              ; preds = %152
  %155 = ptrtoint ptr %132 to i32
  %156 = ptrtoint ptr %1 to i32
  %157 = sub i32 %155, %156
  store i32 12, ptr %3, align 4
  %158 = getelementptr inbounds %struct.filter_parse_error, ptr %3, i32 0, i32 1
  store i32 %157, ptr %158, align 4
  br label %656

159:                                              ; preds = %152
  %160 = trunc i32 %130 to i8
  %161 = getelementptr i8, ptr %117, i32 %128
  store i8 %160, ptr %161, align 1
  %162 = add i32 %128, -1
  %163 = getelementptr %struct.prog_entry, ptr %112, i32 %128
  store i32 %162, ptr %163, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(24) %5, i8 0, i32 24, i1 false) #20, !annotation !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  store i64 0, ptr %6, align 8, !annotation !12
  br label %164

164:                                              ; preds = %164, %159
  %165 = phi i32 [ 0, %159 ], [ %173, %164 ]
  %166 = getelementptr i8, ptr %132, i32 %165
  %167 = load i8, ptr %166, align 1
  %168 = zext i8 %167 to i32
  %169 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %168
  %170 = load i8, ptr %169, align 1
  %171 = and i8 %170, 32
  %172 = icmp eq i8 %171, 0
  %173 = add i32 %165, 1
  br i1 %172, label %174, label %164

174:                                              ; preds = %164
  %175 = getelementptr i8, ptr %132, i32 %165
  %176 = getelementptr %struct.prog_entry, ptr %112, i32 %128, i32 2
  %177 = and i8 %170, 7
  %178 = icmp ne i8 %177, 0
  %179 = icmp eq i8 %167, 95
  %180 = select i1 %178, i1 true, i1 %179
  br i1 %180, label %181, label %497

181:                                              ; preds = %181, %174
  %182 = phi i32 [ %183, %181 ], [ %165, %174 ]
  %183 = add i32 %182, 1
  %184 = getelementptr i8, ptr %132, i32 %183
  %185 = load i8, ptr %184, align 1
  %186 = zext i8 %185 to i32
  %187 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %186
  %188 = load i8, ptr %187, align 1
  %189 = and i8 %188, 7
  %190 = icmp ne i8 %189, 0
  %191 = icmp eq i8 %185, 95
  %192 = select i1 %190, i1 true, i1 %191
  br i1 %192, label %181, label %193

193:                                              ; preds = %181
  %194 = getelementptr i8, ptr %132, i32 %183
  %195 = icmp eq i32 %183, %165
  br i1 %195, label %497, label %196

196:                                              ; preds = %193
  %197 = sub i32 %183, %165
  %198 = call ptr @kmemdup_nul(ptr noundef %175, i32 noundef %197, i32 noundef 3264) #20
  %199 = icmp eq ptr %198, null
  br i1 %199, label %497, label %200

200:                                              ; preds = %196
  %201 = call ptr @trace_find_event_field(ptr noundef %0, ptr noundef nonnull %198) #20
  call void @kfree(ptr noundef nonnull %198) #20
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %209

203:                                              ; preds = %200
  %204 = ptrtoint ptr %133 to i32
  %205 = ptrtoint ptr %1 to i32
  %206 = sub i32 %204, %205
  %207 = add i32 %206, %183
  store i32 9, ptr %3, align 4
  %208 = getelementptr inbounds %struct.filter_parse_error, ptr %3, i32 0, i32 1
  store i32 %207, ptr %208, align 4
  br label %497

209:                                              ; preds = %200
  %210 = call i32 @strncmp(ptr noundef %194, ptr noundef nonnull dereferenceable(9) @.str.11, i32 noundef 8) #20
  %211 = icmp eq i32 %210, 0
  %212 = select i1 %211, i32 8, i32 0
  %213 = add i32 %212, %183
  br label %214

214:                                              ; preds = %214, %209
  %215 = phi i32 [ %213, %209 ], [ %223, %214 ]
  %216 = getelementptr i8, ptr %132, i32 %215
  %217 = load i8, ptr %216, align 1
  %218 = zext i8 %217 to i32
  %219 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %218
  %220 = load i8, ptr %219, align 1
  %221 = and i8 %220, 32
  %222 = icmp eq i8 %221, 0
  %223 = add i32 %215, 1
  br i1 %222, label %224, label %214

224:                                              ; preds = %214
  %225 = getelementptr i8, ptr %132, i32 %215
  %226 = icmp eq i8 %217, 126
  br i1 %226, label %243, label %227

227:                                              ; preds = %224
  %228 = call i32 @strncmp(ptr noundef %225, ptr noundef nonnull dereferenceable(3) @.str.14, i32 noundef 2) #20
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %243, label %230

230:                                              ; preds = %227
  %231 = call i32 @strncmp(ptr noundef %225, ptr noundef nonnull dereferenceable(3) @.str.15, i32 noundef 2) #20
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %243, label %233

233:                                              ; preds = %230
  %234 = call i32 @strncmp(ptr noundef %225, ptr noundef nonnull dereferenceable(3) @.str.16, i32 noundef 2) #20
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %243, label %236

236:                                              ; preds = %233
  %237 = icmp eq i8 %217, 60
  br i1 %237, label %243, label %238

238:                                              ; preds = %236
  %239 = call i32 @strncmp(ptr noundef %225, ptr noundef nonnull dereferenceable(3) @.str.18, i32 noundef 2) #20
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %243, label %241

241:                                              ; preds = %238
  switch i8 %217, label %487 [
    i8 62, label %243
    i8 38, label %242
  ]

242:                                              ; preds = %241
  br label %243

243:                                              ; preds = %242, %241, %238, %236, %233, %230, %227, %224
  %244 = phi ptr [ @ops, %224 ], [ getelementptr inbounds ([9 x ptr], ptr @ops, i32 0, i32 1), %227 ], [ getelementptr inbounds ([9 x ptr], ptr @ops, i32 0, i32 2), %230 ], [ getelementptr inbounds ([9 x ptr], ptr @ops, i32 0, i32 3), %233 ], [ getelementptr inbounds ([9 x ptr], ptr @ops, i32 0, i32 4), %236 ], [ getelementptr inbounds ([9 x ptr], ptr @ops, i32 0, i32 5), %238 ], [ getelementptr inbounds ([9 x ptr], ptr @ops, i32 0, i32 6), %241 ], [ getelementptr inbounds ([9 x ptr], ptr @ops, i32 0, i32 7), %242 ]
  %245 = phi i32 [ 0, %224 ], [ 1, %227 ], [ 2, %230 ], [ 3, %233 ], [ 4, %236 ], [ 5, %238 ], [ 6, %241 ], [ 7, %242 ]
  %246 = load ptr, ptr %244, align 4
  %247 = call i32 @strlen(ptr noundef %246) #20
  %248 = add i32 %247, %215
  br label %249

249:                                              ; preds = %249, %243
  %250 = phi i32 [ %248, %243 ], [ %258, %249 ]
  %251 = getelementptr i8, ptr %132, i32 %250
  %252 = load i8, ptr %251, align 1
  %253 = zext i8 %252 to i32
  %254 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %253
  %255 = load i8, ptr %254, align 1
  %256 = and i8 %255, 32
  %257 = icmp eq i8 %256, 0
  %258 = add i32 %250, 1
  br i1 %257, label %259, label %249

259:                                              ; preds = %249
  %260 = getelementptr i8, ptr %132, i32 %250
  %261 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %262 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %261, i32 noundef 3520, i32 noundef 304) #21
  %263 = icmp eq ptr %262, null
  br i1 %263, label %497, label %264

264:                                              ; preds = %259
  %265 = getelementptr inbounds %struct.filter_pred, ptr %262, i32 0, i32 4
  store ptr %201, ptr %265, align 8
  %266 = getelementptr inbounds %struct.ftrace_event_field, ptr %201, i32 0, i32 4
  %267 = load i32, ptr %266, align 4
  %268 = getelementptr inbounds %struct.filter_pred, ptr %262, i32 0, i32 5
  store i32 %267, ptr %268, align 4
  %269 = getelementptr inbounds %struct.filter_pred, ptr %262, i32 0, i32 7
  store i32 %245, ptr %269, align 4
  %270 = call zeroext i1 @ftrace_event_is_function(ptr noundef %0) #20
  br i1 %270, label %271, label %312

271:                                              ; preds = %264
  %272 = getelementptr inbounds %struct.ftrace_event_field, ptr %201, i32 0, i32 1
  %273 = load ptr, ptr %272, align 4
  %274 = call i32 @strcmp(ptr noundef %273, ptr noundef nonnull dereferenceable(3) @.str.12) #20
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %487

276:                                              ; preds = %271
  store ptr @filter_pred_none, ptr %262, align 8
  %277 = load i8, ptr %260, align 1
  %278 = icmp eq i8 %277, 34
  %279 = select i1 %278, i8 34, i8 0
  %280 = icmp eq i8 %277, 39
  %281 = select i1 %280, i8 39, i8 %279
  %282 = getelementptr i8, ptr %132, i32 %258
  %283 = load i8, ptr %282, align 1
  %284 = icmp eq i8 %283, 0
  br i1 %284, label %300, label %285

285:                                              ; preds = %276
  %286 = or i1 %280, %278
  %287 = icmp eq i8 %281, 0
  br label %288

288:                                              ; preds = %295, %285
  %289 = phi i8 [ %283, %285 ], [ %298, %295 ]
  %290 = phi i32 [ %258, %285 ], [ %296, %295 ]
  %291 = icmp eq i8 %289, %281
  %292 = select i1 %286, i1 %291, i1 false
  br i1 %292, label %300, label %293

293:                                              ; preds = %288
  br i1 %287, label %294, label %295

294:                                              ; preds = %293
  switch i8 %289, label %295 [
    i8 41, label %300
    i8 38, label %300
    i8 124, label %300
  ]

295:                                              ; preds = %294, %293
  %296 = add i32 %290, 1
  %297 = getelementptr i8, ptr %132, i32 %296
  %298 = load i8, ptr %297, align 1
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %300, label %288

300:                                              ; preds = %295, %294, %294, %294, %288, %276
  %301 = phi i32 [ %258, %276 ], [ %290, %294 ], [ %290, %294 ], [ %290, %294 ], [ %290, %288 ], [ %296, %295 ]
  %302 = icmp eq i8 %281, 0
  %303 = select i1 %302, i32 %250, i32 %258
  %304 = sub i32 %301, %303
  %305 = icmp ugt i32 %304, 255
  br i1 %305, label %487, label %306

306:                                              ; preds = %300
  %307 = getelementptr inbounds %struct.filter_pred, ptr %262, i32 0, i32 2
  %308 = getelementptr inbounds %struct.filter_pred, ptr %262, i32 0, i32 2, i32 1
  store i32 %304, ptr %308, align 8
  %309 = getelementptr i8, ptr %132, i32 %303
  %310 = call ptr @strncpy(ptr noundef %307, ptr noundef %309, i32 noundef %304) #20
  %311 = getelementptr [256 x i8], ptr %307, i32 0, i32 %304
  store i8 0, ptr %311, align 1
  br label %499

312:                                              ; preds = %264
  %313 = load i8, ptr %260, align 1
  switch i8 %313, label %432 [
    i8 39, label %314
    i8 34, label %314
  ]

314:                                              ; preds = %312, %312
  switch i32 %245, label %487 [
    i32 1, label %315
    i32 0, label %317
    i32 2, label %317
  ]

315:                                              ; preds = %314
  %316 = getelementptr inbounds %struct.filter_pred, ptr %262, i32 0, i32 6
  store i32 1, ptr %316, align 8
  br label %317

317:                                              ; preds = %315, %314, %314
  %318 = getelementptr inbounds %struct.ftrace_event_field, ptr %201, i32 0, i32 3
  %319 = load i32, ptr %318, align 4
  switch i32 %319, label %487 [
    i32 2, label %320
    i32 3, label %320
    i32 1, label %320
    i32 4, label %320
    i32 6, label %320
  ]

320:                                              ; preds = %317, %317, %317, %317, %317
  br label %321

321:                                              ; preds = %321, %320
  %322 = phi i32 [ %328, %321 ], [ %258, %320 ]
  %323 = getelementptr i8, ptr %132, i32 %322
  %324 = load i8, ptr %323, align 1
  %325 = icmp eq i8 %324, 0
  %326 = icmp eq i8 %324, %313
  %327 = select i1 %325, i1 true, i1 %326
  %328 = add i32 %322, 1
  br i1 %327, label %329, label %321

329:                                              ; preds = %321
  br i1 %325, label %487, label %330

330:                                              ; preds = %329
  %331 = sub i32 %322, %258
  %332 = icmp ugt i32 %331, 255
  br i1 %332, label %487, label %333

333:                                              ; preds = %330
  %334 = getelementptr inbounds %struct.filter_pred, ptr %262, i32 0, i32 2
  %335 = getelementptr inbounds %struct.filter_pred, ptr %262, i32 0, i32 2, i32 1
  store i32 %331, ptr %335, align 8
  %336 = getelementptr i8, ptr %132, i32 %258
  %337 = call ptr @strncpy(ptr noundef %334, ptr noundef %336, i32 noundef %331) #20
  %338 = getelementptr [256 x i8], ptr %334, i32 0, i32 %331
  store i8 0, ptr %338, align 1
  %339 = load i32, ptr %269, align 4
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %411

341:                                              ; preds = %333
  %342 = load i32, ptr %335, align 8
  %343 = getelementptr inbounds %struct.filter_pred, ptr %262, i32 0, i32 6
  %344 = load i8, ptr %334, align 8
  %345 = icmp eq i8 %344, 33
  br i1 %345, label %346, label %350

346:                                              ; preds = %341
  store i32 1, ptr %343, align 8
  %347 = getelementptr %struct.filter_pred, ptr %262, i32 0, i32 2, i32 0, i32 1
  %348 = add i32 %342, -1
  %349 = load i8, ptr %347, align 1
  br label %351

350:                                              ; preds = %341
  store i32 0, ptr %343, align 8
  br label %351

351:                                              ; preds = %350, %346
  %352 = phi i8 [ %344, %350 ], [ %349, %346 ]
  %353 = phi i32 [ %342, %350 ], [ %348, %346 ]
  %354 = phi ptr [ %334, %350 ], [ %347, %346 ]
  %355 = zext i8 %352 to i32
  %356 = add nsw i32 %355, -58
  %357 = icmp ult i32 %356, -10
  br i1 %357, label %358, label %404

358:                                              ; preds = %351
  %359 = icmp sgt i32 %353, 0
  br i1 %359, label %364, label %360

360:                                              ; preds = %358
  %361 = icmp eq i8 %352, 42
  %362 = zext i1 %361 to i32
  %363 = getelementptr i8, ptr %354, i32 %362
  br label %404

364:                                              ; preds = %391, %358
  %365 = phi i8 [ %393, %391 ], [ %352, %358 ]
  %366 = phi i32 [ %389, %391 ], [ 0, %358 ]
  %367 = phi i32 [ %388, %391 ], [ 0, %358 ]
  %368 = icmp eq i8 %365, 42
  br i1 %368, label %369, label %383

369:                                              ; preds = %364
  %370 = icmp eq i32 %366, 0
  br i1 %370, label %387, label %371

371:                                              ; preds = %369
  %372 = add nsw i32 %353, -1
  %373 = icmp eq i32 %366, %372
  br i1 %373, label %374, label %401

374:                                              ; preds = %371
  %375 = getelementptr i8, ptr %354, i32 %366
  %376 = icmp eq i32 %367, 3
  store i8 0, ptr %375, align 1
  %377 = icmp eq i8 %352, 42
  %378 = zext i1 %377 to i32
  %379 = getelementptr i8, ptr %354, i32 %378
  %380 = call i32 @strlen(ptr noundef %379) #20
  store i32 %380, ptr %335, align 8
  %381 = add i32 %380, 1
  call void @llvm.memmove.p0.p0.i32(ptr align 8 %334, ptr align 1 %379, i32 %381, i1 false) #20
  %382 = select i1 %376, ptr @regex_match_middle, ptr @regex_match_front
  br label %411

383:                                              ; preds = %364
  %384 = zext i8 %365 to i32
  %385 = call ptr @memchr(ptr noundef nonnull @.str, i32 %384, i32 4) #20
  %386 = icmp eq ptr %385, null
  br i1 %386, label %387, label %401

387:                                              ; preds = %383, %369
  %388 = phi i32 [ %367, %383 ], [ 3, %369 ]
  %389 = add nuw nsw i32 %366, 1
  %390 = icmp eq i32 %389, %353
  br i1 %390, label %394, label %391

391:                                              ; preds = %387
  %392 = getelementptr i8, ptr %354, i32 %389
  %393 = load i8, ptr %392, align 1
  br label %364

394:                                              ; preds = %387
  %395 = icmp eq i8 %352, 42
  %396 = zext i1 %395 to i32
  %397 = getelementptr i8, ptr %354, i32 %396
  %398 = call i32 @strlen(ptr noundef %397) #20
  store i32 %398, ptr %335, align 8
  %399 = add i32 %398, 1
  call void @llvm.memmove.p0.p0.i32(ptr align 8 %334, ptr align 1 %397, i32 %399, i1 false) #20
  %400 = icmp ult i32 %388, 6
  br i1 %400, label %408, label %414

401:                                              ; preds = %383, %371
  %402 = call i32 @strlen(ptr noundef %354) #20
  store i32 %402, ptr %335, align 8
  %403 = add i32 %402, 1
  call void @llvm.memmove.p0.p0.i32(ptr align 8 %334, ptr align 1 %354, i32 %403, i1 false) #20
  br label %411

404:                                              ; preds = %360, %351
  %405 = phi ptr [ %363, %360 ], [ %354, %351 ]
  %406 = call i32 @strlen(ptr noundef %405) #20
  store i32 %406, ptr %335, align 8
  %407 = add i32 %406, 1
  call void @llvm.memmove.p0.p0.i32(ptr align 8 %334, ptr align 1 %405, i32 %407, i1 false) #20
  br label %411

408:                                              ; preds = %394
  %409 = getelementptr inbounds [6 x ptr], ptr @switch.table.process_preds, i32 0, i32 %388
  %410 = load ptr, ptr %409, align 4
  br label %411

411:                                              ; preds = %408, %404, %401, %374, %333
  %412 = phi ptr [ @regex_match_glob, %401 ], [ @regex_match_full, %404 ], [ @regex_match_full, %333 ], [ %410, %408 ], [ %382, %374 ]
  %413 = getelementptr inbounds %struct.filter_pred, ptr %262, i32 0, i32 2, i32 3
  store ptr %412, ptr %413, align 8
  br label %414

414:                                              ; preds = %411, %394
  %415 = load i32, ptr %318, align 4
  switch i32 %415, label %423 [
    i32 6, label %416
    i32 1, label %417
    i32 2, label %421
    i32 3, label %422
  ]

416:                                              ; preds = %414
  store ptr @filter_pred_comm, ptr %262, align 8
  br label %499

417:                                              ; preds = %414
  store ptr @filter_pred_string, ptr %262, align 8
  %418 = getelementptr inbounds %struct.ftrace_event_field, ptr %201, i32 0, i32 5
  %419 = load i32, ptr %418, align 4
  %420 = getelementptr inbounds %struct.filter_pred, ptr %262, i32 0, i32 2, i32 2
  store i32 %419, ptr %420, align 4
  br label %499

421:                                              ; preds = %414
  store ptr @filter_pred_strloc, ptr %262, align 8
  br label %499

422:                                              ; preds = %414
  store ptr @filter_pred_strrelloc, ptr %262, align 8
  br label %499

423:                                              ; preds = %414
  %424 = load ptr, ptr @ustring_per_cpu, align 4
  %425 = icmp eq ptr %424, null
  br i1 %425, label %426, label %429

426:                                              ; preds = %423
  %427 = call noalias ptr @__alloc_percpu(i32 noundef 1024, i32 noundef 1) #22
  store ptr %427, ptr @ustring_per_cpu, align 4
  %428 = icmp eq ptr %427, null
  br i1 %428, label %496, label %429

429:                                              ; preds = %426, %423
  br i1 %211, label %430, label %431

430:                                              ; preds = %429
  store ptr @filter_pred_pchar_user, ptr %262, align 8
  br label %499

431:                                              ; preds = %429
  store ptr @filter_pred_pchar, ptr %262, align 8
  br label %499

432:                                              ; preds = %312
  %433 = zext i8 %313 to i32
  %434 = add nsw i32 %433, -48
  %435 = icmp ult i32 %434, 10
  %436 = icmp eq i8 %313, 45
  %437 = select i1 %435, i1 true, i1 %436
  br i1 %437, label %438, label %487

438:                                              ; preds = %432
  %439 = getelementptr inbounds %struct.ftrace_event_field, ptr %201, i32 0, i32 3
  %440 = load i32, ptr %439, align 4
  switch i32 %440, label %441 [
    i32 2, label %487
    i32 3, label %487
    i32 1, label %487
    i32 4, label %487
    i32 6, label %487
  ]

441:                                              ; preds = %438
  br i1 %226, label %487, label %442

442:                                              ; preds = %441
  %443 = zext i1 %436 to i32
  %444 = add i32 %250, %443
  br label %445

445:                                              ; preds = %445, %442
  %446 = phi i32 [ %444, %442 ], [ %454, %445 ]
  %447 = getelementptr i8, ptr %132, i32 %446
  %448 = load i8, ptr %447, align 1
  %449 = zext i8 %448 to i32
  %450 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %449
  %451 = load i8, ptr %450, align 1
  %452 = and i8 %451, 7
  %453 = icmp eq i8 %452, 0
  %454 = add i32 %446, 1
  br i1 %453, label %455, label %445

455:                                              ; preds = %445
  %456 = sub i32 %446, %250
  %457 = icmp ugt i32 %456, 23
  br i1 %457, label %487, label %458

458:                                              ; preds = %455
  %459 = call ptr @strncpy(ptr noundef nonnull %5, ptr noundef %260, i32 noundef %456) #20
  %460 = getelementptr [24 x i8], ptr %5, i32 0, i32 %456
  store i8 0, ptr %460, align 1
  %461 = getelementptr inbounds %struct.ftrace_event_field, ptr %201, i32 0, i32 6
  %462 = load i32, ptr %461, align 4
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %466, label %464

464:                                              ; preds = %458
  %465 = call i32 @kstrtoll(ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull %6) #20
  br label %468

466:                                              ; preds = %458
  %467 = call i32 @kstrtoull(ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull %6) #20
  br label %468

468:                                              ; preds = %466, %464
  %469 = phi i32 [ %465, %464 ], [ %467, %466 ]
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %471, label %487

471:                                              ; preds = %468
  %472 = load i64, ptr %6, align 8
  %473 = getelementptr inbounds %struct.filter_pred, ptr %262, i32 0, i32 1
  store i64 %472, ptr %473, align 8
  %474 = load i32, ptr %439, align 4
  %475 = icmp eq i32 %474, 7
  br i1 %475, label %476, label %477

476:                                              ; preds = %471
  store ptr @filter_pred_cpu, ptr %262, align 8
  br label %499

477:                                              ; preds = %471
  %478 = load i32, ptr %269, align 4
  %479 = getelementptr inbounds %struct.ftrace_event_field, ptr %201, i32 0, i32 5
  %480 = load i32, ptr %479, align 4
  %481 = load i32, ptr %461, align 4
  %482 = call fastcc ptr @select_comparison_fn(i32 noundef %478, i32 noundef %480, i32 noundef %481) #20
  store ptr %482, ptr %262, align 8
  %483 = load i32, ptr %269, align 4
  %484 = icmp eq i32 %483, 1
  br i1 %484, label %485, label %499

485:                                              ; preds = %477
  %486 = getelementptr inbounds %struct.filter_pred, ptr %262, i32 0, i32 6
  store i32 1, ptr %486, align 8
  br label %499

487:                                              ; preds = %468, %455, %441, %438, %438, %438, %438, %438, %432, %330, %329, %317, %314, %300, %271, %241
  %488 = phi i32 [ %250, %271 ], [ %301, %300 ], [ %250, %314 ], [ %250, %317 ], [ %322, %329 ], [ %322, %330 ], [ %250, %438 ], [ %250, %438 ], [ %250, %438 ], [ %250, %438 ], [ %250, %438 ], [ %250, %441 ], [ %446, %455 ], [ %250, %468 ], [ %250, %432 ], [ %215, %241 ]
  %489 = phi i32 [ 14, %271 ], [ 5, %300 ], [ 8, %314 ], [ 7, %317 ], [ 4, %329 ], [ 5, %330 ], [ 6, %438 ], [ 6, %438 ], [ 6, %438 ], [ 6, %438 ], [ 6, %438 ], [ 8, %441 ], [ 5, %455 ], [ 10, %468 ], [ 15, %432 ], [ 1, %241 ]
  %490 = phi ptr [ %262, %271 ], [ %262, %300 ], [ %262, %314 ], [ %262, %317 ], [ %262, %329 ], [ %262, %330 ], [ %262, %438 ], [ %262, %438 ], [ %262, %438 ], [ %262, %438 ], [ %262, %438 ], [ %262, %441 ], [ %262, %455 ], [ %262, %468 ], [ %262, %432 ], [ null, %241 ]
  %491 = ptrtoint ptr %133 to i32
  %492 = ptrtoint ptr %1 to i32
  %493 = sub i32 %491, %492
  %494 = add i32 %493, %488
  store i32 %489, ptr %3, align 4
  %495 = getelementptr inbounds %struct.filter_parse_error, ptr %3, i32 0, i32 1
  store i32 %494, ptr %495, align 4
  call void @kfree(ptr noundef %490) #20
  br label %497

496:                                              ; preds = %426
  call void @kfree(ptr noundef nonnull %262) #20
  br label %497

497:                                              ; preds = %496, %487, %259, %203, %196, %193, %174
  %498 = phi i32 [ -22, %203 ], [ -12, %496 ], [ -22, %487 ], [ -12, %259 ], [ -12, %196 ], [ -1, %193 ], [ -1, %174 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  br label %656

499:                                              ; preds = %485, %477, %476, %431, %430, %422, %421, %417, %416, %306
  %500 = phi i32 [ %301, %306 ], [ %446, %476 ], [ %446, %485 ], [ %446, %477 ], [ %328, %416 ], [ %328, %421 ], [ %328, %430 ], [ %328, %431 ], [ %328, %422 ], [ %328, %417 ]
  store ptr %262, ptr %176, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  %501 = icmp slt i32 %500, 0
  br i1 %501, label %656, label %502

502:                                              ; preds = %499
  %503 = getelementptr i8, ptr %132, i32 %500
  %504 = add i32 %128, 1
  br label %505

505:                                              ; preds = %572, %502
  %506 = phi ptr [ %529, %572 ], [ %503, %502 ]
  %507 = phi ptr [ %573, %572 ], [ %131, %502 ]
  br label %508

508:                                              ; preds = %508, %505
  %509 = phi ptr [ %510, %508 ], [ %506, %505 ]
  %510 = getelementptr i8, ptr %509, i32 1
  %511 = load i8, ptr %509, align 1
  %512 = zext i8 %511 to i32
  %513 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %512
  %514 = load i8, ptr %513, align 1
  %515 = and i8 %514, 32
  %516 = icmp eq i8 %515, 0
  br i1 %516, label %517, label %508

517:                                              ; preds = %508
  switch i8 %511, label %523 [
    i8 41, label %528
    i8 0, label %528
    i8 38, label %518
    i8 124, label %518
  ]

518:                                              ; preds = %517, %517
  %519 = load i8, ptr %510, align 1
  %520 = icmp eq i8 %519, %511
  br i1 %520, label %521, label %523

521:                                              ; preds = %518
  %522 = getelementptr i8, ptr %509, i32 2
  br label %528

523:                                              ; preds = %518, %517
  %524 = ptrtoint ptr %1 to i32
  %525 = ptrtoint ptr %509 to i32
  %526 = sub i32 %525, %524
  store i32 12, ptr %3, align 4
  %527 = getelementptr inbounds %struct.filter_parse_error, ptr %3, i32 0, i32 1
  store i32 %526, ptr %527, align 4
  br label %656

528:                                              ; preds = %521, %517, %517
  %529 = phi ptr [ %522, %521 ], [ %510, %517 ], [ %510, %517 ]
  %530 = load i32, ptr %507, align 4
  %531 = and i32 %530, 1
  %532 = and i32 %530, 2
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %542, label %534

534:                                              ; preds = %528
  %535 = load i32, ptr %163, align 4
  %536 = getelementptr %struct.prog_entry, ptr %112, i32 %535
  %537 = load i32, ptr %536, align 4
  %538 = getelementptr %struct.prog_entry, ptr %112, i32 %535, i32 1
  store i32 %531, ptr %538, align 4
  store i32 %128, ptr %536, align 4
  store i32 %537, ptr %163, align 4
  %539 = load i32, ptr %507, align 4
  %540 = and i32 %539, -3
  store i32 %540, ptr %507, align 4
  %541 = load i8, ptr %509, align 1
  br label %542

542:                                              ; preds = %534, %528
  %543 = phi i32 [ %540, %534 ], [ %530, %528 ]
  %544 = phi i8 [ %541, %534 ], [ %511, %528 ]
  %545 = icmp eq i8 %544, 38
  br i1 %545, label %546, label %548

546:                                              ; preds = %542
  %547 = or i32 %543, 2
  br label %574

548:                                              ; preds = %542
  %549 = and i32 %543, 4
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %560, label %551

551:                                              ; preds = %548
  %552 = xor i32 %531, 1
  %553 = load i32, ptr %163, align 4
  %554 = getelementptr %struct.prog_entry, ptr %112, i32 %553
  %555 = load i32, ptr %554, align 4
  %556 = getelementptr %struct.prog_entry, ptr %112, i32 %553, i32 1
  store i32 %552, ptr %556, align 4
  store i32 %128, ptr %554, align 4
  store i32 %555, ptr %163, align 4
  %557 = load i32, ptr %507, align 4
  %558 = and i32 %557, -5
  store i32 %558, ptr %507, align 4
  %559 = load i8, ptr %509, align 1
  br label %560

560:                                              ; preds = %551, %548
  %561 = phi i32 [ %558, %551 ], [ %543, %548 ]
  %562 = phi i8 [ %559, %551 ], [ %544, %548 ]
  switch i8 %562, label %565 [
    i8 124, label %563
    i8 0, label %591
  ]

563:                                              ; preds = %560
  %564 = or i32 %561, 4
  br label %574

565:                                              ; preds = %560
  %566 = icmp eq ptr %507, %105
  br i1 %566, label %567, label %572

567:                                              ; preds = %565
  %568 = ptrtoint ptr %1 to i32
  %569 = ptrtoint ptr %529 to i32
  %570 = sub i32 %569, %568
  store i32 3, ptr %3, align 4
  %571 = getelementptr inbounds %struct.filter_parse_error, ptr %3, i32 0, i32 1
  store i32 %570, ptr %571, align 4
  br label %656

572:                                              ; preds = %565
  %573 = getelementptr i32, ptr %507, i32 -1
  br label %505

574:                                              ; preds = %563, %546
  %575 = phi i32 [ %564, %563 ], [ %547, %546 ]
  store i32 %575, ptr %507, align 4
  br label %576

576:                                              ; preds = %574, %145, %126
  %577 = phi ptr [ %133, %126 ], [ %133, %145 ], [ %529, %574 ]
  %578 = phi ptr [ %131, %126 ], [ %146, %145 ], [ %507, %574 ]
  %579 = phi i32 [ %130, %126 ], [ %130, %145 ], [ %531, %574 ]
  %580 = phi i32 [ %129, %126 ], [ %129, %145 ], [ -1, %574 ]
  %581 = phi i32 [ %128, %126 ], [ %128, %145 ], [ %504, %574 ]
  %582 = load i8, ptr %577, align 1
  br label %583

583:                                              ; preds = %576, %149
  %584 = phi i8 [ %582, %576 ], [ %148, %149 ]
  %585 = phi ptr [ %577, %576 ], [ %133, %149 ]
  %586 = phi ptr [ %578, %576 ], [ %131, %149 ]
  %587 = phi i32 [ %579, %576 ], [ %151, %149 ]
  %588 = phi i32 [ %580, %576 ], [ %129, %149 ]
  %589 = phi i32 [ %581, %576 ], [ %128, %149 ]
  %590 = icmp eq i8 %584, 0
  br i1 %590, label %591, label %126

591:                                              ; preds = %583, %560
  %592 = phi ptr [ %529, %560 ], [ %585, %583 ]
  %593 = phi ptr [ %507, %560 ], [ %586, %583 ]
  %594 = phi i32 [ -1, %560 ], [ %588, %583 ]
  %595 = phi i32 [ %504, %560 ], [ %589, %583 ]
  %596 = icmp eq ptr %593, %105
  br i1 %596, label %602, label %597

597:                                              ; preds = %591
  %598 = ptrtoint ptr %592 to i32
  %599 = ptrtoint ptr %1 to i32
  %600 = sub i32 %598, %599
  store i32 2, ptr %3, align 4
  %601 = getelementptr inbounds %struct.filter_parse_error, ptr %3, i32 0, i32 1
  store i32 %600, ptr %601, align 4
  br label %656

602:                                              ; preds = %591
  %603 = icmp eq i32 %595, 0
  br i1 %603, label %604, label %610

604:                                              ; preds = %602, %121
  %605 = phi ptr [ %592, %602 ], [ %1, %121 ]
  %606 = ptrtoint ptr %605 to i32
  %607 = ptrtoint ptr %1 to i32
  %608 = sub i32 %606, %607
  store i32 17, ptr %3, align 4
  %609 = getelementptr inbounds %struct.filter_parse_error, ptr %3, i32 0, i32 1
  store i32 %608, ptr %609, align 4
  br label %656

610:                                              ; preds = %602
  %611 = getelementptr %struct.prog_entry, ptr %112, i32 %595
  %612 = getelementptr %struct.prog_entry, ptr %112, i32 %595, i32 2
  store ptr null, ptr %612, align 4
  store i32 1, ptr %611, align 4
  %613 = add i32 %595, 1
  %614 = getelementptr %struct.prog_entry, ptr %112, i32 %613
  %615 = getelementptr %struct.prog_entry, ptr %112, i32 %613, i32 2
  store ptr null, ptr %615, align 4
  store i32 0, ptr %614, align 4
  %616 = add i32 %595, -1
  %617 = getelementptr %struct.prog_entry, ptr %112, i32 %616
  store i32 %595, ptr %617, align 4
  %618 = getelementptr %struct.prog_entry, ptr %112, i32 %616, i32 1
  store i32 0, ptr %618, align 4
  %619 = icmp eq i32 %616, 0
  br i1 %619, label %620, label %621

620:                                              ; preds = %623, %610
  br label %643

621:                                              ; preds = %610
  %622 = add i32 %595, -2
  br label %625

623:                                              ; preds = %637
  %624 = icmp sgt i32 %595, 0
  br i1 %624, label %620, label %655

625:                                              ; preds = %637, %621
  %626 = phi i32 [ %638, %637 ], [ %622, %621 ]
  %627 = getelementptr %struct.prog_entry, ptr %112, i32 %626
  %628 = load i32, ptr %627, align 4
  %629 = getelementptr %struct.prog_entry, ptr %112, i32 %626, i32 1
  %630 = load i32, ptr %629, align 4
  %631 = getelementptr %struct.prog_entry, ptr %112, i32 %628, i32 1
  %632 = load i32, ptr %631, align 4
  %633 = icmp eq i32 %630, %632
  br i1 %633, label %634, label %637

634:                                              ; preds = %625
  %635 = getelementptr %struct.prog_entry, ptr %112, i32 %628
  %636 = load i32, ptr %635, align 4
  store i32 %636, ptr %627, align 4
  br label %637

637:                                              ; preds = %634, %625
  %638 = add i32 %626, -1
  %639 = icmp eq i32 %626, 0
  br i1 %639, label %623, label %625

640:                                              ; preds = %643
  %641 = add nuw nsw i32 %644, 1
  %642 = icmp eq i32 %641, %595
  br i1 %642, label %655, label %643

643:                                              ; preds = %640, %620
  %644 = phi i32 [ %641, %640 ], [ 0, %620 ]
  %645 = getelementptr i8, ptr %117, i32 %644
  %646 = load i8, ptr %645, align 1
  %647 = zext i8 %646 to i32
  %648 = getelementptr %struct.prog_entry, ptr %112, i32 %644
  %649 = getelementptr %struct.prog_entry, ptr %112, i32 %644, i32 1
  %650 = load i32, ptr %649, align 4
  %651 = xor i32 %650, %647
  store i32 %651, ptr %649, align 4
  %652 = load i32, ptr %648, align 4
  %653 = icmp sgt i32 %652, %644
  br i1 %653, label %640, label %654, !prof !9

654:                                              ; preds = %643
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 573, i32 noundef 9, ptr noundef null) #20
  br label %656

655:                                              ; preds = %640, %623
  call void @kfree(ptr noundef nonnull %105) #20
  call void @kfree(ptr noundef nonnull %117) #20
  br label %675

656:                                              ; preds = %654, %604, %597, %567, %523, %499, %497, %154, %140, %119, %114
  %657 = phi i1 [ false, %597 ], [ false, %654 ], [ false, %604 ], [ false, %119 ], [ true, %114 ], [ false, %154 ], [ false, %523 ], [ false, %567 ], [ false, %497 ], [ false, %140 ], [ false, %499 ]
  %658 = phi ptr [ %112, %597 ], [ %112, %654 ], [ %112, %604 ], [ %112, %119 ], [ null, %114 ], [ %112, %154 ], [ %112, %523 ], [ %112, %567 ], [ %112, %497 ], [ %112, %140 ], [ %112, %499 ]
  %659 = phi ptr [ %117, %597 ], [ %117, %654 ], [ %117, %604 ], [ null, %119 ], [ null, %114 ], [ %117, %154 ], [ %117, %523 ], [ %117, %567 ], [ %117, %497 ], [ %117, %140 ], [ %117, %499 ]
  %660 = phi i32 [ %594, %597 ], [ -22, %654 ], [ -22, %604 ], [ -12, %119 ], [ -12, %114 ], [ %129, %154 ], [ -1, %523 ], [ -1, %567 ], [ %498, %497 ], [ %500, %499 ], [ -22, %140 ]
  call void @kfree(ptr noundef nonnull %105) #20
  call void @kfree(ptr noundef %659) #20
  br i1 %657, label %673, label %661

661:                                              ; preds = %656
  %662 = getelementptr %struct.prog_entry, ptr %658, i32 0, i32 2
  %663 = load ptr, ptr %662, align 8
  %664 = icmp eq ptr %663, null
  br i1 %664, label %672, label %665

665:                                              ; preds = %665, %661
  %666 = phi ptr [ %670, %665 ], [ %663, %661 ]
  %667 = phi i32 [ %668, %665 ], [ 0, %661 ]
  call void @kfree(ptr noundef nonnull %666) #20
  %668 = add i32 %667, 1
  %669 = getelementptr %struct.prog_entry, ptr %658, i32 %668, i32 2
  %670 = load ptr, ptr %669, align 4
  %671 = icmp eq ptr %670, null
  br i1 %671, label %672, label %665

672:                                              ; preds = %665, %661
  call void @kfree(ptr noundef nonnull %658) #20
  br label %673

673:                                              ; preds = %672, %656
  %674 = inttoptr i32 %660 to ptr
  br label %675

675:                                              ; preds = %673, %655
  %676 = phi ptr [ %674, %673 ], [ %112, %655 ]
  %677 = icmp ugt ptr %676, inttoptr (i32 -4096 to ptr)
  br i1 %677, label %678, label %681

678:                                              ; preds = %675, %103, %99
  %679 = phi ptr [ %676, %675 ], [ inttoptr (i32 -12 to ptr), %103 ], [ inttoptr (i32 -12 to ptr), %99 ]
  %680 = ptrtoint ptr %679 to i32
  br label %682

681:                                              ; preds = %675
  call void asm sideeffect "dmb ish", "~{memory}"() #20, !srcloc !13
  store volatile ptr %676, ptr %2, align 4
  br label %682

682:                                              ; preds = %681, %678, %97, %95, %92, %90, %4
  %683 = phi i32 [ %680, %678 ], [ 0, %681 ], [ -1, %95 ], [ -2, %92 ], [ -3, %90 ], [ -22, %97 ], [ -22, %4 ]
  ret i32 %683
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @append_filter_err(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.filter_parse_error, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.event_filter, ptr %2, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !11

9:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1032, i32 noundef 9, ptr noundef null) #20
  br label %46

10:                                               ; preds = %3
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 4128) #21
  %13 = icmp eq ptr %12, null
  br i1 %13, label %46, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.trace_seq, ptr %12, i32 0, i32 1
  store ptr %12, ptr %15, align 8
  %16 = getelementptr inbounds %struct.trace_seq, ptr %12, i32 0, i32 1, i32 1
  store i32 4096, ptr %16, align 4
  %17 = getelementptr inbounds %struct.trace_seq, ptr %12, i32 0, i32 1, i32 2
  store i32 0, ptr %17, align 8
  %18 = getelementptr inbounds %struct.trace_seq, ptr %12, i32 0, i32 1, i32 3
  store i64 0, ptr %18, align 8
  %19 = getelementptr inbounds %struct.trace_seq, ptr %12, i32 0, i32 2
  store i32 0, ptr %19, align 8
  %20 = load ptr, ptr %6, align 4
  %21 = tail call i32 @strlen(ptr noundef %20)
  tail call void @trace_seq_puts(ptr noundef nonnull %12, ptr noundef %20) #20
  %22 = load i32, ptr %1, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %14
  %25 = tail call i32 @llvm.smin.i32(i32 %5, i32 %21)
  %26 = icmp eq i32 %25, 0
  %27 = add i32 %25, 1
  %28 = select i1 %26, i32 0, i32 %27
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef nonnull %12, ptr noundef nonnull @.str.22, i32 noundef %28, ptr noundef nonnull @.str.23) #20
  %29 = load i32, ptr %1, align 4
  %30 = getelementptr [18 x ptr], ptr @err_text, i32 0, i32 %29
  %31 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef nonnull %12, ptr noundef nonnull @.str.24, ptr noundef %31) #20
  %32 = load ptr, ptr %6, align 4
  %33 = load i32, ptr %1, align 4
  %34 = trunc i32 %33 to i8
  %35 = load i32, ptr %4, align 4
  %36 = trunc i32 %35 to i8
  tail call void @tracing_log_err(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef %32, ptr noundef nonnull @err_text, i8 noundef zeroext %34, i8 noundef zeroext %36) #20
  br label %39

37:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef nonnull %12, ptr noundef nonnull @.str.26, i32 noundef %22) #20
  %38 = load ptr, ptr %6, align 4
  tail call void @tracing_log_err(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef %38, ptr noundef nonnull @err_text, i8 noundef zeroext 16, i8 noundef zeroext 0) #20
  br label %39

39:                                               ; preds = %37, %24
  tail call void @trace_seq_putc(ptr noundef nonnull %12, i8 noundef zeroext 0) #20
  %40 = load i32, ptr %17, align 8
  %41 = tail call ptr @kmemdup_nul(ptr noundef nonnull %12, i32 noundef %40, i32 noundef 3264) #20
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %44) #20
  store ptr %41, ptr %6, align 4
  br label %45

45:                                               ; preds = %43, %39
  tail call void @kfree(ptr noundef nonnull %12) #20
  br label %46

46:                                               ; preds = %45, %10, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_find_event_field(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_none(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #10 {
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @filter_pred_comm(ptr noundef %0, ptr nocapture noundef readnone %1) #3 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 2, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @llvm.thread.pointer() #20
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 85
  %8 = tail call i32 %5(ptr noundef %7, ptr noundef %3, i32 noundef 16) #20
  %9 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  %11 = xor i32 %10, %8
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @filter_pred_string(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 2, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 2, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 %8(ptr noundef %5, ptr noundef %6, i32 noundef %10) #20
  %12 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 8
  %14 = xor i32 %13, %11
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @filter_pred_strloc(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 65535
  %8 = lshr i32 %6, 16
  %9 = getelementptr i8, ptr %1, i32 %7
  %10 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 2
  %11 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 2, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = tail call i32 %12(ptr noundef %9, ptr noundef %10, i32 noundef %8) #20
  %14 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 8
  %16 = xor i32 %15, %13
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @filter_pred_strrelloc(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 65535
  %8 = lshr i32 %6, 16
  %9 = getelementptr i32, ptr %5, i32 1
  %10 = getelementptr i8, ptr %9, i32 %7
  %11 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 2
  %12 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 2, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 %13(ptr noundef %10, ptr noundef %11, i32 noundef %8) #20
  %15 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 6
  %16 = load i32, ptr %15, align 8
  %17 = xor i32 %16, %14
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @filter_pred_pchar_user(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load ptr, ptr @ustring_per_cpu, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %1, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %3 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #20
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #17, !srcloc !14
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 @strncpy_from_user_nofault(ptr noundef %15, ptr noundef %9, i32 noundef 1024) #20
  %17 = icmp eq i32 %16, 0
  %18 = icmp eq i32 %14, 0
  %19 = or i1 %17, %18
  br i1 %19, label %30, label %20

20:                                               ; preds = %5
  %21 = tail call i32 @strlen(ptr noundef nonnull %15) #20
  %22 = add i32 %21, 1
  %23 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 2
  %24 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 2, i32 3
  %25 = load ptr, ptr %24, align 8
  %26 = tail call i32 %25(ptr noundef nonnull %15, ptr noundef %23, i32 noundef %22) #20
  %27 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 6
  %28 = load i32, ptr %27, align 8
  %29 = xor i32 %28, %26
  br label %30

30:                                               ; preds = %20, %5, %2
  %31 = phi i32 [ %29, %20 ], [ 0, %2 ], [ 0, %5 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @filter_pred_pchar(ptr noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load ptr, ptr @ustring_per_cpu, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i8, ptr %1, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %3 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #20
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #17, !srcloc !14
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 @strncpy_from_kernel_nofault(ptr noundef %15, ptr noundef %9, i32 noundef 1024) #20
  %17 = icmp eq i32 %16, 0
  %18 = icmp eq i32 %14, 0
  %19 = or i1 %17, %18
  br i1 %19, label %30, label %20

20:                                               ; preds = %5
  %21 = tail call i32 @strlen(ptr noundef nonnull %15) #20
  %22 = add i32 %21, 1
  %23 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 2
  %24 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 2, i32 3
  %25 = load ptr, ptr %24, align 8
  %26 = tail call i32 %25(ptr noundef nonnull %15, ptr noundef %23, i32 noundef %22) #20
  %27 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 6
  %28 = load i32, ptr %27, align 8
  %29 = xor i32 %28, %26
  br label %30

30:                                               ; preds = %20, %5, %2
  %31 = phi i32 [ %29, %20 ], [ 0, %2 ], [ 0, %5 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoll(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_cpu(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #12 {
  %3 = tail call ptr @llvm.thread.pointer() #20
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %23 [
    i32 2, label %11
    i32 1, label %13
    i32 4, label %15
    i32 3, label %17
    i32 6, label %19
    i32 5, label %21
  ]

11:                                               ; preds = %2
  %12 = icmp eq i32 %5, %8
  br label %23

13:                                               ; preds = %2
  %14 = icmp ne i32 %5, %8
  br label %23

15:                                               ; preds = %2
  %16 = icmp slt i32 %5, %8
  br label %23

17:                                               ; preds = %2
  %18 = icmp sle i32 %5, %8
  br label %23

19:                                               ; preds = %2
  %20 = icmp sgt i32 %5, %8
  br label %23

21:                                               ; preds = %2
  %22 = icmp sge i32 %5, %8
  br label %23

23:                                               ; preds = %21, %19, %17, %15, %13, %11, %2
  %24 = phi i1 [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ %16, %15 ], [ %14, %13 ], [ %12, %11 ], [ false, %2 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @select_comparison_fn(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = add i32 %0, -1
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = icmp ult i32 %0, 3
  %8 = load i1, ptr @select_comparison_fn.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !11

11:                                               ; preds = %6
  store i1 true, ptr @select_comparison_fn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1203, i32 noundef 9, ptr noundef null) #20
  br label %12

12:                                               ; preds = %11, %6
  br i1 %7, label %47, label %13

13:                                               ; preds = %12
  %14 = add i32 %0, -3
  %15 = icmp sgt i32 %14, 4
  %16 = load i1, ptr @select_comparison_fn.__already_done.21, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !11

19:                                               ; preds = %13
  store i1 true, ptr @select_comparison_fn.__already_done.21, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1206, i32 noundef 9, ptr noundef null) #20
  br label %20

20:                                               ; preds = %19, %13
  br i1 %15, label %47, label %21

21:                                               ; preds = %20, %3
  %22 = phi i32 [ %14, %20 ], [ -1, %3 ]
  switch i32 %1, label %47 [
    i32 8, label %23
    i32 4, label %28
    i32 2, label %33
    i32 1, label %38
  ]

23:                                               ; preds = %21
  %24 = icmp slt i32 %22, 0
  br i1 %24, label %47, label %25

25:                                               ; preds = %23
  %26 = icmp eq i32 %2, 0
  %27 = select i1 %26, ptr @pred_funcs_u64, ptr @pred_funcs_s64
  br label %43

28:                                               ; preds = %21
  %29 = icmp slt i32 %22, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %28
  %31 = icmp eq i32 %2, 0
  %32 = select i1 %31, ptr @pred_funcs_u32, ptr @pred_funcs_s32
  br label %43

33:                                               ; preds = %21
  %34 = icmp slt i32 %22, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %33
  %36 = icmp eq i32 %2, 0
  %37 = select i1 %36, ptr @pred_funcs_u16, ptr @pred_funcs_s16
  br label %43

38:                                               ; preds = %21
  %39 = icmp slt i32 %22, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %38
  %41 = icmp eq i32 %2, 0
  %42 = select i1 %41, ptr @pred_funcs_u8, ptr @pred_funcs_s8
  br label %43

43:                                               ; preds = %40, %35, %30, %25
  %44 = phi ptr [ %27, %25 ], [ %32, %30 ], [ %37, %35 ], [ %42, %40 ]
  %45 = getelementptr [5 x ptr], ptr %44, i32 0, i32 %22
  %46 = load ptr, ptr %45, align 4
  br label %47

47:                                               ; preds = %43, %38, %33, %28, %23, %21, %20, %12
  %48 = phi ptr [ null, %12 ], [ null, %20 ], [ null, %21 ], [ @filter_pred_64, %23 ], [ @filter_pred_32, %28 ], [ @filter_pred_16, %33 ], [ @filter_pred_8, %38 ], [ %46, %43 ]
  ret ptr %48
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #13

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @regex_match_full(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #5 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 @strcmp(ptr noundef %0, ptr noundef %1)
  br label %9

7:                                                ; preds = %3
  %8 = tail call i32 @strncmp(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i32 [ %8, %7 ], [ %6, %5 ]
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @regex_match_front(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #5 {
  %4 = icmp ne i32 %2, 0
  %5 = getelementptr inbounds %struct.regex, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, %2
  %8 = select i1 %4, i1 %7, i1 false
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @strncmp(ptr noundef %0, ptr noundef %1, i32 noundef %6)
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi i32 [ %12, %9 ], [ 0, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regex_match_middle(ptr noundef %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call ptr @strstr(ptr noundef %0, ptr noundef %1)
  br label %9

7:                                                ; preds = %3
  %8 = tail call ptr @strnstr(ptr noundef %0, ptr noundef %1, i32 noundef %2) #20
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %8, %7 ], [ %6, %5 ]
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @regex_match_end(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #5 {
  %4 = add i32 %2, -1
  %5 = getelementptr inbounds %struct.regex, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %0, i32 %4
  %10 = sub i32 0, %6
  %11 = getelementptr i8, ptr %9, i32 %10
  %12 = tail call i32 @bcmp(ptr %11, ptr %1, i32 %6)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %8, %3
  br label %15

15:                                               ; preds = %14, %8
  %16 = phi i32 [ 0, %14 ], [ 1, %8 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @regex_match_glob(ptr noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #14 {
  %4 = tail call zeroext i1 @glob_match(ptr noundef %1, ptr noundef %0) #23
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnstr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local zeroext i1 @glob_match(ptr noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_user_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #17

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_64(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = load i64, ptr %5, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 8
  %13 = xor i32 %12, %10
  ret i32 %13
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_32(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i32, ptr %5, align 4
  %10 = icmp eq i32 %9, %8
  %11 = zext i1 %10 to i32
  %12 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 8
  %14 = xor i32 %13, %11
  ret i32 %14
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = load i16, ptr %5, align 2
  %9 = trunc i64 %7 to i16
  %10 = icmp eq i16 %8, %9
  %11 = zext i1 %10 to i32
  %12 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 8
  %14 = xor i32 %13, %11
  ret i32 %14
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = load i8, ptr %5, align 1
  %9 = trunc i64 %7 to i8
  %10 = icmp eq i8 %8, %9
  %11 = zext i1 %10 to i32
  %12 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 8
  %14 = xor i32 %13, %11
  ret i32 %14
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LE_s64(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = load i64, ptr %5, align 8
  %9 = icmp sle i64 %8, %7
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LT_s64(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = load i64, ptr %5, align 8
  %9 = icmp slt i64 %8, %7
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GE_s64(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = load i64, ptr %5, align 8
  %9 = icmp sge i64 %8, %7
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GT_s64(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = load i64, ptr %5, align 8
  %9 = icmp sgt i64 %8, %7
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_BAND_s64(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = load i64, ptr %5, align 8
  %9 = and i64 %8, %7
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LE_u64(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = load i64, ptr %5, align 8
  %9 = icmp ule i64 %8, %7
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LT_u64(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = load i64, ptr %5, align 8
  %9 = icmp ult i64 %8, %7
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GE_u64(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = load i64, ptr %5, align 8
  %9 = icmp uge i64 %8, %7
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GT_u64(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = load i64, ptr %5, align 8
  %9 = icmp ugt i64 %8, %7
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_BAND_u64(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = load i64, ptr %5, align 8
  %9 = and i64 %8, %7
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LE_s32(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i32, ptr %5, align 4
  %10 = icmp sle i32 %9, %8
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LT_s32(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i32, ptr %5, align 4
  %10 = icmp slt i32 %9, %8
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GE_s32(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i32, ptr %5, align 4
  %10 = icmp sge i32 %9, %8
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GT_s32(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i32, ptr %5, align 4
  %10 = icmp sgt i32 %9, %8
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_BAND_s32(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i32, ptr %5, align 4
  %10 = and i32 %9, %8
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LE_u32(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i32, ptr %5, align 4
  %10 = icmp ule i32 %9, %8
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LT_u32(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i32, ptr %5, align 4
  %10 = icmp ult i32 %9, %8
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GE_u32(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i32, ptr %5, align 4
  %10 = icmp uge i32 %9, %8
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GT_u32(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i32, ptr %5, align 4
  %10 = icmp ugt i32 %9, %8
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_BAND_u32(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i32, ptr %5, align 4
  %10 = and i32 %9, %8
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LE_s16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i16, ptr %5, align 2
  %10 = sext i16 %9 to i32
  %11 = shl i32 %8, 16
  %12 = ashr exact i32 %11, 16
  %13 = icmp sge i32 %12, %10
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LT_s16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i16, ptr %5, align 2
  %10 = sext i16 %9 to i32
  %11 = shl i32 %8, 16
  %12 = ashr exact i32 %11, 16
  %13 = icmp sgt i32 %12, %10
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GE_s16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i16, ptr %5, align 2
  %10 = sext i16 %9 to i32
  %11 = shl i32 %8, 16
  %12 = ashr exact i32 %11, 16
  %13 = icmp sle i32 %12, %10
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GT_s16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i16, ptr %5, align 2
  %10 = sext i16 %9 to i32
  %11 = shl i32 %8, 16
  %12 = ashr exact i32 %11, 16
  %13 = icmp slt i32 %12, %10
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_BAND_s16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i16, ptr %5, align 2
  %10 = sext i16 %9 to i32
  %11 = shl i32 %8, 16
  %12 = ashr exact i32 %11, 16
  %13 = and i32 %12, %10
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  ret i32 %15
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LE_u16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i16, ptr %5, align 2
  %10 = zext i16 %9 to i32
  %11 = and i32 %8, 65535
  %12 = icmp uge i32 %11, %10
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LT_u16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i16, ptr %5, align 2
  %10 = zext i16 %9 to i32
  %11 = and i32 %8, 65535
  %12 = icmp ugt i32 %11, %10
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GE_u16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i16, ptr %5, align 2
  %10 = zext i16 %9 to i32
  %11 = and i32 %8, 65535
  %12 = icmp ule i32 %11, %10
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GT_u16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i16, ptr %5, align 2
  %10 = zext i16 %9 to i32
  %11 = and i32 %8, 65535
  %12 = icmp ult i32 %11, %10
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_BAND_u16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i16, ptr %5, align 2
  %10 = zext i16 %9 to i32
  %11 = and i32 %10, %8
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LE_s8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i8, ptr %5, align 1
  %10 = sext i8 %9 to i32
  %11 = shl i32 %8, 24
  %12 = ashr exact i32 %11, 24
  %13 = icmp sge i32 %12, %10
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LT_s8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i8, ptr %5, align 1
  %10 = sext i8 %9 to i32
  %11 = shl i32 %8, 24
  %12 = ashr exact i32 %11, 24
  %13 = icmp sgt i32 %12, %10
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GE_s8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i8, ptr %5, align 1
  %10 = sext i8 %9 to i32
  %11 = shl i32 %8, 24
  %12 = ashr exact i32 %11, 24
  %13 = icmp sle i32 %12, %10
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GT_s8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i8, ptr %5, align 1
  %10 = sext i8 %9 to i32
  %11 = shl i32 %8, 24
  %12 = ashr exact i32 %11, 24
  %13 = icmp slt i32 %12, %10
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_BAND_s8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i8, ptr %5, align 1
  %10 = sext i8 %9 to i32
  %11 = shl i32 %8, 24
  %12 = ashr exact i32 %11, 24
  %13 = and i32 %12, %10
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  ret i32 %15
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LE_u8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i8, ptr %5, align 1
  %10 = zext i8 %9 to i32
  %11 = and i32 %8, 255
  %12 = icmp uge i32 %11, %10
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_LT_u8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i8, ptr %5, align 1
  %10 = zext i8 %9 to i32
  %11 = and i32 %8, 255
  %12 = icmp ugt i32 %11, %10
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GE_u8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i8, ptr %5, align 1
  %10 = zext i8 %9 to i32
  %11 = and i32 %8, 255
  %12 = icmp ule i32 %11, %10
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_GT_u8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i8, ptr %5, align 1
  %10 = zext i8 %9 to i32
  %11 = and i32 %8, 255
  %12 = icmp ult i32 %11, %10
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @filter_pred_BAND_u8(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 %4
  %6 = getelementptr inbounds %struct.filter_pred, ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i8, ptr %5, align 1
  %10 = zext i8 %9 to i32
  %11 = and i32 %10, %8
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_log_err(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_buffered_event_disable() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_buffered_event_enable() local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare ptr @memchr(ptr, i32, i32) local_unnamed_addr #19

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nounwind willreturn }
attributes #14 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #17 = { nounwind readonly }
attributes #18 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { argmemonly nofree nounwind readonly willreturn }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind readonly willreturn }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2153949830}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"auto-init"}
!13 = !{i64 2153942034}
!14 = !{i64 634185}
