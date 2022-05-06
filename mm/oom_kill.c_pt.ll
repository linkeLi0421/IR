; ModuleID = '/llk/IR/mm/oom_kill.c_pt.bc'
source_filename = "../mm/oom_kill.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_oom_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22register_oom_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_register_oom_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_oom_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_oom_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_oom_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_eval_map = type { ptr, ptr, i32 }
%struct.trace_event_fields = type { ptr, %union.anon.15 }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.17, %struct.trace_event, ptr, ptr, %union.anon.18, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.17 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.18 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.trace_print_flags = type { i32, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.89, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.70 }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.89 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.vm_event_state = type { [71 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_oom_score_adj_update = type { %struct.trace_entry, i32, [16 x i8], i16, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.rlimit = type { i32, i32 }
%struct.trace_event_raw_reclaim_retry_zone = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, i8, [0 x i8] }
%struct.zoneref = type { ptr, i32 }
%struct.trace_event_raw_mark_victim = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_wake_reaper = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_start_task_reaping = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_finish_task_reaping = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_skip_task_reaping = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_compact_retry = type { %struct.trace_entry, i32, i32, i32, i32, i32, i8, [0 x i8] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mmu_gather = type { ptr, i32, i32, i16, i32, ptr, %struct.mmu_gather_batch, [8 x ptr] }
%struct.mmu_gather_batch = type { ptr, i32, i32, [0 x ptr] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.0, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.oom_control = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.60 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.60 = type { %struct.callback_head }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_oom_score_adj_update = internal constant [21 x i8] c"oom_score_adj_update\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_oom_score_adj_update = dso_local global %struct.static_call_key { ptr @__traceiter_oom_score_adj_update }, align 4
@__tracepoint_oom_score_adj_update = dso_local global %struct.tracepoint { ptr @__tpstrtab_oom_score_adj_update, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_oom_score_adj_update, ptr null, ptr @__traceiter_oom_score_adj_update, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_oom_score_adj_update = internal constant ptr @__tracepoint_oom_score_adj_update, section "__tracepoints_ptrs", align 4
@__tpstrtab_reclaim_retry_zone = internal constant [19 x i8] c"reclaim_retry_zone\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_reclaim_retry_zone = dso_local global %struct.static_call_key { ptr @__traceiter_reclaim_retry_zone }, align 4
@__tracepoint_reclaim_retry_zone = dso_local global %struct.tracepoint { ptr @__tpstrtab_reclaim_retry_zone, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_reclaim_retry_zone, ptr null, ptr @__traceiter_reclaim_retry_zone, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_reclaim_retry_zone = internal constant ptr @__tracepoint_reclaim_retry_zone, section "__tracepoints_ptrs", align 4
@__tpstrtab_mark_victim = internal constant [12 x i8] c"mark_victim\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mark_victim = dso_local global %struct.static_call_key { ptr @__traceiter_mark_victim }, align 4
@__tracepoint_mark_victim = dso_local global %struct.tracepoint { ptr @__tpstrtab_mark_victim, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mark_victim, ptr null, ptr @__traceiter_mark_victim, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mark_victim = internal constant ptr @__tracepoint_mark_victim, section "__tracepoints_ptrs", align 4
@__tpstrtab_wake_reaper = internal constant [12 x i8] c"wake_reaper\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_wake_reaper = dso_local global %struct.static_call_key { ptr @__traceiter_wake_reaper }, align 4
@__tracepoint_wake_reaper = dso_local global %struct.tracepoint { ptr @__tpstrtab_wake_reaper, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_wake_reaper, ptr null, ptr @__traceiter_wake_reaper, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_wake_reaper = internal constant ptr @__tracepoint_wake_reaper, section "__tracepoints_ptrs", align 4
@__tpstrtab_start_task_reaping = internal constant [19 x i8] c"start_task_reaping\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_start_task_reaping = dso_local global %struct.static_call_key { ptr @__traceiter_start_task_reaping }, align 4
@__tracepoint_start_task_reaping = dso_local global %struct.tracepoint { ptr @__tpstrtab_start_task_reaping, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_start_task_reaping, ptr null, ptr @__traceiter_start_task_reaping, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_start_task_reaping = internal constant ptr @__tracepoint_start_task_reaping, section "__tracepoints_ptrs", align 4
@__tpstrtab_finish_task_reaping = internal constant [20 x i8] c"finish_task_reaping\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_finish_task_reaping = dso_local global %struct.static_call_key { ptr @__traceiter_finish_task_reaping }, align 4
@__tracepoint_finish_task_reaping = dso_local global %struct.tracepoint { ptr @__tpstrtab_finish_task_reaping, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_finish_task_reaping, ptr null, ptr @__traceiter_finish_task_reaping, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_finish_task_reaping = internal constant ptr @__tracepoint_finish_task_reaping, section "__tracepoints_ptrs", align 4
@__tpstrtab_skip_task_reaping = internal constant [18 x i8] c"skip_task_reaping\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_skip_task_reaping = dso_local global %struct.static_call_key { ptr @__traceiter_skip_task_reaping }, align 4
@__tracepoint_skip_task_reaping = dso_local global %struct.tracepoint { ptr @__tpstrtab_skip_task_reaping, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_skip_task_reaping, ptr null, ptr @__traceiter_skip_task_reaping, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_skip_task_reaping = internal constant ptr @__tracepoint_skip_task_reaping, section "__tracepoints_ptrs", align 4
@__tpstrtab_compact_retry = internal constant [14 x i8] c"compact_retry\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_compact_retry = dso_local global %struct.static_call_key { ptr @__traceiter_compact_retry }, align 4
@__tracepoint_compact_retry = dso_local global %struct.tracepoint { ptr @__tpstrtab_compact_retry, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_compact_retry, ptr null, ptr @__traceiter_compact_retry, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_compact_retry = internal constant ptr @__tracepoint_compact_retry, section "__tracepoints_ptrs", align 4
@str__oom__trace_system_name = internal constant [4 x i8] c"oom\00", align 1
@.str = private unnamed_addr constant [16 x i8] c"COMPACT_SKIPPED\00", align 1
@__TRACE_SYSTEM_COMPACT_SKIPPED = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_SKIPPED = internal global ptr @__TRACE_SYSTEM_COMPACT_SKIPPED, section "_ftrace_eval_map", align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"COMPACT_DEFERRED\00", align 1
@__TRACE_SYSTEM_COMPACT_DEFERRED = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.1, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_DEFERRED = internal global ptr @__TRACE_SYSTEM_COMPACT_DEFERRED, section "_ftrace_eval_map", align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"COMPACT_CONTINUE\00", align 1
@__TRACE_SYSTEM_COMPACT_CONTINUE = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.2, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_CONTINUE = internal global ptr @__TRACE_SYSTEM_COMPACT_CONTINUE, section "_ftrace_eval_map", align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"COMPACT_SUCCESS\00", align 1
@__TRACE_SYSTEM_COMPACT_SUCCESS = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.3, i32 8 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_SUCCESS = internal global ptr @__TRACE_SYSTEM_COMPACT_SUCCESS, section "_ftrace_eval_map", align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"COMPACT_PARTIAL_SKIPPED\00", align 1
@__TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.4, i32 6 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED = internal global ptr @__TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED, section "_ftrace_eval_map", align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"COMPACT_COMPLETE\00", align 1
@__TRACE_SYSTEM_COMPACT_COMPLETE = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.5, i32 5 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_COMPLETE = internal global ptr @__TRACE_SYSTEM_COMPACT_COMPLETE, section "_ftrace_eval_map", align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"COMPACT_NO_SUITABLE_PAGE\00", align 1
@__TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.6, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE = internal global ptr @__TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE, section "_ftrace_eval_map", align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"COMPACT_NOT_SUITABLE_ZONE\00", align 1
@__TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.7, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE = internal global ptr @__TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE, section "_ftrace_eval_map", align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"COMPACT_CONTENDED\00", align 1
@__TRACE_SYSTEM_COMPACT_CONTENDED = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.8, i32 7 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_CONTENDED = internal global ptr @__TRACE_SYSTEM_COMPACT_CONTENDED, section "_ftrace_eval_map", align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"COMPACT_PRIO_SYNC_FULL\00", align 1
@__TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.9, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL = internal global ptr @__TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL, section "_ftrace_eval_map", align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"COMPACT_PRIO_SYNC_LIGHT\00", align 1
@__TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.10, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT = internal global ptr @__TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT, section "_ftrace_eval_map", align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"COMPACT_PRIO_ASYNC\00", align 1
@__TRACE_SYSTEM_COMPACT_PRIO_ASYNC = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.11, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_COMPACT_PRIO_ASYNC = internal global ptr @__TRACE_SYSTEM_COMPACT_PRIO_ASYNC, section "_ftrace_eval_map", align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"ZONE_DMA\00", align 1
@__TRACE_SYSTEM_ZONE_DMA = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.12, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_ZONE_DMA = internal global ptr @__TRACE_SYSTEM_ZONE_DMA, section "_ftrace_eval_map", align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"ZONE_NORMAL\00", align 1
@__TRACE_SYSTEM_ZONE_NORMAL = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.13, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_ZONE_NORMAL = internal global ptr @__TRACE_SYSTEM_ZONE_NORMAL, section "_ftrace_eval_map", align 4
@.str.14 = private unnamed_addr constant [13 x i8] c"ZONE_HIGHMEM\00", align 1
@__TRACE_SYSTEM_ZONE_HIGHMEM = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.14, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_ZONE_HIGHMEM = internal global ptr @__TRACE_SYSTEM_ZONE_HIGHMEM, section "_ftrace_eval_map", align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"ZONE_MOVABLE\00", align 1
@__TRACE_SYSTEM_ZONE_MOVABLE = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.15, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_ZONE_MOVABLE = internal global ptr @__TRACE_SYSTEM_ZONE_MOVABLE, section "_ftrace_eval_map", align 4
@.str.16 = private unnamed_addr constant [18 x i8] c"LRU_INACTIVE_ANON\00", align 1
@__TRACE_SYSTEM_LRU_INACTIVE_ANON = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.16, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_LRU_INACTIVE_ANON = internal global ptr @__TRACE_SYSTEM_LRU_INACTIVE_ANON, section "_ftrace_eval_map", align 4
@.str.17 = private unnamed_addr constant [16 x i8] c"LRU_ACTIVE_ANON\00", align 1
@__TRACE_SYSTEM_LRU_ACTIVE_ANON = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.17, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_LRU_ACTIVE_ANON = internal global ptr @__TRACE_SYSTEM_LRU_ACTIVE_ANON, section "_ftrace_eval_map", align 4
@.str.18 = private unnamed_addr constant [18 x i8] c"LRU_INACTIVE_FILE\00", align 1
@__TRACE_SYSTEM_LRU_INACTIVE_FILE = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.18, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_LRU_INACTIVE_FILE = internal global ptr @__TRACE_SYSTEM_LRU_INACTIVE_FILE, section "_ftrace_eval_map", align 4
@.str.19 = private unnamed_addr constant [16 x i8] c"LRU_ACTIVE_FILE\00", align 1
@__TRACE_SYSTEM_LRU_ACTIVE_FILE = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.19, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_LRU_ACTIVE_FILE = internal global ptr @__TRACE_SYSTEM_LRU_ACTIVE_FILE, section "_ftrace_eval_map", align 4
@.str.20 = private unnamed_addr constant [16 x i8] c"LRU_UNEVICTABLE\00", align 1
@__TRACE_SYSTEM_LRU_UNEVICTABLE = internal global %struct.trace_eval_map { ptr @str__oom__trace_system_name, ptr @.str.20, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_LRU_UNEVICTABLE = internal global ptr @__TRACE_SYSTEM_LRU_UNEVICTABLE, section "_ftrace_eval_map", align 4
@trace_event_fields_oom_score_adj_update = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.29, %union.anon.15 { %struct.anon.16 { ptr @.str.30, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.31, %union.anon.15 { %struct.anon.16 { ptr @.str.32, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.33, %union.anon.15 { %struct.anon.16 { ptr @.str.34, i32 2, i32 2, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_oom_score_adj_update = internal global %struct.trace_event_class { ptr @str__oom__trace_system_name, ptr @trace_event_raw_event_oom_score_adj_update, ptr @perf_trace_oom_score_adj_update, ptr @trace_event_reg, ptr @trace_event_fields_oom_score_adj_update, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_oom_score_adj_update, i64 24), ptr getelementptr (i8, ptr @event_class_oom_score_adj_update, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_oom_score_adj_update = internal global %struct.trace_event_functions { ptr @trace_raw_output_oom_score_adj_update, ptr null, ptr null, ptr null }, align 4
@print_fmt_oom_score_adj_update = internal global [76 x i8] c"\22pid=%d comm=%s oom_score_adj=%hd\22, REC->pid, REC->comm, REC->oom_score_adj\00", align 1
@event_oom_score_adj_update = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_oom_score_adj_update, %union.anon.17 { ptr @__tracepoint_oom_score_adj_update }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_oom_score_adj_update }, ptr @print_fmt_oom_score_adj_update, ptr null, %union.anon.18 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_oom_score_adj_update = internal global ptr @event_oom_score_adj_update, section "_ftrace_events", align 4
@trace_event_fields_reclaim_retry_zone = internal global [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.36, %union.anon.15 { %struct.anon.16 { ptr @.str.37, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.15 { %struct.anon.16 { ptr @.str.38, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.15 { %struct.anon.16 { ptr @.str.39, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.40, %union.anon.15 { %struct.anon.16 { ptr @.str.41, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.40, %union.anon.15 { %struct.anon.16 { ptr @.str.42, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.40, %union.anon.15 { %struct.anon.16 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.15 { %struct.anon.16 { ptr @.str.44, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.45, %union.anon.15 { %struct.anon.16 { ptr @.str.46, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_reclaim_retry_zone = internal global %struct.trace_event_class { ptr @str__oom__trace_system_name, ptr @trace_event_raw_event_reclaim_retry_zone, ptr @perf_trace_reclaim_retry_zone, ptr @trace_event_reg, ptr @trace_event_fields_reclaim_retry_zone, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_reclaim_retry_zone, i64 24), ptr getelementptr (i8, ptr @event_class_reclaim_retry_zone, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_reclaim_retry_zone = internal global %struct.trace_event_functions { ptr @trace_raw_output_reclaim_retry_zone, ptr null, ptr null, ptr null }, align 4
@print_fmt_reclaim_retry_zone = internal global [355 x i8] c"\22node=%d zone=%-8s order=%d reclaimable=%lu available=%lu min_wmark=%lu no_progress_loops=%d wmark_check=%d\22, REC->node, __print_symbolic(REC->zone_idx, {ZONE_DMA, \22DMA\22}, {ZONE_NORMAL, \22Normal\22}, {ZONE_HIGHMEM, \22HighMem\22}, {ZONE_MOVABLE, \22Movable\22}), REC->order, REC->reclaimable, REC->available, REC->min_wmark, REC->no_progress_loops, REC->wmark_check\00", align 1
@event_reclaim_retry_zone = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_reclaim_retry_zone, %union.anon.17 { ptr @__tracepoint_reclaim_retry_zone }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_reclaim_retry_zone }, ptr @print_fmt_reclaim_retry_zone, ptr null, %union.anon.18 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_reclaim_retry_zone = internal global ptr @event_reclaim_retry_zone, section "_ftrace_events", align 4
@trace_event_fields_mark_victim = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.36, %union.anon.15 { %struct.anon.16 { ptr @.str.30, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mark_victim = internal global %struct.trace_event_class { ptr @str__oom__trace_system_name, ptr @trace_event_raw_event_mark_victim, ptr @perf_trace_mark_victim, ptr @trace_event_reg, ptr @trace_event_fields_mark_victim, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mark_victim, i64 24), ptr getelementptr (i8, ptr @event_class_mark_victim, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mark_victim = internal global %struct.trace_event_functions { ptr @trace_raw_output_mark_victim, ptr null, ptr null, ptr null }, align 4
@print_fmt_mark_victim = internal global [19 x i8] c"\22pid=%d\22, REC->pid\00", align 1
@event_mark_victim = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mark_victim, %union.anon.17 { ptr @__tracepoint_mark_victim }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mark_victim }, ptr @print_fmt_mark_victim, ptr null, %union.anon.18 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mark_victim = internal global ptr @event_mark_victim, section "_ftrace_events", align 4
@trace_event_fields_wake_reaper = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.36, %union.anon.15 { %struct.anon.16 { ptr @.str.30, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_wake_reaper = internal global %struct.trace_event_class { ptr @str__oom__trace_system_name, ptr @trace_event_raw_event_wake_reaper, ptr @perf_trace_wake_reaper, ptr @trace_event_reg, ptr @trace_event_fields_wake_reaper, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_wake_reaper, i64 24), ptr getelementptr (i8, ptr @event_class_wake_reaper, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_wake_reaper = internal global %struct.trace_event_functions { ptr @trace_raw_output_wake_reaper, ptr null, ptr null, ptr null }, align 4
@print_fmt_wake_reaper = internal global [19 x i8] c"\22pid=%d\22, REC->pid\00", align 1
@event_wake_reaper = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_wake_reaper, %union.anon.17 { ptr @__tracepoint_wake_reaper }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_wake_reaper }, ptr @print_fmt_wake_reaper, ptr null, %union.anon.18 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_wake_reaper = internal global ptr @event_wake_reaper, section "_ftrace_events", align 4
@trace_event_fields_start_task_reaping = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.36, %union.anon.15 { %struct.anon.16 { ptr @.str.30, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_start_task_reaping = internal global %struct.trace_event_class { ptr @str__oom__trace_system_name, ptr @trace_event_raw_event_start_task_reaping, ptr @perf_trace_start_task_reaping, ptr @trace_event_reg, ptr @trace_event_fields_start_task_reaping, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_start_task_reaping, i64 24), ptr getelementptr (i8, ptr @event_class_start_task_reaping, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_start_task_reaping = internal global %struct.trace_event_functions { ptr @trace_raw_output_start_task_reaping, ptr null, ptr null, ptr null }, align 4
@print_fmt_start_task_reaping = internal global [19 x i8] c"\22pid=%d\22, REC->pid\00", align 1
@event_start_task_reaping = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_start_task_reaping, %union.anon.17 { ptr @__tracepoint_start_task_reaping }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_start_task_reaping }, ptr @print_fmt_start_task_reaping, ptr null, %union.anon.18 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_start_task_reaping = internal global ptr @event_start_task_reaping, section "_ftrace_events", align 4
@trace_event_fields_finish_task_reaping = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.36, %union.anon.15 { %struct.anon.16 { ptr @.str.30, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_finish_task_reaping = internal global %struct.trace_event_class { ptr @str__oom__trace_system_name, ptr @trace_event_raw_event_finish_task_reaping, ptr @perf_trace_finish_task_reaping, ptr @trace_event_reg, ptr @trace_event_fields_finish_task_reaping, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_finish_task_reaping, i64 24), ptr getelementptr (i8, ptr @event_class_finish_task_reaping, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_finish_task_reaping = internal global %struct.trace_event_functions { ptr @trace_raw_output_finish_task_reaping, ptr null, ptr null, ptr null }, align 4
@print_fmt_finish_task_reaping = internal global [19 x i8] c"\22pid=%d\22, REC->pid\00", align 1
@event_finish_task_reaping = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_finish_task_reaping, %union.anon.17 { ptr @__tracepoint_finish_task_reaping }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_finish_task_reaping }, ptr @print_fmt_finish_task_reaping, ptr null, %union.anon.18 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_finish_task_reaping = internal global ptr @event_finish_task_reaping, section "_ftrace_events", align 4
@trace_event_fields_skip_task_reaping = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.36, %union.anon.15 { %struct.anon.16 { ptr @.str.30, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_skip_task_reaping = internal global %struct.trace_event_class { ptr @str__oom__trace_system_name, ptr @trace_event_raw_event_skip_task_reaping, ptr @perf_trace_skip_task_reaping, ptr @trace_event_reg, ptr @trace_event_fields_skip_task_reaping, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_skip_task_reaping, i64 24), ptr getelementptr (i8, ptr @event_class_skip_task_reaping, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_skip_task_reaping = internal global %struct.trace_event_functions { ptr @trace_raw_output_skip_task_reaping, ptr null, ptr null, ptr null }, align 4
@print_fmt_skip_task_reaping = internal global [19 x i8] c"\22pid=%d\22, REC->pid\00", align 1
@event_skip_task_reaping = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_skip_task_reaping, %union.anon.17 { ptr @__tracepoint_skip_task_reaping }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_skip_task_reaping }, ptr @print_fmt_skip_task_reaping, ptr null, %union.anon.18 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_skip_task_reaping = internal global ptr @event_skip_task_reaping, section "_ftrace_events", align 4
@trace_event_fields_compact_retry = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.36, %union.anon.15 { %struct.anon.16 { ptr @.str.39, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.15 { %struct.anon.16 { ptr @.str.53, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.15 { %struct.anon.16 { ptr @.str.54, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.15 { %struct.anon.16 { ptr @.str.55, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.15 { %struct.anon.16 { ptr @.str.56, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.45, %union.anon.15 { %struct.anon.16 { ptr @.str.57, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_compact_retry = internal global %struct.trace_event_class { ptr @str__oom__trace_system_name, ptr @trace_event_raw_event_compact_retry, ptr @perf_trace_compact_retry, ptr @trace_event_reg, ptr @trace_event_fields_compact_retry, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_compact_retry, i64 24), ptr getelementptr (i8, ptr @event_class_compact_retry, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_compact_retry = internal global %struct.trace_event_functions { ptr @trace_raw_output_compact_retry, ptr null, ptr null, ptr null }, align 4
@print_fmt_compact_retry = internal global [404 x i8] c"\22order=%d priority=%s compaction_result=%s retries=%d max_retries=%d should_retry=%d\22, REC->order, __print_symbolic(REC->priority, {COMPACT_PRIO_SYNC_FULL, \22COMPACT_PRIO_SYNC_FULL\22}, {COMPACT_PRIO_SYNC_LIGHT, \22COMPACT_PRIO_SYNC_LIGHT\22}, {COMPACT_PRIO_ASYNC, \22COMPACT_PRIO_ASYNC\22}), __print_symbolic(REC->result, {1, \22failed\22}, {2, \22withdrawn\22}, {3, \22progress\22}), REC->retries, REC->max_retries, REC->ret\00", align 1
@event_compact_retry = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_compact_retry, %union.anon.17 { ptr @__tracepoint_compact_retry }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_compact_retry }, ptr @print_fmt_compact_retry, ptr null, %union.anon.18 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_compact_retry = internal global ptr @event_compact_retry, section "_ftrace_events", align 4
@sysctl_oom_dump_tasks = dso_local local_unnamed_addr global i32 1, align 4
@oom_lock = dso_local global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @oom_lock, i64 12), ptr getelementptr (i8, ptr @oom_lock, i64 12) } }, align 4
@oom_adj_mutex = dso_local global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @oom_adj_mutex, i64 12), ptr getelementptr (i8, ptr @oom_adj_mutex, i64 12) } }, align 4
@__initcall__kmod_oom_kill__315_685_oom_init4 = internal global ptr @oom_init, section ".initcall4.init", align 4
@oom_victims = internal global %struct.atomic_t zeroinitializer, align 4
@oom_victims_wait = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @oom_victims_wait, i64 4), ptr getelementptr (i8, ptr @oom_victims_wait, i64 4) } }, align 4
@oom_killer_disabled = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"\016OOM killer enabled.\0A\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"\016OOM killer disabled.\0A\00", align 1
@oom_notify_list = internal global %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @oom_notify_list, i64 16), ptr getelementptr (i8, ptr @oom_notify_list, i64 16) } }, ptr null }, align 4
@__kstrtab_register_oom_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_oom_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_register_oom_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_oom_notifier to i32), ptr @__kstrtab_register_oom_notifier, ptr @__kstrtabns_register_oom_notifier }, section "___ksymtab_gpl+register_oom_notifier", align 4
@__kstrtab_unregister_oom_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_oom_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_oom_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_oom_notifier to i32), ptr @__kstrtab_unregister_oom_notifier, ptr @__kstrtabns_unregister_oom_notifier }, section "___ksymtab_gpl+unregister_oom_notifier", align 4
@sysctl_oom_kill_allocating_task = dso_local local_unnamed_addr global i32 0, align 4
@.str.23 = private unnamed_addr constant [41 x i8] c"Out of memory (oom_kill_allocating_task)\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"\014Out of memory and no killable processes...\0A\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"System is deadlocked on memory\0A\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"Memory cgroup out of memory\00", align 1
@pagefault_out_of_memory.pfoom_rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.pagefault_out_of_memory = private unnamed_addr constant [24 x i8] c"pagefault_out_of_memory\00", align 1
@.str.28 = private unnamed_addr constant [63 x i8] c"\014Huh VM_FAULT_OOM leaked out to the #PF handler. Retrying PF\0A\00", align 1
@sysctl_panic_on_oom = dso_local local_unnamed_addr global i32 0, align 4
@.str.29 = private unnamed_addr constant [6 x i8] c"pid_t\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"char[TASK_COMM_LEN]\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"comm\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"oom_score_adj\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"pid=%d comm=%s oom_score_adj=%hd\0A\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"zone_idx\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"reclaimable\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"available\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"min_wmark\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"no_progress_loops\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"wmark_check\00", align 1
@.str.47 = private unnamed_addr constant [108 x i8] c"node=%d zone=%-8s order=%d reclaimable=%lu available=%lu min_wmark=%lu no_progress_loops=%d wmark_check=%d\0A\00", align 1
@trace_raw_output_reclaim_retry_zone.symbols = internal constant [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.48 }, %struct.trace_print_flags { i32 1, ptr @.str.49 }, %struct.trace_print_flags { i32 2, ptr @.str.50 }, %struct.trace_print_flags { i32 3, ptr @.str.51 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.48 = private unnamed_addr constant [4 x i8] c"DMA\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"HighMem\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"Movable\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"pid=%d\0A\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"retries\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"max_retries\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.58 = private unnamed_addr constant [85 x i8] c"order=%d priority=%s compaction_result=%s retries=%d max_retries=%d should_retry=%d\0A\00", align 1
@trace_raw_output_compact_retry.symbols = internal constant [4 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.9 }, %struct.trace_print_flags { i32 1, ptr @.str.10 }, %struct.trace_print_flags { i32 2, ptr @.str.11 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@trace_raw_output_compact_retry.symbols.59 = internal constant [4 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.60 }, %struct.trace_print_flags { i32 2, ptr @.str.61 }, %struct.trace_print_flags { i32 3, ptr @.str.62 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.60 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"withdrawn\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"progress\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"oom_reaper\00", align 1
@oom_reaper_th = internal unnamed_addr global ptr null, align 4
@oom_reaper_list = internal unnamed_addr global ptr null, align 4
@oom_reaper_wait = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @oom_reaper_wait, i64 4), ptr getelementptr (i8, ptr @oom_reaper_wait, i64 4) } }, align 4
@oom_reaper_lock = internal global %struct.spinlock zeroinitializer, align 4
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@.str.64 = private unnamed_addr constant [42 x i8] c"\016oom_reaper: unable to reap pid:%d (%s)\0A\00", align 1
@.str.65 = private unnamed_addr constant [91 x i8] c"\016oom_reaper: reaped process %d (%s), now anon-rss:%lukB, file-rss:%lukB, shmem-rss:%lukB\0A\00", align 1
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@init_task = external dso_local global %struct.task_struct, align 64
@.str.67 = private unnamed_addr constant [14 x i8] c"mm/oom_kill.c\00", align 1
@total_swap_pages = external dso_local local_unnamed_addr global i32, align 4
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@.str.68 = private unnamed_addr constant [43 x i8] c"Out of memory: %s panic_on_oom is enabled\0A\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"compulsory\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"system-wide\00", align 1
@oom_kill_process.oom_rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.oom_kill_process = private unnamed_addr constant [17 x i8] c"oom_kill_process\00", align 1
@.str.71 = private unnamed_addr constant [68 x i8] c"\016%s: OOM victim %d (%s) is already exiting. Skip killing the task\0A\00", align 1
@.str.72 = private unnamed_addr constant [135 x i8] c"\013%s: Killed process %d (%s) total-vm:%lukB, anon-rss:%lukB, file-rss:%lukB, shmem-rss:%lukB, UID:%u pgtables:%lukB oom_score_adj:%hd\0A\00", align 1
@.str.73 = private unnamed_addr constant [47 x i8] c"\016oom killer %d (%s) has mm pinned by %d (%s)\0A\00", align 1
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 4
@.str.74 = private unnamed_addr constant [74 x i8] c"\014%s invoked oom-killer: gfp_mask=%#x(%pGg), order=%d, oom_score_adj=%hd\0A\00", align 1
@vm_node_stat = external dso_local global [40 x %struct.atomic_t], align 4
@.str.75 = private unnamed_addr constant [41 x i8] c"\016Tasks state (memory values in pages):\0A\00", align 1
@.str.76 = private unnamed_addr constant [86 x i8] c"\016[  pid  ]   uid  tgid total_vm      rss pgtables_bytes swapents oom_score_adj name\0A\00", align 1
@.str.77 = private unnamed_addr constant [53 x i8] c"\016[%7d] %5d %5d %8lu %8lu %8ld %8lu         %5hd %s\0A\00", align 1
@.str.78 = private unnamed_addr constant [40 x i8] c"\016oom-kill:constraint=%s,nodemask=%*pbl\00", align 1
@oom_constraint_text = internal unnamed_addr constant [4 x ptr] [ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83], align 4
@.str.79 = private unnamed_addr constant [26 x i8] c"\01c,task=%s,pid=%d,uid=%d\0A\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"CONSTRAINT_NONE\00", align 1
@.str.81 = private unnamed_addr constant [18 x i8] c"CONSTRAINT_CPUSET\00", align 1
@.str.82 = private unnamed_addr constant [25 x i8] c"CONSTRAINT_MEMORY_POLICY\00", align 1
@.str.83 = private unnamed_addr constant [17 x i8] c"CONSTRAINT_MEMCG\00", align 1
@llvm.compiler.used = appending global [85 x ptr] [ptr @TRACE_SYSTEM_COMPACT_COMPLETE, ptr @TRACE_SYSTEM_COMPACT_CONTENDED, ptr @TRACE_SYSTEM_COMPACT_CONTINUE, ptr @TRACE_SYSTEM_COMPACT_DEFERRED, ptr @TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE, ptr @TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE, ptr @TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED, ptr @TRACE_SYSTEM_COMPACT_PRIO_ASYNC, ptr @TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL, ptr @TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT, ptr @TRACE_SYSTEM_COMPACT_SKIPPED, ptr @TRACE_SYSTEM_COMPACT_SUCCESS, ptr @TRACE_SYSTEM_LRU_ACTIVE_ANON, ptr @TRACE_SYSTEM_LRU_ACTIVE_FILE, ptr @TRACE_SYSTEM_LRU_INACTIVE_ANON, ptr @TRACE_SYSTEM_LRU_INACTIVE_FILE, ptr @TRACE_SYSTEM_LRU_UNEVICTABLE, ptr @TRACE_SYSTEM_ZONE_DMA, ptr @TRACE_SYSTEM_ZONE_HIGHMEM, ptr @TRACE_SYSTEM_ZONE_MOVABLE, ptr @TRACE_SYSTEM_ZONE_NORMAL, ptr @__TRACE_SYSTEM_COMPACT_COMPLETE, ptr @__TRACE_SYSTEM_COMPACT_CONTENDED, ptr @__TRACE_SYSTEM_COMPACT_CONTINUE, ptr @__TRACE_SYSTEM_COMPACT_DEFERRED, ptr @__TRACE_SYSTEM_COMPACT_NOT_SUITABLE_ZONE, ptr @__TRACE_SYSTEM_COMPACT_NO_SUITABLE_PAGE, ptr @__TRACE_SYSTEM_COMPACT_PARTIAL_SKIPPED, ptr @__TRACE_SYSTEM_COMPACT_PRIO_ASYNC, ptr @__TRACE_SYSTEM_COMPACT_PRIO_SYNC_FULL, ptr @__TRACE_SYSTEM_COMPACT_PRIO_SYNC_LIGHT, ptr @__TRACE_SYSTEM_COMPACT_SKIPPED, ptr @__TRACE_SYSTEM_COMPACT_SUCCESS, ptr @__TRACE_SYSTEM_LRU_ACTIVE_ANON, ptr @__TRACE_SYSTEM_LRU_ACTIVE_FILE, ptr @__TRACE_SYSTEM_LRU_INACTIVE_ANON, ptr @__TRACE_SYSTEM_LRU_INACTIVE_FILE, ptr @__TRACE_SYSTEM_LRU_UNEVICTABLE, ptr @__TRACE_SYSTEM_ZONE_DMA, ptr @__TRACE_SYSTEM_ZONE_HIGHMEM, ptr @__TRACE_SYSTEM_ZONE_MOVABLE, ptr @__TRACE_SYSTEM_ZONE_NORMAL, ptr @__event_compact_retry, ptr @__event_finish_task_reaping, ptr @__event_mark_victim, ptr @__event_oom_score_adj_update, ptr @__event_reclaim_retry_zone, ptr @__event_skip_task_reaping, ptr @__event_start_task_reaping, ptr @__event_wake_reaper, ptr @__initcall__kmod_oom_kill__315_685_oom_init4, ptr @__ksymtab_register_oom_notifier, ptr @__ksymtab_unregister_oom_notifier, ptr @__tracepoint_compact_retry, ptr @__tracepoint_finish_task_reaping, ptr @__tracepoint_mark_victim, ptr @__tracepoint_oom_score_adj_update, ptr @__tracepoint_ptr_compact_retry, ptr @__tracepoint_ptr_finish_task_reaping, ptr @__tracepoint_ptr_mark_victim, ptr @__tracepoint_ptr_oom_score_adj_update, ptr @__tracepoint_ptr_reclaim_retry_zone, ptr @__tracepoint_ptr_skip_task_reaping, ptr @__tracepoint_ptr_start_task_reaping, ptr @__tracepoint_ptr_wake_reaper, ptr @__tracepoint_reclaim_retry_zone, ptr @__tracepoint_skip_task_reaping, ptr @__tracepoint_start_task_reaping, ptr @__tracepoint_wake_reaper, ptr @event_class_compact_retry, ptr @event_class_finish_task_reaping, ptr @event_class_mark_victim, ptr @event_class_oom_score_adj_update, ptr @event_class_reclaim_retry_zone, ptr @event_class_skip_task_reaping, ptr @event_class_start_task_reaping, ptr @event_class_wake_reaper, ptr @event_compact_retry, ptr @event_finish_task_reaping, ptr @event_mark_victim, ptr @event_oom_score_adj_update, ptr @event_reclaim_retry_zone, ptr @event_skip_task_reaping, ptr @event_start_task_reaping, ptr @event_wake_reaper], section "llvm.metadata"
@switch.table.perf_trace_compact_retry = private unnamed_addr constant [6 x i32] [i32 2, i32 3, i32 3, i32 1, i32 2, i32 2], align 4

@sys_process_mrelease = dso_local alias i32 (i32, i32), ptr @__se_sys_process_mrelease

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_oom_score_adj_update(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_oom_score_adj_update, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #14
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_reclaim_retry_zone(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7) #0 {
  %9 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_reclaim_retry_zone, i32 0, i32 7), align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %11, %8
  %12 = phi ptr [ %16, %11 ], [ %9, %8 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tracepoint_func, ptr %12, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void %13(ptr noundef %15, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7) #14
  %16 = getelementptr %struct.tracepoint_func, ptr %12, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %11

19:                                               ; preds = %11, %8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mark_victim(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mark_victim, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #14
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_wake_reaper(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wake_reaper, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #14
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_start_task_reaping(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_start_task_reaping, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #14
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_finish_task_reaping(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_finish_task_reaping, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #14
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_skip_task_reaping(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_skip_task_reaping, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #14
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_compact_retry(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) #0 {
  %8 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_compact_retry, i32 0, i32 7), align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %10, %7
  %11 = phi ptr [ %15, %10 ], [ %8, %7 ]
  %12 = load volatile ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tracepoint_func, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void %12(ptr noundef %14, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) #14
  %15 = getelementptr %struct.tracepoint_func, ptr %11, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10

18:                                               ; preds = %10, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_oom_score_adj_update(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #14
  br i1 %12, label %27, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 32) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.trace_event_raw_oom_score_adj_update, ptr %14, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_oom_score_adj_update, ptr %14, i32 0, i32 2
  %21 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %20, ptr noundef align 32 dereferenceable(16) %21, i32 16, i1 false)
  %22 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 93
  %23 = load ptr, ptr %22, align 16
  %24 = getelementptr inbounds %struct.signal_struct, ptr %23, i32 0, i32 52
  %25 = load i16, ptr %24, align 2
  %26 = getelementptr inbounds %struct.trace_event_raw_oom_score_adj_update, ptr %14, i32 0, i32 3
  store i16 %25, ptr %26, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #14
  br label %27

27:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_oom_score_adj_update(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #10, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %45, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %45, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #14
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #14
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %34 = load i32, ptr %33, align 8
  %35 = getelementptr inbounds %struct.trace_event_raw_oom_score_adj_update, ptr %20, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_oom_score_adj_update, ptr %20, i32 0, i32 2
  %37 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %36, ptr noundef align 32 dereferenceable(16) %37, i32 16, i1 false)
  %38 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 93
  %39 = load ptr, ptr %38, align 16
  %40 = getelementptr inbounds %struct.signal_struct, ptr %39, i32 0, i32 52
  %41 = load i16, ptr %40, align 2
  %42 = getelementptr inbounds %struct.trace_event_raw_oom_score_adj_update, ptr %20, i32 0, i32 3
  store i16 %41, ptr %42, align 4
  %43 = load i32, ptr %4, align 4
  %44 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 36, i32 noundef %43, ptr noundef %0, i64 noundef 1, ptr noundef %44, ptr noundef %12, ptr noundef null) #14
  br label %45

45:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_reclaim_retry_zone(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7) #0 {
  %9 = alloca %struct.trace_event_buffer, align 4
  %10 = zext i1 %7 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %9, i8 0, i32 24, i1 false), !annotation !9
  %11 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 704
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15, !prof !10

15:                                               ; preds = %8
  %16 = and i32 %12, 256
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20, !prof !11

18:                                               ; preds = %15
  %19 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #14
  br i1 %19, label %34, label %20

20:                                               ; preds = %18, %15, %8
  %21 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %9, ptr noundef %0, i32 noundef 40) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %21, i32 0, i32 1
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.zoneref, ptr %1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %21, i32 0, i32 2
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %21, i32 0, i32 3
  store i32 %2, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %21, i32 0, i32 4
  store i32 %3, ptr %29, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %21, i32 0, i32 5
  store i32 %4, ptr %30, align 4
  %31 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %21, i32 0, i32 6
  store i32 %5, ptr %31, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %21, i32 0, i32 7
  store i32 %6, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %21, i32 0, i32 8
  store i8 %10, ptr %33, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %9) #14
  br label %34

34:                                               ; preds = %23, %20, %18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_reclaim_retry_zone(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7) #0 {
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = zext i1 %7 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  store ptr null, ptr %9, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #14
  store i32 0, ptr %10, align 4, !annotation !9
  %12 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #10, !srcloc !12
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %8
  %24 = load volatile ptr, ptr %19, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %52, label %26

26:                                               ; preds = %23, %8
  %27 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %9, ptr noundef nonnull %10) #14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %52, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %9, align 4
  %31 = call ptr @llvm.returnaddress(i32 0) #14
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %30, i32 0, i32 15
  store i32 %32, ptr %33, align 4
  %34 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr [18 x i32], ptr %30, i32 0, i32 11
  store i32 %35, ptr %36, align 4
  %37 = call i32 @llvm.read_register.i32(metadata !0) #14
  %38 = getelementptr [18 x i32], ptr %30, i32 0, i32 13
  store i32 %37, ptr %38, align 4
  %39 = getelementptr [18 x i32], ptr %30, i32 0, i32 16
  store i32 19, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %27, i32 0, i32 1
  store i32 0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.zoneref, ptr %1, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %27, i32 0, i32 2
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %27, i32 0, i32 3
  store i32 %2, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %27, i32 0, i32 4
  store i32 %3, ptr %45, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %27, i32 0, i32 5
  store i32 %4, ptr %46, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %27, i32 0, i32 6
  store i32 %5, ptr %47, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %27, i32 0, i32 7
  store i32 %6, ptr %48, align 4
  %49 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %27, i32 0, i32 8
  store i8 %11, ptr %49, align 4
  %50 = load i32, ptr %10, align 4
  %51 = load ptr, ptr %9, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %27, i32 noundef 44, i32 noundef %50, ptr noundef %0, i64 noundef 1, ptr noundef %51, ptr noundef %19, ptr noundef null) #14
  br label %52

52:                                               ; preds = %29, %26, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mark_victim(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #14
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_mark_victim, ptr %14, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #14
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mark_victim(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #10, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #14
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #14
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_mark_victim, ptr %20, i32 0, i32 1
  store i32 %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #14
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_wake_reaper(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #14
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_wake_reaper, ptr %14, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #14
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_wake_reaper(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #10, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #14
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #14
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_wake_reaper, ptr %20, i32 0, i32 1
  store i32 %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #14
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_start_task_reaping(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #14
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_start_task_reaping, ptr %14, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #14
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_start_task_reaping(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #10, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #14
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #14
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_start_task_reaping, ptr %20, i32 0, i32 1
  store i32 %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #14
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_finish_task_reaping(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #14
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_finish_task_reaping, ptr %14, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #14
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_finish_task_reaping(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #10, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #14
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #14
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_finish_task_reaping, ptr %20, i32 0, i32 1
  store i32 %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #14
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_skip_task_reaping(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #14
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_skip_task_reaping, ptr %14, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #14
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_skip_task_reaping(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #10, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #14
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #14
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_skip_task_reaping, ptr %20, i32 0, i32 1
  store i32 %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #14
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_compact_retry(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) #0 {
  %8 = alloca %struct.trace_event_buffer, align 4
  %9 = zext i1 %6 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 24, i1 false), !annotation !9
  %10 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 704
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14, !prof !10

14:                                               ; preds = %7
  %15 = and i32 %11, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19, !prof !11

17:                                               ; preds = %14
  %18 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #14
  br i1 %18, label %36, label %19

19:                                               ; preds = %17, %14, %7
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %8, ptr noundef %0, i32 noundef 32) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %20, i32 0, i32 1
  store i32 %1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %20, i32 0, i32 2
  store i32 %2, ptr %24, align 4
  %25 = add i32 %3, -2
  %26 = icmp ult i32 %25, 6
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = getelementptr inbounds [6 x i32], ptr @switch.table.perf_trace_compact_retry, i32 0, i32 %25
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %22
  %31 = phi i32 [ %29, %27 ], [ 3, %22 ]
  %32 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %20, i32 0, i32 3
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %20, i32 0, i32 4
  store i32 %4, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %20, i32 0, i32 5
  store i32 %5, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %20, i32 0, i32 6
  store i8 %9, ptr %35, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %8) #14
  br label %36

36:                                               ; preds = %30, %19, %17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_compact_retry(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) #0 {
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = zext i1 %6 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store ptr null, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #14
  store i32 0, ptr %9, align 4, !annotation !9
  %11 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #10, !srcloc !12
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %7
  %23 = load volatile ptr, ptr %18, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %54, label %25

25:                                               ; preds = %22, %7
  %26 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %8, ptr noundef nonnull %9) #14
  %27 = icmp eq ptr %26, null
  br i1 %27, label %54, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %8, align 4
  %30 = call ptr @llvm.returnaddress(i32 0) #14
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %29, i32 0, i32 15
  store i32 %31, ptr %32, align 4
  %33 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %34 = ptrtoint ptr %33 to i32
  %35 = getelementptr [18 x i32], ptr %29, i32 0, i32 11
  store i32 %34, ptr %35, align 4
  %36 = call i32 @llvm.read_register.i32(metadata !0) #14
  %37 = getelementptr [18 x i32], ptr %29, i32 0, i32 13
  store i32 %36, ptr %37, align 4
  %38 = getelementptr [18 x i32], ptr %29, i32 0, i32 16
  store i32 19, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %26, i32 0, i32 1
  store i32 %1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %26, i32 0, i32 2
  store i32 %2, ptr %40, align 4
  %41 = add i32 %3, -2
  %42 = icmp ult i32 %41, 6
  br i1 %42, label %43, label %46

43:                                               ; preds = %28
  %44 = getelementptr inbounds [6 x i32], ptr @switch.table.perf_trace_compact_retry, i32 0, i32 %41
  %45 = load i32, ptr %44, align 4
  br label %46

46:                                               ; preds = %43, %28
  %47 = phi i32 [ %45, %43 ], [ 3, %28 ]
  %48 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %26, i32 0, i32 3
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %26, i32 0, i32 4
  store i32 %4, ptr %49, align 4
  %50 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %26, i32 0, i32 5
  store i32 %5, ptr %50, align 4
  %51 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %26, i32 0, i32 6
  store i8 %10, ptr %51, align 4
  %52 = load i32, ptr %9, align 4
  %53 = load ptr, ptr %8, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %26, i32 noundef 36, i32 noundef %52, ptr noundef %0, i64 noundef 1, ptr noundef %53, ptr noundef %18, ptr noundef null) #14
  br label %54

54:                                               ; preds = %46, %25, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @find_lock_task_mm(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.signal_struct, ptr %3, i32 0, i32 3
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %22, label %7

7:                                                ; preds = %13, %1
  %8 = phi ptr [ %16, %13 ], [ %5, %1 ]
  %9 = getelementptr i8, ptr %8, i32 324
  tail call void @_raw_spin_lock(ptr noundef %9) #14
  %10 = getelementptr i8, ptr %8, i32 -232
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %20, !prof !11

13:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %14 = load i16, ptr %9, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  %16 = load volatile ptr, ptr %8, align 4
  %17 = load ptr, ptr %2, align 16
  %18 = getelementptr inbounds %struct.signal_struct, ptr %17, i32 0, i32 3
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %22, label %7

20:                                               ; preds = %7
  %21 = getelementptr i8, ptr %8, i32 -1388
  br label %22

22:                                               ; preds = %20, %13, %1
  %23 = phi ptr [ %21, %20 ], [ null, %1 ], [ null, %13 ]
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  ret ptr %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @oom_badness(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 53
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %89, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 2097152
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %89

11:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %12 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %13 = load ptr, ptr %12, align 16
  %14 = getelementptr inbounds %struct.signal_struct, ptr %13, i32 0, i32 3
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %30, label %17

17:                                               ; preds = %23, %11
  %18 = phi ptr [ %26, %23 ], [ %15, %11 ]
  %19 = getelementptr i8, ptr %18, i32 324
  tail call void @_raw_spin_lock(ptr noundef %19) #14
  %20 = getelementptr i8, ptr %18, i32 -232
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %31, !prof !11

23:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %24 = load i16, ptr %19, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  %26 = load volatile ptr, ptr %18, align 4
  %27 = load ptr, ptr %12, align 16
  %28 = getelementptr inbounds %struct.signal_struct, ptr %27, i32 0, i32 3
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %30, label %17

30:                                               ; preds = %23, %11
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  br label %89

31:                                               ; preds = %17
  %32 = getelementptr i8, ptr %18, i32 -232
  %33 = getelementptr i8, ptr %18, i32 -1388
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  %34 = icmp eq ptr %33, null
  br i1 %34, label %89, label %35

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %18, i32 228
  %37 = load ptr, ptr %36, align 16
  %38 = getelementptr inbounds %struct.signal_struct, ptr %37, i32 0, i32 52
  %39 = load i16, ptr %38, align 2
  %40 = sext i16 %39 to i32
  %41 = icmp eq i16 %39, -1000
  br i1 %41, label %60, label %42

42:                                               ; preds = %35
  %43 = load ptr, ptr %32, align 4
  %44 = getelementptr inbounds %struct.anon, ptr %43, i32 0, i32 43
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %45, 2097152
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %42
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %49 = getelementptr i8, ptr %18, i32 8
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  br label %63

53:                                               ; preds = %48
  %54 = getelementptr i8, ptr %18, i32 -88
  %55 = load volatile ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 37
  %57 = load ptr, ptr %56, align 4
  %58 = load ptr, ptr %32, align 4
  %59 = icmp eq ptr %57, %58
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  br i1 %59, label %60, label %63

60:                                               ; preds = %53, %42, %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %61 = load i16, ptr %19, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  br label %89

63:                                               ; preds = %53, %52
  %64 = load ptr, ptr %32, align 4
  %65 = getelementptr inbounds %struct.anon, ptr %64, i32 0, i32 40
  %66 = load volatile i32, ptr %65, align 4
  %67 = tail call i32 @llvm.smax.i32(i32 %66, i32 0) #14
  %68 = getelementptr %struct.anon, ptr %64, i32 0, i32 40, i32 0, i32 1
  %69 = load volatile i32, ptr %68, align 4
  %70 = tail call i32 @llvm.smax.i32(i32 %69, i32 0) #14
  %71 = getelementptr %struct.anon, ptr %64, i32 0, i32 40, i32 0, i32 3
  %72 = load volatile i32, ptr %71, align 4
  %73 = tail call i32 @llvm.smax.i32(i32 %72, i32 0) #14
  %74 = getelementptr %struct.anon, ptr %64, i32 0, i32 40, i32 0, i32 2
  %75 = load volatile i32, ptr %74, align 4
  %76 = tail call i32 @llvm.smax.i32(i32 %75, i32 0) #14
  %77 = getelementptr inbounds %struct.anon, ptr %64, i32 0, i32 12
  %78 = load volatile i32, ptr %77, align 4
  %79 = lshr i32 %78, 12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %80 = load i16, ptr %19, align 4
  %81 = add i16 %80, 1
  store i16 %81, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  %82 = udiv i32 %1, 1000
  %83 = mul i32 %82, %40
  %84 = add i32 %67, %83
  %85 = add i32 %84, %70
  %86 = add i32 %85, %73
  %87 = add i32 %86, %76
  %88 = add i32 %87, %79
  br label %89

89:                                               ; preds = %63, %60, %31, %30, %6, %2
  %90 = phi i32 [ -2147483648, %60 ], [ %88, %63 ], [ -2147483648, %6 ], [ -2147483648, %31 ], [ -2147483648, %30 ], [ -2147483648, %2 ]
  ret i32 %90
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @process_shares_mm(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.signal_struct, ptr %4, i32 0, i32 3
  br label %6

6:                                                ; preds = %10, %2
  %7 = phi ptr [ %5, %2 ], [ %8, %10 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %8, i32 -232
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %6, label %14

14:                                               ; preds = %10
  %15 = icmp eq ptr %12, %1
  br label %16

16:                                               ; preds = %14, %6
  %17 = phi i1 [ %15, %14 ], [ false, %6 ]
  ret i1 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @__oom_reap_task_mm(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.mmu_gather, align 4
  %3 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 43
  tail call void @_set_bit(i32 noundef 22, ptr noundef %3) #14
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %23, %1
  %7 = phi ptr [ %25, %23 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 4203520
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  %16 = and i32 %9, 8
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %2, i8 0, i32 68, i1 false), !annotation !9
  %20 = load i32, ptr %7, align 4
  %21 = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  call void @tlb_gather_mmu(ptr noundef nonnull %2, ptr noundef %0) #14
  call void @unmap_page_range(ptr noundef nonnull %2, ptr noundef nonnull %7, i32 noundef %20, i32 noundef %22, ptr noundef null) #14
  call void @tlb_finish_mmu(ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %2) #14
  br label %23

23:                                               ; preds = %19, %12, %6
  %24 = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %6

27:                                               ; preds = %23, %1
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_gather_mmu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_finish_mmu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_page_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @oom_init() #5 section ".init.text" {
  %1 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @oom_reaper, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str.63) #14
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @wake_up_process(ptr noundef %1) #14
  br label %5

5:                                                ; preds = %3, %0
  store ptr %1, ptr @oom_reaper_th, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exit_oom_victim() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #14
  tail call void @_clear_bit(i32 noundef 18, ptr noundef %1) #14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @oom_victims) #14, !srcloc !20
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @oom_victims, ptr nonnull @oom_victims, i32 1, ptr nonnull elementtype(i32) @oom_victims) #14, !srcloc !21
  %3 = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  tail call void @__wake_up(ptr noundef nonnull @oom_victims_wait, i32 noundef 3, i32 noundef 0, ptr noundef null) #14
  br label %6

6:                                                ; preds = %5, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @oom_killer_enable() local_unnamed_addr #0 {
  store i1 false, ptr @oom_killer_disabled, align 1
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #15
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @oom_killer_disable(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = tail call i32 @mutex_lock_killable(ptr noundef nonnull @oom_lock) #14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %49

5:                                                ; preds = %1
  store i1 true, ptr @oom_killer_disabled, align 1
  tail call void @mutex_unlock(ptr noundef nonnull @oom_lock) #14
  %6 = load volatile i32, ptr @oom_victims, align 4
  %7 = icmp eq i32 %6, 0
  %8 = or i32 %6, %0
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 1, i32 %0
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %7, i1 true, i1 %11
  br i1 %12, label %41, label %13

13:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #14
  %14 = call i32 @prepare_to_wait_event(ptr noundef nonnull @oom_victims_wait, ptr noundef nonnull %2, i32 noundef 1) #14
  %15 = load volatile i32, ptr @oom_victims, align 4
  %16 = icmp eq i32 %15, 0
  %17 = or i32 %15, %0
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 1, i32 %0
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %16, i1 true, i1 %20
  br i1 %21, label %37, label %22

22:                                               ; preds = %26, %13
  %23 = phi i32 [ %34, %26 ], [ %19, %13 ]
  %24 = phi i32 [ %28, %26 ], [ %14, %13 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = call i32 @schedule_timeout(i32 noundef %23) #14
  %28 = call i32 @prepare_to_wait_event(ptr noundef nonnull @oom_victims_wait, ptr noundef nonnull %2, i32 noundef 1) #14
  %29 = load volatile i32, ptr @oom_victims, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = icmp ne i32 %27, 0
  %33 = select i1 %30, i1 true, i1 %32
  %34 = select i1 %33, i32 %27, i32 1
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %31, i1 true, i1 %35
  br i1 %36, label %37, label %22

37:                                               ; preds = %26, %13
  %38 = phi i32 [ %19, %13 ], [ %34, %26 ]
  call void @finish_wait(ptr noundef nonnull @oom_victims_wait, ptr noundef nonnull %2) #14
  br label %39

39:                                               ; preds = %37, %22
  %40 = phi i32 [ %38, %37 ], [ %24, %22 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #14
  br label %41

41:                                               ; preds = %39, %5
  %42 = phi i32 [ %10, %5 ], [ %40, %39 ]
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i1 false, ptr @oom_killer_disabled, align 1
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi ptr [ @.str.21, %44 ], [ @.str.22, %41 ]
  %47 = xor i1 %43, true
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %46) #15
  br label %49

49:                                               ; preds = %45, %1
  %50 = phi i1 [ false, %1 ], [ %47, %45 ]
  ret i1 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_oom_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @oom_notify_list, ptr noundef %0) #14
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unregister_oom_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @oom_notify_list, ptr noundef %0) #14
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @out_of_memory(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4
  %3 = load i1, ptr @oom_killer_disabled, align 1
  br i1 %3, label %192, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.oom_control, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @oom_notify_list, i32 noundef 0, ptr noundef nonnull %2) #14
  %10 = load i32, ptr %2, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.oom_control, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %192

16:                                               ; preds = %12, %8, %4
  %17 = tail call ptr @llvm.thread.pointer() #14
  %18 = call fastcc zeroext i1 @task_will_free_mem(ptr noundef %17)
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  call fastcc void @mark_oom_victim(ptr noundef %17)
  call fastcc void @wake_oom_reaper(ptr noundef %17)
  br label %192

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.oom_control, ptr %0, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = and i32 %22, 128
  %25 = icmp eq i32 %24, 0
  %26 = and i1 %23, %25
  %27 = load ptr, ptr %5, align 4
  %28 = icmp eq ptr %27, null
  br i1 %26, label %29, label %30

29:                                               ; preds = %20
  br i1 %28, label %192, label %35

30:                                               ; preds = %20
  br i1 %28, label %31, label %35

31:                                               ; preds = %30
  %32 = load volatile i32, ptr @_totalram_pages, align 4
  %33 = load i32, ptr @total_swap_pages, align 4
  %34 = add i32 %33, %32
  br label %35

35:                                               ; preds = %31, %30, %29
  %36 = phi i1 [ true, %31 ], [ false, %30 ], [ false, %29 ]
  %37 = phi ptr [ null, %31 ], [ %27, %30 ], [ %27, %29 ]
  %38 = phi i32 [ %34, %31 ], [ 1, %30 ], [ 1, %29 ]
  %39 = phi i32 [ 0, %31 ], [ 3, %30 ], [ 3, %29 ]
  %40 = getelementptr inbounds %struct.oom_control, ptr %0, i32 0, i32 5
  store i32 %38, ptr %40, align 4
  %41 = getelementptr inbounds %struct.oom_control, ptr %0, i32 0, i32 8
  store i32 %39, ptr %41, align 4
  %42 = getelementptr inbounds %struct.oom_control, ptr %0, i32 0, i32 1
  store ptr null, ptr %42, align 4
  %43 = load i32, ptr @sysctl_panic_on_oom, align 4
  switch i32 %43, label %44 [
    i32 0, label %53
    i32 2, label %45
  ], !prof !23

44:                                               ; preds = %35
  br i1 %36, label %45, label %53

45:                                               ; preds = %44, %35
  %46 = getelementptr inbounds %struct.oom_control, ptr %0, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  call fastcc void @dump_header(ptr noundef %0, ptr noundef null) #14
  %50 = load i32, ptr @sysctl_panic_on_oom, align 4
  %51 = icmp eq i32 %50, 2
  %52 = select i1 %51, ptr @.str.69, ptr @.str.70
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.68, ptr noundef nonnull %52) #16
  unreachable

53:                                               ; preds = %45, %44, %35
  %54 = icmp eq ptr %37, null
  %55 = load i32, ptr @sysctl_oom_kill_allocating_task, align 4
  %56 = icmp ne i32 %55, 0
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %79

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 37
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %79, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 53
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %79, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 4
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 2097152
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 93
  %73 = load ptr, ptr %72, align 16
  %74 = getelementptr inbounds %struct.signal_struct, ptr %73, i32 0, i32 52
  %75 = load i16, ptr %74, align 2
  %76 = icmp eq i16 %75, -1000
  br i1 %76, label %79, label %77

77:                                               ; preds = %71
  call fastcc void @get_task_struct(ptr noundef %17)
  %78 = getelementptr inbounds %struct.oom_control, ptr %0, i32 0, i32 6
  store ptr %17, ptr %78, align 4
  call fastcc void @oom_kill_process(ptr noundef %0, ptr noundef nonnull @.str.23)
  br label %192

79:                                               ; preds = %71, %66, %62, %58, %53
  %80 = getelementptr inbounds %struct.oom_control, ptr %0, i32 0, i32 7
  store i32 -2147483648, ptr %80, align 4
  br i1 %36, label %81, label %168

81:                                               ; preds = %79
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %82 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 34), align 4
  %83 = getelementptr i8, ptr %82, i32 -1116
  %84 = icmp eq ptr %83, @init_task
  br i1 %84, label %167, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.oom_control, ptr %0, i32 0, i32 4
  %87 = getelementptr inbounds %struct.oom_control, ptr %0, i32 0, i32 6
  br label %88

88:                                               ; preds = %162, %85
  %89 = phi ptr [ %83, %85 ], [ %165, %162 ]
  %90 = phi ptr [ %82, %85 ], [ %164, %162 ]
  %91 = getelementptr i8, ptr %90, i32 176
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %162, label %94

94:                                               ; preds = %88
  %95 = getelementptr i8, ptr %90, i32 -568
  %96 = load i32, ptr %95, align 4
  %97 = and i32 %96, 2097152
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %162

99:                                               ; preds = %94
  %100 = load i32, ptr %86, align 4
  %101 = icmp eq i32 %100, -1
  %102 = getelementptr i8, ptr %90, i32 500
  %103 = load ptr, ptr %102, align 16
  br i1 %101, label %113, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.signal_struct, ptr %103, i32 0, i32 54
  %106 = load ptr, ptr %105, align 8
  %107 = icmp eq ptr %106, null
  br i1 %107, label %113, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.anon, ptr %106, i32 0, i32 43
  %110 = load volatile i32, ptr %109, align 4
  %111 = and i32 %110, 2097152
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %149, label %162

113:                                              ; preds = %104, %99
  %114 = getelementptr inbounds %struct.signal_struct, ptr %103, i32 0, i32 51
  %115 = load i8, ptr %114, align 8, !range !24
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %113
  %118 = load i32, ptr %40, align 4
  %119 = call i32 @oom_badness(ptr noundef %89, i32 noundef %118) #14
  %120 = icmp eq i32 %119, -2147483648
  br i1 %120, label %162, label %121

121:                                              ; preds = %117
  %122 = load i32, ptr %80, align 4
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %162, label %124

124:                                              ; preds = %121, %113
  %125 = phi i32 [ %119, %121 ], [ 2147483647, %113 ]
  %126 = load ptr, ptr %87, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %137, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.task_struct, ptr %126, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !25
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %129) #14, !srcloc !20
  %130 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %129, ptr %129, i32 1, ptr elementtype(i32) %129) #14, !srcloc !26
  %131 = extractvalue { i32, i32, i32 } %130, 0
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %136, label %133

133:                                              ; preds = %128
  %134 = icmp sgt i32 %131, 0
  br i1 %134, label %137, label %135, !prof !10

135:                                              ; preds = %133
  call void @refcount_warn_saturate(ptr noundef %129, i32 noundef 3) #14
  br label %137

136:                                              ; preds = %128
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !27
  call void @__put_task_struct(ptr noundef nonnull %126) #14
  br label %137

137:                                              ; preds = %136, %135, %133, %124
  %138 = getelementptr i8, ptr %90, i32 -572
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %138) #14, !srcloc !20
  %139 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %138, ptr %138, i32 1, ptr elementtype(i32) %138) #14, !srcloc !28
  %140 = extractvalue { i32, i32, i32 } %139, 0
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %146, label %142, !prof !11

142:                                              ; preds = %137
  %143 = add i32 %140, 1
  %144 = or i32 %143, %140
  %145 = icmp sgt i32 %144, -1
  br i1 %145, label %148, label %146, !prof !10

146:                                              ; preds = %142, %137
  %147 = phi i32 [ 2, %137 ], [ 1, %142 ]
  call void @refcount_warn_saturate(ptr noundef %138, i32 noundef %147) #14
  br label %148

148:                                              ; preds = %146, %142
  store ptr %89, ptr %87, align 4
  store i32 %125, ptr %80, align 4
  br label %162

149:                                              ; preds = %108
  %150 = load ptr, ptr %87, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %161, label %152

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.task_struct, ptr %150, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !25
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %153) #14, !srcloc !20
  %154 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %153, ptr %153, i32 1, ptr elementtype(i32) %153) #14, !srcloc !26
  %155 = extractvalue { i32, i32, i32 } %154, 0
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %160, label %157

157:                                              ; preds = %152
  %158 = icmp sgt i32 %155, 0
  br i1 %158, label %161, label %159, !prof !10

159:                                              ; preds = %157
  call void @refcount_warn_saturate(ptr noundef %153, i32 noundef 3) #14
  br label %161

160:                                              ; preds = %152
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !27
  call void @__put_task_struct(ptr noundef nonnull %150) #14
  br label %161

161:                                              ; preds = %160, %159, %157, %149
  store ptr inttoptr (i32 -1 to ptr), ptr %87, align 4
  br label %167

162:                                              ; preds = %148, %121, %117, %108, %94, %88
  %163 = getelementptr inbounds %struct.task_struct, ptr %89, i32 0, i32 34
  %164 = load volatile ptr, ptr %163, align 4
  %165 = getelementptr i8, ptr %164, i32 -1116
  %166 = icmp eq ptr %165, @init_task
  br i1 %166, label %167, label %88

167:                                              ; preds = %162, %161, %81
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  br label %168

168:                                              ; preds = %167, %79
  %169 = getelementptr inbounds %struct.oom_control, ptr %0, i32 0, i32 6
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %181

172:                                              ; preds = %168
  call fastcc void @dump_header(ptr noundef %0, ptr noundef null)
  %173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #15
  %174 = getelementptr inbounds %struct.oom_control, ptr %0, i32 0, i32 4
  %175 = load i32, ptr %174, align 4
  %176 = icmp eq i32 %175, -1
  br i1 %176, label %181, label %177

177:                                              ; preds = %172
  %178 = load ptr, ptr %5, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  call void (ptr, ...) @panic(ptr noundef nonnull @.str.25) #16
  unreachable

181:                                              ; preds = %177, %172, %168
  %182 = load ptr, ptr %169, align 4
  %183 = ptrtoint ptr %182 to i32
  switch i32 %183, label %184 [
    i32 0, label %189
    i32 -1, label %189
  ]

184:                                              ; preds = %181
  %185 = load ptr, ptr %5, align 4
  %186 = icmp eq ptr %185, null
  %187 = select i1 %186, ptr @.str.26, ptr @.str.27
  call fastcc void @oom_kill_process(ptr noundef %0, ptr noundef nonnull %187)
  %188 = load ptr, ptr %169, align 4
  br label %189

189:                                              ; preds = %184, %181, %181
  %190 = phi ptr [ %182, %181 ], [ %182, %181 ], [ %188, %184 ]
  %191 = icmp ne ptr %190, null
  br label %192

192:                                              ; preds = %189, %77, %29, %19, %12, %1
  %193 = phi i1 [ true, %19 ], [ %191, %189 ], [ true, %77 ], [ false, %1 ], [ true, %12 ], [ true, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  ret i1 %193
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @task_will_free_mem(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %80, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %80

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 12
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 64
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %20, label %80

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %80, label %25

25:                                               ; preds = %20, %11
  %26 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 43
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 2097152
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %80

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 10
  %32 = load volatile i32, ptr %31, align 4
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %80, label %34

34:                                               ; preds = %30
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %35 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 34), align 4
  %36 = getelementptr i8, ptr %35, i32 -1116
  %37 = icmp eq ptr %36, @init_task
  br i1 %37, label %78, label %38

38:                                               ; preds = %56, %34
  %39 = phi ptr [ %57, %56 ], [ %35, %34 ]
  %40 = getelementptr i8, ptr %39, i32 500
  %41 = load ptr, ptr %40, align 16
  %42 = getelementptr inbounds %struct.signal_struct, ptr %41, i32 0, i32 3
  br label %43

43:                                               ; preds = %47, %38
  %44 = phi ptr [ %42, %38 ], [ %45, %47 ]
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %42
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = getelementptr i8, ptr %45, i32 -232
  %49 = load volatile ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %43, label %51

51:                                               ; preds = %47
  %52 = icmp eq ptr %49, %3
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  %54 = load ptr, ptr %6, align 16
  %55 = icmp eq ptr %54, %41
  br i1 %55, label %56, label %60

56:                                               ; preds = %73, %64, %53, %51, %43
  %57 = load volatile ptr, ptr %39, align 4
  %58 = getelementptr i8, ptr %57, i32 -1116
  %59 = icmp eq ptr %58, @init_task
  br i1 %59, label %78, label %38

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.signal_struct, ptr %41, i32 0, i32 13
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %78

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.signal_struct, ptr %41, i32 0, i32 12
  %66 = load i32, ptr %65, align 8
  %67 = and i32 %66, 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %56

69:                                               ; preds = %64
  %70 = getelementptr i8, ptr %39, i32 264
  %71 = load volatile ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, %70
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = getelementptr i8, ptr %39, i32 -568
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %56

78:                                               ; preds = %73, %69, %60, %56, %34
  %79 = phi i1 [ true, %34 ], [ false, %69 ], [ false, %73 ], [ false, %60 ], [ true, %56 ]
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  br label %80

80:                                               ; preds = %78, %30, %25, %20, %16, %5, %1
  %81 = phi i1 [ %79, %78 ], [ false, %1 ], [ false, %25 ], [ true, %30 ], [ false, %5 ], [ false, %20 ], [ false, %16 ]
  ret i1 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mark_oom_victim(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 37
  %3 = load ptr, ptr %2, align 4
  %4 = load i1, ptr @oom_killer_disabled, align 1
  br i1 %4, label %5, label %6, !prof !11

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.67, i32 noundef 706, i32 noundef 9, ptr noundef null) #14
  br label %6

6:                                                ; preds = %5, %1
  %7 = tail call i32 @_test_and_set_bit(i32 noundef 18, ptr noundef %0) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %57

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %11 = load ptr, ptr %10, align 16
  %12 = getelementptr inbounds %struct.signal_struct, ptr %11, i32 0, i32 54
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !29
  %13 = ptrtoint ptr %3 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #14, !srcloc !20
  br label %14

14:                                               ; preds = %14, %9
  %15 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %12, i32 0, i32 %13) #14, !srcloc !30
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %14

18:                                               ; preds = %14
  %19 = extractvalue { i32, i32 } %15, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !31
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load ptr, ptr %10, align 16
  %23 = getelementptr inbounds %struct.signal_struct, ptr %22, i32 0, i32 54
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.anon, ptr %24, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #14, !srcloc !20
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #14, !srcloc !32
  %27 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 43
  tail call void @_set_bit(i32 noundef 25, ptr noundef %27) #14
  br label %28

28:                                               ; preds = %21, %18
  tail call void @__thaw_task(ptr noundef %0) #14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @oom_victims) #14, !srcloc !20
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @oom_victims, ptr nonnull @oom_victims, i32 1, ptr nonnull elementtype(i32) @oom_victims) #14, !srcloc !32
  %30 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 52
  %31 = load i32, ptr %30, align 8
  %32 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mark_victim, i32 0, i32 1), align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %28
  %35 = tail call ptr @llvm.thread.pointer() #14
  %36 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %37 = load i32, ptr %36, align 8
  %38 = lshr i32 %37, 5
  %39 = getelementptr i32, ptr @__cpu_online_mask, i32 %38
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %37, 31
  %42 = shl nuw i32 1, %41
  %43 = and i32 %42, %40
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %34
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !33
  %46 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mark_victim, i32 0, i32 7), align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %48, %45
  %49 = phi ptr [ %53, %48 ], [ %46, %45 ]
  %50 = load volatile ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.tracepoint_func, ptr %49, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  tail call void %50(ptr noundef %52, i32 noundef %31) #14
  %53 = getelementptr %struct.tracepoint_func, ptr %49, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %48

56:                                               ; preds = %48, %45
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !34
  br label %57

57:                                               ; preds = %56, %34, %28, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @wake_oom_reaper(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.signal_struct, ptr %3, i32 0, i32 54
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 43
  %7 = tail call i32 @_test_and_set_bit(i32 noundef 26, ptr noundef %6) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %53

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #14, !srcloc !20
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #14, !srcloc !28
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14, !prof !11

14:                                               ; preds = %9
  %15 = add i32 %12, 1
  %16 = or i32 %15, %12
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %20, label %18, !prof !10

18:                                               ; preds = %14, %9
  %19 = phi i32 [ 2, %9 ], [ 1, %14 ]
  tail call void @refcount_warn_saturate(ptr noundef %10, i32 noundef %19) #14
  br label %20

20:                                               ; preds = %18, %14
  tail call void @_raw_spin_lock(ptr noundef nonnull @oom_reaper_lock) #14
  %21 = load ptr, ptr @oom_reaper_list, align 4
  %22 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 150
  store ptr %21, ptr %22, align 4
  store ptr %0, ptr @oom_reaper_list, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %23 = load i16, ptr @oom_reaper_lock, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr @oom_reaper_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  %25 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 52
  %26 = load i32, ptr %25, align 8
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wake_reaper, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %20
  %30 = tail call ptr @llvm.thread.pointer() #14
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !35
  %41 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wake_reaper, i32 0, i32 7), align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %43, %40
  %44 = phi ptr [ %48, %43 ], [ %41, %40 ]
  %45 = load volatile ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.tracepoint_func, ptr %44, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  tail call void %45(ptr noundef %47, i32 noundef %26) #14
  %48 = getelementptr %struct.tracepoint_func, ptr %44, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %43

51:                                               ; preds = %43, %40
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !36
  br label %52

52:                                               ; preds = %51, %29, %20
  tail call void @__wake_up(ptr noundef nonnull @oom_reaper_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #14
  br label %53

53:                                               ; preds = %52, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @get_task_struct(ptr noundef %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #14, !srcloc !20
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #14, !srcloc !28
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !11

6:                                                ; preds = %1
  %7 = add i32 %4, 1
  %8 = or i32 %7, %4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10, !prof !10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 2, %1 ], [ 1, %6 ]
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef %11) #14
  br label %12

12:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @oom_kill_process(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.oom_control, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %5) #14
  %6 = tail call fastcc zeroext i1 @task_will_free_mem(ptr noundef %4)
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  tail call fastcc void @mark_oom_victim(ptr noundef %4)
  tail call fastcc void @wake_oom_reaper(ptr noundef %4)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %8 = load i16, ptr %5, align 4
  %9 = add i16 %8, 1
  store i16 %9, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  %10 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #14, !srcloc !20
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #14, !srcloc !26
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = icmp sgt i32 %12, 0
  br i1 %15, label %203, label %16, !prof !10

16:                                               ; preds = %14
  tail call void @refcount_warn_saturate(ptr noundef %10, i32 noundef 3) #14
  br label %203

17:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !27
  tail call void @__put_task_struct(ptr noundef %4) #14
  br label %203

18:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %19 = load i16, ptr %5, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  %21 = tail call i32 @___ratelimit(ptr noundef nonnull @oom_kill_process.oom_rs, ptr noundef nonnull @__func__.oom_kill_process) #14
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  tail call fastcc void @dump_header(ptr noundef %0, ptr noundef %4)
  br label %24

24:                                               ; preds = %23, %18
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %25 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 93
  %26 = load ptr, ptr %25, align 16
  %27 = getelementptr inbounds %struct.signal_struct, ptr %26, i32 0, i32 3
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %43, label %30

30:                                               ; preds = %36, %24
  %31 = phi ptr [ %39, %36 ], [ %28, %24 ]
  %32 = getelementptr i8, ptr %31, i32 324
  tail call void @_raw_spin_lock(ptr noundef %32) #14
  %33 = getelementptr i8, ptr %31, i32 -232
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %44, !prof !11

36:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %37 = load i16, ptr %32, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %32, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  %39 = load volatile ptr, ptr %31, align 4
  %40 = load ptr, ptr %25, align 16
  %41 = getelementptr inbounds %struct.signal_struct, ptr %40, i32 0, i32 3
  %42 = icmp eq ptr %39, %41
  br i1 %42, label %43, label %30

43:                                               ; preds = %36, %24
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  br label %47

44:                                               ; preds = %30
  %45 = getelementptr i8, ptr %31, i32 -1388
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %44, %43
  %48 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 52
  %49 = load i32, ptr %48, align 8
  %50 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 85
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %1, i32 noundef %49, ptr noundef %50) #15
  %52 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #14, !srcloc !20
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 1, ptr elementtype(i32) %52) #14, !srcloc !26
  %54 = extractvalue { i32, i32, i32 } %53, 0
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %59, label %56

56:                                               ; preds = %47
  %57 = icmp sgt i32 %54, 0
  br i1 %57, label %203, label %58, !prof !10

58:                                               ; preds = %56
  tail call void @refcount_warn_saturate(ptr noundef %52, i32 noundef 3) #14
  br label %203

59:                                               ; preds = %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !27
  tail call void @__put_task_struct(ptr noundef %4) #14
  br label %203

60:                                               ; preds = %44
  %61 = icmp eq ptr %45, %4
  br i1 %61, label %82, label %62

62:                                               ; preds = %60
  %63 = getelementptr i8, ptr %31, i32 -844
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %63) #14, !srcloc !20
  %64 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %63, ptr %63, i32 1, ptr elementtype(i32) %63) #14, !srcloc !28
  %65 = extractvalue { i32, i32, i32 } %64, 0
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67, !prof !11

67:                                               ; preds = %62
  %68 = add i32 %65, 1
  %69 = or i32 %68, %65
  %70 = icmp sgt i32 %69, -1
  br i1 %70, label %73, label %71, !prof !10

71:                                               ; preds = %67, %62
  %72 = phi i32 [ 2, %62 ], [ 1, %67 ]
  tail call void @refcount_warn_saturate(ptr noundef %63, i32 noundef %72) #14
  br label %73

73:                                               ; preds = %71, %67
  %74 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %74) #14, !srcloc !20
  %75 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %74, ptr %74, i32 1, ptr elementtype(i32) %74) #14, !srcloc !26
  %76 = extractvalue { i32, i32, i32 } %75, 0
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = icmp sgt i32 %76, 0
  br i1 %79, label %82, label %80, !prof !10

80:                                               ; preds = %78
  tail call void @refcount_warn_saturate(ptr noundef %74, i32 noundef 3) #14
  br label %82

81:                                               ; preds = %73
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !27
  tail call void @__put_task_struct(ptr noundef %4) #14
  br label %82

82:                                               ; preds = %81, %80, %78, %60
  %83 = phi ptr [ %4, %60 ], [ %45, %78 ], [ %45, %80 ], [ %45, %81 ]
  %84 = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 37
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.anon, ptr %85, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %86) #14, !srcloc !20
  %87 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %86, ptr %86, i32 1, ptr elementtype(i32) %86) #14, !srcloc !32
  %88 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !37
  %89 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %90 = inttoptr i32 %89 to ptr
  %91 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %90) #10, !srcloc !12
  %92 = add i32 %91, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 45) to i32)
  %93 = inttoptr i32 %92 to ptr
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %94, 1
  store i32 %95, ptr %93, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %88) #14, !srcloc !38
  %96 = tail call i32 @do_send_sig_info(i32 noundef 9, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %83, i32 noundef 1) #14
  tail call fastcc void @mark_oom_victim(ptr noundef %83) #14
  %97 = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 52
  %98 = load i32, ptr %97, align 8
  %99 = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 85
  %100 = getelementptr inbounds %struct.anon, ptr %85, i32 0, i32 19
  %101 = load i32, ptr %100, align 8
  %102 = shl i32 %101, 2
  %103 = getelementptr inbounds %struct.anon, ptr %85, i32 0, i32 40
  %104 = getelementptr %struct.anon, ptr %85, i32 0, i32 40, i32 0, i32 1
  %105 = load volatile i32, ptr %104, align 4
  %106 = tail call i32 @llvm.smax.i32(i32 %105, i32 0) #14
  %107 = shl i32 %106, 2
  %108 = load volatile i32, ptr %103, align 4
  %109 = tail call i32 @llvm.smax.i32(i32 %108, i32 0) #14
  %110 = shl i32 %109, 2
  %111 = getelementptr %struct.anon, ptr %85, i32 0, i32 40, i32 0, i32 3
  %112 = load volatile i32, ptr %111, align 4
  %113 = tail call i32 @llvm.smax.i32(i32 %112, i32 0) #14
  %114 = shl i32 %113, 2
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %115 = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 82
  %116 = load volatile ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.cred, ptr %116, i32 0, i32 1
  %118 = load i32, ptr %117, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  %119 = getelementptr inbounds %struct.anon, ptr %85, i32 0, i32 12
  %120 = load volatile i32, ptr %119, align 4
  %121 = lshr i32 %120, 10
  %122 = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 93
  %123 = load ptr, ptr %122, align 16
  %124 = getelementptr inbounds %struct.signal_struct, ptr %123, i32 0, i32 52
  %125 = load i16, ptr %124, align 2
  %126 = sext i16 %125 to i32
  %127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %1, i32 noundef %98, ptr noundef %99, i32 noundef %102, i32 noundef %107, i32 noundef %110, i32 noundef %114, i32 noundef %118, i32 noundef %121, i32 noundef %126) #15
  %128 = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 107
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %129 = load i16, ptr %128, align 4
  %130 = add i16 %129, 1
  store i16 %130, ptr %128, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %131 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 34), align 4
  %132 = getelementptr i8, ptr %131, i32 -1116
  %133 = icmp eq ptr %132, @init_task
  br i1 %133, label %186, label %134

134:                                              ; preds = %82
  %135 = getelementptr inbounds %struct.anon, ptr %85, i32 0, i32 43
  br label %136

136:                                              ; preds = %163, %134
  %137 = phi ptr [ %132, %134 ], [ %171, %163 ]
  %138 = phi ptr [ %131, %134 ], [ %170, %163 ]
  %139 = phi i1 [ true, %134 ], [ false, %163 ]
  br label %140

140:                                              ; preds = %180, %136
  %141 = phi ptr [ %137, %136 ], [ %183, %180 ]
  %142 = phi ptr [ %138, %136 ], [ %182, %180 ]
  %143 = getelementptr i8, ptr %142, i32 500
  %144 = load ptr, ptr %143, align 16
  %145 = getelementptr inbounds %struct.signal_struct, ptr %144, i32 0, i32 3
  br label %146

146:                                              ; preds = %150, %140
  %147 = phi ptr [ %145, %140 ], [ %148, %150 ]
  %148 = load volatile ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, %145
  br i1 %149, label %180, label %150

150:                                              ; preds = %146
  %151 = getelementptr i8, ptr %148, i32 -232
  %152 = load volatile ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %146, label %154

154:                                              ; preds = %150
  %155 = icmp eq ptr %152, %85
  br i1 %155, label %156, label %180

156:                                              ; preds = %154
  %157 = load ptr, ptr %122, align 16
  %158 = icmp eq ptr %144, %157
  br i1 %158, label %180, label %159

159:                                              ; preds = %156
  %160 = getelementptr i8, ptr %142, i32 176
  %161 = load i32, ptr %160, align 4
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %173

163:                                              ; preds = %159
  tail call void @_set_bit(i32 noundef 21, ptr noundef %135) #14
  %164 = load i32, ptr %97, align 8
  %165 = getelementptr i8, ptr %142, i32 172
  %166 = load i32, ptr %165, align 8
  %167 = getelementptr i8, ptr %142, i32 452
  %168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %164, ptr noundef %99, i32 noundef %166, ptr noundef %167) #15
  %169 = getelementptr inbounds %struct.task_struct, ptr %141, i32 0, i32 34
  %170 = load volatile ptr, ptr %169, align 4
  %171 = getelementptr i8, ptr %170, i32 -1116
  %172 = icmp eq ptr %171, @init_task
  br i1 %172, label %188, label %136

173:                                              ; preds = %159
  %174 = getelementptr i8, ptr %142, i32 -568
  %175 = load i32, ptr %174, align 4
  %176 = and i32 %175, 2097152
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %180, !prof !10

178:                                              ; preds = %173
  %179 = tail call i32 @do_send_sig_info(i32 noundef 9, ptr noundef nonnull inttoptr (i32 1 to ptr), ptr noundef %141, i32 noundef 1) #14
  br label %180

180:                                              ; preds = %178, %173, %156, %154, %146
  %181 = getelementptr inbounds %struct.task_struct, ptr %141, i32 0, i32 34
  %182 = load volatile ptr, ptr %181, align 4
  %183 = getelementptr i8, ptr %182, i32 -1116
  %184 = icmp eq ptr %183, @init_task
  br i1 %184, label %185, label %140

185:                                              ; preds = %180
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  br i1 %139, label %187, label %189

186:                                              ; preds = %82
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  br label %187

187:                                              ; preds = %186, %185
  tail call fastcc void @wake_oom_reaper(ptr noundef %83) #14
  br label %189

188:                                              ; preds = %163
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  br label %189

189:                                              ; preds = %188, %187, %185
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %86) #14, !srcloc !20
  %190 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %86, ptr %86, i32 1, ptr elementtype(i32) %86) #14, !srcloc !21
  %191 = extractvalue { i32, i32 } %190, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !22
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %194, !prof !11

193:                                              ; preds = %189
  tail call void @__mmdrop(ptr noundef %85) #14
  br label %194

194:                                              ; preds = %193, %189
  %195 = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %195) #14, !srcloc !20
  %196 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %195, ptr %195, i32 1, ptr elementtype(i32) %195) #14, !srcloc !26
  %197 = extractvalue { i32, i32, i32 } %196, 0
  %198 = icmp eq i32 %197, 1
  br i1 %198, label %202, label %199

199:                                              ; preds = %194
  %200 = icmp sgt i32 %197, 0
  br i1 %200, label %203, label %201, !prof !10

201:                                              ; preds = %199
  tail call void @refcount_warn_saturate(ptr noundef %195, i32 noundef 3) #14
  br label %203

202:                                              ; preds = %194
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !27
  tail call void @__put_task_struct(ptr noundef %83) #14
  br label %203

203:                                              ; preds = %202, %201, %199, %59, %58, %56, %17, %16, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dump_header(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @llvm.thread.pointer() #14
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 85
  %5 = getelementptr inbounds %struct.oom_control, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.oom_control, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 93
  %10 = load ptr, ptr %9, align 16
  %11 = getelementptr inbounds %struct.signal_struct, ptr %10, i32 0, i32 52
  %12 = load i16, ptr %11, align 2
  %13 = sext i16 %12 to i32
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %4, i32 noundef %6, ptr noundef %5, i32 noundef %8, i32 noundef %13) #15
  tail call void @dump_stack() #15
  %15 = getelementptr inbounds %struct.oom_control, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %45

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.oom_control, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void @show_mem(i32 noundef 1, ptr noundef %20) #14
  %21 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 1), align 4
  %22 = tail call i32 @llvm.smax.i32(i32 %21, i32 0) #14
  %23 = load volatile i32, ptr @vm_node_stat, align 4
  %24 = tail call i32 @llvm.smax.i32(i32 %23, i32 0) #14
  %25 = add nuw i32 %24, %22
  %26 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3), align 4
  %27 = tail call i32 @llvm.smax.i32(i32 %26, i32 0) #14
  %28 = add i32 %25, %27
  %29 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), align 4
  %30 = tail call i32 @llvm.smax.i32(i32 %29, i32 0) #14
  %31 = add i32 %28, %30
  %32 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 7), align 4
  %33 = tail call i32 @llvm.smax.i32(i32 %32, i32 0) #14
  %34 = add i32 %31, %33
  %35 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 8), align 4
  %36 = tail call i32 @llvm.smax.i32(i32 %35, i32 0) #14
  %37 = add i32 %34, %36
  %38 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 4), align 4
  %39 = tail call i32 @llvm.smax.i32(i32 %38, i32 0) #14
  %40 = add i32 %37, %39
  %41 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 6), align 4
  %42 = tail call i32 @llvm.smax.i32(i32 %41, i32 0) #14
  %43 = icmp ugt i32 %42, %40
  br i1 %43, label %44, label %45

44:                                               ; preds = %18
  tail call void @dump_unreclaimable_slab() #14
  br label %45

45:                                               ; preds = %44, %18, %2
  %46 = load i32, ptr @sysctl_oom_dump_tasks, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %133, label %48

48:                                               ; preds = %45
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #15
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #15
  %51 = load ptr, ptr %15, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %133

53:                                               ; preds = %48
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %54 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 34), align 4
  %55 = getelementptr i8, ptr %54, i32 -1116
  %56 = icmp eq ptr %55, @init_task
  br i1 %56, label %132, label %57

57:                                               ; preds = %128, %53
  %58 = phi ptr [ %129, %128 ], [ %54, %53 ]
  %59 = getelementptr i8, ptr %58, i32 176
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %128, label %62

62:                                               ; preds = %57
  %63 = getelementptr i8, ptr %58, i32 -568
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 2097152
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %128

67:                                               ; preds = %62
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %68 = getelementptr i8, ptr %58, i32 500
  %69 = load ptr, ptr %68, align 16
  %70 = getelementptr inbounds %struct.signal_struct, ptr %69, i32 0, i32 3
  %71 = load volatile ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, %70
  br i1 %72, label %86, label %73

73:                                               ; preds = %79, %67
  %74 = phi ptr [ %82, %79 ], [ %71, %67 ]
  %75 = getelementptr i8, ptr %74, i32 324
  tail call void @_raw_spin_lock(ptr noundef %75) #14
  %76 = getelementptr i8, ptr %74, i32 -232
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %87, !prof !11

79:                                               ; preds = %73
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %80 = load i16, ptr %75, align 4
  %81 = add i16 %80, 1
  store i16 %81, ptr %75, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  %82 = load volatile ptr, ptr %74, align 4
  %83 = load ptr, ptr %68, align 16
  %84 = getelementptr inbounds %struct.signal_struct, ptr %83, i32 0, i32 3
  %85 = icmp eq ptr %82, %84
  br i1 %85, label %86, label %73

86:                                               ; preds = %79, %67
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  br label %128

87:                                               ; preds = %73
  %88 = getelementptr i8, ptr %74, i32 -1388
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  %89 = icmp eq ptr %88, null
  br i1 %89, label %128, label %90

90:                                               ; preds = %87
  %91 = getelementptr i8, ptr %74, i32 -232
  %92 = getelementptr i8, ptr %74, i32 -100
  %93 = load i32, ptr %92, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %94 = getelementptr i8, ptr %74, i32 168
  %95 = load volatile ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.cred, ptr %95, i32 0, i32 1
  %97 = load i32, ptr %96, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  %98 = getelementptr i8, ptr %74, i32 -96
  %99 = load i32, ptr %98, align 4
  %100 = load ptr, ptr %91, align 4
  %101 = getelementptr inbounds %struct.anon, ptr %100, i32 0, i32 19
  %102 = load i32, ptr %101, align 8
  %103 = getelementptr inbounds %struct.anon, ptr %100, i32 0, i32 40
  %104 = load volatile i32, ptr %103, align 4
  %105 = tail call i32 @llvm.smax.i32(i32 %104, i32 0) #14
  %106 = getelementptr %struct.anon, ptr %100, i32 0, i32 40, i32 0, i32 1
  %107 = load volatile i32, ptr %106, align 4
  %108 = tail call i32 @llvm.smax.i32(i32 %107, i32 0) #14
  %109 = add nuw i32 %108, %105
  %110 = getelementptr %struct.anon, ptr %100, i32 0, i32 40, i32 0, i32 3
  %111 = load volatile i32, ptr %110, align 4
  %112 = tail call i32 @llvm.smax.i32(i32 %111, i32 0) #14
  %113 = add i32 %109, %112
  %114 = getelementptr inbounds %struct.anon, ptr %100, i32 0, i32 12
  %115 = load volatile i32, ptr %114, align 4
  %116 = getelementptr %struct.anon, ptr %100, i32 0, i32 40, i32 0, i32 2
  %117 = load volatile i32, ptr %116, align 4
  %118 = tail call i32 @llvm.smax.i32(i32 %117, i32 0) #14
  %119 = getelementptr i8, ptr %74, i32 228
  %120 = load ptr, ptr %119, align 16
  %121 = getelementptr inbounds %struct.signal_struct, ptr %120, i32 0, i32 52
  %122 = load i16, ptr %121, align 2
  %123 = sext i16 %122 to i32
  %124 = getelementptr i8, ptr %74, i32 180
  %125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %93, i32 noundef %97, i32 noundef %99, i32 noundef %102, i32 noundef %113, i32 noundef %115, i32 noundef %118, i32 noundef %123, ptr noundef %124) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %126 = load i16, ptr %75, align 4
  %127 = add i16 %126, 1
  store i16 %127, ptr %75, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  br label %128

128:                                              ; preds = %90, %87, %86, %62, %57
  %129 = load volatile ptr, ptr %58, align 4
  %130 = getelementptr i8, ptr %129, i32 -1116
  %131 = icmp eq ptr %130, @init_task
  br i1 %131, label %132, label %57

132:                                              ; preds = %128, %53
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  br label %133

133:                                              ; preds = %132, %48, %45
  %134 = icmp eq ptr %1, null
  br i1 %134, label %153, label %135

135:                                              ; preds = %133
  %136 = getelementptr inbounds %struct.oom_control, ptr %0, i32 0, i32 8
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr [4 x ptr], ptr @oom_constraint_text, i32 0, i32 %137
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.oom_control, ptr %0, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = icmp ne ptr %141, null
  %143 = zext i1 %142 to i32
  %144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %139, i32 noundef %143, ptr noundef %141) #15
  %145 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 85
  %146 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %147 = load i32, ptr %146, align 8
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %148 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 82
  %149 = load volatile ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.cred, ptr %149, i32 0, i32 1
  %151 = load i32, ptr %150, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  %152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %145, i32 noundef %147, i32 noundef %151) #15
  br label %153

153:                                              ; preds = %135, %133
  ret void
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pagefault_out_of_memory() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #14
  %2 = load volatile i32, ptr %1, align 4
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 98, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5, %0
  %11 = tail call i32 @___ratelimit(ptr noundef nonnull @pagefault_out_of_memory.pfoom_rs, ptr noundef nonnull @__func__.pagefault_out_of_memory) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #15
  br label %15

15:                                               ; preds = %13, %10, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_process_mrelease(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %90

5:                                                ; preds = %2
  %6 = call ptr @pidfd_get_task(i32 noundef %0, ptr noundef nonnull %3) #14
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = ptrtoint ptr %6 to i32
  br label %90

10:                                               ; preds = %5
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %11 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 93
  %12 = load ptr, ptr %11, align 16
  %13 = getelementptr inbounds %struct.signal_struct, ptr %12, i32 0, i32 3
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %29, label %16

16:                                               ; preds = %22, %10
  %17 = phi ptr [ %25, %22 ], [ %14, %10 ]
  %18 = getelementptr i8, ptr %17, i32 324
  call void @_raw_spin_lock(ptr noundef %18) #14
  %19 = getelementptr i8, ptr %17, i32 -232
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %30, !prof !11

22:                                               ; preds = %16
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %23 = load i16, ptr %18, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %18, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  %25 = load volatile ptr, ptr %17, align 4
  %26 = load ptr, ptr %11, align 16
  %27 = getelementptr inbounds %struct.signal_struct, ptr %26, i32 0, i32 3
  %28 = icmp eq ptr %25, %27
  br i1 %28, label %29, label %16

29:                                               ; preds = %22, %10
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  br label %80

30:                                               ; preds = %16
  %31 = getelementptr i8, ptr %17, i32 -1388
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  %32 = icmp eq ptr %31, null
  br i1 %32, label %80, label %33

33:                                               ; preds = %30
  %34 = getelementptr i8, ptr %17, i32 -232
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.anon, ptr %35, i32 0, i32 11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #14, !srcloc !20
  %37 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #14, !srcloc !32
  %38 = call fastcc zeroext i1 @task_will_free_mem(ptr noundef nonnull %31) #14
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.anon, ptr %35, i32 0, i32 43
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 2097152
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 -22, i32 0
  br label %45

45:                                               ; preds = %39, %33
  %46 = phi i32 [ 0, %33 ], [ %44, %39 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %47 = load i16, ptr %18, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %18, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  br i1 %38, label %49, label %74

49:                                               ; preds = %45
  %50 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %35, i1 noundef zeroext false) #14
  br label %53

53:                                               ; preds = %52, %49
  %54 = getelementptr inbounds %struct.anon, ptr %35, i32 0, i32 15
  %55 = call i32 @down_read_killable(ptr noundef %54) #14
  %56 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = icmp eq i32 %55, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %35, i1 noundef zeroext false, i1 noundef zeroext %59) #14
  br label %60

60:                                               ; preds = %58, %53
  %61 = icmp eq i32 %55, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.anon, ptr %35, i32 0, i32 43
  %64 = load volatile i32, ptr %63, align 4
  %65 = and i32 %64, 2097152
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call zeroext i1 @__oom_reap_task_mm(ptr noundef %35) #14
  br label %69

69:                                               ; preds = %67, %62
  %70 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  call void @__mmap_lock_do_trace_released(ptr noundef %35, i1 noundef zeroext false) #14
  br label %73

73:                                               ; preds = %72, %69
  call void @up_read(ptr noundef %54) #14
  br label %74

74:                                               ; preds = %73, %60, %45
  %75 = phi i32 [ %46, %73 ], [ %46, %45 ], [ -4, %60 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %36) #14, !srcloc !20
  %76 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %36, ptr %36, i32 1, ptr elementtype(i32) %36) #14, !srcloc !21
  %77 = extractvalue { i32, i32 } %76, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !22
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80, !prof !11

79:                                               ; preds = %74
  call void @__mmdrop(ptr noundef %35) #14
  br label %80

80:                                               ; preds = %79, %74, %30, %29
  %81 = phi i32 [ -3, %30 ], [ -3, %29 ], [ %75, %74 ], [ %75, %79 ]
  %82 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !25
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %82) #14, !srcloc !20
  %83 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %82, ptr %82, i32 1, ptr elementtype(i32) %82) #14, !srcloc !26
  %84 = extractvalue { i32, i32, i32 } %83, 0
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  %87 = icmp sgt i32 %84, 0
  br i1 %87, label %90, label %88, !prof !10

88:                                               ; preds = %86
  call void @refcount_warn_saturate(ptr noundef %82, i32 noundef 3) #14
  br label %90

89:                                               ; preds = %80
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !27
  call void @__put_task_struct(ptr noundef %6) #14
  br label %90

90:                                               ; preds = %89, %88, %86, %8, %2
  %91 = phi i32 [ %9, %8 ], [ -22, %2 ], [ %81, %86 ], [ %81, %88 ], [ %81, %89 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_oom_score_adj_update(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #14
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_oom_score_adj_update, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_oom_score_adj_update, ptr %5, i32 0, i32 2
  %13 = getelementptr inbounds %struct.trace_event_raw_oom_score_adj_update, ptr %5, i32 0, i32 3
  %14 = load i16, ptr %13, align 4
  %15 = sext i16 %14 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.35, i32 noundef %11, ptr noundef %12, i32 noundef %15) #14
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #14
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_reclaim_retry_zone(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #14
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %30

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %14, ptr noundef nonnull @trace_raw_output_reclaim_retry_zone.symbols) #14
  %16 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %5, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %5, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %5, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %5, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_reclaim_retry_zone, ptr %5, i32 0, i32 8
  %27 = load i8, ptr %26, align 4, !range !24
  %28 = zext i8 %27 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.47, i32 noundef %12, ptr noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %28) #14
  %29 = tail call i32 @trace_handle_return(ptr noundef %10) #14
  br label %30

30:                                               ; preds = %8, %3
  %31 = phi i32 [ %29, %8 ], [ %6, %3 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mark_victim(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #14
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_mark_victim, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.52, i32 noundef %11) #14
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #14
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_wake_reaper(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #14
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_wake_reaper, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.52, i32 noundef %11) #14
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #14
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_start_task_reaping(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #14
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_start_task_reaping, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.52, i32 noundef %11) #14
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #14
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_finish_task_reaping(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #14
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_finish_task_reaping, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.52, i32 noundef %11) #14
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #14
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_skip_task_reaping(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #14
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_skip_task_reaping, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.52, i32 noundef %11) #14
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #14
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_compact_retry(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #14
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %27

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %14, ptr noundef nonnull @trace_raw_output_compact_retry.symbols) #14
  %16 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %17, ptr noundef nonnull @trace_raw_output_compact_retry.symbols.59) #14
  %19 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %5, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %5, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_compact_retry, ptr %5, i32 0, i32 6
  %24 = load i8, ptr %23, align 4, !range !24
  %25 = zext i8 %24 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.58, i32 noundef %12, ptr noundef %15, ptr noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %25) #14
  %26 = tail call i32 @trace_handle_return(ptr noundef %10) #14
  br label %27

27:                                               ; preds = %8, %3
  %28 = phi i32 [ %26, %8 ], [ %6, %3 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @oom_reaper(ptr nocapture noundef readnone %0) #12 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = tail call zeroext i1 @set_freezable() #14
  br label %4

4:                                                ; preds = %219, %1
  %5 = load ptr, ptr @oom_reaper_list, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %33

7:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #14
  %8 = call i32 @prepare_to_wait_event(ptr noundef nonnull @oom_reaper_wait, ptr noundef nonnull %2, i32 noundef 1) #14
  %9 = load ptr, ptr @oom_reaper_list, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %27, %7
  %12 = phi i32 [ %28, %27 ], [ %8, %7 ]
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  %15 = tail call ptr @llvm.thread.pointer() #14
  %16 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, 1073741824
  store i32 %18, ptr %16, align 4
  call void @schedule() #14
  %19 = load i32, ptr %16, align 4
  %20 = and i32 %19, -1073741825
  store i32 %20, ptr %16, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !39
  %21 = load volatile i32, ptr @system_freezing_cnt, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23, !prof !10

23:                                               ; preds = %14
  %24 = call zeroext i1 @freezing_slow_path(ptr noundef %15) #14
  br i1 %24, label %25, label %27, !prof !11

25:                                               ; preds = %23
  %26 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #14
  br label %27

27:                                               ; preds = %25, %23, %14
  %28 = call i32 @prepare_to_wait_event(ptr noundef nonnull @oom_reaper_wait, ptr noundef nonnull %2, i32 noundef 1) #14
  %29 = load ptr, ptr @oom_reaper_list, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %11, label %31

31:                                               ; preds = %27, %7
  call void @finish_wait(ptr noundef nonnull @oom_reaper_wait, ptr noundef nonnull %2) #14
  br label %32

32:                                               ; preds = %31, %11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #14
  br label %33

33:                                               ; preds = %32, %4
  call void @_raw_spin_lock(ptr noundef nonnull @oom_reaper_lock) #14
  %34 = load ptr, ptr @oom_reaper_list, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %216, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 150
  %38 = load ptr, ptr %37, align 4
  store ptr %38, ptr @oom_reaper_list, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %39 = load i16, ptr @oom_reaper_lock, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr @oom_reaper_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  %41 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 93
  %42 = load ptr, ptr %41, align 16
  %43 = getelementptr inbounds %struct.signal_struct, ptr %42, i32 0, i32 54
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.anon, ptr %44, i32 0, i32 15
  %46 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 52
  %47 = getelementptr inbounds %struct.anon, ptr %44, i32 0, i32 43
  %48 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 85
  %49 = getelementptr inbounds %struct.anon, ptr %44, i32 0, i32 40
  %50 = getelementptr %struct.anon, ptr %44, i32 0, i32 40, i32 0, i32 1
  %51 = getelementptr %struct.anon, ptr %44, i32 0, i32 40, i32 0, i32 3
  br label %52

52:                                               ; preds = %193, %36
  %53 = phi i32 [ 1, %36 ], [ %195, %193 ]
  %54 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %44, i1 noundef zeroext false) #14
  br label %57

57:                                               ; preds = %56, %52
  %58 = call i32 @down_read_trylock(ptr noundef %45) #14
  %59 = icmp ne i32 %58, 0
  %60 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %44, i1 noundef zeroext false, i1 noundef zeroext %59) #14
  br label %63

63:                                               ; preds = %62, %57
  br i1 %59, label %91, label %64

64:                                               ; preds = %63
  %65 = load i32, ptr %46, align 8
  %66 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_skip_task_reaping, i32 0, i32 1), align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %193

68:                                               ; preds = %64
  %69 = tail call ptr @llvm.thread.pointer() #14
  %70 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 2
  %71 = load i32, ptr %70, align 8
  %72 = lshr i32 %71, 5
  %73 = getelementptr i32, ptr @__cpu_online_mask, i32 %72
  %74 = load volatile i32, ptr %73, align 4
  %75 = and i32 %71, 31
  %76 = shl nuw i32 1, %75
  %77 = and i32 %76, %74
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %193, label %79

79:                                               ; preds = %68
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !40
  %80 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_skip_task_reaping, i32 0, i32 7), align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %90, label %82

82:                                               ; preds = %82, %79
  %83 = phi ptr [ %87, %82 ], [ %80, %79 ]
  %84 = load volatile ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.tracepoint_func, ptr %83, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  call void %84(ptr noundef %86, i32 noundef %65) #14
  %87 = getelementptr %struct.tracepoint_func, ptr %83, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %82

90:                                               ; preds = %82, %79
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !41
  br label %192

91:                                               ; preds = %63
  %92 = load volatile i32, ptr %47, align 4
  %93 = and i32 %92, 2097152
  %94 = icmp eq i32 %93, 0
  %95 = load i32, ptr %46, align 8
  br i1 %94, label %122, label %96

96:                                               ; preds = %91
  %97 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_skip_task_reaping, i32 0, i32 1), align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %187

99:                                               ; preds = %96
  %100 = tail call ptr @llvm.thread.pointer() #14
  %101 = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 2
  %102 = load i32, ptr %101, align 8
  %103 = lshr i32 %102, 5
  %104 = getelementptr i32, ptr @__cpu_online_mask, i32 %103
  %105 = load volatile i32, ptr %104, align 4
  %106 = and i32 %102, 31
  %107 = shl nuw i32 1, %106
  %108 = and i32 %107, %105
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %187, label %110

110:                                              ; preds = %99
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !40
  %111 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_skip_task_reaping, i32 0, i32 7), align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %121, label %113

113:                                              ; preds = %113, %110
  %114 = phi ptr [ %118, %113 ], [ %111, %110 ]
  %115 = load volatile ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.tracepoint_func, ptr %114, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  call void %115(ptr noundef %117, i32 noundef %95) #14
  %118 = getelementptr %struct.tracepoint_func, ptr %114, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %113

121:                                              ; preds = %113, %110
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !41
  br label %187

122:                                              ; preds = %91
  %123 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_start_task_reaping, i32 0, i32 1), align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %148

125:                                              ; preds = %122
  %126 = tail call ptr @llvm.thread.pointer() #14
  %127 = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 2
  %128 = load i32, ptr %127, align 8
  %129 = lshr i32 %128, 5
  %130 = getelementptr i32, ptr @__cpu_online_mask, i32 %129
  %131 = load volatile i32, ptr %130, align 4
  %132 = and i32 %128, 31
  %133 = shl nuw i32 1, %132
  %134 = and i32 %133, %131
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %148, label %136

136:                                              ; preds = %125
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !42
  %137 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_start_task_reaping, i32 0, i32 7), align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %147, label %139

139:                                              ; preds = %139, %136
  %140 = phi ptr [ %144, %139 ], [ %137, %136 ]
  %141 = load volatile ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.tracepoint_func, ptr %140, i32 0, i32 1
  %143 = load ptr, ptr %142, align 4
  call void %141(ptr noundef %143, i32 noundef %95) #14
  %144 = getelementptr %struct.tracepoint_func, ptr %140, i32 1
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %139

147:                                              ; preds = %139, %136
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !43
  br label %148

148:                                              ; preds = %147, %125, %122
  %149 = call zeroext i1 @__oom_reap_task_mm(ptr noundef %44) #14
  %150 = load i32, ptr %46, align 8
  %151 = load volatile i32, ptr %50, align 4
  %152 = call i32 @llvm.smax.i32(i32 %151, i32 0) #14
  %153 = shl i32 %152, 2
  %154 = load volatile i32, ptr %49, align 4
  %155 = call i32 @llvm.smax.i32(i32 %154, i32 0) #14
  %156 = shl i32 %155, 2
  %157 = load volatile i32, ptr %51, align 4
  %158 = call i32 @llvm.smax.i32(i32 %157, i32 0) #14
  %159 = shl i32 %158, 2
  %160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %150, ptr noundef %48, i32 noundef %153, i32 noundef %156, i32 noundef %159) #15
  %161 = load i32, ptr %46, align 8
  %162 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_finish_task_reaping, i32 0, i32 1), align 4
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %187

164:                                              ; preds = %148
  %165 = tail call ptr @llvm.thread.pointer() #14
  %166 = getelementptr inbounds %struct.thread_info, ptr %165, i32 0, i32 2
  %167 = load i32, ptr %166, align 8
  %168 = lshr i32 %167, 5
  %169 = getelementptr i32, ptr @__cpu_online_mask, i32 %168
  %170 = load volatile i32, ptr %169, align 4
  %171 = and i32 %167, 31
  %172 = shl nuw i32 1, %171
  %173 = and i32 %172, %170
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %187, label %175

175:                                              ; preds = %164
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !44
  %176 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_finish_task_reaping, i32 0, i32 7), align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %186, label %178

178:                                              ; preds = %178, %175
  %179 = phi ptr [ %183, %178 ], [ %176, %175 ]
  %180 = load volatile ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.tracepoint_func, ptr %179, i32 0, i32 1
  %182 = load ptr, ptr %181, align 4
  call void %180(ptr noundef %182, i32 noundef %161) #14
  %183 = getelementptr %struct.tracepoint_func, ptr %179, i32 1
  %184 = load ptr, ptr %183, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %178

186:                                              ; preds = %178, %175
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !45
  br label %187

187:                                              ; preds = %186, %164, %148, %121, %99, %96
  %188 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  call void @__mmap_lock_do_trace_released(ptr noundef %44, i1 noundef zeroext false) #14
  br label %191

191:                                              ; preds = %190, %187
  call void @up_read(ptr noundef %45) #14
  br label %192

192:                                              ; preds = %191, %90
  br i1 %59, label %197, label %193

193:                                              ; preds = %192, %68, %64
  %194 = call i32 @schedule_timeout_idle(i32 noundef 10) #14
  %195 = add nuw nsw i32 %53, 1
  %196 = icmp eq i32 %195, 11
  br i1 %196, label %199, label %52

197:                                              ; preds = %192
  %198 = icmp ult i32 %53, 11
  br i1 %198, label %206, label %199

199:                                              ; preds = %197, %193
  %200 = load volatile i32, ptr %47, align 4
  %201 = and i32 %200, 2097152
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %199
  %204 = load i32, ptr %46, align 8
  %205 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %204, ptr noundef %48) #15
  call void @sched_show_task(ptr noundef nonnull %34) #14
  br label %206

206:                                              ; preds = %203, %199, %197
  %207 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 150
  store ptr null, ptr %207, align 4
  call void @_set_bit(i32 noundef 21, ptr noundef %47) #14
  %208 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !25
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %208) #14, !srcloc !20
  %209 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %208, ptr %208, i32 1, ptr elementtype(i32) %208) #14, !srcloc !26
  %210 = extractvalue { i32, i32, i32 } %209, 0
  %211 = icmp eq i32 %210, 1
  br i1 %211, label %215, label %212

212:                                              ; preds = %206
  %213 = icmp sgt i32 %210, 0
  br i1 %213, label %219, label %214, !prof !10

214:                                              ; preds = %212
  call void @refcount_warn_saturate(ptr noundef %208, i32 noundef 3) #14
  br label %219

215:                                              ; preds = %206
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !27
  call void @__put_task_struct(ptr noundef nonnull %34) #14
  br label %219

216:                                              ; preds = %33
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !14
  %217 = load i16, ptr @oom_reaper_lock, align 4
  %218 = add i16 %217, 1
  store i16 %218, ptr @oom_reaper_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  br label %219

219:                                              ; preds = %216, %215, %214, %212
  br label %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_idle(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_show_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__thaw_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_send_sig_info(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmdrop(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_mem(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_unreclaimable_slab() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pidfd_get_task(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { cold noreturn nounwind }

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
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 525287}
!13 = !{i64 2148913757}
!14 = !{i64 2149266367}
!15 = !{i64 2149262191}
!16 = !{i64 2149262266, i64 2149262293, i64 2149262340, i64 2149262362, i64 2149262390, i64 2149262410}
!17 = !{i64 2149289370}
!18 = !{i64 2148913974}
!19 = !{i64 2148154942}
!20 = !{i64 489435, i64 2147991001, i64 2147991027, i64 2147991074, i64 2147991096, i64 2147991124, i64 2147991144}
!21 = !{i64 2148057304, i64 2148057336, i64 2148057365, i64 2148057399, i64 2148057430, i64 2148057453}
!22 = !{i64 2148155145}
!23 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!24 = !{i8 0, i8 2}
!25 = !{i64 2148155943}
!26 = !{i64 2148058078, i64 2148058110, i64 2148058139, i64 2148058173, i64 2148058204, i64 2148058227}
!27 = !{i64 2149340282}
!28 = !{i64 2148055721, i64 2148055753, i64 2148055782, i64 2148055816, i64 2148055847, i64 2148055870}
!29 = !{i64 2155241691}
!30 = !{i64 564251, i64 564272, i64 564295, i64 564314, i64 564333}
!31 = !{i64 2155242077}
!32 = !{i64 2148054263, i64 2148054289, i64 2148054318, i64 2148054352, i64 2148054383, i64 2148054406}
!33 = !{i64 2154289301}
!34 = !{i64 2154289441}
!35 = !{i64 2154304510}
!36 = !{i64 2154304650}
!37 = !{i64 518182, i64 518243}
!38 = !{i64 521199}
!39 = !{i64 2154009919}
!40 = !{i64 2154355809}
!41 = !{i64 2154355961}
!42 = !{i64 2154324047}
!43 = !{i64 2154324201}
!44 = !{i64 2154339939}
!45 = !{i64 2154340095}
