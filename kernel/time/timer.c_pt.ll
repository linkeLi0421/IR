; ModuleID = '/llk/IR/kernel/time/timer.c_pt.bc'
source_filename = "../kernel/time/timer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jiffies_64:\09\09\09\09\09"
module asm "\09.asciz \09\22jiffies_64\22\09\09\09\09\09"
module asm "__kstrtabns_jiffies_64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___round_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22__round_jiffies\22\09\09\09\09\09"
module asm "__kstrtabns___round_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___round_jiffies_relative:\09\09\09\09\09"
module asm "\09.asciz \09\22__round_jiffies_relative\22\09\09\09\09\09"
module asm "__kstrtabns___round_jiffies_relative:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_round_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22round_jiffies\22\09\09\09\09\09"
module asm "__kstrtabns_round_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_round_jiffies_relative:\09\09\09\09\09"
module asm "\09.asciz \09\22round_jiffies_relative\22\09\09\09\09\09"
module asm "__kstrtabns_round_jiffies_relative:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___round_jiffies_up:\09\09\09\09\09"
module asm "\09.asciz \09\22__round_jiffies_up\22\09\09\09\09\09"
module asm "__kstrtabns___round_jiffies_up:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___round_jiffies_up_relative:\09\09\09\09\09"
module asm "\09.asciz \09\22__round_jiffies_up_relative\22\09\09\09\09\09"
module asm "__kstrtabns___round_jiffies_up_relative:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_round_jiffies_up:\09\09\09\09\09"
module asm "\09.asciz \09\22round_jiffies_up\22\09\09\09\09\09"
module asm "__kstrtabns_round_jiffies_up:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_round_jiffies_up_relative:\09\09\09\09\09"
module asm "\09.asciz \09\22round_jiffies_up_relative\22\09\09\09\09\09"
module asm "__kstrtabns_round_jiffies_up_relative:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_timer_key:\09\09\09\09\09"
module asm "\09.asciz \09\22init_timer_key\22\09\09\09\09\09"
module asm "__kstrtabns_init_timer_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mod_timer_pending:\09\09\09\09\09"
module asm "\09.asciz \09\22mod_timer_pending\22\09\09\09\09\09"
module asm "__kstrtabns_mod_timer_pending:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mod_timer:\09\09\09\09\09"
module asm "\09.asciz \09\22mod_timer\22\09\09\09\09\09"
module asm "__kstrtabns_mod_timer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_timer_reduce:\09\09\09\09\09"
module asm "\09.asciz \09\22timer_reduce\22\09\09\09\09\09"
module asm "__kstrtabns_timer_reduce:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_timer:\09\09\09\09\09"
module asm "\09.asciz \09\22add_timer\22\09\09\09\09\09"
module asm "__kstrtabns_add_timer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_timer_on:\09\09\09\09\09"
module asm "\09.asciz \09\22add_timer_on\22\09\09\09\09\09"
module asm "__kstrtabns_add_timer_on:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_del_timer:\09\09\09\09\09"
module asm "\09.asciz \09\22del_timer\22\09\09\09\09\09"
module asm "__kstrtabns_del_timer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_try_to_del_timer_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22try_to_del_timer_sync\22\09\09\09\09\09"
module asm "__kstrtabns_try_to_del_timer_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_del_timer_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22del_timer_sync\22\09\09\09\09\09"
module asm "__kstrtabns_del_timer_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_schedule_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22schedule_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_schedule_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_schedule_timeout_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22schedule_timeout_interruptible\22\09\09\09\09\09"
module asm "__kstrtabns_schedule_timeout_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_schedule_timeout_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22schedule_timeout_killable\22\09\09\09\09\09"
module asm "__kstrtabns_schedule_timeout_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_schedule_timeout_uninterruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22schedule_timeout_uninterruptible\22\09\09\09\09\09"
module asm "__kstrtabns_schedule_timeout_uninterruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_schedule_timeout_idle:\09\09\09\09\09"
module asm "\09.asciz \09\22schedule_timeout_idle\22\09\09\09\09\09"
module asm "__kstrtabns_schedule_timeout_idle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_msleep:\09\09\09\09\09"
module asm "\09.asciz \09\22msleep\22\09\09\09\09\09"
module asm "__kstrtabns_msleep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_msleep_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22msleep_interruptible\22\09\09\09\09\09"
module asm "__kstrtabns_msleep_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usleep_range_state:\09\09\09\09\09"
module asm "\09.asciz \09\22usleep_range_state\22\09\09\09\09\09"
module asm "__kstrtabns_usleep_range_state:\09\09\09\09\09"
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
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.timer_base = type { %struct.raw_spinlock, ptr, i32, i32, i32, i8, i8, i8, [16 x i32], [512 x %struct.hlist_head], [40 x i8] }
%struct.hlist_head = type { ptr }
%struct.trace_print_flags = type { i32, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_timer_class = type { %struct.trace_entry, ptr, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_timer_start = type { %struct.trace_entry, ptr, ptr, i32, i32, i32, [0 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.trace_event_raw_timer_expire_entry = type { %struct.trace_entry, ptr, i32, ptr, i32, [0 x i8] }
%struct.trace_event_raw_hrtimer_init = type { %struct.trace_entry, ptr, i32, i32, [0 x i8] }
%struct.trace_event_raw_hrtimer_start = type { %struct.trace_entry, ptr, ptr, i64, i64, i32, [0 x i8] }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.trace_event_raw_hrtimer_expire_entry = type { %struct.trace_entry, ptr, i64, ptr, [0 x i8] }
%struct.trace_event_raw_hrtimer_class = type { %struct.trace_entry, ptr, [0 x i8] }
%struct.trace_event_raw_itimer_state = type { %struct.trace_entry, i32, i64, i32, i32, i32, i32, [0 x i8] }
%struct.itimerspec64 = type { %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.trace_event_raw_itimer_expire = type { %struct.trace_entry, i32, i32, i64, [0 x i8] }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.upid = type { i32, ptr }
%struct.trace_event_raw_tick_stop = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.process_timer = type { %struct.timer_list, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.88, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.69 }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.88 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_timer_init = internal constant [11 x i8] c"timer_init\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_timer_init = dso_local global %struct.static_call_key { ptr @__traceiter_timer_init }, align 4
@__tracepoint_timer_init = dso_local global %struct.tracepoint { ptr @__tpstrtab_timer_init, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_timer_init, ptr null, ptr @__traceiter_timer_init, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_timer_init = internal constant ptr @__tracepoint_timer_init, section "__tracepoints_ptrs", align 4
@__tpstrtab_timer_start = internal constant [12 x i8] c"timer_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_timer_start = dso_local global %struct.static_call_key { ptr @__traceiter_timer_start }, align 4
@__tracepoint_timer_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_timer_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_timer_start, ptr null, ptr @__traceiter_timer_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_timer_start = internal constant ptr @__tracepoint_timer_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_timer_expire_entry = internal constant [19 x i8] c"timer_expire_entry\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_timer_expire_entry = dso_local global %struct.static_call_key { ptr @__traceiter_timer_expire_entry }, align 4
@__tracepoint_timer_expire_entry = dso_local global %struct.tracepoint { ptr @__tpstrtab_timer_expire_entry, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_timer_expire_entry, ptr null, ptr @__traceiter_timer_expire_entry, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_timer_expire_entry = internal constant ptr @__tracepoint_timer_expire_entry, section "__tracepoints_ptrs", align 4
@__tpstrtab_timer_expire_exit = internal constant [18 x i8] c"timer_expire_exit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_timer_expire_exit = dso_local global %struct.static_call_key { ptr @__traceiter_timer_expire_exit }, align 4
@__tracepoint_timer_expire_exit = dso_local global %struct.tracepoint { ptr @__tpstrtab_timer_expire_exit, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_timer_expire_exit, ptr null, ptr @__traceiter_timer_expire_exit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_timer_expire_exit = internal constant ptr @__tracepoint_timer_expire_exit, section "__tracepoints_ptrs", align 4
@__tpstrtab_timer_cancel = internal constant [13 x i8] c"timer_cancel\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_timer_cancel = dso_local global %struct.static_call_key { ptr @__traceiter_timer_cancel }, align 4
@__tracepoint_timer_cancel = dso_local global %struct.tracepoint { ptr @__tpstrtab_timer_cancel, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_timer_cancel, ptr null, ptr @__traceiter_timer_cancel, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_timer_cancel = internal constant ptr @__tracepoint_timer_cancel, section "__tracepoints_ptrs", align 4
@__tpstrtab_hrtimer_init = internal constant [13 x i8] c"hrtimer_init\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_hrtimer_init = dso_local global %struct.static_call_key { ptr @__traceiter_hrtimer_init }, align 4
@__tracepoint_hrtimer_init = dso_local global %struct.tracepoint { ptr @__tpstrtab_hrtimer_init, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_hrtimer_init, ptr null, ptr @__traceiter_hrtimer_init, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_hrtimer_init = internal constant ptr @__tracepoint_hrtimer_init, section "__tracepoints_ptrs", align 4
@__tpstrtab_hrtimer_start = internal constant [14 x i8] c"hrtimer_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_hrtimer_start = dso_local global %struct.static_call_key { ptr @__traceiter_hrtimer_start }, align 4
@__tracepoint_hrtimer_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_hrtimer_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_hrtimer_start, ptr null, ptr @__traceiter_hrtimer_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_hrtimer_start = internal constant ptr @__tracepoint_hrtimer_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_hrtimer_expire_entry = internal constant [21 x i8] c"hrtimer_expire_entry\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_hrtimer_expire_entry = dso_local global %struct.static_call_key { ptr @__traceiter_hrtimer_expire_entry }, align 4
@__tracepoint_hrtimer_expire_entry = dso_local global %struct.tracepoint { ptr @__tpstrtab_hrtimer_expire_entry, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_hrtimer_expire_entry, ptr null, ptr @__traceiter_hrtimer_expire_entry, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_hrtimer_expire_entry = internal constant ptr @__tracepoint_hrtimer_expire_entry, section "__tracepoints_ptrs", align 4
@__tpstrtab_hrtimer_expire_exit = internal constant [20 x i8] c"hrtimer_expire_exit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_hrtimer_expire_exit = dso_local global %struct.static_call_key { ptr @__traceiter_hrtimer_expire_exit }, align 4
@__tracepoint_hrtimer_expire_exit = dso_local global %struct.tracepoint { ptr @__tpstrtab_hrtimer_expire_exit, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_hrtimer_expire_exit, ptr null, ptr @__traceiter_hrtimer_expire_exit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_hrtimer_expire_exit = internal constant ptr @__tracepoint_hrtimer_expire_exit, section "__tracepoints_ptrs", align 4
@__tpstrtab_hrtimer_cancel = internal constant [15 x i8] c"hrtimer_cancel\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_hrtimer_cancel = dso_local global %struct.static_call_key { ptr @__traceiter_hrtimer_cancel }, align 4
@__tracepoint_hrtimer_cancel = dso_local global %struct.tracepoint { ptr @__tpstrtab_hrtimer_cancel, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_hrtimer_cancel, ptr null, ptr @__traceiter_hrtimer_cancel, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_hrtimer_cancel = internal constant ptr @__tracepoint_hrtimer_cancel, section "__tracepoints_ptrs", align 4
@__tpstrtab_itimer_state = internal constant [13 x i8] c"itimer_state\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_itimer_state = dso_local global %struct.static_call_key { ptr @__traceiter_itimer_state }, align 4
@__tracepoint_itimer_state = dso_local global %struct.tracepoint { ptr @__tpstrtab_itimer_state, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_itimer_state, ptr null, ptr @__traceiter_itimer_state, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_itimer_state = internal constant ptr @__tracepoint_itimer_state, section "__tracepoints_ptrs", align 4
@__tpstrtab_itimer_expire = internal constant [14 x i8] c"itimer_expire\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_itimer_expire = dso_local global %struct.static_call_key { ptr @__traceiter_itimer_expire }, align 4
@__tracepoint_itimer_expire = dso_local global %struct.tracepoint { ptr @__tpstrtab_itimer_expire, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_itimer_expire, ptr null, ptr @__traceiter_itimer_expire, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_itimer_expire = internal constant ptr @__tracepoint_itimer_expire, section "__tracepoints_ptrs", align 4
@__tpstrtab_tick_stop = internal constant [10 x i8] c"tick_stop\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tick_stop = dso_local global %struct.static_call_key { ptr @__traceiter_tick_stop }, align 4
@__tracepoint_tick_stop = dso_local global %struct.tracepoint { ptr @__tpstrtab_tick_stop, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_tick_stop, ptr null, ptr @__traceiter_tick_stop, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tick_stop = internal constant ptr @__tracepoint_tick_stop, section "__tracepoints_ptrs", align 4
@.str = private unnamed_addr constant [19 x i8] c"TICK_DEP_MASK_NONE\00", align 1
@__TRACE_SYSTEM_TICK_DEP_MASK_NONE = internal global %struct.trace_eval_map { ptr @.str.14, ptr @.str, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_TICK_DEP_MASK_NONE = internal global ptr @__TRACE_SYSTEM_TICK_DEP_MASK_NONE, section "_ftrace_eval_map", align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"TICK_DEP_BIT_POSIX_TIMER\00", align 1
@__TRACE_SYSTEM_TICK_DEP_BIT_POSIX_TIMER = internal global %struct.trace_eval_map { ptr @.str.14, ptr @.str.1, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_TICK_DEP_BIT_POSIX_TIMER = internal global ptr @__TRACE_SYSTEM_TICK_DEP_BIT_POSIX_TIMER, section "_ftrace_eval_map", align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"TICK_DEP_MASK_POSIX_TIMER\00", align 1
@__TRACE_SYSTEM_TICK_DEP_MASK_POSIX_TIMER = internal global %struct.trace_eval_map { ptr @.str.14, ptr @.str.2, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_TICK_DEP_MASK_POSIX_TIMER = internal global ptr @__TRACE_SYSTEM_TICK_DEP_MASK_POSIX_TIMER, section "_ftrace_eval_map", align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"TICK_DEP_BIT_PERF_EVENTS\00", align 1
@__TRACE_SYSTEM_TICK_DEP_BIT_PERF_EVENTS = internal global %struct.trace_eval_map { ptr @.str.14, ptr @.str.3, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_TICK_DEP_BIT_PERF_EVENTS = internal global ptr @__TRACE_SYSTEM_TICK_DEP_BIT_PERF_EVENTS, section "_ftrace_eval_map", align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"TICK_DEP_MASK_PERF_EVENTS\00", align 1
@__TRACE_SYSTEM_TICK_DEP_MASK_PERF_EVENTS = internal global %struct.trace_eval_map { ptr @.str.14, ptr @.str.4, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_TICK_DEP_MASK_PERF_EVENTS = internal global ptr @__TRACE_SYSTEM_TICK_DEP_MASK_PERF_EVENTS, section "_ftrace_eval_map", align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"TICK_DEP_BIT_SCHED\00", align 1
@__TRACE_SYSTEM_TICK_DEP_BIT_SCHED = internal global %struct.trace_eval_map { ptr @.str.14, ptr @.str.5, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_TICK_DEP_BIT_SCHED = internal global ptr @__TRACE_SYSTEM_TICK_DEP_BIT_SCHED, section "_ftrace_eval_map", align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"TICK_DEP_MASK_SCHED\00", align 1
@__TRACE_SYSTEM_TICK_DEP_MASK_SCHED = internal global %struct.trace_eval_map { ptr @.str.14, ptr @.str.6, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_TICK_DEP_MASK_SCHED = internal global ptr @__TRACE_SYSTEM_TICK_DEP_MASK_SCHED, section "_ftrace_eval_map", align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"TICK_DEP_BIT_CLOCK_UNSTABLE\00", align 1
@__TRACE_SYSTEM_TICK_DEP_BIT_CLOCK_UNSTABLE = internal global %struct.trace_eval_map { ptr @.str.14, ptr @.str.7, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_TICK_DEP_BIT_CLOCK_UNSTABLE = internal global ptr @__TRACE_SYSTEM_TICK_DEP_BIT_CLOCK_UNSTABLE, section "_ftrace_eval_map", align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"TICK_DEP_MASK_CLOCK_UNSTABLE\00", align 1
@__TRACE_SYSTEM_TICK_DEP_MASK_CLOCK_UNSTABLE = internal global %struct.trace_eval_map { ptr @.str.14, ptr @.str.8, i32 8 }, section ".init.data", align 4
@TRACE_SYSTEM_TICK_DEP_MASK_CLOCK_UNSTABLE = internal global ptr @__TRACE_SYSTEM_TICK_DEP_MASK_CLOCK_UNSTABLE, section "_ftrace_eval_map", align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"TICK_DEP_BIT_RCU\00", align 1
@__TRACE_SYSTEM_TICK_DEP_BIT_RCU = internal global %struct.trace_eval_map { ptr @.str.14, ptr @.str.9, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_TICK_DEP_BIT_RCU = internal global ptr @__TRACE_SYSTEM_TICK_DEP_BIT_RCU, section "_ftrace_eval_map", align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"TICK_DEP_MASK_RCU\00", align 1
@__TRACE_SYSTEM_TICK_DEP_MASK_RCU = internal global %struct.trace_eval_map { ptr @.str.14, ptr @.str.10, i32 16 }, section ".init.data", align 4
@TRACE_SYSTEM_TICK_DEP_MASK_RCU = internal global ptr @__TRACE_SYSTEM_TICK_DEP_MASK_RCU, section "_ftrace_eval_map", align 4
@trace_event_fields_timer_class = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.13, %union.anon.15 { %struct.anon.16 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_timer_class = internal global %struct.trace_event_class { ptr @.str.14, ptr @trace_event_raw_event_timer_class, ptr @perf_trace_timer_class, ptr @trace_event_reg, ptr @trace_event_fields_timer_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_timer_class, i64 24), ptr getelementptr (i8, ptr @event_class_timer_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_timer_class = internal global %struct.trace_event_functions { ptr @trace_raw_output_timer_class, ptr null, ptr null, ptr null }, align 4
@print_fmt_timer_class = internal global [23 x i8] c"\22timer=%p\22, REC->timer\00", align 1
@event_timer_init = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_timer_class, %union.anon.17 { ptr @__tracepoint_timer_init }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_timer_class }, ptr @print_fmt_timer_class, ptr null, %union.anon.18 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_timer_init = internal global ptr @event_timer_init, section "_ftrace_events", align 4
@trace_event_fields_timer_start = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.13, %union.anon.15 { %struct.anon.16 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.15 { %struct.anon.16 { ptr @.str.16, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.15 { %struct.anon.16 { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.15 { %struct.anon.16 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.20, %union.anon.15 { %struct.anon.16 { ptr @.str.21, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_timer_start = internal global %struct.trace_event_class { ptr @.str.14, ptr @trace_event_raw_event_timer_start, ptr @perf_trace_timer_start, ptr @trace_event_reg, ptr @trace_event_fields_timer_start, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_timer_start, i64 24), ptr getelementptr (i8, ptr @event_class_timer_start, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_timer_start = internal global %struct.trace_event_functions { ptr @trace_raw_output_timer_start, ptr null, ptr null, ptr null }, align 4
@print_fmt_timer_start = internal global [358 x i8] c"\22timer=%p function=%ps expires=%lu [timeout=%ld] cpu=%u idx=%u flags=%s\22, REC->timer, REC->function, REC->expires, (long)REC->expires - REC->now, REC->flags & 0x0003FFFF, REC->flags >> 22, __print_flags(REC->flags & (0x00040000 | 0x00080000 | 0x00100000 | 0x00200000), \22|\22, { 0x00040000, \22M\22 }, { 0x00080000, \22D\22 }, { 0x00100000, \22P\22 }, { 0x00200000, \22I\22 })\00", align 1
@event_timer_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_timer_start, %union.anon.17 { ptr @__tracepoint_timer_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_timer_start }, ptr @print_fmt_timer_start, ptr null, %union.anon.18 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_timer_start = internal global ptr @event_timer_start, section "_ftrace_events", align 4
@trace_event_fields_timer_expire_entry = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.13, %union.anon.15 { %struct.anon.16 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.15 { %struct.anon.16 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.15 { %struct.anon.16 { ptr @.str.16, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.15 { %struct.anon.16 { ptr @.str.28, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_timer_expire_entry = internal global %struct.trace_event_class { ptr @.str.14, ptr @trace_event_raw_event_timer_expire_entry, ptr @perf_trace_timer_expire_entry, ptr @trace_event_reg, ptr @trace_event_fields_timer_expire_entry, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_timer_expire_entry, i64 24), ptr getelementptr (i8, ptr @event_class_timer_expire_entry, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_timer_expire_entry = internal global %struct.trace_event_functions { ptr @trace_raw_output_timer_expire_entry, ptr null, ptr null, ptr null }, align 4
@print_fmt_timer_expire_entry = internal global [95 x i8] c"\22timer=%p function=%ps now=%lu baseclk=%lu\22, REC->timer, REC->function, REC->now, REC->baseclk\00", align 1
@event_timer_expire_entry = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_timer_expire_entry, %union.anon.17 { ptr @__tracepoint_timer_expire_entry }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_timer_expire_entry }, ptr @print_fmt_timer_expire_entry, ptr null, %union.anon.18 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_timer_expire_entry = internal global ptr @event_timer_expire_entry, section "_ftrace_events", align 4
@event_timer_expire_exit = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_timer_class, %union.anon.17 { ptr @__tracepoint_timer_expire_exit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_timer_class }, ptr @print_fmt_timer_class, ptr null, %union.anon.18 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_timer_expire_exit = internal global ptr @event_timer_expire_exit, section "_ftrace_events", align 4
@event_timer_cancel = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_timer_class, %union.anon.17 { ptr @__tracepoint_timer_cancel }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_timer_class }, ptr @print_fmt_timer_class, ptr null, %union.anon.18 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_timer_cancel = internal global ptr @event_timer_cancel, section "_ftrace_events", align 4
@trace_event_fields_hrtimer_init = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.13, %union.anon.15 { %struct.anon.16 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.31, %union.anon.15 { %struct.anon.16 { ptr @.str.32, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.33, %union.anon.15 { %struct.anon.16 { ptr @.str.34, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_hrtimer_init = internal global %struct.trace_event_class { ptr @.str.14, ptr @trace_event_raw_event_hrtimer_init, ptr @perf_trace_hrtimer_init, ptr @trace_event_reg, ptr @trace_event_fields_hrtimer_init, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_hrtimer_init, i64 24), ptr getelementptr (i8, ptr @event_class_hrtimer_init, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_hrtimer_init = internal global %struct.trace_event_functions { ptr @trace_raw_output_hrtimer_init, ptr null, ptr null, ptr null }, align 4
@print_fmt_hrtimer_init = internal global [532 x i8] c"\22hrtimer=%p clockid=%s mode=%s\22, REC->hrtimer, __print_symbolic(REC->clockid, { 0, \22CLOCK_REALTIME\22 }, { 1, \22CLOCK_MONOTONIC\22 }, { 7, \22CLOCK_BOOTTIME\22 }, { 11, \22CLOCK_TAI\22 }), __print_symbolic(REC->mode, { HRTIMER_MODE_ABS, \22ABS\22 }, { HRTIMER_MODE_REL, \22REL\22 }, { HRTIMER_MODE_ABS_PINNED, \22ABS|PINNED\22 }, { HRTIMER_MODE_REL_PINNED, \22REL|PINNED\22 }, { HRTIMER_MODE_ABS_SOFT, \22ABS|SOFT\22 }, { HRTIMER_MODE_REL_SOFT, \22REL|SOFT\22 }, { HRTIMER_MODE_ABS_PINNED_SOFT, \22ABS|PINNED|SOFT\22 }, { HRTIMER_MODE_REL_PINNED_SOFT, \22REL|PINNED|SOFT\22 })\00", align 1
@event_hrtimer_init = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_hrtimer_init, %union.anon.17 { ptr @__tracepoint_hrtimer_init }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_hrtimer_init }, ptr @print_fmt_hrtimer_init, ptr null, %union.anon.18 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_hrtimer_init = internal global ptr @event_hrtimer_init, section "_ftrace_events", align 4
@trace_event_fields_hrtimer_start = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.13, %union.anon.15 { %struct.anon.16 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.15 { %struct.anon.16 { ptr @.str.16, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon.15 { %struct.anon.16 { ptr @.str.18, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon.15 { %struct.anon.16 { ptr @.str.50, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.33, %union.anon.15 { %struct.anon.16 { ptr @.str.34, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_hrtimer_start = internal global %struct.trace_event_class { ptr @.str.14, ptr @trace_event_raw_event_hrtimer_start, ptr @perf_trace_hrtimer_start, ptr @trace_event_reg, ptr @trace_event_fields_hrtimer_start, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_hrtimer_start, i64 24), ptr getelementptr (i8, ptr @event_class_hrtimer_start, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_hrtimer_start = internal global %struct.trace_event_functions { ptr @trace_raw_output_hrtimer_start, ptr null, ptr null, ptr null }, align 4
@print_fmt_hrtimer_start = internal global [524 x i8] c"\22hrtimer=%p function=%ps expires=%llu softexpires=%llu mode=%s\22, REC->hrtimer, REC->function, (unsigned long long) REC->expires, (unsigned long long) REC->softexpires, __print_symbolic(REC->mode, { HRTIMER_MODE_ABS, \22ABS\22 }, { HRTIMER_MODE_REL, \22REL\22 }, { HRTIMER_MODE_ABS_PINNED, \22ABS|PINNED\22 }, { HRTIMER_MODE_REL_PINNED, \22REL|PINNED\22 }, { HRTIMER_MODE_ABS_SOFT, \22ABS|SOFT\22 }, { HRTIMER_MODE_REL_SOFT, \22REL|SOFT\22 }, { HRTIMER_MODE_ABS_PINNED_SOFT, \22ABS|PINNED|SOFT\22 }, { HRTIMER_MODE_REL_PINNED_SOFT, \22REL|PINNED|SOFT\22 })\00", align 1
@event_hrtimer_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_hrtimer_start, %union.anon.17 { ptr @__tracepoint_hrtimer_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_hrtimer_start }, ptr @print_fmt_hrtimer_start, ptr null, %union.anon.18 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_hrtimer_start = internal global ptr @event_hrtimer_start, section "_ftrace_events", align 4
@trace_event_fields_hrtimer_expire_entry = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.13, %union.anon.15 { %struct.anon.16 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon.15 { %struct.anon.16 { ptr @.str.19, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.15 { %struct.anon.16 { ptr @.str.16, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_hrtimer_expire_entry = internal global %struct.trace_event_class { ptr @.str.14, ptr @trace_event_raw_event_hrtimer_expire_entry, ptr @perf_trace_hrtimer_expire_entry, ptr @trace_event_reg, ptr @trace_event_fields_hrtimer_expire_entry, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_hrtimer_expire_entry, i64 24), ptr getelementptr (i8, ptr @event_class_hrtimer_expire_entry, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_hrtimer_expire_entry = internal global %struct.trace_event_functions { ptr @trace_raw_output_hrtimer_expire_entry, ptr null, ptr null, ptr null }, align 4
@print_fmt_hrtimer_expire_entry = internal global [95 x i8] c"\22hrtimer=%p function=%ps now=%llu\22, REC->hrtimer, REC->function, (unsigned long long) REC->now\00", align 1
@event_hrtimer_expire_entry = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_hrtimer_expire_entry, %union.anon.17 { ptr @__tracepoint_hrtimer_expire_entry }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_hrtimer_expire_entry }, ptr @print_fmt_hrtimer_expire_entry, ptr null, %union.anon.18 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_hrtimer_expire_entry = internal global ptr @event_hrtimer_expire_entry, section "_ftrace_events", align 4
@trace_event_fields_hrtimer_class = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.13, %union.anon.15 { %struct.anon.16 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_hrtimer_class = internal global %struct.trace_event_class { ptr @.str.14, ptr @trace_event_raw_event_hrtimer_class, ptr @perf_trace_hrtimer_class, ptr @trace_event_reg, ptr @trace_event_fields_hrtimer_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_hrtimer_class, i64 24), ptr getelementptr (i8, ptr @event_class_hrtimer_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_hrtimer_class = internal global %struct.trace_event_functions { ptr @trace_raw_output_hrtimer_class, ptr null, ptr null, ptr null }, align 4
@print_fmt_hrtimer_class = internal global [27 x i8] c"\22hrtimer=%p\22, REC->hrtimer\00", align 1
@event_hrtimer_expire_exit = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_hrtimer_class, %union.anon.17 { ptr @__tracepoint_hrtimer_expire_exit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_hrtimer_class }, ptr @print_fmt_hrtimer_class, ptr null, %union.anon.18 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_hrtimer_expire_exit = internal global ptr @event_hrtimer_expire_exit, section "_ftrace_events", align 4
@event_hrtimer_cancel = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_hrtimer_class, %union.anon.17 { ptr @__tracepoint_hrtimer_cancel }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_hrtimer_class }, ptr @print_fmt_hrtimer_class, ptr null, %union.anon.18 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_hrtimer_cancel = internal global ptr @event_hrtimer_cancel, section "_ftrace_events", align 4
@trace_event_fields_itimer_state = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.54, %union.anon.15 { %struct.anon.16 { ptr @.str.55, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.56, %union.anon.15 { %struct.anon.16 { ptr @.str.18, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.57, %union.anon.15 { %struct.anon.16 { ptr @.str.58, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.57, %union.anon.15 { %struct.anon.16 { ptr @.str.59, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.57, %union.anon.15 { %struct.anon.16 { ptr @.str.60, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.57, %union.anon.15 { %struct.anon.16 { ptr @.str.61, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_itimer_state = internal global %struct.trace_event_class { ptr @.str.14, ptr @trace_event_raw_event_itimer_state, ptr @perf_trace_itimer_state, ptr @trace_event_reg, ptr @trace_event_fields_itimer_state, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_itimer_state, i64 24), ptr getelementptr (i8, ptr @event_class_itimer_state, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_itimer_state = internal global %struct.trace_event_functions { ptr @trace_raw_output_itimer_state, ptr null, ptr null, ptr null }, align 4
@print_fmt_itimer_state = internal global [179 x i8] c"\22which=%d expires=%llu it_value=%ld.%06ld it_interval=%ld.%06ld\22, REC->which, REC->expires, REC->value_sec, REC->value_nsec / 1000L, REC->interval_sec, REC->interval_nsec / 1000L\00", align 1
@event_itimer_state = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_itimer_state, %union.anon.17 { ptr @__tracepoint_itimer_state }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_itimer_state }, ptr @print_fmt_itimer_state, ptr null, %union.anon.18 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_itimer_state = internal global ptr @event_itimer_state, section "_ftrace_events", align 4
@trace_event_fields_itimer_expire = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.54, %union.anon.15 { %struct.anon.16 { ptr @.str.55, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.63, %union.anon.15 { %struct.anon.16 { ptr @.str.64, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.56, %union.anon.15 { %struct.anon.16 { ptr @.str.19, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_itimer_expire = internal global %struct.trace_event_class { ptr @.str.14, ptr @trace_event_raw_event_itimer_expire, ptr @perf_trace_itimer_expire, ptr @trace_event_reg, ptr @trace_event_fields_itimer_expire, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_itimer_expire, i64 24), ptr getelementptr (i8, ptr @event_class_itimer_expire, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_itimer_expire = internal global %struct.trace_event_functions { ptr @trace_raw_output_itimer_expire, ptr null, ptr null, ptr null }, align 4
@print_fmt_itimer_expire = internal global [65 x i8] c"\22which=%d pid=%d now=%llu\22, REC->which, (int) REC->pid, REC->now\00", align 1
@event_itimer_expire = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_itimer_expire, %union.anon.17 { ptr @__tracepoint_itimer_expire }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_itimer_expire }, ptr @print_fmt_itimer_expire, ptr null, %union.anon.18 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_itimer_expire = internal global ptr @event_itimer_expire, section "_ftrace_events", align 4
@trace_event_fields_tick_stop = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.54, %union.anon.15 { %struct.anon.16 { ptr @.str.66, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.54, %union.anon.15 { %struct.anon.16 { ptr @.str.67, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_tick_stop = internal global %struct.trace_event_class { ptr @.str.14, ptr @trace_event_raw_event_tick_stop, ptr @perf_trace_tick_stop, ptr @trace_event_reg, ptr @trace_event_fields_tick_stop, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_tick_stop, i64 24), ptr getelementptr (i8, ptr @event_class_tick_stop, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_tick_stop = internal global %struct.trace_event_functions { ptr @trace_raw_output_tick_stop, ptr null, ptr null, ptr null }, align 4
@print_fmt_tick_stop = internal global [329 x i8] c"\22success=%d dependency=%s\22, REC->success, __print_symbolic(REC->dependency, { 0, \22NONE\22 }, { (1 << TICK_DEP_BIT_POSIX_TIMER), \22POSIX_TIMER\22 }, { (1 << TICK_DEP_BIT_PERF_EVENTS), \22PERF_EVENTS\22 }, { (1 << TICK_DEP_BIT_SCHED), \22SCHED\22 }, { (1 << TICK_DEP_BIT_CLOCK_UNSTABLE), \22CLOCK_UNSTABLE\22 }, { (1 << TICK_DEP_BIT_RCU), \22RCU\22 })\00", align 1
@event_tick_stop = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tick_stop, %union.anon.17 { ptr @__tracepoint_tick_stop }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tick_stop }, ptr @print_fmt_tick_stop, ptr null, %union.anon.18 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_tick_stop = internal global ptr @event_tick_stop, section "_ftrace_events", align 4
@jiffies_64 = dso_local global i64 4294937296, section ".data..cacheline_aligned", align 64
@__kstrtab_jiffies_64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_jiffies_64 = external dso_local constant [0 x i8], align 1
@__ksymtab_jiffies_64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jiffies_64 to i32), ptr @__kstrtab_jiffies_64, ptr @__kstrtabns_jiffies_64 }, section "___ksymtab+jiffies_64", align 4
@sysctl_timer_migration = dso_local local_unnamed_addr global i32 1, align 4
@timers_migration_enabled = dso_local global %struct.static_key_false zeroinitializer, align 4
@timer_update_work = internal global %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @timer_update_work, i64 4), ptr getelementptr (i8, ptr @timer_update_work, i64 4) }, ptr @timer_update_keys }, align 4
@timer_keys_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @timer_keys_mutex, i64 12), ptr getelementptr (i8, ptr @timer_keys_mutex, i64 12) } }, align 4
@__kstrtab___round_jiffies = external dso_local constant [0 x i8], align 1
@__kstrtabns___round_jiffies = external dso_local constant [0 x i8], align 1
@__ksymtab___round_jiffies = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__round_jiffies to i32), ptr @__kstrtab___round_jiffies, ptr @__kstrtabns___round_jiffies }, section "___ksymtab_gpl+__round_jiffies", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab___round_jiffies_relative = external dso_local constant [0 x i8], align 1
@__kstrtabns___round_jiffies_relative = external dso_local constant [0 x i8], align 1
@__ksymtab___round_jiffies_relative = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__round_jiffies_relative to i32), ptr @__kstrtab___round_jiffies_relative, ptr @__kstrtabns___round_jiffies_relative }, section "___ksymtab_gpl+__round_jiffies_relative", align 4
@__kstrtab_round_jiffies = external dso_local constant [0 x i8], align 1
@__kstrtabns_round_jiffies = external dso_local constant [0 x i8], align 1
@__ksymtab_round_jiffies = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @round_jiffies to i32), ptr @__kstrtab_round_jiffies, ptr @__kstrtabns_round_jiffies }, section "___ksymtab_gpl+round_jiffies", align 4
@__kstrtab_round_jiffies_relative = external dso_local constant [0 x i8], align 1
@__kstrtabns_round_jiffies_relative = external dso_local constant [0 x i8], align 1
@__ksymtab_round_jiffies_relative = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @round_jiffies_relative to i32), ptr @__kstrtab_round_jiffies_relative, ptr @__kstrtabns_round_jiffies_relative }, section "___ksymtab_gpl+round_jiffies_relative", align 4
@__kstrtab___round_jiffies_up = external dso_local constant [0 x i8], align 1
@__kstrtabns___round_jiffies_up = external dso_local constant [0 x i8], align 1
@__ksymtab___round_jiffies_up = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__round_jiffies_up to i32), ptr @__kstrtab___round_jiffies_up, ptr @__kstrtabns___round_jiffies_up }, section "___ksymtab_gpl+__round_jiffies_up", align 4
@__kstrtab___round_jiffies_up_relative = external dso_local constant [0 x i8], align 1
@__kstrtabns___round_jiffies_up_relative = external dso_local constant [0 x i8], align 1
@__ksymtab___round_jiffies_up_relative = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__round_jiffies_up_relative to i32), ptr @__kstrtab___round_jiffies_up_relative, ptr @__kstrtabns___round_jiffies_up_relative }, section "___ksymtab_gpl+__round_jiffies_up_relative", align 4
@__kstrtab_round_jiffies_up = external dso_local constant [0 x i8], align 1
@__kstrtabns_round_jiffies_up = external dso_local constant [0 x i8], align 1
@__ksymtab_round_jiffies_up = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @round_jiffies_up to i32), ptr @__kstrtab_round_jiffies_up, ptr @__kstrtabns_round_jiffies_up }, section "___ksymtab_gpl+round_jiffies_up", align 4
@__kstrtab_round_jiffies_up_relative = external dso_local constant [0 x i8], align 1
@__kstrtabns_round_jiffies_up_relative = external dso_local constant [0 x i8], align 1
@__ksymtab_round_jiffies_up_relative = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @round_jiffies_up_relative to i32), ptr @__kstrtab_round_jiffies_up_relative, ptr @__kstrtabns_round_jiffies_up_relative }, section "___ksymtab_gpl+round_jiffies_up_relative", align 4
@__kstrtab_init_timer_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_timer_key = external dso_local constant [0 x i8], align 1
@__ksymtab_init_timer_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_timer_key to i32), ptr @__kstrtab_init_timer_key, ptr @__kstrtabns_init_timer_key }, section "___ksymtab+init_timer_key", align 4
@__kstrtab_mod_timer_pending = external dso_local constant [0 x i8], align 1
@__kstrtabns_mod_timer_pending = external dso_local constant [0 x i8], align 1
@__ksymtab_mod_timer_pending = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mod_timer_pending to i32), ptr @__kstrtab_mod_timer_pending, ptr @__kstrtabns_mod_timer_pending }, section "___ksymtab+mod_timer_pending", align 4
@__kstrtab_mod_timer = external dso_local constant [0 x i8], align 1
@__kstrtabns_mod_timer = external dso_local constant [0 x i8], align 1
@__ksymtab_mod_timer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mod_timer to i32), ptr @__kstrtab_mod_timer, ptr @__kstrtabns_mod_timer }, section "___ksymtab+mod_timer", align 4
@__kstrtab_timer_reduce = external dso_local constant [0 x i8], align 1
@__kstrtabns_timer_reduce = external dso_local constant [0 x i8], align 1
@__ksymtab_timer_reduce = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @timer_reduce to i32), ptr @__kstrtab_timer_reduce, ptr @__kstrtabns_timer_reduce }, section "___ksymtab+timer_reduce", align 4
@__kstrtab_add_timer = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_timer = external dso_local constant [0 x i8], align 1
@__ksymtab_add_timer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_timer to i32), ptr @__kstrtab_add_timer, ptr @__kstrtabns_add_timer }, section "___ksymtab+add_timer", align 4
@__kstrtab_add_timer_on = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_timer_on = external dso_local constant [0 x i8], align 1
@__ksymtab_add_timer_on = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_timer_on to i32), ptr @__kstrtab_add_timer_on, ptr @__kstrtabns_add_timer_on }, section "___ksymtab_gpl+add_timer_on", align 4
@__kstrtab_del_timer = external dso_local constant [0 x i8], align 1
@__kstrtabns_del_timer = external dso_local constant [0 x i8], align 1
@__ksymtab_del_timer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @del_timer to i32), ptr @__kstrtab_del_timer, ptr @__kstrtabns_del_timer }, section "___ksymtab+del_timer", align 4
@__kstrtab_try_to_del_timer_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_try_to_del_timer_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_try_to_del_timer_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @try_to_del_timer_sync to i32), ptr @__kstrtab_try_to_del_timer_sync, ptr @__kstrtabns_try_to_del_timer_sync }, section "___ksymtab+try_to_del_timer_sync", align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"kernel/time/timer.c\00", align 1
@__kstrtab_del_timer_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_del_timer_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_del_timer_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @del_timer_sync to i32), ptr @__kstrtab_del_timer_sync, ptr @__kstrtabns_del_timer_sync }, section "___ksymtab+del_timer_sync", align 4
@timer_bases = internal global [2 x %struct.timer_base] zeroinitializer, section ".data..percpu", align 64
@.str.12 = private unnamed_addr constant [45 x i8] c"\013schedule_timeout: wrong timeout value %lx\0A\00", align 1
@__kstrtab_schedule_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_schedule_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_schedule_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @schedule_timeout to i32), ptr @__kstrtab_schedule_timeout, ptr @__kstrtabns_schedule_timeout }, section "___ksymtab+schedule_timeout", align 4
@__kstrtab_schedule_timeout_interruptible = external dso_local constant [0 x i8], align 1
@__kstrtabns_schedule_timeout_interruptible = external dso_local constant [0 x i8], align 1
@__ksymtab_schedule_timeout_interruptible = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @schedule_timeout_interruptible to i32), ptr @__kstrtab_schedule_timeout_interruptible, ptr @__kstrtabns_schedule_timeout_interruptible }, section "___ksymtab+schedule_timeout_interruptible", align 4
@__kstrtab_schedule_timeout_killable = external dso_local constant [0 x i8], align 1
@__kstrtabns_schedule_timeout_killable = external dso_local constant [0 x i8], align 1
@__ksymtab_schedule_timeout_killable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @schedule_timeout_killable to i32), ptr @__kstrtab_schedule_timeout_killable, ptr @__kstrtabns_schedule_timeout_killable }, section "___ksymtab+schedule_timeout_killable", align 4
@__kstrtab_schedule_timeout_uninterruptible = external dso_local constant [0 x i8], align 1
@__kstrtabns_schedule_timeout_uninterruptible = external dso_local constant [0 x i8], align 1
@__ksymtab_schedule_timeout_uninterruptible = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @schedule_timeout_uninterruptible to i32), ptr @__kstrtab_schedule_timeout_uninterruptible, ptr @__kstrtabns_schedule_timeout_uninterruptible }, section "___ksymtab+schedule_timeout_uninterruptible", align 4
@__kstrtab_schedule_timeout_idle = external dso_local constant [0 x i8], align 1
@__kstrtabns_schedule_timeout_idle = external dso_local constant [0 x i8], align 1
@__ksymtab_schedule_timeout_idle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @schedule_timeout_idle to i32), ptr @__kstrtab_schedule_timeout_idle, ptr @__kstrtabns_schedule_timeout_idle }, section "___ksymtab+schedule_timeout_idle", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__kstrtab_msleep = external dso_local constant [0 x i8], align 1
@__kstrtabns_msleep = external dso_local constant [0 x i8], align 1
@__ksymtab_msleep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @msleep to i32), ptr @__kstrtab_msleep, ptr @__kstrtabns_msleep }, section "___ksymtab+msleep", align 4
@__kstrtab_msleep_interruptible = external dso_local constant [0 x i8], align 1
@__kstrtabns_msleep_interruptible = external dso_local constant [0 x i8], align 1
@__ksymtab_msleep_interruptible = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @msleep_interruptible to i32), ptr @__kstrtab_msleep_interruptible, ptr @__kstrtabns_msleep_interruptible }, section "___ksymtab+msleep_interruptible", align 4
@__kstrtab_usleep_range_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_usleep_range_state = external dso_local constant [0 x i8], align 1
@__ksymtab_usleep_range_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usleep_range_state to i32), ptr @__kstrtab_usleep_range_state, ptr @__kstrtabns_usleep_range_state }, section "___ksymtab+usleep_range_state", align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"void *\00", align 1
@.str.14 = private constant [6 x i8] c"timer\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"timer=%p\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"expires\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"now\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.22 = private unnamed_addr constant [72 x i8] c"timer=%p function=%ps expires=%lu [timeout=%ld] cpu=%u idx=%u flags=%s\0A\00", align 1
@trace_raw_output_timer_start.__flags = internal constant [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 262144, ptr @.str.23 }, %struct.trace_print_flags { i32 524288, ptr @.str.24 }, %struct.trace_print_flags { i32 1048576, ptr @.str.25 }, %struct.trace_print_flags { i32 2097152, ptr @.str.26 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.23 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"baseclk\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"timer=%p function=%ps now=%lu baseclk=%lu\0A\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"hrtimer\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"clockid_t\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"clockid\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"enum hrtimer_mode\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"hrtimer=%p clockid=%s mode=%s\0A\00", align 1
@trace_raw_output_hrtimer_init.symbols = internal constant [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.36 }, %struct.trace_print_flags { i32 1, ptr @.str.37 }, %struct.trace_print_flags { i32 7, ptr @.str.38 }, %struct.trace_print_flags { i32 11, ptr @.str.39 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.36 = private unnamed_addr constant [15 x i8] c"CLOCK_REALTIME\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"CLOCK_MONOTONIC\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"CLOCK_BOOTTIME\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"CLOCK_TAI\00", align 1
@trace_raw_output_hrtimer_init.symbols.40 = internal constant [9 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.41 }, %struct.trace_print_flags { i32 1, ptr @.str.42 }, %struct.trace_print_flags { i32 2, ptr @.str.43 }, %struct.trace_print_flags { i32 3, ptr @.str.44 }, %struct.trace_print_flags { i32 4, ptr @.str.45 }, %struct.trace_print_flags { i32 5, ptr @.str.46 }, %struct.trace_print_flags { i32 6, ptr @.str.47 }, %struct.trace_print_flags { i32 7, ptr @.str.48 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.41 = private unnamed_addr constant [4 x i8] c"ABS\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"REL\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"ABS|PINNED\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"REL|PINNED\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"ABS|SOFT\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"REL|SOFT\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"ABS|PINNED|SOFT\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"REL|PINNED|SOFT\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"s64\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"softexpires\00", align 1
@.str.51 = private unnamed_addr constant [63 x i8] c"hrtimer=%p function=%ps expires=%llu softexpires=%llu mode=%s\0A\00", align 1
@trace_raw_output_hrtimer_start.symbols = internal constant [9 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.41 }, %struct.trace_print_flags { i32 1, ptr @.str.42 }, %struct.trace_print_flags { i32 2, ptr @.str.43 }, %struct.trace_print_flags { i32 3, ptr @.str.44 }, %struct.trace_print_flags { i32 4, ptr @.str.45 }, %struct.trace_print_flags { i32 5, ptr @.str.46 }, %struct.trace_print_flags { i32 6, ptr @.str.47 }, %struct.trace_print_flags { i32 7, ptr @.str.48 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.52 = private unnamed_addr constant [34 x i8] c"hrtimer=%p function=%ps now=%llu\0A\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"hrtimer=%p\0A\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"which\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"unsigned long long\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"value_sec\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"value_nsec\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"interval_sec\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"interval_nsec\00", align 1
@.str.62 = private unnamed_addr constant [64 x i8] c"which=%d expires=%llu it_value=%ld.%06ld it_interval=%ld.%06ld\0A\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"pid_t\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.65 = private unnamed_addr constant [26 x i8] c"which=%d pid=%d now=%llu\0A\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"dependency\00", align 1
@.str.68 = private unnamed_addr constant [26 x i8] c"success=%d dependency=%s\0A\00", align 1
@trace_raw_output_tick_stop.symbols = internal constant [7 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.69 }, %struct.trace_print_flags { i32 1, ptr @.str.70 }, %struct.trace_print_flags { i32 2, ptr @.str.71 }, %struct.trace_print_flags { i32 4, ptr @.str.72 }, %struct.trace_print_flags { i32 8, ptr @.str.73 }, %struct.trace_print_flags { i32 16, ptr @.str.74 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.69 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"POSIX_TIMER\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"PERF_EVENTS\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"SCHED\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"CLOCK_UNSTABLE\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"RCU\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@timers_nohz_active = internal global %struct.static_key_false zeroinitializer, align 4
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.75 = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1
@.str.76 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_enable = private unnamed_addr constant [18 x i8] c"static_key_enable\00", align 1
@static_key_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tick_nohz_active = external dso_local local_unnamed_addr global i32, align 4
@__func__.static_key_disable = private unnamed_addr constant [19 x i8] c"static_key_disable\00", align 1
@static_key_disable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@do_init_timer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@forward_timer_base.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@net_rand_noise = external dso_local global i32, section ".data..percpu", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__run_timers.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@call_timer_fn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.78 = private unnamed_addr constant [39 x i8] c"timer: %pS preempt leak: %08x -> %08x\0A\00", align 1
@llvm.compiler.used = appending global [110 x ptr] [ptr @TRACE_SYSTEM_TICK_DEP_BIT_CLOCK_UNSTABLE, ptr @TRACE_SYSTEM_TICK_DEP_BIT_PERF_EVENTS, ptr @TRACE_SYSTEM_TICK_DEP_BIT_POSIX_TIMER, ptr @TRACE_SYSTEM_TICK_DEP_BIT_RCU, ptr @TRACE_SYSTEM_TICK_DEP_BIT_SCHED, ptr @TRACE_SYSTEM_TICK_DEP_MASK_CLOCK_UNSTABLE, ptr @TRACE_SYSTEM_TICK_DEP_MASK_NONE, ptr @TRACE_SYSTEM_TICK_DEP_MASK_PERF_EVENTS, ptr @TRACE_SYSTEM_TICK_DEP_MASK_POSIX_TIMER, ptr @TRACE_SYSTEM_TICK_DEP_MASK_RCU, ptr @TRACE_SYSTEM_TICK_DEP_MASK_SCHED, ptr @__TRACE_SYSTEM_TICK_DEP_BIT_CLOCK_UNSTABLE, ptr @__TRACE_SYSTEM_TICK_DEP_BIT_PERF_EVENTS, ptr @__TRACE_SYSTEM_TICK_DEP_BIT_POSIX_TIMER, ptr @__TRACE_SYSTEM_TICK_DEP_BIT_RCU, ptr @__TRACE_SYSTEM_TICK_DEP_BIT_SCHED, ptr @__TRACE_SYSTEM_TICK_DEP_MASK_CLOCK_UNSTABLE, ptr @__TRACE_SYSTEM_TICK_DEP_MASK_NONE, ptr @__TRACE_SYSTEM_TICK_DEP_MASK_PERF_EVENTS, ptr @__TRACE_SYSTEM_TICK_DEP_MASK_POSIX_TIMER, ptr @__TRACE_SYSTEM_TICK_DEP_MASK_RCU, ptr @__TRACE_SYSTEM_TICK_DEP_MASK_SCHED, ptr @__event_hrtimer_cancel, ptr @__event_hrtimer_expire_entry, ptr @__event_hrtimer_expire_exit, ptr @__event_hrtimer_init, ptr @__event_hrtimer_start, ptr @__event_itimer_expire, ptr @__event_itimer_state, ptr @__event_tick_stop, ptr @__event_timer_cancel, ptr @__event_timer_expire_entry, ptr @__event_timer_expire_exit, ptr @__event_timer_init, ptr @__event_timer_start, ptr @__ksymtab___round_jiffies, ptr @__ksymtab___round_jiffies_relative, ptr @__ksymtab___round_jiffies_up, ptr @__ksymtab___round_jiffies_up_relative, ptr @__ksymtab_add_timer, ptr @__ksymtab_add_timer_on, ptr @__ksymtab_del_timer, ptr @__ksymtab_del_timer_sync, ptr @__ksymtab_init_timer_key, ptr @__ksymtab_jiffies_64, ptr @__ksymtab_mod_timer, ptr @__ksymtab_mod_timer_pending, ptr @__ksymtab_msleep, ptr @__ksymtab_msleep_interruptible, ptr @__ksymtab_round_jiffies, ptr @__ksymtab_round_jiffies_relative, ptr @__ksymtab_round_jiffies_up, ptr @__ksymtab_round_jiffies_up_relative, ptr @__ksymtab_schedule_timeout, ptr @__ksymtab_schedule_timeout_idle, ptr @__ksymtab_schedule_timeout_interruptible, ptr @__ksymtab_schedule_timeout_killable, ptr @__ksymtab_schedule_timeout_uninterruptible, ptr @__ksymtab_timer_reduce, ptr @__ksymtab_try_to_del_timer_sync, ptr @__ksymtab_usleep_range_state, ptr @__tracepoint_hrtimer_cancel, ptr @__tracepoint_hrtimer_expire_entry, ptr @__tracepoint_hrtimer_expire_exit, ptr @__tracepoint_hrtimer_init, ptr @__tracepoint_hrtimer_start, ptr @__tracepoint_itimer_expire, ptr @__tracepoint_itimer_state, ptr @__tracepoint_ptr_hrtimer_cancel, ptr @__tracepoint_ptr_hrtimer_expire_entry, ptr @__tracepoint_ptr_hrtimer_expire_exit, ptr @__tracepoint_ptr_hrtimer_init, ptr @__tracepoint_ptr_hrtimer_start, ptr @__tracepoint_ptr_itimer_expire, ptr @__tracepoint_ptr_itimer_state, ptr @__tracepoint_ptr_tick_stop, ptr @__tracepoint_ptr_timer_cancel, ptr @__tracepoint_ptr_timer_expire_entry, ptr @__tracepoint_ptr_timer_expire_exit, ptr @__tracepoint_ptr_timer_init, ptr @__tracepoint_ptr_timer_start, ptr @__tracepoint_tick_stop, ptr @__tracepoint_timer_cancel, ptr @__tracepoint_timer_expire_entry, ptr @__tracepoint_timer_expire_exit, ptr @__tracepoint_timer_init, ptr @__tracepoint_timer_start, ptr @event_class_hrtimer_class, ptr @event_class_hrtimer_expire_entry, ptr @event_class_hrtimer_init, ptr @event_class_hrtimer_start, ptr @event_class_itimer_expire, ptr @event_class_itimer_state, ptr @event_class_tick_stop, ptr @event_class_timer_class, ptr @event_class_timer_expire_entry, ptr @event_class_timer_start, ptr @event_hrtimer_cancel, ptr @event_hrtimer_expire_entry, ptr @event_hrtimer_expire_exit, ptr @event_hrtimer_init, ptr @event_hrtimer_start, ptr @event_itimer_expire, ptr @event_itimer_state, ptr @event_tick_stop, ptr @event_timer_cancel, ptr @event_timer_expire_entry, ptr @event_timer_expire_exit, ptr @event_timer_init, ptr @event_timer_start], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_timer_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_timer_init, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #16
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
define dso_local i32 @__traceiter_timer_start(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_timer_start, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #16
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_timer_expire_entry(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_timer_expire_entry, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_timer_expire_exit(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_timer_expire_exit, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #16
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_timer_cancel(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_timer_cancel, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #16
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_hrtimer_init(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hrtimer_init, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #16
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_hrtimer_start(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hrtimer_start, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_hrtimer_expire_entry(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hrtimer_expire_entry, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_hrtimer_expire_exit(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hrtimer_expire_exit, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #16
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_hrtimer_cancel(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_hrtimer_cancel, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #16
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_itimer_state(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_itimer_state, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, ptr noundef %2, i64 noundef %3) #16
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_itimer_expire(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_itimer_expire, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, ptr noundef %2, i64 noundef %3) #16
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tick_stop(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tick_stop, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_timer_class(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_timer_class, ptr %14, i32 0, i32 1
  store ptr %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #16
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_timer_class(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #12, !srcloc !12
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
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #16
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #16
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_timer_class, ptr %20, i32 0, i32 1
  store ptr %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #16
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_timer_start(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %14, label %27, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 28) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_timer_start, ptr %16, i32 0, i32 1
  store ptr %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.timer_list, ptr %1, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_timer_start, ptr %16, i32 0, i32 2
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_timer_start, ptr %16, i32 0, i32 3
  store i32 %2, ptr %23, align 4
  %24 = load volatile i32, ptr @jiffies, align 64
  %25 = getelementptr inbounds %struct.trace_event_raw_timer_start, ptr %16, i32 0, i32 4
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_timer_start, ptr %16, i32 0, i32 5
  store i32 %3, ptr %26, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #16
  br label %27

27:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_timer_start(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #12, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %45, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %45, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #16
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #16
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_timer_start, ptr %22, i32 0, i32 1
  store ptr %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.timer_list, ptr %1, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_timer_start, ptr %22, i32 0, i32 2
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_timer_start, ptr %22, i32 0, i32 3
  store i32 %2, ptr %39, align 4
  %40 = load volatile i32, ptr @jiffies, align 64
  %41 = getelementptr inbounds %struct.trace_event_raw_timer_start, ptr %22, i32 0, i32 4
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_timer_start, ptr %22, i32 0, i32 5
  store i32 %3, ptr %42, align 4
  %43 = load i32, ptr %6, align 4
  %44 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 28, i32 noundef %43, ptr noundef %0, i64 noundef 1, ptr noundef %44, ptr noundef %14, ptr noundef null) #16
  br label %45

45:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_timer_expire_entry(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %13, label %25, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 24) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_timer_expire_entry, ptr %15, i32 0, i32 1
  store ptr %1, ptr %18, align 4
  %19 = load volatile i32, ptr @jiffies, align 64
  %20 = getelementptr inbounds %struct.trace_event_raw_timer_expire_entry, ptr %15, i32 0, i32 2
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.timer_list, ptr %1, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_timer_expire_entry, ptr %15, i32 0, i32 3
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_timer_expire_entry, ptr %15, i32 0, i32 4
  store i32 %2, ptr %24, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #16
  br label %25

25:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_timer_expire_entry(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #12, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %43, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %43, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #16
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #16
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_timer_expire_entry, ptr %21, i32 0, i32 1
  store ptr %1, ptr %34, align 4
  %35 = load volatile i32, ptr @jiffies, align 64
  %36 = getelementptr inbounds %struct.trace_event_raw_timer_expire_entry, ptr %21, i32 0, i32 2
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.timer_list, ptr %1, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_timer_expire_entry, ptr %21, i32 0, i32 3
  store ptr %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_timer_expire_entry, ptr %21, i32 0, i32 4
  store i32 %2, ptr %40, align 4
  %41 = load i32, ptr %5, align 4
  %42 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 28, i32 noundef %41, ptr noundef %0, i64 noundef 1, ptr noundef %42, ptr noundef %13, ptr noundef null) #16
  br label %43

43:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_hrtimer_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_hrtimer_init, ptr %16, i32 0, i32 1
  store ptr %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_hrtimer_init, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_hrtimer_init, ptr %16, i32 0, i32 3
  store i32 %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #16
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_hrtimer_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #12, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #16
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #16
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_hrtimer_init, ptr %22, i32 0, i32 1
  store ptr %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_hrtimer_init, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_hrtimer_init, ptr %22, i32 0, i32 3
  store i32 %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #16
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_hrtimer_start(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %13, label %29, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 40) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_hrtimer_start, ptr %15, i32 0, i32 1
  store ptr %1, ptr %18, align 8
  %19 = getelementptr inbounds %struct.hrtimer, ptr %1, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.trace_event_raw_hrtimer_start, ptr %15, i32 0, i32 2
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.timerqueue_node, ptr %1, i32 0, i32 1
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds %struct.trace_event_raw_hrtimer_start, ptr %15, i32 0, i32 3
  store i64 %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.hrtimer, ptr %1, i32 0, i32 1
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr inbounds %struct.trace_event_raw_hrtimer_start, ptr %15, i32 0, i32 4
  store i64 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.trace_event_raw_hrtimer_start, ptr %15, i32 0, i32 5
  store i32 %2, ptr %28, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #16
  br label %29

29:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_hrtimer_start(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #12, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %47, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %47, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #16
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #16
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_hrtimer_start, ptr %21, i32 0, i32 1
  store ptr %1, ptr %34, align 8
  %35 = getelementptr inbounds %struct.hrtimer, ptr %1, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.trace_event_raw_hrtimer_start, ptr %21, i32 0, i32 2
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.timerqueue_node, ptr %1, i32 0, i32 1
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr inbounds %struct.trace_event_raw_hrtimer_start, ptr %21, i32 0, i32 3
  store i64 %39, ptr %40, align 8
  %41 = getelementptr inbounds %struct.hrtimer, ptr %1, i32 0, i32 1
  %42 = load i64, ptr %41, align 8
  %43 = getelementptr inbounds %struct.trace_event_raw_hrtimer_start, ptr %21, i32 0, i32 4
  store i64 %42, ptr %43, align 8
  %44 = getelementptr inbounds %struct.trace_event_raw_hrtimer_start, ptr %21, i32 0, i32 5
  store i32 %2, ptr %44, align 8
  %45 = load i32, ptr %5, align 4
  %46 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 44, i32 noundef %45, ptr noundef %0, i64 noundef 1, ptr noundef %46, ptr noundef %13, ptr noundef null) #16
  br label %47

47:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_hrtimer_expire_entry(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %13, label %24, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 32) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_hrtimer_expire_entry, ptr %15, i32 0, i32 1
  store ptr %1, ptr %18, align 8
  %19 = load i64, ptr %2, align 8
  %20 = getelementptr inbounds %struct.trace_event_raw_hrtimer_expire_entry, ptr %15, i32 0, i32 2
  store i64 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.hrtimer, ptr %1, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.trace_event_raw_hrtimer_expire_entry, ptr %15, i32 0, i32 3
  store ptr %22, ptr %23, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #16
  br label %24

24:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_hrtimer_expire_entry(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #12, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %42, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %42, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #16
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #16
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_hrtimer_expire_entry, ptr %21, i32 0, i32 1
  store ptr %1, ptr %34, align 8
  %35 = load i64, ptr %2, align 8
  %36 = getelementptr inbounds %struct.trace_event_raw_hrtimer_expire_entry, ptr %21, i32 0, i32 2
  store i64 %35, ptr %36, align 8
  %37 = getelementptr inbounds %struct.hrtimer, ptr %1, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.trace_event_raw_hrtimer_expire_entry, ptr %21, i32 0, i32 3
  store ptr %38, ptr %39, align 8
  %40 = load i32, ptr %5, align 4
  %41 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 36, i32 noundef %40, ptr noundef %0, i64 noundef 1, ptr noundef %41, ptr noundef %13, ptr noundef null) #16
  br label %42

42:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_hrtimer_class(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_hrtimer_class, ptr %14, i32 0, i32 1
  store ptr %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #16
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_hrtimer_class(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #12, !srcloc !12
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
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #16
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #16
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_hrtimer_class, ptr %20, i32 0, i32 1
  store ptr %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #16
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_itimer_state(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %14, label %34, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 40) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %16, i32 0, i32 1
  store i32 %1, ptr %19, align 8
  %20 = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %16, i32 0, i32 2
  store i64 %3, ptr %20, align 8
  %21 = getelementptr inbounds %struct.itimerspec64, ptr %2, i32 0, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %16, i32 0, i32 3
  store i32 %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.itimerspec64, ptr %2, i32 0, i32 1, i32 1
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %16, i32 0, i32 4
  store i32 %26, ptr %27, align 4
  %28 = load i64, ptr %2, align 8
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %16, i32 0, i32 5
  store i32 %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 1
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %16, i32 0, i32 6
  store i32 %32, ptr %33, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #16
  br label %34

34:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_itimer_state(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #12, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %52, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %52, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #16
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #16
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %22, i32 0, i32 1
  store i32 %1, ptr %35, align 8
  %36 = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %22, i32 0, i32 2
  store i64 %3, ptr %36, align 8
  %37 = getelementptr inbounds %struct.itimerspec64, ptr %2, i32 0, i32 1
  %38 = load i64, ptr %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %22, i32 0, i32 3
  store i32 %39, ptr %40, align 8
  %41 = getelementptr inbounds %struct.itimerspec64, ptr %2, i32 0, i32 1, i32 1
  %42 = load i32, ptr %41, align 8
  %43 = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %22, i32 0, i32 4
  store i32 %42, ptr %43, align 4
  %44 = load i64, ptr %2, align 8
  %45 = trunc i64 %44 to i32
  %46 = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %22, i32 0, i32 5
  store i32 %45, ptr %46, align 8
  %47 = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 1
  %48 = load i32, ptr %47, align 8
  %49 = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %22, i32 0, i32 6
  store i32 %48, ptr %49, align 4
  %50 = load i32, ptr %6, align 4
  %51 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 44, i32 noundef %50, ptr noundef %0, i64 noundef 1, ptr noundef %51, ptr noundef %14, ptr noundef null) #16
  br label %52

52:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_itimer_expire(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, i64 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %14, label %28, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 24) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_itimer_expire, ptr %16, i32 0, i32 1
  store i32 %1, ptr %19, align 8
  %20 = getelementptr inbounds %struct.trace_event_raw_itimer_expire, ptr %16, i32 0, i32 3
  store i64 %3, ptr %20, align 8
  %21 = icmp eq ptr %2, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.pid, ptr %2, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i32 [ %24, %22 ], [ 0, %18 ]
  %27 = getelementptr inbounds %struct.trace_event_raw_itimer_expire, ptr %16, i32 0, i32 2
  store i32 %26, ptr %27, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #16
  br label %28

28:                                               ; preds = %25, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_itimer_expire(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, i64 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #12, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %46, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #16
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #16
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_itimer_expire, ptr %22, i32 0, i32 1
  store i32 %1, ptr %35, align 8
  %36 = getelementptr inbounds %struct.trace_event_raw_itimer_expire, ptr %22, i32 0, i32 3
  store i64 %3, ptr %36, align 8
  %37 = icmp eq ptr %2, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.pid, ptr %2, i32 0, i32 7
  %40 = load i32, ptr %39, align 4
  br label %41

41:                                               ; preds = %38, %24
  %42 = phi i32 [ %40, %38 ], [ 0, %24 ]
  %43 = getelementptr inbounds %struct.trace_event_raw_itimer_expire, ptr %22, i32 0, i32 2
  store i32 %42, ptr %43, align 4
  %44 = load i32, ptr %6, align 4
  %45 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 28, i32 noundef %44, ptr noundef %0, i64 noundef 1, ptr noundef %45, ptr noundef %14, ptr noundef null) #16
  br label %46

46:                                               ; preds = %41, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_tick_stop(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_tick_stop, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_tick_stop, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #16
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_tick_stop(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #12, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #16
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #16
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_tick_stop, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_tick_stop, ptr %21, i32 0, i32 2
  store i32 %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #16
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @timers_update_nohz() local_unnamed_addr #0 {
  %1 = load ptr, ptr @system_wq, align 4
  %2 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %1, ptr noundef nonnull @timer_update_work) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @timer_migration_handler(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @timer_keys_mutex) #16
  %6 = tail call i32 @proc_dointvec_minmax(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #16
  %7 = icmp eq i32 %6, 0
  %8 = icmp ne i32 %1, 0
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call fastcc void @timers_update_migration()
  br label %11

11:                                               ; preds = %10, %5
  tail call void @mutex_unlock(ptr noundef nonnull @timer_keys_mutex) #16
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @timers_update_migration() unnamed_addr #0 {
  %1 = load i32, ptr @sysctl_timer_migration, align 4
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @tick_nohz_active, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  %6 = load i8, ptr @static_key_initialized, align 1, !range !13
  %7 = icmp eq i8 %6, 0
  br i1 %5, label %8, label %21

8:                                                ; preds = %0
  br i1 %7, label %9, label %10, !prof !11

9:                                                ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.75, i32 noundef 318, i32 noundef 9, ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__.static_key_enable, ptr noundef nonnull @timers_migration_enabled) #16
  br label %10

10:                                               ; preds = %9, %8
  %11 = load volatile i32, ptr @timers_migration_enabled, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = load volatile i32, ptr @timers_migration_enabled, align 4
  %15 = icmp ne i32 %14, 1
  %16 = load i1, ptr @static_key_enable.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %34, !prof !11

19:                                               ; preds = %13
  store i1 true, ptr @static_key_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.75, i32 noundef 321, i32 noundef 9, ptr noundef null) #16
  br label %34

20:                                               ; preds = %10
  store volatile i32 1, ptr @timers_migration_enabled, align 4
  br label %34

21:                                               ; preds = %0
  br i1 %7, label %22, label %23, !prof !11

22:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.75, i32 noundef 329, i32 noundef 9, ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__.static_key_disable, ptr noundef nonnull @timers_migration_enabled) #16
  br label %23

23:                                               ; preds = %22, %21
  %24 = load volatile i32, ptr @timers_migration_enabled, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = load volatile i32, ptr @timers_migration_enabled, align 4
  %28 = icmp ne i32 %27, 0
  %29 = load i1, ptr @static_key_disable.__already_done, align 1
  %30 = xor i1 %29, true
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %34, !prof !11

32:                                               ; preds = %26
  store i1 true, ptr @static_key_disable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.75, i32 noundef 332, i32 noundef 9, ptr noundef null) #16
  br label %34

33:                                               ; preds = %23
  store volatile i32 0, ptr @timers_migration_enabled, align 4
  br label %34

34:                                               ; preds = %33, %32, %26, %20, %19, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @__round_jiffies(i32 noundef %0, i32 noundef %1) #3 {
  %3 = mul i32 %1, 3
  %4 = add i32 %3, %0
  %5 = urem i32 %4, 100
  %6 = icmp ugt i32 %5, 24
  %7 = sub i32 %4, %5
  %8 = add i32 %7, 100
  %9 = select i1 %6, i32 %8, i32 %7
  %10 = sub i32 %9, %3
  %11 = load volatile i32, ptr @jiffies, align 64
  %12 = sub i32 %11, %10
  %13 = icmp slt i32 %12, 0
  %14 = select i1 %13, i32 %10, i32 %0
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @__round_jiffies_relative(i32 noundef %0, i32 noundef %1) #3 {
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = add i32 %3, %0
  %5 = mul i32 %1, 3
  %6 = add i32 %4, %5
  %7 = urem i32 %6, 100
  %8 = icmp ugt i32 %7, 24
  %9 = sub i32 %6, %7
  %10 = add i32 %9, 100
  %11 = select i1 %8, i32 %10, i32 %9
  %12 = sub i32 %11, %5
  %13 = load volatile i32, ptr @jiffies, align 64
  %14 = sub i32 %13, %12
  %15 = icmp slt i32 %14, 0
  %16 = select i1 %15, i32 %12, i32 %4
  %17 = sub i32 %16, %3
  ret i32 %17
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @round_jiffies(i32 noundef %0) #4 {
  %2 = tail call ptr @llvm.thread.pointer() #16
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = mul i32 %4, 3
  %6 = add i32 %5, %0
  %7 = urem i32 %6, 100
  %8 = icmp ugt i32 %7, 24
  %9 = sub i32 %6, %7
  %10 = add i32 %9, 100
  %11 = select i1 %8, i32 %10, i32 %9
  %12 = sub i32 %11, %5
  %13 = load volatile i32, ptr @jiffies, align 64
  %14 = sub i32 %13, %12
  %15 = icmp slt i32 %14, 0
  %16 = select i1 %15, i32 %12, i32 %0
  ret i32 %16
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @round_jiffies_relative(i32 noundef %0) #4 {
  %2 = tail call ptr @llvm.thread.pointer() #16
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = add i32 %5, %0
  %7 = mul i32 %4, 3
  %8 = add i32 %6, %7
  %9 = urem i32 %8, 100
  %10 = icmp ugt i32 %9, 24
  %11 = sub i32 %8, %9
  %12 = add i32 %11, 100
  %13 = select i1 %10, i32 %12, i32 %11
  %14 = sub i32 %13, %7
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = sub i32 %15, %14
  %17 = icmp slt i32 %16, 0
  %18 = select i1 %17, i32 %14, i32 %6
  %19 = sub i32 %18, %5
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @__round_jiffies_up(i32 noundef %0, i32 noundef %1) #3 {
  %3 = mul i32 %1, 3
  %4 = add i32 %3, %0
  %5 = urem i32 %4, 100
  %6 = add i32 %0, 100
  %7 = sub i32 %6, %5
  %8 = load volatile i32, ptr @jiffies, align 64
  %9 = sub i32 %8, %7
  %10 = icmp slt i32 %9, 0
  %11 = select i1 %10, i32 %7, i32 %0
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @__round_jiffies_up_relative(i32 noundef %0, i32 noundef %1) #3 {
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = add i32 %3, %0
  %5 = mul i32 %1, 3
  %6 = add i32 %4, %5
  %7 = urem i32 %6, 100
  %8 = add i32 %4, 100
  %9 = sub i32 %8, %7
  %10 = load volatile i32, ptr @jiffies, align 64
  %11 = sub i32 %10, %9
  %12 = icmp slt i32 %11, 0
  %13 = select i1 %12, i32 %9, i32 %4
  %14 = sub i32 %13, %3
  ret i32 %14
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @round_jiffies_up(i32 noundef %0) #4 {
  %2 = tail call ptr @llvm.thread.pointer() #16
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = mul i32 %4, 3
  %6 = add i32 %5, %0
  %7 = urem i32 %6, 100
  %8 = add i32 %0, 100
  %9 = sub i32 %8, %7
  %10 = load volatile i32, ptr @jiffies, align 64
  %11 = sub i32 %10, %9
  %12 = icmp slt i32 %11, 0
  %13 = select i1 %12, i32 %9, i32 %0
  ret i32 %13
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @round_jiffies_up_relative(i32 noundef %0) #4 {
  %2 = tail call ptr @llvm.thread.pointer() #16
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = add i32 %5, %0
  %7 = mul i32 %4, 3
  %8 = add i32 %6, %7
  %9 = urem i32 %8, 100
  %10 = add i32 %6, 100
  %11 = sub i32 %10, %9
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = sub i32 %12, %11
  %14 = icmp slt i32 %13, 0
  %15 = select i1 %14, i32 %11, i32 %6
  %16 = sub i32 %15, %5
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @init_timer_key(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture readnone %3, ptr nocapture readnone %4) #0 {
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_timer_init, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %5
  %9 = tail call ptr @llvm.thread.pointer() #16
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !14
  %20 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_timer_init, i32 0, i32 7), align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %22, %19
  %23 = phi ptr [ %27, %22 ], [ %20, %19 ]
  %24 = load volatile ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.tracepoint_func, ptr %23, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  tail call void %24(ptr noundef %26, ptr noundef %0) #16
  %27 = getelementptr %struct.tracepoint_func, ptr %23, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %22

30:                                               ; preds = %22, %19
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %31

31:                                               ; preds = %30, %8, %5
  %32 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  store ptr null, ptr %32, align 4
  %33 = getelementptr inbounds %struct.timer_list, ptr %0, i32 0, i32 2
  store ptr %1, ptr %33, align 4
  %34 = and i32 %2, -3670017
  %35 = icmp ne i32 %34, 0
  %36 = load i1, ptr @do_init_timer.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %40, !prof !11

39:                                               ; preds = %31
  store i1 true, ptr @do_init_timer.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 794, i32 noundef 9, ptr noundef null) #16
  br label %40

40:                                               ; preds = %39, %31
  %41 = and i32 %2, 3670016
  %42 = tail call ptr @llvm.thread.pointer() #16
  %43 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 8
  %45 = or i32 %44, %41
  %46 = getelementptr inbounds %struct.timer_list, ptr %0, i32 0, i32 3
  store i32 %45, ptr %46, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mod_timer_pending(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call fastcc i32 @__mod_timer(ptr noundef %0, i32 noundef %1, i32 noundef 1)
  ret i32 %3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__mod_timer(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.timer_list, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !11

9:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/time/timer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #16, !srcloc !16
  unreachable

10:                                               ; preds = %3
  %11 = and i32 %2, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %92

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %92, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.timer_list, ptr %0, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %278, label %21

21:                                               ; preds = %17
  %22 = sub i32 %19, %1
  %23 = and i32 %2, 2
  %24 = icmp ne i32 %23, 0
  %25 = icmp slt i32 %22, 1
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %278, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.timer_list, ptr %0, i32 0, i32 3
  br label %29

29:                                               ; preds = %46, %27
  %30 = load volatile i32, ptr %28, align 4
  %31 = and i32 %30, 262144
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = and i32 %30, 262143
  %35 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %30, 524288
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 ptrtoint (ptr @timer_bases to i32), i32 ptrtoint (ptr getelementptr inbounds ([2 x %struct.timer_base], ptr @timer_bases, i32 0, i32 1) to i32)
  %40 = add i32 %36, %39
  %41 = inttoptr i32 %40 to ptr
  %42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %41) #16
  %43 = load i32, ptr %28, align 4
  %44 = icmp eq i32 %43, %30
  br i1 %44, label %47, label %45

45:                                               ; preds = %33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %42) #16
  br label %46

46:                                               ; preds = %45, %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !18
  br label %29

47:                                               ; preds = %33
  %48 = inttoptr i32 %40 to ptr
  %49 = load volatile i32, ptr @jiffies, align 64
  %50 = getelementptr inbounds %struct.timer_base, ptr %48, i32 0, i32 2
  %51 = load i32, ptr %50, align 8
  %52 = sub i32 %49, %51
  %53 = icmp slt i32 %52, 1
  br i1 %53, label %71, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.timer_base, ptr %48, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = sub i32 %49, %56
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %54
  %60 = sub i32 %56, %51
  %61 = icmp slt i32 %60, 0
  %62 = load i1, ptr @forward_timer_base.__already_done, align 1
  %63 = xor i1 %62, true
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %65, label %66, !prof !11

65:                                               ; preds = %59
  store i1 true, ptr @forward_timer_base.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 911, i32 noundef 9, ptr noundef null) #16
  br label %66

66:                                               ; preds = %65, %59
  br i1 %61, label %71, label %67

67:                                               ; preds = %66
  %68 = load i32, ptr %55, align 4
  br label %69

69:                                               ; preds = %67, %54
  %70 = phi i32 [ %68, %67 ], [ %49, %54 ]
  store i32 %70, ptr %50, align 8
  br label %71

71:                                               ; preds = %69, %66, %47
  %72 = load volatile ptr, ptr %14, align 4
  %73 = icmp ne ptr %72, null
  %74 = and i1 %24, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, ptr %18, align 4
  %77 = sub i32 %1, %76
  %78 = icmp sgt i32 %77, -1
  br i1 %78, label %274, label %79

79:                                               ; preds = %75, %71
  %80 = load i32, ptr %50, align 8
  %81 = call fastcc i32 @calc_wheel_index(i32 noundef %1, i32 noundef %80, ptr noundef nonnull %5)
  %82 = load i32, ptr %28, align 4
  %83 = lshr i32 %82, 22
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %136

85:                                               ; preds = %79
  br i1 %24, label %87, label %86

86:                                               ; preds = %85
  store i32 %1, ptr %18, align 4
  br label %274

87:                                               ; preds = %85
  %88 = load i32, ptr %18, align 4
  %89 = sub i32 %1, %88
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %274

91:                                               ; preds = %87
  store i32 %1, ptr %18, align 4
  br label %274

92:                                               ; preds = %13, %10
  %93 = getelementptr inbounds %struct.timer_list, ptr %0, i32 0, i32 3
  br label %94

94:                                               ; preds = %111, %92
  %95 = load volatile i32, ptr %93, align 4
  %96 = and i32 %95, 262144
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %94
  %99 = and i32 %95, 262143
  %100 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %99
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %95, 524288
  %103 = icmp eq i32 %102, 0
  %104 = select i1 %103, i32 ptrtoint (ptr @timer_bases to i32), i32 ptrtoint (ptr getelementptr inbounds ([2 x %struct.timer_base], ptr @timer_bases, i32 0, i32 1) to i32)
  %105 = add i32 %101, %104
  %106 = inttoptr i32 %105 to ptr
  %107 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %106) #16
  %108 = load i32, ptr %93, align 4
  %109 = icmp eq i32 %108, %95
  br i1 %109, label %112, label %110

110:                                              ; preds = %98
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %106, i32 noundef %107) #16
  br label %111

111:                                              ; preds = %110, %94
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !18
  br label %94

112:                                              ; preds = %98
  %113 = inttoptr i32 %105 to ptr
  %114 = load volatile i32, ptr @jiffies, align 64
  %115 = getelementptr inbounds %struct.timer_base, ptr %113, i32 0, i32 2
  %116 = load i32, ptr %115, align 8
  %117 = sub i32 %114, %116
  %118 = icmp slt i32 %117, 1
  br i1 %118, label %136, label %119

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.timer_base, ptr %113, i32 0, i32 3
  %121 = load i32, ptr %120, align 4
  %122 = sub i32 %114, %121
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %134, label %124

124:                                              ; preds = %119
  %125 = sub i32 %121, %116
  %126 = icmp slt i32 %125, 0
  %127 = load i1, ptr @forward_timer_base.__already_done, align 1
  %128 = xor i1 %127, true
  %129 = select i1 %126, i1 %128, i1 false
  br i1 %129, label %130, label %131, !prof !11

130:                                              ; preds = %124
  store i1 true, ptr @forward_timer_base.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 911, i32 noundef 9, ptr noundef null) #16
  br label %131

131:                                              ; preds = %130, %124
  br i1 %126, label %136, label %132

132:                                              ; preds = %131
  %133 = load i32, ptr %120, align 4
  br label %134

134:                                              ; preds = %132, %119
  %135 = phi i32 [ %133, %132 ], [ %114, %119 ]
  store i32 %135, ptr %115, align 8
  br label %136

136:                                              ; preds = %134, %131, %112, %79
  %137 = phi i32 [ %42, %79 ], [ %107, %112 ], [ %107, %131 ], [ %107, %134 ]
  %138 = phi i32 [ %80, %79 ], [ 0, %112 ], [ 0, %131 ], [ 0, %134 ]
  %139 = phi ptr [ %48, %79 ], [ %113, %112 ], [ %113, %131 ], [ %113, %134 ]
  %140 = phi i32 [ %81, %79 ], [ -1, %112 ], [ -1, %131 ], [ -1, %134 ]
  %141 = getelementptr inbounds %struct.timer_list, ptr %0, i32 0, i32 3
  %142 = load i32, ptr %141, align 4
  %143 = lshr i32 %142, 22
  %144 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  %145 = load volatile ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %198, label %147

147:                                              ; preds = %136
  %148 = getelementptr inbounds %struct.timer_base, ptr %139, i32 0, i32 9
  %149 = getelementptr %struct.hlist_head, ptr %148, i32 %143
  %150 = load ptr, ptr %0, align 4
  %151 = icmp eq ptr %150, null
  %152 = icmp eq ptr %145, %149
  %153 = select i1 %151, i1 %152, i1 false
  br i1 %153, label %154, label %164

154:                                              ; preds = %147
  %155 = getelementptr inbounds %struct.timer_base, ptr %139, i32 0, i32 8
  %156 = and i32 %143, 31
  %157 = shl nuw i32 1, %156
  %158 = lshr i32 %142, 27
  %159 = getelementptr i32, ptr %155, i32 %158
  %160 = xor i32 %157, -1
  %161 = load i32, ptr %159, align 4
  %162 = and i32 %161, %160
  store i32 %162, ptr %159, align 4
  %163 = getelementptr inbounds %struct.timer_base, ptr %139, i32 0, i32 5
  store i8 1, ptr %163, align 4
  br label %164

164:                                              ; preds = %154, %147
  %165 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_timer_cancel, i32 0, i32 1), align 4
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %190

167:                                              ; preds = %164
  %168 = tail call ptr @llvm.thread.pointer() #16
  %169 = getelementptr inbounds %struct.thread_info, ptr %168, i32 0, i32 2
  %170 = load i32, ptr %169, align 8
  %171 = lshr i32 %170, 5
  %172 = getelementptr i32, ptr @__cpu_online_mask, i32 %171
  %173 = load volatile i32, ptr %172, align 4
  %174 = and i32 %170, 31
  %175 = shl nuw i32 1, %174
  %176 = and i32 %175, %173
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %190, label %178

178:                                              ; preds = %167
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  %179 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_timer_cancel, i32 0, i32 7), align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %189, label %181

181:                                              ; preds = %181, %178
  %182 = phi ptr [ %186, %181 ], [ %179, %178 ]
  %183 = load volatile ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.tracepoint_func, ptr %182, i32 0, i32 1
  %185 = load ptr, ptr %184, align 4
  tail call void %183(ptr noundef %185, ptr noundef %0) #16
  %186 = getelementptr %struct.tracepoint_func, ptr %182, i32 1
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %181

189:                                              ; preds = %181, %178
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  br label %190

190:                                              ; preds = %189, %167, %164
  %191 = load ptr, ptr %0, align 4
  %192 = load ptr, ptr %144, align 4
  store volatile ptr %191, ptr %192, align 4
  %193 = icmp eq ptr %191, null
  br i1 %193, label %196, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.hlist_node, ptr %191, i32 0, i32 1
  store volatile ptr %192, ptr %195, align 4
  br label %196

196:                                              ; preds = %194, %190
  store ptr inttoptr (i32 290 to ptr), ptr %0, align 4
  %197 = load i32, ptr %141, align 4
  br label %201

198:                                              ; preds = %136
  %199 = and i32 %2, 1
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %274

201:                                              ; preds = %198, %196
  %202 = phi i32 [ %197, %196 ], [ %142, %198 ]
  %203 = phi i32 [ 1, %196 ], [ 0, %198 ]
  %204 = load volatile i32, ptr @timers_migration_enabled, align 4
  %205 = icmp sgt i32 %204, 0
  %206 = and i32 %202, 1048576
  %207 = icmp eq i32 %206, 0
  %208 = and i1 %207, %205
  br i1 %208, label %209, label %213, !prof !21

209:                                              ; preds = %201
  %210 = tail call i32 @get_nohz_timer_target() #16
  %211 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %210
  %212 = load i32, ptr %211, align 4
  br label %217

213:                                              ; preds = %201
  %214 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %215 = inttoptr i32 %214 to ptr
  %216 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %215) #12, !srcloc !12
  br label %217

217:                                              ; preds = %213, %209
  %218 = phi i32 [ %216, %213 ], [ %212, %209 ]
  %219 = and i32 %202, 524288
  %220 = icmp eq i32 %219, 0
  %221 = select i1 %220, i32 ptrtoint (ptr @timer_bases to i32), i32 ptrtoint (ptr getelementptr inbounds ([2 x %struct.timer_base], ptr @timer_bases, i32 0, i32 1) to i32)
  %222 = add i32 %218, %221
  %223 = inttoptr i32 %222 to ptr
  %224 = icmp eq ptr %139, %223
  br i1 %224, label %261, label %225

225:                                              ; preds = %217
  %226 = getelementptr inbounds %struct.timer_base, ptr %139, i32 0, i32 1
  %227 = load ptr, ptr %226, align 4
  %228 = icmp eq ptr %227, %0
  br i1 %228, label %261, label %229, !prof !11

229:                                              ; preds = %225
  %230 = load i32, ptr %141, align 4
  %231 = or i32 %230, 262144
  store i32 %231, ptr %141, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %232 = load i16, ptr %139, align 4
  %233 = add i16 %232, 1
  store i16 %233, ptr %139, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  tail call void @_raw_spin_lock(ptr noundef %223) #16
  %234 = load i32, ptr %141, align 4
  %235 = and i32 %234, -524288
  %236 = getelementptr inbounds %struct.timer_base, ptr %223, i32 0, i32 4
  %237 = load i32, ptr %236, align 16
  %238 = or i32 %235, %237
  store volatile i32 %238, ptr %141, align 4
  %239 = load volatile i32, ptr @jiffies, align 64
  %240 = getelementptr inbounds %struct.timer_base, ptr %223, i32 0, i32 2
  %241 = load i32, ptr %240, align 8
  %242 = sub i32 %239, %241
  %243 = icmp slt i32 %242, 1
  br i1 %243, label %261, label %244

244:                                              ; preds = %229
  %245 = getelementptr inbounds %struct.timer_base, ptr %223, i32 0, i32 3
  %246 = load i32, ptr %245, align 4
  %247 = sub i32 %239, %246
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %259, label %249

249:                                              ; preds = %244
  %250 = sub i32 %246, %241
  %251 = icmp slt i32 %250, 0
  %252 = load i1, ptr @forward_timer_base.__already_done, align 1
  %253 = xor i1 %252, true
  %254 = select i1 %251, i1 %253, i1 false
  br i1 %254, label %255, label %256, !prof !11

255:                                              ; preds = %249
  store i1 true, ptr @forward_timer_base.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 911, i32 noundef 9, ptr noundef null) #16
  br label %256

256:                                              ; preds = %255, %249
  br i1 %251, label %261, label %257

257:                                              ; preds = %256
  %258 = load i32, ptr %245, align 4
  br label %259

259:                                              ; preds = %257, %244
  %260 = phi i32 [ %258, %257 ], [ %239, %244 ]
  store i32 %260, ptr %240, align 8
  br label %261

261:                                              ; preds = %259, %256, %229, %225, %217
  %262 = phi ptr [ %139, %225 ], [ %139, %217 ], [ %223, %229 ], [ %223, %256 ], [ %223, %259 ]
  %263 = getelementptr inbounds %struct.timer_list, ptr %0, i32 0, i32 1
  store i32 %1, ptr %263, align 4
  %264 = icmp ne i32 %140, -1
  %265 = getelementptr inbounds %struct.timer_base, ptr %262, i32 0, i32 2
  %266 = load i32, ptr %265, align 8
  %267 = icmp eq i32 %138, %266
  %268 = select i1 %264, i1 %267, i1 false
  br i1 %268, label %269, label %271

269:                                              ; preds = %261
  %270 = load i32, ptr %5, align 4
  tail call fastcc void @enqueue_timer(ptr noundef %262, ptr noundef %0, i32 noundef %140, i32 noundef %270)
  br label %274

271:                                              ; preds = %261
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !9
  %272 = call fastcc i32 @calc_wheel_index(i32 noundef %1, i32 noundef %266, ptr noundef nonnull %4) #16, !range !26
  %273 = load i32, ptr %4, align 4
  tail call fastcc void @enqueue_timer(ptr noundef %262, ptr noundef %0, i32 noundef %272, i32 noundef %273) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %274

274:                                              ; preds = %271, %269, %198, %91, %87, %86, %75
  %275 = phi i32 [ %137, %271 ], [ %137, %269 ], [ %137, %198 ], [ %42, %75 ], [ %42, %87 ], [ %42, %91 ], [ %42, %86 ]
  %276 = phi ptr [ %262, %271 ], [ %262, %269 ], [ %139, %198 ], [ %48, %75 ], [ %48, %87 ], [ %48, %91 ], [ %48, %86 ]
  %277 = phi i32 [ %203, %271 ], [ %203, %269 ], [ 0, %198 ], [ 1, %75 ], [ 1, %87 ], [ 1, %91 ], [ 1, %86 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %276, i32 noundef %275) #16
  br label %278

278:                                              ; preds = %274, %21, %17
  %279 = phi i32 [ %277, %274 ], [ 1, %17 ], [ 1, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret i32 %279
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mod_timer(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call fastcc i32 @__mod_timer(ptr noundef %0, i32 noundef %1, i32 noundef 0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @timer_reduce(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call fastcc i32 @__mod_timer(ptr noundef %0, i32 noundef %1, i32 noundef 2)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @add_timer(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !10

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/time/timer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1143, 0\0A.popsection", ""() #16, !srcloc !27
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.timer_list, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = tail call fastcc i32 @__mod_timer(ptr noundef %0, i32 noundef %8, i32 noundef 4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @add_timer_on(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11, !prof !10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.timer_list, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !11

11:                                               ; preds = %7, %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/time/timer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #16, !srcloc !28
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.timer_list, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %14, 524288
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 ptrtoint (ptr @timer_bases to i32), i32 ptrtoint (ptr getelementptr inbounds ([2 x %struct.timer_base], ptr @timer_bases, i32 0, i32 1) to i32)
  %20 = add i32 %19, %16
  br label %21

21:                                               ; preds = %38, %12
  %22 = load volatile i32, ptr %13, align 4
  %23 = and i32 %22, 262144
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = and i32 %22, 262143
  %27 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %22, 524288
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 ptrtoint (ptr @timer_bases to i32), i32 ptrtoint (ptr getelementptr inbounds ([2 x %struct.timer_base], ptr @timer_bases, i32 0, i32 1) to i32)
  %32 = add i32 %28, %31
  %33 = inttoptr i32 %32 to ptr
  %34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #16
  %35 = load i32, ptr %13, align 4
  %36 = icmp eq i32 %35, %22
  br i1 %36, label %39, label %37

37:                                               ; preds = %25
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %34) #16
  br label %38

38:                                               ; preds = %37, %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !18
  br label %21

39:                                               ; preds = %25
  %40 = inttoptr i32 %32 to ptr
  %41 = inttoptr i32 %20 to ptr
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = or i32 %22, 262144
  store i32 %44, ptr %13, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %45 = load i16, ptr %40, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %40, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  tail call void @_raw_spin_lock(ptr noundef %41) #16
  %47 = load i32, ptr %13, align 4
  %48 = and i32 %47, -524288
  %49 = or i32 %48, %1
  store volatile i32 %49, ptr %13, align 4
  br label %50

50:                                               ; preds = %43, %39
  %51 = phi ptr [ %41, %43 ], [ %40, %39 ]
  %52 = load volatile i32, ptr @jiffies, align 64
  %53 = getelementptr inbounds %struct.timer_base, ptr %51, i32 0, i32 2
  %54 = load i32, ptr %53, align 8
  %55 = sub i32 %52, %54
  %56 = icmp slt i32 %55, 1
  br i1 %56, label %76, label %57

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.timer_base, ptr %51, i32 0, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = sub i32 %52, %59
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %57
  %63 = sub i32 %59, %54
  %64 = icmp slt i32 %63, 0
  %65 = load i1, ptr @forward_timer_base.__already_done, align 1
  %66 = xor i1 %65, true
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %69, !prof !11

68:                                               ; preds = %62
  store i1 true, ptr @forward_timer_base.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 911, i32 noundef 9, ptr noundef null) #16
  br label %69

69:                                               ; preds = %68, %62
  br i1 %64, label %70, label %72

70:                                               ; preds = %69
  %71 = load i32, ptr %53, align 8
  br label %76

72:                                               ; preds = %69
  %73 = load i32, ptr %58, align 4
  br label %74

74:                                               ; preds = %72, %57
  %75 = phi i32 [ %73, %72 ], [ %52, %57 ]
  store i32 %75, ptr %53, align 8
  br label %76

76:                                               ; preds = %74, %70, %50
  %77 = phi i32 [ %71, %70 ], [ %54, %50 ], [ %75, %74 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  %78 = getelementptr inbounds %struct.timer_list, ptr %0, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = call fastcc i32 @calc_wheel_index(i32 noundef %79, i32 noundef %77, ptr noundef nonnull %3) #16, !range !26
  %81 = load i32, ptr %3, align 4
  tail call fastcc void @enqueue_timer(ptr noundef %51, ptr noundef %0, i32 noundef %80, i32 noundef %81) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %51, i32 noundef %34) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @del_timer(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %82, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.timer_list, ptr %0, i32 0, i32 3
  br label %7

7:                                                ; preds = %24, %5
  %8 = load volatile i32, ptr %6, align 4
  %9 = and i32 %8, 262144
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = and i32 %8, 262143
  %13 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %8, 524288
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 ptrtoint (ptr @timer_bases to i32), i32 ptrtoint (ptr getelementptr inbounds ([2 x %struct.timer_base], ptr @timer_bases, i32 0, i32 1) to i32)
  %18 = add i32 %14, %17
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #16
  %21 = load i32, ptr %6, align 4
  %22 = icmp eq i32 %21, %8
  br i1 %22, label %25, label %23

23:                                               ; preds = %11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #16
  br label %24

24:                                               ; preds = %23, %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !18
  br label %7

25:                                               ; preds = %11
  %26 = inttoptr i32 %18 to ptr
  %27 = lshr i32 %8, 22
  %28 = load volatile ptr, ptr %2, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %80, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.timer_base, ptr %26, i32 0, i32 9
  %32 = getelementptr %struct.hlist_head, ptr %31, i32 %27
  %33 = load ptr, ptr %0, align 4
  %34 = icmp eq ptr %33, null
  %35 = icmp eq ptr %28, %32
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %37, label %47

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.timer_base, ptr %26, i32 0, i32 8
  %39 = and i32 %27, 31
  %40 = shl nuw i32 1, %39
  %41 = lshr i32 %8, 27
  %42 = getelementptr i32, ptr %38, i32 %41
  %43 = xor i32 %40, -1
  %44 = load i32, ptr %42, align 4
  %45 = and i32 %44, %43
  store i32 %45, ptr %42, align 4
  %46 = getelementptr inbounds %struct.timer_base, ptr %26, i32 0, i32 5
  store i8 1, ptr %46, align 4
  br label %47

47:                                               ; preds = %37, %30
  %48 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_timer_cancel, i32 0, i32 1), align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %47
  %51 = tail call ptr @llvm.thread.pointer() #16
  %52 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = lshr i32 %53, 5
  %55 = getelementptr i32, ptr @__cpu_online_mask, i32 %54
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %53, 31
  %58 = shl nuw i32 1, %57
  %59 = and i32 %58, %56
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %50
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  %62 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_timer_cancel, i32 0, i32 7), align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %64, %61
  %65 = phi ptr [ %69, %64 ], [ %62, %61 ]
  %66 = load volatile ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.tracepoint_func, ptr %65, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  tail call void %66(ptr noundef %68, ptr noundef %0) #16
  %69 = getelementptr %struct.tracepoint_func, ptr %65, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %64

72:                                               ; preds = %64, %61
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  br label %73

73:                                               ; preds = %72, %50, %47
  %74 = load ptr, ptr %0, align 4
  %75 = load ptr, ptr %2, align 4
  store volatile ptr %74, ptr %75, align 4
  %76 = icmp eq ptr %74, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.hlist_node, ptr %74, i32 0, i32 1
  store volatile ptr %75, ptr %78, align 4
  br label %79

79:                                               ; preds = %77, %73
  store ptr null, ptr %2, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %0, align 4
  br label %80

80:                                               ; preds = %79, %25
  %81 = phi i32 [ 1, %79 ], [ 0, %25 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %20) #16
  br label %82

82:                                               ; preds = %80, %1
  %83 = phi i32 [ %81, %80 ], [ 0, %1 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @try_to_del_timer_sync(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.timer_list, ptr %0, i32 0, i32 3
  br label %3

3:                                                ; preds = %20, %1
  %4 = load volatile i32, ptr %2, align 4
  %5 = and i32 %4, 262144
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %3
  %8 = and i32 %4, 262143
  %9 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %4, 524288
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 ptrtoint (ptr @timer_bases to i32), i32 ptrtoint (ptr getelementptr inbounds ([2 x %struct.timer_base], ptr @timer_bases, i32 0, i32 1) to i32)
  %14 = add i32 %10, %13
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #16
  %17 = load i32, ptr %2, align 4
  %18 = icmp eq i32 %17, %4
  br i1 %18, label %21, label %19

19:                                               ; preds = %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #16
  br label %20

20:                                               ; preds = %19, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !18
  br label %3

21:                                               ; preds = %7
  %22 = inttoptr i32 %14 to ptr
  %23 = getelementptr inbounds %struct.timer_base, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %81, label %26

26:                                               ; preds = %21
  %27 = lshr i32 %4, 22
  %28 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %81, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.timer_base, ptr %22, i32 0, i32 9
  %33 = getelementptr %struct.hlist_head, ptr %32, i32 %27
  %34 = load ptr, ptr %0, align 4
  %35 = icmp eq ptr %34, null
  %36 = icmp eq ptr %29, %33
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %48

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.timer_base, ptr %22, i32 0, i32 8
  %40 = and i32 %27, 31
  %41 = shl nuw i32 1, %40
  %42 = lshr i32 %4, 27
  %43 = getelementptr i32, ptr %39, i32 %42
  %44 = xor i32 %41, -1
  %45 = load i32, ptr %43, align 4
  %46 = and i32 %45, %44
  store i32 %46, ptr %43, align 4
  %47 = getelementptr inbounds %struct.timer_base, ptr %22, i32 0, i32 5
  store i8 1, ptr %47, align 4
  br label %48

48:                                               ; preds = %38, %31
  %49 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_timer_cancel, i32 0, i32 1), align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %48
  %52 = tail call ptr @llvm.thread.pointer() #16
  %53 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 2
  %54 = load i32, ptr %53, align 8
  %55 = lshr i32 %54, 5
  %56 = getelementptr i32, ptr @__cpu_online_mask, i32 %55
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %54, 31
  %59 = shl nuw i32 1, %58
  %60 = and i32 %59, %57
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %51
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  %63 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_timer_cancel, i32 0, i32 7), align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %73, label %65

65:                                               ; preds = %65, %62
  %66 = phi ptr [ %70, %65 ], [ %63, %62 ]
  %67 = load volatile ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.tracepoint_func, ptr %66, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  tail call void %67(ptr noundef %69, ptr noundef %0) #16
  %70 = getelementptr %struct.tracepoint_func, ptr %66, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %65

73:                                               ; preds = %65, %62
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  br label %74

74:                                               ; preds = %73, %51, %48
  %75 = load ptr, ptr %0, align 4
  %76 = load ptr, ptr %28, align 4
  store volatile ptr %75, ptr %76, align 4
  %77 = icmp eq ptr %75, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.hlist_node, ptr %75, i32 0, i32 1
  store volatile ptr %76, ptr %79, align 4
  br label %80

80:                                               ; preds = %78, %74
  store ptr null, ptr %28, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %0, align 4
  br label %81

81:                                               ; preds = %80, %26, %21
  %82 = phi i32 [ -1, %21 ], [ 1, %80 ], [ 0, %26 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %16) #16
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @del_timer_sync(ptr noundef %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #16
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 983040
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.timer_list, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 2097152
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13, !prof !11

12:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1372, i32 noundef 9, ptr noundef null) #16
  br label %13

13:                                               ; preds = %12, %7, %1
  %14 = tail call i32 @try_to_del_timer_sync(ptr noundef %0)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19, !prof !11

16:                                               ; preds = %16, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !29
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !30
  %17 = tail call i32 @try_to_del_timer_sync(ptr noundef %0)
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %16, label %19, !prof !11

19:                                               ; preds = %16, %13
  %20 = phi i32 [ %14, %13 ], [ %17, %16 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @get_next_timer_interrupt(i32 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #12, !srcloc !12
  %6 = add i32 %5, ptrtoint (ptr @timer_bases to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = tail call ptr @llvm.thread.pointer() #16
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %76, label %18, !prof !11

18:                                               ; preds = %2
  tail call void @_raw_spin_lock(ptr noundef %7) #16
  %19 = getelementptr inbounds %struct.timer_base, ptr %7, i32 0, i32 5
  %20 = load i8, ptr %19, align 4, !range !13
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.timer_base, ptr %7, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  br label %28

25:                                               ; preds = %18
  %26 = tail call fastcc i32 @__next_timer_interrupt(ptr noundef %7)
  %27 = getelementptr inbounds %struct.timer_base, ptr %7, i32 0, i32 3
  store i32 %26, ptr %27, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i32 [ %24, %22 ], [ %26, %25 ]
  %30 = getelementptr inbounds %struct.timer_base, ptr %7, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = sub i32 %31, %0
  %33 = icmp slt i32 %32, 0
  %34 = sub i32 %0, %29
  br i1 %33, label %35, label %42

35:                                               ; preds = %28
  %36 = icmp slt i32 %34, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %35
  store i32 %0, ptr %30, align 8
  br label %44

38:                                               ; preds = %35
  %39 = sub i32 %31, %29
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %38
  store i32 %29, ptr %30, align 8
  br label %57

42:                                               ; preds = %28
  %43 = icmp sgt i32 %34, -1
  br i1 %43, label %57, label %44

44:                                               ; preds = %42, %37
  %45 = getelementptr inbounds %struct.timer_base, ptr %7, i32 0, i32 7
  %46 = load i8, ptr %45, align 2, !range !13
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = sub i32 %29, %0
  %50 = zext i32 %49 to i64
  %51 = mul nuw nsw i64 %50, 10000000
  %52 = add i64 %51, %1
  br label %53

53:                                               ; preds = %48, %44
  %54 = phi i64 [ %52, %48 ], [ 9223372036854775807, %44 ]
  %55 = sub i64 %54, %1
  %56 = icmp ugt i64 %55, 10000000
  br i1 %56, label %57, label %61

57:                                               ; preds = %53, %42, %41, %38
  %58 = phi i8 [ 0, %38 ], [ 0, %41 ], [ 0, %42 ], [ 1, %53 ]
  %59 = phi i64 [ %1, %38 ], [ %1, %41 ], [ %1, %42 ], [ %54, %53 ]
  %60 = getelementptr inbounds %struct.timer_base, ptr %7, i32 0, i32 6
  store i8 %58, ptr %60, align 1
  br label %61

61:                                               ; preds = %57, %53
  %62 = phi i64 [ %54, %53 ], [ %59, %57 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %63 = load i16, ptr %7, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  %65 = tail call i64 @hrtimer_get_next_event() #16
  %66 = icmp ult i64 %65, %62
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = icmp ugt i64 %65, %1
  br i1 %68, label %69, label %76

69:                                               ; preds = %67
  %70 = add i64 %65, 9999999
  %71 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %70) #17, !srcloc !31
  %72 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %70, i64 %71, i32 0) #17, !srcloc !32
  %73 = extractvalue { i64, i32 } %72, 0
  %74 = lshr i64 %73, 23
  %75 = mul i64 %74, 10000000
  br label %76

76:                                               ; preds = %69, %67, %61, %2
  %77 = phi i64 [ 9223372036854775807, %2 ], [ %75, %69 ], [ %62, %61 ], [ %1, %67 ]
  ret i64 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__next_timer_interrupt(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.timer_base, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = add i32 %3, 1073741823
  %5 = getelementptr inbounds %struct.timer_base, ptr %0, i32 0, i32 8
  br label %6

6:                                                ; preds = %36, %1
  %7 = phi i32 [ 0, %1 ], [ %13, %36 ]
  %8 = phi i32 [ 0, %1 ], [ %43, %36 ]
  %9 = phi i32 [ %4, %1 ], [ %37, %36 ]
  %10 = phi i32 [ %3, %1 ], [ %42, %36 ]
  %11 = and i32 %10, 63
  %12 = or i32 %7, %11
  %13 = add nuw nsw i32 %7, 64
  %14 = tail call i32 @_find_next_bit_le(ptr noundef %5, i32 noundef %13, i32 noundef %12) #16
  %15 = icmp ult i32 %14, %13
  br i1 %15, label %16, label %18

16:                                               ; preds = %6
  %17 = sub i32 %14, %12
  br label %23

18:                                               ; preds = %6
  %19 = tail call i32 @_find_next_bit_le(ptr noundef %5, i32 noundef %12, i32 noundef %7) #16
  %20 = icmp ult i32 %19, %12
  %21 = sub nsw i32 64, %12
  %22 = add i32 %21, %19
  br i1 %20, label %23, label %36

23:                                               ; preds = %18, %16
  %24 = phi i32 [ %17, %16 ], [ %22, %18 ]
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = add i32 %24, %10
  %28 = mul nuw nsw i32 %8, 3
  %29 = shl i32 %27, %28
  %30 = sub i32 %29, %9
  %31 = icmp slt i32 %30, 0
  %32 = select i1 %31, i32 %29, i32 %9
  %33 = sub i32 0, %10
  %34 = and i32 %33, 7
  %35 = icmp ugt i32 %24, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %26, %23, %18
  %37 = phi i32 [ %32, %26 ], [ %9, %23 ], [ %9, %18 ]
  %38 = and i32 %10, 7
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = lshr i32 %10, 3
  %42 = add nuw nsw i32 %41, %40
  %43 = add nuw nsw i32 %8, 1
  %44 = icmp eq i32 %43, 8
  br i1 %44, label %45, label %6

45:                                               ; preds = %36, %26
  %46 = phi i32 [ %37, %36 ], [ %32, %26 ]
  %47 = getelementptr inbounds %struct.timer_base, ptr %0, i32 0, i32 5
  store i8 0, ptr %47, align 4
  %48 = load i32, ptr %2, align 8
  %49 = add i32 %48, 1073741823
  %50 = icmp ne i32 %46, %49
  %51 = getelementptr inbounds %struct.timer_base, ptr %0, i32 0, i32 7
  %52 = zext i1 %50 to i8
  store i8 %52, ptr %51, align 2
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @timer_clear_idle() local_unnamed_addr #0 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #12, !srcloc !12
  %4 = add i32 %3, ptrtoint (ptr @timer_bases to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.timer_base, ptr %5, i32 0, i32 6
  store i8 0, ptr %6, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @update_process_times(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #16
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = ptrtoint ptr %2 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %6) #12, !srcloc !12
  %8 = add i32 %7, ptrtoint (ptr @net_rand_noise to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = load i32, ptr %9, align 4
  %11 = xor i32 %10, %3
  %12 = add i32 %11, %0
  %13 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 16) #16
  %14 = add i32 %13, %4
  %15 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 7) #16
  %16 = xor i32 %14, %15
  store i32 %16, ptr %9, align 4
  tail call void @account_process_tick(ptr noundef %2, i32 noundef %0) #16
  %17 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %18 = inttoptr i32 %17 to ptr
  %19 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %18) #12, !srcloc !12
  %20 = add i32 %19, ptrtoint (ptr @timer_bases to i32)
  %21 = inttoptr i32 %20 to ptr
  tail call void @hrtimer_run_queues() #16
  %22 = load volatile i32, ptr @jiffies, align 64
  %23 = getelementptr inbounds %struct.timer_base, ptr %21, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = sub i32 %22, %24
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load volatile i32, ptr @jiffies, align 64
  %29 = getelementptr %struct.timer_base, ptr %21, i32 1, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = sub i32 %28, %30
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27, %1
  tail call void @raise_softirq(i32 noundef 1) #16
  br label %34

34:                                               ; preds = %33, %27
  tail call void @rcu_sched_clock_irq(i32 noundef %0) #16
  %35 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, 983040
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  tail call void @irq_work_tick() #16
  br label %40

40:                                               ; preds = %39, %34
  tail call void @scheduler_tick() #16
  tail call void @run_posix_cpu_timers() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @account_process_tick(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_sched_clock_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_work_tick() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scheduler_tick() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @run_posix_cpu_timers() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @schedule_timeout(i32 noundef %0) #0 section ".sched.text" {
  %2 = alloca %struct.process_timer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 20, i1 false), !annotation !9
  %3 = icmp eq i32 %0, 2147483647
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @schedule() #16
  br label %65

5:                                                ; preds = %1
  %6 = icmp slt i32 %0, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %0) #18
  tail call void @dump_stack() #18
  %9 = tail call ptr @llvm.thread.pointer() #16
  %10 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 1
  store volatile i32 0, ptr %10, align 8
  br label %65

11:                                               ; preds = %5
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = add i32 %12, %0
  %14 = tail call ptr @llvm.thread.pointer() #16
  %15 = getelementptr inbounds %struct.process_timer, ptr %2, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_timer_init, i32 0, i32 1), align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 5
  %22 = getelementptr i32, ptr @__cpu_online_mask, i32 %21
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %20, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !14
  %29 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_timer_init, i32 0, i32 7), align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %31, %28
  %32 = phi ptr [ %36, %31 ], [ %29, %28 ]
  %33 = load volatile ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.tracepoint_func, ptr %32, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  call void %33(ptr noundef %35, ptr noundef nonnull %2) #16
  %36 = getelementptr %struct.tracepoint_func, ptr %32, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %31

39:                                               ; preds = %31, %28
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %40

40:                                               ; preds = %39, %18, %11
  %41 = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1
  store ptr null, ptr %41, align 4
  %42 = getelementptr inbounds %struct.timer_list, ptr %2, i32 0, i32 2
  store ptr @process_timeout, ptr %42, align 4
  %43 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %44 = load i32, ptr %43, align 8
  %45 = getelementptr inbounds %struct.timer_list, ptr %2, i32 0, i32 3
  store i32 %44, ptr %45, align 4
  %46 = call fastcc i32 @__mod_timer(ptr noundef nonnull %2, i32 noundef %13, i32 noundef 4)
  call void @schedule() #16
  %47 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %48, 983040
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %40
  %52 = load i32, ptr %45, align 4
  %53 = and i32 %52, 2097152
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56, !prof !11

55:                                               ; preds = %51
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1372, i32 noundef 9, ptr noundef null) #16
  br label %56

56:                                               ; preds = %55, %51, %40
  %57 = call i32 @try_to_del_timer_sync(ptr noundef nonnull %2) #16
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62, !prof !11

59:                                               ; preds = %59, %56
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !29
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !30
  %60 = call i32 @try_to_del_timer_sync(ptr noundef nonnull %2) #16
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %59, label %62, !prof !11

62:                                               ; preds = %59, %56
  %63 = load volatile i32, ptr @jiffies, align 64
  %64 = sub i32 %13, %63
  br label %65

65:                                               ; preds = %62, %7, %4
  %66 = phi i32 [ 2147483647, %4 ], [ %0, %7 ], [ %64, %62 ]
  %67 = call i32 @llvm.smax.i32(i32 %66, i32 0)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  ret i32 %67
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @process_timeout(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.process_timer, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @wake_up_process(ptr noundef %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @schedule_timeout_interruptible(i32 noundef %0) #0 section ".sched.text" {
  %2 = tail call ptr @llvm.thread.pointer() #16
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 1
  store volatile i32 1, ptr %3, align 8
  %4 = tail call i32 @schedule_timeout(i32 noundef %0)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @schedule_timeout_killable(i32 noundef %0) #0 section ".sched.text" {
  %2 = tail call ptr @llvm.thread.pointer() #16
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 1
  store volatile i32 258, ptr %3, align 8
  %4 = tail call i32 @schedule_timeout(i32 noundef %0)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @schedule_timeout_uninterruptible(i32 noundef %0) #0 section ".sched.text" {
  %2 = tail call ptr @llvm.thread.pointer() #16
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 1
  store volatile i32 2, ptr %3, align 8
  %4 = tail call i32 @schedule_timeout(i32 noundef %0)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @schedule_timeout_idle(i32 noundef %0) #0 section ".sched.text" {
  %2 = tail call ptr @llvm.thread.pointer() #16
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 1
  store volatile i32 1026, ptr %3, align 8
  %4 = tail call i32 @schedule_timeout(i32 noundef %0)
  ret i32 %4
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @timers_prepare_cpu(i32 noundef %0) local_unnamed_addr #8 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @timer_bases to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load volatile i32, ptr @jiffies, align 64
  %7 = getelementptr inbounds %struct.timer_base, ptr %5, i32 0, i32 2
  store i32 %6, ptr %7, align 8
  %8 = add i32 %6, 1073741823
  %9 = getelementptr inbounds %struct.timer_base, ptr %5, i32 0, i32 3
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.timer_base, ptr %5, i32 0, i32 7
  store i8 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.timer_base, ptr %5, i32 0, i32 6
  store i8 0, ptr %11, align 1
  %12 = load i32, ptr %2, align 4
  %13 = add i32 %12, ptrtoint (ptr getelementptr inbounds ([2 x %struct.timer_base], ptr @timer_bases, i32 0, i32 1) to i32)
  %14 = inttoptr i32 %13 to ptr
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = getelementptr inbounds %struct.timer_base, ptr %14, i32 0, i32 2
  store i32 %15, ptr %16, align 8
  %17 = add i32 %15, 1073741823
  %18 = getelementptr inbounds %struct.timer_base, ptr %14, i32 0, i32 3
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.timer_base, ptr %14, i32 0, i32 7
  store i8 0, ptr %19, align 2
  %20 = getelementptr inbounds %struct.timer_base, ptr %14, i32 0, i32 6
  store i8 0, ptr %20, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @timers_dead_cpu(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = lshr i32 %0, 5
  %4 = getelementptr i32, ptr @__cpu_online_mask, i32 %3
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %0, 31
  %7 = shl nuw i32 1, %6
  %8 = and i32 %5, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12, !prof !10

10:                                               ; preds = %1
  %11 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  br label %13

12:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/time/timer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1965, 0\0A.popsection", ""() #16, !srcloc !33
  unreachable

13:                                               ; preds = %110, %10
  %14 = phi i32 [ 0, %10 ], [ %115, %110 ]
  %15 = getelementptr [2 x %struct.timer_base], ptr @timer_bases, i32 0, i32 %14
  %16 = ptrtoint ptr %15 to i32
  %17 = load i32, ptr %11, align 4
  %18 = add i32 %17, %16
  %19 = inttoptr i32 %18 to ptr
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  %20 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %21 = inttoptr i32 %20 to ptr
  %22 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %21) #12, !srcloc !12
  %23 = add i32 %22, %16
  %24 = inttoptr i32 %23 to ptr
  tail call void @_raw_spin_lock_irq(ptr noundef %24) #16
  tail call void @_raw_spin_lock(ptr noundef %19) #16
  %25 = load volatile i32, ptr @jiffies, align 64
  %26 = getelementptr inbounds %struct.timer_base, ptr %24, i32 0, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = sub i32 %25, %27
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %47, label %30

30:                                               ; preds = %13
  %31 = getelementptr inbounds %struct.timer_base, ptr %24, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = sub i32 %25, %32
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = sub i32 %32, %27
  %37 = icmp slt i32 %36, 0
  %38 = load i1, ptr @forward_timer_base.__already_done, align 1
  %39 = xor i1 %38, true
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %42, !prof !11

41:                                               ; preds = %35
  store i1 true, ptr @forward_timer_base.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 911, i32 noundef 9, ptr noundef null) #16
  br label %42

42:                                               ; preds = %41, %35
  br i1 %37, label %47, label %43

43:                                               ; preds = %42
  %44 = load i32, ptr %31, align 4
  br label %45

45:                                               ; preds = %43, %30
  %46 = phi i32 [ %44, %43 ], [ %25, %30 ]
  store i32 %46, ptr %26, align 8
  br label %47

47:                                               ; preds = %45, %42, %13
  %48 = getelementptr inbounds %struct.timer_base, ptr %19, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %54, !prof !10

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.timer_base, ptr %19, i32 0, i32 9
  %53 = getelementptr inbounds %struct.timer_base, ptr %24, i32 0, i32 4
  br label %55

54:                                               ; preds = %47
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/time/timer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1983, 0\0A.popsection", ""() #16, !srcloc !35
  unreachable

55:                                               ; preds = %107, %51
  %56 = phi i32 [ 0, %51 ], [ %108, %107 ]
  %57 = getelementptr %struct.hlist_head, ptr %52, i32 %56
  %58 = load i32, ptr %53, align 16
  %59 = load volatile ptr, ptr %57, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %107, label %61

61:                                               ; preds = %95, %55
  %62 = phi ptr [ %105, %95 ], [ %59, %55 ]
  %63 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_timer_cancel, i32 0, i32 1), align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %61
  %66 = tail call ptr @llvm.thread.pointer() #16
  %67 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %68 = load i32, ptr %67, align 8
  %69 = lshr i32 %68, 5
  %70 = getelementptr i32, ptr @__cpu_online_mask, i32 %69
  %71 = load volatile i32, ptr %70, align 4
  %72 = and i32 %68, 31
  %73 = shl nuw i32 1, %72
  %74 = and i32 %73, %71
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %65
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  %77 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_timer_cancel, i32 0, i32 7), align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %87, label %79

79:                                               ; preds = %79, %76
  %80 = phi ptr [ %84, %79 ], [ %77, %76 ]
  %81 = load volatile ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.tracepoint_func, ptr %80, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  tail call void %81(ptr noundef %83, ptr noundef nonnull %62) #16
  %84 = getelementptr %struct.tracepoint_func, ptr %80, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %79

87:                                               ; preds = %79, %76
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  br label %88

88:                                               ; preds = %87, %65, %61
  %89 = load ptr, ptr %62, align 4
  %90 = getelementptr inbounds %struct.hlist_node, ptr %62, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  store volatile ptr %89, ptr %91, align 4
  %92 = icmp eq ptr %89, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.hlist_node, ptr %89, i32 0, i32 1
  store volatile ptr %91, ptr %94, align 4
  br label %95

95:                                               ; preds = %93, %88
  store ptr inttoptr (i32 290 to ptr), ptr %62, align 4
  %96 = getelementptr inbounds %struct.timer_list, ptr %62, i32 0, i32 3
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %97, -524288
  %99 = or i32 %98, %58
  store i32 %99, ptr %96, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !9
  %100 = getelementptr inbounds %struct.timer_list, ptr %62, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = load i32, ptr %26, align 8
  %103 = call fastcc i32 @calc_wheel_index(i32 noundef %101, i32 noundef %102, ptr noundef nonnull %2) #16, !range !26
  %104 = load i32, ptr %2, align 4
  tail call fastcc void @enqueue_timer(ptr noundef %24, ptr noundef nonnull %62, i32 noundef %103, i32 noundef %104) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  %105 = load volatile ptr, ptr %57, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %61

107:                                              ; preds = %95, %55
  %108 = add nuw nsw i32 %56, 1
  %109 = icmp eq i32 %108, 512
  br i1 %109, label %110, label %55

110:                                              ; preds = %107
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %111 = load i16, ptr %19, align 4
  %112 = add i16 %111, 1
  store i16 %112, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %113 = load i16, ptr %24, align 4
  %114 = add i16 %113, 1
  store i16 %114, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !36
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !37
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !38
  %115 = add nuw nsw i32 %14, 1
  %116 = icmp eq i32 %115, 2
  br i1 %116, label %117, label %13

117:                                              ; preds = %110
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @init_timers() local_unnamed_addr #9 section ".init.text" {
  tail call fastcc void @init_timer_cpus() #19
  tail call void @open_softirq(i32 noundef 1, ptr noundef nonnull @run_timer_softirq) #16
  ret void
}

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @init_timer_cpus() unnamed_addr #10 section ".init.text" {
  %1 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = icmp ult i32 %1, %2
  br i1 %3, label %8, label %24

4:                                                ; preds = %11
  %5 = tail call i32 @cpumask_next(i32 noundef %9, ptr noundef nonnull @__cpu_possible_mask) #20
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %4, %0
  %9 = phi i32 [ %5, %4 ], [ %1, %0 ]
  %10 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  br label %11

11:                                               ; preds = %11, %8
  %12 = phi i1 [ true, %8 ], [ false, %11 ]
  %13 = phi i32 [ 0, %8 ], [ 1, %11 ]
  %14 = getelementptr [2 x %struct.timer_base], ptr @timer_bases, i32 0, i32 %13
  %15 = ptrtoint ptr %14 to i32
  %16 = load i32, ptr %10, align 4
  %17 = add i32 %16, %15
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.timer_base, ptr %18, i32 0, i32 4
  store i32 %9, ptr %19, align 16
  store i32 0, ptr %18, align 64
  %20 = load volatile i32, ptr @jiffies, align 64
  %21 = getelementptr inbounds %struct.timer_base, ptr %18, i32 0, i32 2
  store i32 %20, ptr %21, align 8
  %22 = add i32 %20, 1073741823
  %23 = getelementptr inbounds %struct.timer_base, ptr %18, i32 0, i32 3
  store i32 %22, ptr %23, align 4
  br i1 %12, label %11, label %4

24:                                               ; preds = %4, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @open_softirq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @run_timer_softirq(ptr nocapture noundef readnone %0) #0 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #12, !srcloc !12
  %5 = add i32 %4, ptrtoint (ptr @timer_bases to i32)
  %6 = inttoptr i32 %5 to ptr
  tail call fastcc void @__run_timers(ptr noundef %6)
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #12, !srcloc !12
  %10 = add i32 %9, ptrtoint (ptr getelementptr inbounds ([2 x %struct.timer_base], ptr @timer_bases, i32 0, i32 1) to i32)
  %11 = inttoptr i32 %10 to ptr
  tail call fastcc void @__run_timers(ptr noundef %11)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msleep(i32 noundef %0) #0 {
  %2 = tail call i32 @__msecs_to_jiffies(i32 noundef %0) #16
  %3 = add i32 %2, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #16
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 1
  br label %8

8:                                                ; preds = %8, %5
  %9 = phi i32 [ %3, %5 ], [ %10, %8 ]
  store volatile i32 2, ptr %7, align 8
  %10 = tail call i32 @schedule_timeout(i32 noundef %9) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %8

12:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msleep_interruptible(i32 noundef %0) #0 {
  %2 = tail call i32 @__msecs_to_jiffies(i32 noundef %0) #16
  %3 = add i32 %2, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #16
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 1
  br label %8

8:                                                ; preds = %17, %5
  %9 = phi i32 [ %3, %5 ], [ %18, %17 ]
  %10 = load volatile i32, ptr %6, align 4
  %11 = and i32 %10, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20, !prof !10

13:                                               ; preds = %8
  %14 = load volatile i32, ptr %6, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  store volatile i32 1, ptr %7, align 8
  %18 = tail call i32 @schedule_timeout(i32 noundef %9) #16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %8

20:                                               ; preds = %17, %13, %8, %1
  %21 = phi i32 [ 0, %1 ], [ %9, %8 ], [ 0, %17 ], [ %9, %13 ]
  %22 = tail call i32 @jiffies_to_msecs(i32 noundef %21) #16
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usleep_range_state(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 section ".sched.text" {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %5 = tail call i64 @ktime_get() #16
  %6 = zext i32 %0 to i64
  %7 = mul nuw nsw i64 %6, 1000
  %8 = add i64 %5, %7
  store i64 %8, ptr %4, align 8
  %9 = sub i32 %1, %0
  %10 = zext i32 %9 to i64
  %11 = mul nuw nsw i64 %10, 1000
  %12 = tail call ptr @llvm.thread.pointer() #16
  %13 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 1
  br label %14

14:                                               ; preds = %14, %3
  store volatile i32 %2, ptr %13, align 8
  %15 = call i32 @schedule_hrtimeout_range(ptr noundef nonnull %4, i64 noundef %11, i32 noundef 0) #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %14

17:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_hrtimeout_range(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_timer_class(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_timer_class, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef %11) #16
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_timer_start(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %27

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_timer_start, ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_timer_start, ptr %5, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_timer_start, ptr %5, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.trace_event_raw_timer_start, ptr %5, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 %16, %18
  %20 = getelementptr inbounds %struct.trace_event_raw_timer_start, ptr %5, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 262143
  %23 = lshr i32 %21, 22
  %24 = and i32 %21, 3932160
  %25 = tail call ptr @trace_print_flags_seq(ptr noundef %9, ptr noundef nonnull @.str.27, i32 noundef %24, ptr noundef nonnull @trace_raw_output_timer_start.__flags) #16
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef %12, ptr noundef %14, i32 noundef %16, i32 noundef %19, i32 noundef %22, i32 noundef %23, ptr noundef %25) #16
  %26 = tail call i32 @trace_handle_return(ptr noundef %10) #16
  br label %27

27:                                               ; preds = %8, %3
  %28 = phi i32 [ %26, %8 ], [ %6, %3 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_flags_seq(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_timer_expire_entry(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_timer_expire_entry, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_timer_expire_entry, ptr %5, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_timer_expire_entry, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_timer_expire_entry, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef %11, ptr noundef %13, i32 noundef %15, i32 noundef %17) #16
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_hrtimer_init(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %20

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_hrtimer_init, ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_hrtimer_init, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %14, ptr noundef nonnull @trace_raw_output_hrtimer_init.symbols) #16
  %16 = getelementptr inbounds %struct.trace_event_raw_hrtimer_init, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %17, ptr noundef nonnull @trace_raw_output_hrtimer_init.symbols.40) #16
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef %12, ptr noundef %15, ptr noundef %18) #16
  %19 = tail call i32 @trace_handle_return(ptr noundef %10) #16
  br label %20

20:                                               ; preds = %8, %3
  %21 = phi i32 [ %19, %8 ], [ %6, %3 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_hrtimer_start(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_hrtimer_start, ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.trace_event_raw_hrtimer_start, ptr %5, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_hrtimer_start, ptr %5, i32 0, i32 3
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds %struct.trace_event_raw_hrtimer_start, ptr %5, i32 0, i32 4
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds %struct.trace_event_raw_hrtimer_start, ptr %5, i32 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %20, ptr noundef nonnull @trace_raw_output_hrtimer_start.symbols) #16
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.51, ptr noundef %12, ptr noundef %14, i64 noundef %16, i64 noundef %18, ptr noundef %21) #16
  %22 = tail call i32 @trace_handle_return(ptr noundef %10) #16
  br label %23

23:                                               ; preds = %8, %3
  %24 = phi i32 [ %22, %8 ], [ %6, %3 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_hrtimer_expire_entry(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_hrtimer_expire_entry, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_event_raw_hrtimer_expire_entry, ptr %5, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.trace_event_raw_hrtimer_expire_entry, ptr %5, i32 0, i32 2
  %15 = load i64, ptr %14, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.52, ptr noundef %11, ptr noundef %13, i64 noundef %15) #16
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_hrtimer_class(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_hrtimer_class, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.53, ptr noundef %11) #16
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_itimer_state(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %25

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %5, i32 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = sdiv i32 %17, 1000
  %19 = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %5, i32 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %5, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = sdiv i32 %22, 1000
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %11, i64 noundef %13, i32 noundef %15, i32 noundef %18, i32 noundef %20, i32 noundef %23) #16
  %24 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %25

25:                                               ; preds = %8, %3
  %26 = phi i32 [ %24, %8 ], [ %6, %3 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_itimer_expire(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_itimer_expire, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_event_raw_itimer_expire, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_itimer_expire, ptr %5, i32 0, i32 3
  %15 = load i64, ptr %14, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.65, i32 noundef %11, i32 noundef %13, i64 noundef %15) #16
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_tick_stop(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_tick_stop, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_tick_stop, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %14, ptr noundef nonnull @trace_raw_output_tick_stop.symbols) #16
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.68, i32 noundef %12, ptr noundef %15) #16
  %16 = tail call i32 @trace_handle_return(ptr noundef %10) #16
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #11

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @timer_update_keys(ptr nocapture noundef readnone %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @timer_keys_mutex) #16
  tail call fastcc void @timers_update_migration()
  %2 = load i8, ptr @static_key_initialized, align 1, !range !13
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !11

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.75, i32 noundef 318, i32 noundef 9, ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__.static_key_enable, ptr noundef nonnull @timers_nohz_active) #16
  br label %5

5:                                                ; preds = %4, %1
  %6 = load volatile i32, ptr @timers_nohz_active, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %5
  %9 = load volatile i32, ptr @timers_nohz_active, align 4
  %10 = icmp ne i32 %9, 1
  %11 = load i1, ptr @static_key_enable.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %16, !prof !11

14:                                               ; preds = %8
  store i1 true, ptr @static_key_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.75, i32 noundef 321, i32 noundef 9, ptr noundef null) #16
  br label %16

15:                                               ; preds = %5
  store volatile i32 1, ptr @timers_nohz_active, align 4
  br label %16

16:                                               ; preds = %15, %14, %8
  tail call void @mutex_unlock(ptr noundef nonnull @timer_keys_mutex) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal fastcc i32 @calc_wheel_index(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #13 {
  %4 = sub i32 %0, %1
  %5 = icmp ult i32 %4, 63
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = add i32 %0, 1
  store i32 %7, ptr %2, align 4
  %8 = and i32 %7, 63
  br label %70

9:                                                ; preds = %3
  %10 = icmp ult i32 %4, 504
  br i1 %10, label %11, label %17

11:                                               ; preds = %9
  %12 = add i32 %0, 8
  %13 = lshr i32 %12, 3
  %14 = and i32 %12, -8
  store i32 %14, ptr %2, align 4
  %15 = and i32 %13, 63
  %16 = or i32 %15, 64
  br label %70

17:                                               ; preds = %9
  %18 = icmp ult i32 %4, 4032
  br i1 %18, label %19, label %25

19:                                               ; preds = %17
  %20 = add i32 %0, 64
  %21 = lshr i32 %20, 6
  %22 = and i32 %20, -64
  store i32 %22, ptr %2, align 4
  %23 = and i32 %21, 63
  %24 = or i32 %23, 128
  br label %70

25:                                               ; preds = %17
  %26 = icmp ult i32 %4, 32256
  br i1 %26, label %27, label %33

27:                                               ; preds = %25
  %28 = add i32 %0, 512
  %29 = lshr i32 %28, 9
  %30 = and i32 %28, -512
  store i32 %30, ptr %2, align 4
  %31 = and i32 %29, 63
  %32 = or i32 %31, 192
  br label %70

33:                                               ; preds = %25
  %34 = icmp ult i32 %4, 258048
  br i1 %34, label %35, label %41

35:                                               ; preds = %33
  %36 = add i32 %0, 4096
  %37 = lshr i32 %36, 12
  %38 = and i32 %36, -4096
  store i32 %38, ptr %2, align 4
  %39 = and i32 %37, 63
  %40 = or i32 %39, 256
  br label %70

41:                                               ; preds = %33
  %42 = icmp ult i32 %4, 2064384
  br i1 %42, label %43, label %49

43:                                               ; preds = %41
  %44 = add i32 %0, 32768
  %45 = lshr i32 %44, 15
  %46 = and i32 %44, -32768
  store i32 %46, ptr %2, align 4
  %47 = and i32 %45, 63
  %48 = or i32 %47, 320
  br label %70

49:                                               ; preds = %41
  %50 = icmp ult i32 %4, 16515072
  br i1 %50, label %51, label %57

51:                                               ; preds = %49
  %52 = add i32 %0, 262144
  %53 = lshr i32 %52, 18
  %54 = and i32 %52, -262144
  store i32 %54, ptr %2, align 4
  %55 = and i32 %53, 63
  %56 = or i32 %55, 384
  br label %70

57:                                               ; preds = %49
  %58 = icmp slt i32 %4, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %57
  %60 = and i32 %1, 63
  store i32 %1, ptr %2, align 4
  br label %70

61:                                               ; preds = %57
  %62 = icmp ugt i32 %4, 132120575
  %63 = add i32 %1, 130023424
  %64 = select i1 %62, i32 %63, i32 %0
  %65 = add i32 %64, 2097152
  %66 = lshr i32 %65, 21
  %67 = and i32 %65, -2097152
  store i32 %67, ptr %2, align 4
  %68 = and i32 %66, 63
  %69 = or i32 %68, 448
  br label %70

70:                                               ; preds = %61, %59, %51, %43, %35, %27, %19, %11, %6
  %71 = phi i32 [ %8, %6 ], [ %16, %11 ], [ %24, %19 ], [ %32, %27 ], [ %40, %35 ], [ %48, %43 ], [ %56, %51 ], [ %60, %59 ], [ %69, %61 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @enqueue_timer(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.timer_base, ptr %0, i32 0, i32 9
  %6 = getelementptr %struct.hlist_head, ptr %5, i32 %2
  %7 = load ptr, ptr %6, align 4
  store volatile ptr %7, ptr %1, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  store volatile ptr %1, ptr %10, align 4
  br label %11

11:                                               ; preds = %9, %4
  store volatile ptr %1, ptr %6, align 4
  %12 = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  store volatile ptr %6, ptr %12, align 4
  %13 = getelementptr inbounds %struct.timer_base, ptr %0, i32 0, i32 8
  %14 = and i32 %2, 31
  %15 = shl nuw i32 1, %14
  %16 = lshr i32 %2, 5
  %17 = getelementptr i32, ptr %13, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.timer_list, ptr %1, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 4194303
  %23 = shl i32 %2, 22
  %24 = or i32 %22, %23
  store i32 %24, ptr %20, align 4
  %25 = getelementptr inbounds %struct.timer_list, ptr %1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_timer_start, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %11
  %30 = tail call ptr @llvm.thread.pointer() #16
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
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !39
  %41 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_timer_start, i32 0, i32 7), align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %43, %40
  %44 = phi ptr [ %48, %43 ], [ %41, %40 ]
  %45 = load volatile ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.tracepoint_func, ptr %44, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  tail call void %45(ptr noundef %47, ptr noundef %1, i32 noundef %26, i32 noundef %24) #16
  %48 = getelementptr %struct.tracepoint_func, ptr %44, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %43

51:                                               ; preds = %43, %40
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !40
  br label %52

52:                                               ; preds = %51, %29, %11
  %53 = getelementptr inbounds %struct.timer_base, ptr %0, i32 0, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = sub i32 %3, %54
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %52
  store i32 %3, ptr %53, align 4
  %58 = getelementptr inbounds %struct.timer_base, ptr %0, i32 0, i32 7
  store i8 1, ptr %58, align 2
  %59 = getelementptr inbounds %struct.timer_base, ptr %0, i32 0, i32 5
  store i8 0, ptr %59, align 4
  %60 = load volatile i32, ptr @timers_nohz_active, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load i32, ptr %20, align 4
  %64 = and i32 %63, 524288
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.timer_base, ptr %0, i32 0, i32 6
  %68 = load i8, ptr %67, align 1, !range !13
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.timer_base, ptr %0, i32 0, i32 4
  %72 = load i32, ptr %71, align 16
  tail call void @wake_up_nohz_cpu(i32 noundef %72) #16
  br label %73

73:                                               ; preds = %70, %66, %62, %57, %52
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_nohz_timer_target() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_nohz_cpu(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_get_next_event() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_run_queues() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @raise_softirq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__run_timers(ptr noundef %0) unnamed_addr #5 {
  %2 = alloca [8 x %struct.hlist_head], align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !9
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = getelementptr inbounds %struct.timer_base, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = sub i32 %3, %5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %143, label %8

8:                                                ; preds = %1
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #16
  %9 = getelementptr inbounds %struct.timer_base, ptr %0, i32 0, i32 2
  %10 = load volatile i32, ptr @jiffies, align 64
  %11 = load i32, ptr %9, align 8
  %12 = sub i32 %10, %11
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %140

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.timer_base, ptr %0, i32 0, i32 8
  %16 = getelementptr inbounds %struct.timer_base, ptr %0, i32 0, i32 9
  %17 = getelementptr inbounds %struct.timer_base, ptr %0, i32 0, i32 5
  %18 = getelementptr inbounds %struct.timer_base, ptr %0, i32 0, i32 1
  br label %28

19:                                               ; preds = %77, %71
  %20 = load i32, ptr %9, align 8
  %21 = add i32 %20, 1
  store i32 %21, ptr %9, align 8
  %22 = call fastcc i32 @__next_timer_interrupt(ptr noundef %0)
  store i32 %22, ptr %4, align 4
  br label %23

23:                                               ; preds = %138, %19
  %24 = load volatile i32, ptr @jiffies, align 64
  %25 = load i32, ptr %9, align 8
  %26 = sub i32 %24, %25
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %140

28:                                               ; preds = %23, %14
  %29 = load volatile i32, ptr @jiffies, align 64
  %30 = load i32, ptr %4, align 4
  %31 = sub i32 %29, %30
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %140

33:                                               ; preds = %28
  store i32 %30, ptr %9, align 8
  br label %34

34:                                               ; preds = %65, %33
  %35 = phi i32 [ 0, %33 ], [ %62, %65 ]
  %36 = phi i32 [ 0, %33 ], [ %67, %65 ]
  %37 = phi i32 [ %30, %33 ], [ %66, %65 ]
  %38 = phi ptr [ %2, %33 ], [ %61, %65 ]
  %39 = and i32 %37, 63
  %40 = shl i32 %36, 6
  %41 = or i32 %39, %40
  %42 = and i32 %37, 31
  %43 = shl nuw i32 1, %42
  %44 = lshr i32 %41, 5
  %45 = getelementptr i32, ptr %15, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = xor i32 %43, -1
  %48 = and i32 %46, %47
  store i32 %48, ptr %45, align 4
  %49 = and i32 %46, %43
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %34
  %52 = getelementptr %struct.hlist_head, ptr %16, i32 %41
  %53 = getelementptr %struct.hlist_head, ptr %38, i32 1
  %54 = load ptr, ptr %52, align 4
  store ptr %54, ptr %38, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.hlist_node, ptr %54, i32 0, i32 1
  store ptr %38, ptr %57, align 4
  br label %58

58:                                               ; preds = %56, %51
  store ptr null, ptr %52, align 4
  %59 = add i32 %35, 1
  br label %60

60:                                               ; preds = %58, %34
  %61 = phi ptr [ %53, %58 ], [ %38, %34 ]
  %62 = phi i32 [ %59, %58 ], [ %35, %34 ]
  %63 = and i32 %37, 7
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = lshr i32 %37, 3
  %67 = add nuw nsw i32 %36, 1
  %68 = icmp eq i32 %67, 8
  br i1 %68, label %69, label %34

69:                                               ; preds = %65, %60
  %70 = icmp eq i32 %62, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %69
  %72 = load i8, ptr %17, align 4, !range !13
  %73 = icmp eq i8 %72, 0
  %74 = load i1, ptr @__run_timers.__already_done, align 1
  %75 = xor i1 %74, true
  %76 = select i1 %73, i1 %75, i1 false
  br i1 %76, label %77, label %19, !prof !11

77:                                               ; preds = %71
  store i1 true, ptr @__run_timers.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1729, i32 noundef 9, ptr noundef null) #16
  br label %19

78:                                               ; preds = %69
  %79 = load i32, ptr %9, align 8
  %80 = add i32 %79, 1
  store i32 %80, ptr %9, align 8
  %81 = call fastcc i32 @__next_timer_interrupt(ptr noundef %0)
  store i32 %81, ptr %4, align 4
  br label %82

82:                                               ; preds = %138, %78
  %83 = phi i32 [ %84, %138 ], [ %62, %78 ]
  %84 = add i32 %83, -1
  %85 = getelementptr %struct.hlist_head, ptr %2, i32 %84
  %86 = load i32, ptr %9, align 8
  %87 = add i32 %86, -1
  %88 = load volatile ptr, ptr %85, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %138, label %90

90:                                               ; preds = %135, %82
  %91 = phi ptr [ %136, %135 ], [ %88, %82 ]
  store ptr %91, ptr %18, align 4
  %92 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_timer_cancel, i32 0, i32 1), align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %117

94:                                               ; preds = %90
  %95 = tail call ptr @llvm.thread.pointer() #16
  %96 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 2
  %97 = load i32, ptr %96, align 8
  %98 = lshr i32 %97, 5
  %99 = getelementptr i32, ptr @__cpu_online_mask, i32 %98
  %100 = load volatile i32, ptr %99, align 4
  %101 = and i32 %97, 31
  %102 = shl nuw i32 1, %101
  %103 = and i32 %102, %100
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %117, label %105

105:                                              ; preds = %94
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  %106 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_timer_cancel, i32 0, i32 7), align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %116, label %108

108:                                              ; preds = %108, %105
  %109 = phi ptr [ %113, %108 ], [ %106, %105 ]
  %110 = load volatile ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.tracepoint_func, ptr %109, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  call void %110(ptr noundef %112, ptr noundef nonnull %91) #16
  %113 = getelementptr %struct.tracepoint_func, ptr %109, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %108

116:                                              ; preds = %108, %105
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  br label %117

117:                                              ; preds = %116, %94, %90
  %118 = load ptr, ptr %91, align 4
  %119 = getelementptr inbounds %struct.hlist_node, ptr %91, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  store volatile ptr %118, ptr %120, align 4
  %121 = icmp eq ptr %118, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.hlist_node, ptr %118, i32 0, i32 1
  store volatile ptr %120, ptr %123, align 4
  br label %124

124:                                              ; preds = %122, %117
  store ptr null, ptr %119, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %91, align 4
  %125 = getelementptr inbounds %struct.timer_list, ptr %91, i32 0, i32 2
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.timer_list, ptr %91, i32 0, i32 3
  %128 = load i32, ptr %127, align 4
  %129 = and i32 %128, 2097152
  %130 = icmp eq i32 %129, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16
  %131 = load i16, ptr %0, align 4
  %132 = add i16 %131, 1
  store i16 %132, ptr %0, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16
  br i1 %130, label %134, label %133

133:                                              ; preds = %124
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  call fastcc void @call_timer_fn(ptr noundef nonnull %91, ptr noundef %126, i32 noundef %87) #16
  call void @_raw_spin_lock(ptr noundef %0) #16
  br label %135

134:                                              ; preds = %124
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !36
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !37
  call fastcc void @call_timer_fn(ptr noundef nonnull %91, ptr noundef %126, i32 noundef %87) #16
  call void @_raw_spin_lock_irq(ptr noundef %0) #16
  br label %135

135:                                              ; preds = %134, %133
  store ptr null, ptr %18, align 4
  %136 = load volatile ptr, ptr %85, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %90

138:                                              ; preds = %135, %82
  %139 = icmp eq i32 %84, 0
  br i1 %139, label %23, label %82

140:                                              ; preds = %28, %23, %8
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  %141 = load i16, ptr %0, align 4
  %142 = add i16 %141, 1
  store i16 %142, ptr %0, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !24
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !36
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !37
  br label %143

143:                                              ; preds = %140, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @call_timer_fn(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @llvm.thread.pointer() #16
  %5 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_timer_expire_entry, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !41
  %20 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_timer_expire_entry, i32 0, i32 7), align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %22, %19
  %23 = phi ptr [ %27, %22 ], [ %20, %19 ]
  %24 = load volatile ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.tracepoint_func, ptr %23, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  tail call void %24(ptr noundef %26, ptr noundef %0, i32 noundef %2) #16
  %27 = getelementptr %struct.tracepoint_func, ptr %23, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %22

30:                                               ; preds = %22, %19
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !42
  br label %31

31:                                               ; preds = %30, %9, %3
  tail call void %1(ptr noundef %0) #16
  %32 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_timer_expire_exit, i32 0, i32 1), align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 5
  %38 = getelementptr i32, ptr @__cpu_online_mask, i32 %37
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %36, 31
  %41 = shl nuw i32 1, %40
  %42 = and i32 %41, %39
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %34
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !43
  %45 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_timer_expire_exit, i32 0, i32 7), align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %47, %44
  %48 = phi ptr [ %52, %47 ], [ %45, %44 ]
  %49 = load volatile ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.tracepoint_func, ptr %48, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  tail call void %49(ptr noundef %51, ptr noundef %0) #16
  %52 = getelementptr %struct.tracepoint_func, ptr %48, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %47

55:                                               ; preds = %47, %44
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !44
  br label %56

56:                                               ; preds = %55, %34, %31
  %57 = load volatile i32, ptr %5, align 4
  %58 = icmp eq i32 %6, %57
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = load i1, ptr @call_timer_fn.__already_done, align 1
  br i1 %60, label %63, label %61, !prof !10

61:                                               ; preds = %59
  store i1 true, ptr @call_timer_fn.__already_done, align 1
  %62 = load volatile i32, ptr %5, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1428, i32 noundef 9, ptr noundef nonnull @.str.78, ptr noundef %1, i32 noundef %6, i32 noundef %62) #16
  br label %63

63:                                               ; preds = %61, %59
  store volatile i32 %6, ptr %5, align 4
  br label %64

64:                                               ; preds = %63, %56
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #15

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { cold nounwind }
attributes #19 = { cold }
attributes #20 = { nounwind readonly willreturn }

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
!12 = !{i64 530801}
!13 = !{i8 0, i8 2}
!14 = !{i64 2154297916}
!15 = !{i64 2154298058}
!16 = !{i64 2155383292, i64 2155383776, i64 2155383329, i64 2155383385, i64 2155383419, i64 2155383443, i64 2155383484, i64 2155383505, i64 2155383533, i64 2155383567}
!17 = !{i64 2155382799}
!18 = !{i64 2155382641}
!19 = !{i64 2154366779}
!20 = !{i64 2154366925}
!21 = !{!"branch_weights", i32 2000, i32 2002}
!22 = !{i64 2149294735}
!23 = !{i64 2149290559}
!24 = !{i64 2149290634, i64 2149290661, i64 2149290708, i64 2149290730, i64 2149290758, i64 2149290778}
!25 = !{i64 2149317738}
!26 = !{i32 0, i32 512}
!27 = !{i64 2155391265, i64 2155391750, i64 2155391302, i64 2155391358, i64 2155391392, i64 2155391416, i64 2155391457, i64 2155391478, i64 2155391506, i64 2155391540}
!28 = !{i64 2155393414, i64 2155393899, i64 2155393451, i64 2155393507, i64 2155393541, i64 2155393565, i64 2155393606, i64 2155393627, i64 2155393655, i64 2155393689}
!29 = !{i64 2155403479}
!30 = !{i64 2155403321}
!31 = !{i64 1040076, i64 1040103}
!32 = !{i64 1040771, i64 1040798, i64 1040831, i64 1040852, i64 1040879, i64 1040905}
!33 = !{i64 2155454153, i64 2155454638, i64 2155454190, i64 2155454246, i64 2155454280, i64 2155454304, i64 2155454345, i64 2155454366, i64 2155454394, i64 2155454428}
!34 = !{i64 2155455768}
!35 = !{i64 2155456938, i64 2155457423, i64 2155456975, i64 2155457031, i64 2155457065, i64 2155457089, i64 2155457130, i64 2155457151, i64 2155457179, i64 2155457213}
!36 = !{i64 512346}
!37 = !{i64 2149318879}
!38 = !{i64 2155458014}
!39 = !{i64 2154314182}
!40 = !{i64 2154314358}
!41 = !{i64 2154330592}
!42 = !{i64 2154330768}
!43 = !{i64 2154350897}
!44 = !{i64 2154351053}
