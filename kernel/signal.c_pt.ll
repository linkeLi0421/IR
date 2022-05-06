; ModuleID = '/llk/IR/kernel/signal.c_pt.bc'
source_filename = "../kernel/signal.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_recalc_sigpending:\09\09\09\09\09"
module asm "\09.asciz \09\22recalc_sigpending\22\09\09\09\09\09"
module asm "__kstrtabns_recalc_sigpending:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flush_signals:\09\09\09\09\09"
module asm "\09.asciz \09\22flush_signals\22\09\09\09\09\09"
module asm "__kstrtabns_flush_signals:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dequeue_signal:\09\09\09\09\09"
module asm "\09.asciz \09\22dequeue_signal\22\09\09\09\09\09"
module asm "__kstrtabns_dequeue_signal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kill_pid_usb_asyncio:\09\09\09\09\09"
module asm "\09.asciz \09\22kill_pid_usb_asyncio\22\09\09\09\09\09"
module asm "__kstrtabns_kill_pid_usb_asyncio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_send_sig_info:\09\09\09\09\09"
module asm "\09.asciz \09\22send_sig_info\22\09\09\09\09\09"
module asm "__kstrtabns_send_sig_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_send_sig:\09\09\09\09\09"
module asm "\09.asciz \09\22send_sig\22\09\09\09\09\09"
module asm "__kstrtabns_send_sig:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_force_sig:\09\09\09\09\09"
module asm "\09.asciz \09\22force_sig\22\09\09\09\09\09"
module asm "__kstrtabns_force_sig:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_send_sig_mceerr:\09\09\09\09\09"
module asm "\09.asciz \09\22send_sig_mceerr\22\09\09\09\09\09"
module asm "__kstrtabns_send_sig_mceerr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kill_pgrp:\09\09\09\09\09"
module asm "\09.asciz \09\22kill_pgrp\22\09\09\09\09\09"
module asm "__kstrtabns_kill_pgrp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kill_pid:\09\09\09\09\09"
module asm "\09.asciz \09\22kill_pid\22\09\09\09\09\09"
module asm "__kstrtabns_kill_pid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sigprocmask:\09\09\09\09\09"
module asm "\09.asciz \09\22sigprocmask\22\09\09\09\09\09"
module asm "__kstrtabns_sigprocmask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_sigaction:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_sigaction\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_sigaction:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.27 }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.29, %struct.trace_event, ptr, ptr, %union.anon.30, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.29 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.30 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.100 = type { i8, i8 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.46 }
%union.anon.46 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.19 }
%union.anon.19 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.56, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.56 = type { %struct.anon.57 }
%struct.anon.57 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.18 }
%union.anon.18 = type { %struct.raw_spinlock }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.92, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.82 }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tlbflush_unmap_batch = type {}
%union.anon.92 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_signal_generate = type { %struct.trace_entry, i32, i32, i32, [16 x i8], i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.anon = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.3 }
%struct.anon.3 = type { i32, i32, i32, i32, i32 }
%struct.trace_event_raw_signal_deliver = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.sigaction = type { ptr, i32, ptr, %struct.sigset_t }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.rlimit = type { i32, i32 }
%struct.sigqueue = type { %struct.list_head, i32, %struct.kernel_siginfo, ptr }
%struct.kernel_siginfo = type { %struct.anon }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.72 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.72 = type { %struct.callback_head }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, ptr }
%struct.multiprocess_signals = type { %struct.sigset_t, %struct.hlist_node }
%struct.ksignal = type { %struct.k_sigaction, %struct.kernel_siginfo, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.sigaltstack = type { ptr, i32, i32 }
%struct.pt_regs = type { [18 x i32] }
%struct.old_sigaction = type { ptr, i32, i32, ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_signal_generate = internal constant [16 x i8] c"signal_generate\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_signal_generate = dso_local global %struct.static_call_key { ptr @__traceiter_signal_generate }, align 4
@__tracepoint_signal_generate = dso_local global %struct.tracepoint { ptr @__tpstrtab_signal_generate, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_signal_generate, ptr null, ptr @__traceiter_signal_generate, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_signal_generate = internal constant ptr @__tracepoint_signal_generate, section "__tracepoints_ptrs", align 4
@__tpstrtab_signal_deliver = internal constant [15 x i8] c"signal_deliver\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_signal_deliver = dso_local global %struct.static_call_key { ptr @__traceiter_signal_deliver }, align 4
@__tracepoint_signal_deliver = dso_local global %struct.tracepoint { ptr @__tpstrtab_signal_deliver, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_signal_deliver, ptr null, ptr @__traceiter_signal_deliver, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_signal_deliver = internal constant ptr @__tracepoint_signal_deliver, section "__tracepoints_ptrs", align 4
@str__signal__trace_system_name = internal constant [7 x i8] c"signal\00", align 1
@trace_event_fields_signal_generate = internal global [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.27 { %struct.anon.28 { ptr @.str.3, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.27 { %struct.anon.28 { ptr @.str.4, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.27 { %struct.anon.28 { ptr @.str.5, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.27 { %struct.anon.28 { ptr @.str.7, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.27 { %struct.anon.28 { ptr @.str.9, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.27 { %struct.anon.28 { ptr @.str.10, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.27 { %struct.anon.28 { ptr @.str.11, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_signal_generate = internal global %struct.trace_event_class { ptr @str__signal__trace_system_name, ptr @trace_event_raw_event_signal_generate, ptr @perf_trace_signal_generate, ptr @trace_event_reg, ptr @trace_event_fields_signal_generate, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_signal_generate, i64 24), ptr getelementptr (i8, ptr @event_class_signal_generate, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_signal_generate = internal global %struct.trace_event_functions { ptr @trace_raw_output_signal_generate, ptr null, ptr null, ptr null }, align 4
@print_fmt_signal_generate = internal global [134 x i8] c"\22sig=%d errno=%d code=%d comm=%s pid=%d grp=%d res=%d\22, REC->sig, REC->errno, REC->code, REC->comm, REC->pid, REC->group, REC->result\00", align 1
@event_signal_generate = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_signal_generate, %union.anon.29 { ptr @__tracepoint_signal_generate }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_signal_generate }, ptr @print_fmt_signal_generate, ptr null, %union.anon.30 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_signal_generate = internal global ptr @event_signal_generate, section "_ftrace_events", align 4
@trace_event_fields_signal_deliver = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.27 { %struct.anon.28 { ptr @.str.3, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.27 { %struct.anon.28 { ptr @.str.4, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.27 { %struct.anon.28 { ptr @.str.5, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.27 { %struct.anon.28 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.27 { %struct.anon.28 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_signal_deliver = internal global %struct.trace_event_class { ptr @str__signal__trace_system_name, ptr @trace_event_raw_event_signal_deliver, ptr @perf_trace_signal_deliver, ptr @trace_event_reg, ptr @trace_event_fields_signal_deliver, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_signal_deliver, i64 24), ptr getelementptr (i8, ptr @event_class_signal_deliver, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_signal_deliver = internal global %struct.trace_event_functions { ptr @trace_raw_output_signal_deliver, ptr null, ptr null, ptr null }, align 4
@print_fmt_signal_deliver = internal global [119 x i8] c"\22sig=%d errno=%d code=%d sa_handler=%lx sa_flags=%lx\22, REC->sig, REC->errno, REC->code, REC->sa_handler, REC->sa_flags\00", align 1
@event_signal_deliver = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_signal_deliver, %union.anon.29 { ptr @__tracepoint_signal_deliver }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_signal_deliver }, ptr @print_fmt_signal_deliver, ptr null, %union.anon.30 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_signal_deliver = internal global ptr @event_signal_deliver, section "_ftrace_events", align 4
@__kstrtab_recalc_sigpending = external dso_local constant [0 x i8], align 1
@__kstrtabns_recalc_sigpending = external dso_local constant [0 x i8], align 1
@__ksymtab_recalc_sigpending = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @recalc_sigpending to i32), ptr @__kstrtab_recalc_sigpending, ptr @__kstrtabns_recalc_sigpending }, section "___ksymtab+recalc_sigpending", align 4
@__kstrtab_flush_signals = external dso_local constant [0 x i8], align 1
@__kstrtabns_flush_signals = external dso_local constant [0 x i8], align 1
@__ksymtab_flush_signals = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flush_signals to i32), ptr @__kstrtab_flush_signals, ptr @__kstrtabns_flush_signals }, section "___ksymtab+flush_signals", align 4
@__kstrtab_dequeue_signal = external dso_local constant [0 x i8], align 1
@__kstrtabns_dequeue_signal = external dso_local constant [0 x i8], align 1
@__ksymtab_dequeue_signal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dequeue_signal to i32), ptr @__kstrtab_dequeue_signal, ptr @__kstrtabns_dequeue_signal }, section "___ksymtab_gpl+dequeue_signal", align 4
@__setup_str_setup_print_fatal_signals = internal constant [21 x i8] c"print-fatal-signals=\00", section ".init.rodata", align 1
@__setup_setup_print_fatal_signals = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_print_fatal_signals, ptr @setup_print_fatal_signals, i32 0 }, section ".init.setup", align 4
@__kstrtab_kill_pid_usb_asyncio = external dso_local constant [0 x i8], align 1
@__kstrtabns_kill_pid_usb_asyncio = external dso_local constant [0 x i8], align 1
@__ksymtab_kill_pid_usb_asyncio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kill_pid_usb_asyncio to i32), ptr @__kstrtab_kill_pid_usb_asyncio, ptr @__kstrtabns_kill_pid_usb_asyncio }, section "___ksymtab_gpl+kill_pid_usb_asyncio", align 4
@__kstrtab_send_sig_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_send_sig_info = external dso_local constant [0 x i8], align 1
@__ksymtab_send_sig_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @send_sig_info to i32), ptr @__kstrtab_send_sig_info, ptr @__kstrtabns_send_sig_info }, section "___ksymtab+send_sig_info", align 4
@__kstrtab_send_sig = external dso_local constant [0 x i8], align 1
@__kstrtabns_send_sig = external dso_local constant [0 x i8], align 1
@__ksymtab_send_sig = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @send_sig to i32), ptr @__kstrtab_send_sig, ptr @__kstrtabns_send_sig }, section "___ksymtab+send_sig", align 4
@__kstrtab_force_sig = external dso_local constant [0 x i8], align 1
@__kstrtabns_force_sig = external dso_local constant [0 x i8], align 1
@__ksymtab_force_sig = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @force_sig to i32), ptr @__kstrtab_force_sig, ptr @__kstrtabns_force_sig }, section "___ksymtab+force_sig", align 4
@.str = private unnamed_addr constant [16 x i8] c"kernel/signal.c\00", align 1
@__kstrtab_send_sig_mceerr = external dso_local constant [0 x i8], align 1
@__kstrtabns_send_sig_mceerr = external dso_local constant [0 x i8], align 1
@__ksymtab_send_sig_mceerr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @send_sig_mceerr to i32), ptr @__kstrtab_send_sig_mceerr, ptr @__kstrtabns_send_sig_mceerr }, section "___ksymtab+send_sig_mceerr", align 4
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@__kstrtab_kill_pgrp = external dso_local constant [0 x i8], align 1
@__kstrtabns_kill_pgrp = external dso_local constant [0 x i8], align 1
@__ksymtab_kill_pgrp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kill_pgrp to i32), ptr @__kstrtab_kill_pgrp, ptr @__kstrtabns_kill_pgrp }, section "___ksymtab+kill_pgrp", align 4
@__kstrtab_kill_pid = external dso_local constant [0 x i8], align 1
@__kstrtabns_kill_pid = external dso_local constant [0 x i8], align 1
@__ksymtab_kill_pid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kill_pid to i32), ptr @__kstrtab_kill_pid, ptr @__kstrtabns_kill_pid }, section "___ksymtab+kill_pid", align 4
@print_fatal_signals = dso_local global i32 0, section ".data..read_mostly", align 4
@__kstrtab_sigprocmask = external dso_local constant [0 x i8], align 1
@__kstrtabns_sigprocmask = external dso_local constant [0 x i8], align 1
@__ksymtab_sigprocmask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sigprocmask to i32), ptr @__kstrtab_sigprocmask, ptr @__kstrtabns_sigprocmask }, section "___ksymtab+sigprocmask", align 4
@sig_sicodes = internal unnamed_addr constant [32 x %struct.anon.100] [%struct.anon.100 zeroinitializer, %struct.anon.100 zeroinitializer, %struct.anon.100 zeroinitializer, %struct.anon.100 zeroinitializer, %struct.anon.100 { i8 11, i8 3 }, %struct.anon.100 { i8 6, i8 3 }, %struct.anon.100 zeroinitializer, %struct.anon.100 { i8 5, i8 3 }, %struct.anon.100 { i8 15, i8 3 }, %struct.anon.100 zeroinitializer, %struct.anon.100 zeroinitializer, %struct.anon.100 { i8 9, i8 3 }, %struct.anon.100 zeroinitializer, %struct.anon.100 zeroinitializer, %struct.anon.100 zeroinitializer, %struct.anon.100 zeroinitializer, %struct.anon.100 zeroinitializer, %struct.anon.100 { i8 6, i8 9 }, %struct.anon.100 zeroinitializer, %struct.anon.100 zeroinitializer, %struct.anon.100 zeroinitializer, %struct.anon.100 zeroinitializer, %struct.anon.100 zeroinitializer, %struct.anon.100 zeroinitializer, %struct.anon.100 zeroinitializer, %struct.anon.100 zeroinitializer, %struct.anon.100 zeroinitializer, %struct.anon.100 zeroinitializer, %struct.anon.100 zeroinitializer, %struct.anon.100 { i8 6, i8 2 }, %struct.anon.100 zeroinitializer, %struct.anon.100 { i8 2, i8 11 }], align 1
@__kstrtab_kernel_sigaction = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_sigaction = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_sigaction = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_sigaction to i32), ptr @__kstrtab_kernel_sigaction, ptr @__kstrtabns_kernel_sigaction }, section "___ksymtab+kernel_sigaction", align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"sigqueue\00", align 1
@sigqueue_cachep = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"sig\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"errno\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"char[TASK_COMM_LEN]\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"comm\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"pid_t\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"sig=%d errno=%d code=%d comm=%s pid=%d grp=%d res=%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"sa_handler\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"sa_flags\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"sig=%d errno=%d code=%d sa_handler=%lx sa_flags=%lx\0A\00", align 1
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@print_dropped_signal.ratelimit_state = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.print_dropped_signal = private unnamed_addr constant [21 x i8] c"print_dropped_signal\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"\016%s/%d: reached RLIMIT_SIGPENDING, dropped signal %d\0A\00", align 1
@ptrace_trap_notify.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"include/linux/sched/signal.h\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@do_signal_stop.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@do_jobctl_trap.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@do_jobctl_trap.__already_done.20 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"\016potentially unexpected fatal signal %d.\0A\00", align 1
@cgroup_threadgroup_rwsem = external dso_local global %struct.percpu_rw_semaphore, align 4
@task_participate_group_stop.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@task_participate_group_stop.__already_done.22 = internal unnamed_addr global i1 false, section ".data.once", align 1
@init_task = external dso_local global %struct.task_struct, align 64
@llvm.compiler.used = appending global [23 x ptr] [ptr @__event_signal_deliver, ptr @__event_signal_generate, ptr @__ksymtab_dequeue_signal, ptr @__ksymtab_flush_signals, ptr @__ksymtab_force_sig, ptr @__ksymtab_kernel_sigaction, ptr @__ksymtab_kill_pgrp, ptr @__ksymtab_kill_pid, ptr @__ksymtab_kill_pid_usb_asyncio, ptr @__ksymtab_recalc_sigpending, ptr @__ksymtab_send_sig, ptr @__ksymtab_send_sig_info, ptr @__ksymtab_send_sig_mceerr, ptr @__ksymtab_sigprocmask, ptr @__setup_setup_print_fatal_signals, ptr @__tracepoint_ptr_signal_deliver, ptr @__tracepoint_ptr_signal_generate, ptr @__tracepoint_signal_deliver, ptr @__tracepoint_signal_generate, ptr @event_class_signal_deliver, ptr @event_class_signal_generate, ptr @event_signal_deliver, ptr @event_signal_generate], section "llvm.metadata"

@sys_rt_sigprocmask = dso_local alias i32 (i32, ptr, ptr, i32), ptr @__se_sys_rt_sigprocmask
@sys_rt_sigpending = dso_local alias i32 (ptr, i32), ptr @__se_sys_rt_sigpending
@sys_rt_sigtimedwait = dso_local alias i32 (ptr, ptr, ptr, i32), ptr @__se_sys_rt_sigtimedwait
@sys_rt_sigtimedwait_time32 = dso_local alias i32 (ptr, ptr, ptr, i32), ptr @__se_sys_rt_sigtimedwait_time32
@sys_kill = dso_local alias i32 (i32, i32), ptr @__se_sys_kill
@sys_pidfd_send_signal = dso_local alias i32 (i32, i32, ptr, i32), ptr @__se_sys_pidfd_send_signal
@sys_tgkill = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_tgkill
@sys_tkill = dso_local alias i32 (i32, i32), ptr @__se_sys_tkill
@sys_rt_sigqueueinfo = dso_local alias i32 (i32, i32, ptr), ptr @__se_sys_rt_sigqueueinfo
@sys_rt_tgsigqueueinfo = dso_local alias i32 (i32, i32, i32, ptr), ptr @__se_sys_rt_tgsigqueueinfo
@sys_sigaltstack = dso_local alias i32 (ptr, ptr), ptr @__se_sys_sigaltstack
@sys_sigpending = dso_local alias i32 (ptr), ptr @__se_sys_sigpending
@sys_sigprocmask = dso_local alias i32 (i32, ptr, ptr), ptr @__se_sys_sigprocmask
@sys_rt_sigaction = dso_local alias i32 (i32, ptr, ptr, i32), ptr @__se_sys_rt_sigaction
@sys_sigaction = dso_local alias i32 (i32, ptr, ptr), ptr @__se_sys_sigaction
@sys_rt_sigsuspend = dso_local alias i32 (ptr, i32), ptr @__se_sys_rt_sigsuspend
@sys_sigsuspend = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_sigsuspend

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_signal_generate(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_signal_generate, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #16
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_signal_deliver(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_signal_deliver, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, ptr noundef %2, ptr noundef %3) #16
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_signal_generate(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 704
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12, !prof !10

12:                                               ; preds = %6
  %13 = and i32 %9, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17, !prof !11

15:                                               ; preds = %12
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %16, label %43, label %17

17:                                               ; preds = %15, %12, %6
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 48) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %43, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.trace_event_raw_signal_generate, ptr %18, i32 0, i32 1
  store i32 %1, ptr %21, align 4
  %22 = ptrtoint ptr %2 to i32
  switch i32 %22, label %27 [
    i32 0, label %23
    i32 1, label %25
  ]

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.trace_event_raw_signal_generate, ptr %18, i32 0, i32 2
  store i32 0, ptr %24, align 4
  br label %33

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.trace_event_raw_signal_generate, ptr %18, i32 0, i32 2
  store i32 0, ptr %26, align 4
  br label %33

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_signal_generate, ptr %18, i32 0, i32 2
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  br label %33

33:                                               ; preds = %27, %25, %23
  %34 = phi i32 [ 128, %25 ], [ %32, %27 ], [ 0, %23 ]
  %35 = getelementptr inbounds %struct.trace_event_raw_signal_generate, ptr %18, i32 0, i32 3
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_signal_generate, ptr %18, i32 0, i32 4
  %37 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %36, ptr noundef align 32 dereferenceable(16) %37, i32 16, i1 false)
  %38 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 52
  %39 = load i32, ptr %38, align 8
  %40 = getelementptr inbounds %struct.trace_event_raw_signal_generate, ptr %18, i32 0, i32 5
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_signal_generate, ptr %18, i32 0, i32 6
  store i32 %4, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_signal_generate, ptr %18, i32 0, i32 7
  store i32 %5, ptr %42, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #16
  br label %43

43:                                               ; preds = %33, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_signal_generate(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #11, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %61, label %23

23:                                               ; preds = %20, %6
  %24 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  %25 = icmp eq ptr %24, null
  br i1 %25, label %61, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 4
  %28 = call ptr @llvm.returnaddress(i32 0) #16
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %27, i32 0, i32 15
  store i32 %29, ptr %30, align 4
  %31 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %27, i32 0, i32 11
  store i32 %32, ptr %33, align 4
  %34 = call i32 @llvm.read_register.i32(metadata !0) #16
  %35 = getelementptr [18 x i32], ptr %27, i32 0, i32 13
  store i32 %34, ptr %35, align 4
  %36 = getelementptr [18 x i32], ptr %27, i32 0, i32 16
  store i32 19, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_signal_generate, ptr %24, i32 0, i32 1
  store i32 %1, ptr %37, align 4
  %38 = ptrtoint ptr %2 to i32
  switch i32 %38, label %43 [
    i32 0, label %39
    i32 1, label %41
  ]

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.trace_event_raw_signal_generate, ptr %24, i32 0, i32 2
  store i32 0, ptr %40, align 4
  br label %49

41:                                               ; preds = %26
  %42 = getelementptr inbounds %struct.trace_event_raw_signal_generate, ptr %24, i32 0, i32 2
  store i32 0, ptr %42, align 4
  br label %49

43:                                               ; preds = %26
  %44 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_signal_generate, ptr %24, i32 0, i32 2
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  br label %49

49:                                               ; preds = %43, %41, %39
  %50 = phi i32 [ 128, %41 ], [ %48, %43 ], [ 0, %39 ]
  %51 = getelementptr inbounds %struct.trace_event_raw_signal_generate, ptr %24, i32 0, i32 3
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.trace_event_raw_signal_generate, ptr %24, i32 0, i32 4
  %53 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %52, ptr noundef align 32 dereferenceable(16) %53, i32 16, i1 false)
  %54 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 52
  %55 = load i32, ptr %54, align 8
  %56 = getelementptr inbounds %struct.trace_event_raw_signal_generate, ptr %24, i32 0, i32 5
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.trace_event_raw_signal_generate, ptr %24, i32 0, i32 6
  store i32 %4, ptr %57, align 4
  %58 = getelementptr inbounds %struct.trace_event_raw_signal_generate, ptr %24, i32 0, i32 7
  store i32 %5, ptr %58, align 4
  %59 = load i32, ptr %8, align 4
  %60 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %24, i32 noundef 52, i32 noundef %59, ptr noundef %0, i64 noundef 1, ptr noundef %60, ptr noundef %16, ptr noundef null) #16
  br label %61

61:                                               ; preds = %49, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_signal_deliver(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
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
  br i1 %14, label %40, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 28) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_signal_deliver, ptr %16, i32 0, i32 1
  store i32 %1, ptr %19, align 4
  %20 = ptrtoint ptr %2 to i32
  switch i32 %20, label %25 [
    i32 0, label %21
    i32 1, label %23
  ]

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.trace_event_raw_signal_deliver, ptr %16, i32 0, i32 2
  store i32 0, ptr %22, align 4
  br label %31

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.trace_event_raw_signal_deliver, ptr %16, i32 0, i32 2
  store i32 0, ptr %24, align 4
  br label %31

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_signal_deliver, ptr %16, i32 0, i32 2
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  br label %31

31:                                               ; preds = %25, %23, %21
  %32 = phi i32 [ 128, %23 ], [ %30, %25 ], [ 0, %21 ]
  %33 = getelementptr inbounds %struct.trace_event_raw_signal_deliver, ptr %16, i32 0, i32 3
  store i32 %32, ptr %33, align 4
  %34 = load ptr, ptr %3, align 4
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr inbounds %struct.trace_event_raw_signal_deliver, ptr %16, i32 0, i32 4
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.sigaction, ptr %3, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_signal_deliver, ptr %16, i32 0, i32 5
  store i32 %38, ptr %39, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #16
  br label %40

40:                                               ; preds = %31, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_signal_deliver(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
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
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #11, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %58, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %58, label %24

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
  %35 = getelementptr inbounds %struct.trace_event_raw_signal_deliver, ptr %22, i32 0, i32 1
  store i32 %1, ptr %35, align 4
  %36 = ptrtoint ptr %2 to i32
  switch i32 %36, label %41 [
    i32 0, label %37
    i32 1, label %39
  ]

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.trace_event_raw_signal_deliver, ptr %22, i32 0, i32 2
  store i32 0, ptr %38, align 4
  br label %47

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.trace_event_raw_signal_deliver, ptr %22, i32 0, i32 2
  store i32 0, ptr %40, align 4
  br label %47

41:                                               ; preds = %24
  %42 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_signal_deliver, ptr %22, i32 0, i32 2
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  br label %47

47:                                               ; preds = %41, %39, %37
  %48 = phi i32 [ 128, %39 ], [ %46, %41 ], [ 0, %37 ]
  %49 = getelementptr inbounds %struct.trace_event_raw_signal_deliver, ptr %22, i32 0, i32 3
  store i32 %48, ptr %49, align 4
  %50 = load ptr, ptr %3, align 4
  %51 = ptrtoint ptr %50 to i32
  %52 = getelementptr inbounds %struct.trace_event_raw_signal_deliver, ptr %22, i32 0, i32 4
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.sigaction, ptr %3, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.trace_event_raw_signal_deliver, ptr %22, i32 0, i32 5
  store i32 %54, ptr %55, align 4
  %56 = load i32, ptr %6, align 4
  %57 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 28, i32 noundef %56, ptr noundef %0, i64 noundef 1, ptr noundef %57, ptr noundef %14, ptr noundef null) #16
  br label %58

58:                                               ; preds = %47, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @recalc_sigpending_and_wake(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 45
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 10092544
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %37

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 98, i32 1
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 95
  %9 = getelementptr %struct.task_struct, ptr %0, i32 0, i32 98, i32 1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr %struct.task_struct, ptr %0, i32 0, i32 95, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %10, %13
  %15 = load i32, ptr %7, align 4
  %16 = load i32, ptr %8, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = or i32 %18, %14
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %23 = load ptr, ptr %22, align 16
  %24 = getelementptr inbounds %struct.signal_struct, ptr %23, i32 0, i32 6, i32 1
  %25 = getelementptr %struct.signal_struct, ptr %23, i32 0, i32 6, i32 1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, %13
  %28 = load i32, ptr %24, align 4
  %29 = and i32 %28, %17
  %30 = or i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 49
  %34 = load i8, ptr %33, align 8
  %35 = and i8 %34, 32
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32, %21, %6, %1
  tail call void @_set_bit(i32 noundef 0, ptr noundef %0) #16
  tail call void @_set_bit(i32 noundef 0, ptr noundef %0) #16
  %38 = tail call i32 @wake_up_state(ptr noundef %0, i32 noundef 1) #16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  tail call void @kick_process(ptr noundef %0) #16
  br label %41

41:                                               ; preds = %40, %37, %32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @recalc_sigpending() #0 {
  %1 = tail call ptr @llvm.thread.pointer() #16
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 45
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 10092544
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %37

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 98, i32 1
  %8 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 95
  %9 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 98, i32 1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr %struct.task_struct, ptr %1, i32 0, i32 95, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %10, %13
  %15 = load i32, ptr %7, align 4
  %16 = load i32, ptr %8, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = or i32 %18, %14
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 93
  %23 = load ptr, ptr %22, align 16
  %24 = getelementptr inbounds %struct.signal_struct, ptr %23, i32 0, i32 6, i32 1
  %25 = getelementptr %struct.signal_struct, ptr %23, i32 0, i32 6, i32 1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, %13
  %28 = load i32, ptr %24, align 4
  %29 = and i32 %28, %17
  %30 = or i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 49
  %34 = load i8, ptr %33, align 8
  %35 = and i8 %34, 32
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32, %21, %6, %0
  tail call void @_set_bit(i32 noundef 0, ptr noundef %1) #16
  br label %44

38:                                               ; preds = %32
  %39 = load volatile i32, ptr @system_freezing_cnt, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41, !prof !10

41:                                               ; preds = %38
  %42 = tail call zeroext i1 @freezing_slow_path(ptr noundef %1) #16
  br i1 %42, label %44, label %43

43:                                               ; preds = %41, %38
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %1) #16
  br label %44

44:                                               ; preds = %43, %41, %37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @calculate_sigpending() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #16
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 94
  %3 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #16
  tail call void @_set_bit(i32 noundef 0, ptr noundef %1) #16
  tail call void @recalc_sigpending()
  %4 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %5 = load i16, ptr %4, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @next_signal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.sigpending, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = load i32, ptr %1, align 4
  %6 = xor i32 %5, -1
  %7 = and i32 %4, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = and i32 %7, 1073743064
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 %7, i32 %10
  %13 = tail call i32 @llvm.cttz.i32(i32 %12, i1 false) #16, !range !18
  %14 = add nuw nsw i32 %13, 1
  br label %26

15:                                               ; preds = %2
  %16 = getelementptr %struct.sigpending, ptr %0, i32 0, i32 1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i32, ptr %1, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %17, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = tail call i32 @llvm.cttz.i32(i32 %21, i1 true) #16, !range !18
  %25 = add nuw nsw i32 %24, 33
  br label %26

26:                                               ; preds = %23, %15, %9
  %27 = phi i32 [ %14, %9 ], [ %25, %23 ], [ 0, %15 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @task_set_jobctl_pending(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, -4128768
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !10

5:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/signal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 287, 0\0A.popsection", ""() #16, !srcloc !19
  unreachable

6:                                                ; preds = %2
  %7 = and i32 %1, 3801088
  %8 = icmp eq i32 %7, 2097152
  br i1 %8, label %9, label %10, !prof !11

9:                                                ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/signal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 288, 0\0A.popsection", ""() #16, !srcloc !20
  unreachable

10:                                               ; preds = %6
  %11 = load volatile i32, ptr %0, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 98, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 256
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %33, !prof !10

19:                                               ; preds = %14, %10
  %20 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33, !prof !10

24:                                               ; preds = %19
  %25 = and i32 %1, 65535
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 45
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, -65536
  %30 = select i1 %26, i32 %28, i32 %29
  %31 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 45
  %32 = or i32 %30, %1
  store i32 %32, ptr %31, align 4
  br label %33

33:                                               ; preds = %24, %19, %14
  %34 = phi i1 [ false, %19 ], [ true, %24 ], [ false, %14 ]
  ret i1 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @task_clear_jobctl_trapping(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 45
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 2097152
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !10

6:                                                ; preds = %1
  %7 = and i32 %3, -2097153
  store i32 %7, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  tail call void @wake_up_bit(ptr noundef %2, i32 noundef 21) #16
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @task_clear_jobctl_pending(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %1, -1703937
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !10

5:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/signal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 338, 0\0A.popsection", ""() #16, !srcloc !22
  unreachable

6:                                                ; preds = %2
  %7 = and i32 %1, 131072
  %8 = icmp eq i32 %7, 0
  %9 = or i32 %1, 327680
  %10 = select i1 %8, i32 %1, i32 %9
  %11 = xor i32 %10, -1
  %12 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 45
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, %11
  store i32 %14, ptr %12, align 4
  %15 = and i32 %14, 3801088
  %16 = icmp eq i32 %15, 2097152
  br i1 %16, label %17, label %19, !prof !23

17:                                               ; preds = %6
  %18 = and i32 %14, -2097153
  store i32 %18, ptr %12, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  tail call void @wake_up_bit(ptr noundef %12, i32 noundef 21) #16
  br label %19

19:                                               ; preds = %17, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @task_join_group_stop(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #16
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 45
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 65535
  %6 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 93
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = add i32 %9, 1
  store i32 %12, ptr %8, align 4
  %13 = or i32 %5, 262144
  br label %19

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 12
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %42, label %19

19:                                               ; preds = %14, %11
  %20 = phi i32 [ %13, %11 ], [ %5, %14 ]
  %21 = load volatile i32, ptr %0, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 98, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 256
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %42, !prof !10

29:                                               ; preds = %24, %19
  %30 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42, !prof !10

34:                                               ; preds = %29
  %35 = icmp eq i32 %5, 0
  %36 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 45
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, -196608
  %39 = select i1 %35, i32 %37, i32 %38
  %40 = or i32 %20, %39
  %41 = or i32 %40, 131072
  store i32 %41, ptr %36, align 4
  br label %42

42:                                               ; preds = %34, %29, %24, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flush_sigqueue(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sigpending, ptr %0, i32 0, i32 1
  %3 = getelementptr %struct.sigpending, ptr %0, i32 0, i32 1, i32 0, i32 1
  store i32 0, ptr %3, align 4
  store i32 0, ptr %2, align 4
  %4 = load volatile ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %26, label %6

6:                                                ; preds = %23, %1
  %7 = phi ptr [ %24, %23 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %8, align 4
  %12 = getelementptr inbounds %struct.sigqueue, ptr %7, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.sigqueue, ptr %7, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @dec_rlimit_put_ucounts(ptr noundef nonnull %18, i32 noundef 12) #16
  store ptr null, ptr %17, align 4
  br label %21

21:                                               ; preds = %20, %16
  %22 = load ptr, ptr @sigqueue_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %22, ptr noundef %7) #16
  br label %23

23:                                               ; preds = %21, %6
  %24 = load volatile ptr, ptr %0, align 4
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %6

26:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flush_signals(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #16
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %0) #16
  %5 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 98
  %6 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 98, i32 1
  %7 = getelementptr %struct.task_struct, ptr %0, i32 0, i32 98, i32 1, i32 0, i32 1
  store i32 0, ptr %7, align 4
  store i32 0, ptr %6, align 4
  %8 = load volatile ptr, ptr %5, align 4
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %30, label %10

10:                                               ; preds = %27, %1
  %11 = phi ptr [ %28, %27 ], [ %8, %1 ]
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  store volatile ptr %11, ptr %11, align 4
  store ptr %11, ptr %12, align 4
  %16 = getelementptr inbounds %struct.sigqueue, ptr %11, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.sigqueue, ptr %11, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @dec_rlimit_put_ucounts(ptr noundef nonnull %22, i32 noundef 12) #16
  store ptr null, ptr %21, align 4
  br label %25

25:                                               ; preds = %24, %20
  %26 = load ptr, ptr @sigqueue_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %26, ptr noundef %11) #16
  br label %27

27:                                               ; preds = %25, %10
  %28 = load volatile ptr, ptr %5, align 4
  %29 = icmp eq ptr %28, %5
  br i1 %29, label %30, label %10

30:                                               ; preds = %27, %1
  %31 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %32 = load ptr, ptr %31, align 16
  %33 = getelementptr inbounds %struct.signal_struct, ptr %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.signal_struct, ptr %32, i32 0, i32 6, i32 1
  %35 = getelementptr %struct.signal_struct, ptr %32, i32 0, i32 6, i32 1, i32 0, i32 1
  store i32 0, ptr %35, align 4
  store i32 0, ptr %34, align 4
  %36 = load volatile ptr, ptr %33, align 4
  %37 = icmp eq ptr %36, %33
  br i1 %37, label %58, label %38

38:                                               ; preds = %55, %30
  %39 = phi ptr [ %56, %55 ], [ %36, %30 ]
  %40 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %39, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  store ptr %41, ptr %43, align 4
  store volatile ptr %42, ptr %41, align 4
  store volatile ptr %39, ptr %39, align 4
  store ptr %39, ptr %40, align 4
  %44 = getelementptr inbounds %struct.sigqueue, ptr %39, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.sigqueue, ptr %39, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void @dec_rlimit_put_ucounts(ptr noundef nonnull %50, i32 noundef 12) #16
  store ptr null, ptr %49, align 4
  br label %53

53:                                               ; preds = %52, %48
  %54 = load ptr, ptr @sigqueue_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %54, ptr noundef %39) #16
  br label %55

55:                                               ; preds = %53, %38
  %56 = load volatile ptr, ptr %33, align 4
  %57 = icmp eq ptr %56, %33
  br i1 %57, label %58, label %38

58:                                               ; preds = %55, %30
  %59 = load ptr, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %59, i32 noundef %4) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flush_itimer_signals() local_unnamed_addr #0 {
  %1 = alloca %struct.sigset_t, align 8
  %2 = alloca %struct.sigset_t, align 8
  %3 = alloca %struct.sigset_t, align 8
  %4 = alloca %struct.sigset_t, align 8
  %5 = tail call ptr @llvm.thread.pointer() #16
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 94
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #16
  %9 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 98
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store i64 0, ptr %4, align 8, !annotation !9
  %10 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 98, i32 1
  %11 = load i64, ptr %10, align 4
  store i64 %11, ptr %3, align 8
  %12 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %9, align 4
  %14 = icmp eq ptr %13, %9
  %15 = lshr i64 %11, 32
  %16 = trunc i64 %15 to i32
  %17 = trunc i64 %11 to i32
  br i1 %14, label %62, label %18

18:                                               ; preds = %54, %0
  %19 = phi ptr [ %20, %54 ], [ %13, %0 ]
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.sigqueue, ptr %19, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.sigqueue, ptr %19, i32 0, i32 2, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, -2
  %26 = add i32 %22, -1
  %27 = and i32 %26, 31
  %28 = shl nuw i32 1, %27
  br i1 %25, label %34, label %29, !prof !11

29:                                               ; preds = %18
  %30 = lshr i32 %26, 5
  %31 = getelementptr [2 x i32], ptr %4, i32 0, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %32, %28
  store i32 %33, ptr %31, align 4
  br label %54

34:                                               ; preds = %18
  %35 = xor i32 %28, -1
  %36 = lshr i32 %26, 5
  %37 = getelementptr [2 x i32], ptr %3, i32 0, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, ptr %37, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %41, ptr %42, align 4
  store volatile ptr %20, ptr %41, align 4
  store volatile ptr %19, ptr %19, align 4
  store ptr %19, ptr %40, align 4
  %43 = getelementptr inbounds %struct.sigqueue, ptr %19, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.sigqueue, ptr %19, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  tail call void @dec_rlimit_put_ucounts(ptr noundef nonnull %49, i32 noundef 12) #16
  store ptr null, ptr %48, align 4
  br label %52

52:                                               ; preds = %51, %47
  %53 = load ptr, ptr @sigqueue_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %53, ptr noundef %19) #16
  br label %54

54:                                               ; preds = %52, %34, %29
  %55 = icmp eq ptr %20, %9
  br i1 %55, label %56, label %18

56:                                               ; preds = %54
  %57 = getelementptr inbounds [2 x i32], ptr %3, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = load i32, ptr %12, align 4
  %60 = load i32, ptr %3, align 8
  %61 = load i32, ptr %4, align 8
  br label %62

62:                                               ; preds = %56, %0
  %63 = phi i32 [ %61, %56 ], [ 0, %0 ]
  %64 = phi i32 [ %60, %56 ], [ %17, %0 ]
  %65 = phi i32 [ %59, %56 ], [ 0, %0 ]
  %66 = phi i32 [ %58, %56 ], [ %16, %0 ]
  %67 = or i32 %66, %65
  %68 = getelementptr %struct.task_struct, ptr %5, i32 0, i32 98, i32 1, i32 0, i32 1
  store i32 %67, ptr %68, align 4
  %69 = or i32 %64, %63
  store i32 %69, ptr %10, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  %70 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 93
  %71 = load ptr, ptr %70, align 16
  %72 = getelementptr inbounds %struct.signal_struct, ptr %71, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  store i64 0, ptr %2, align 8, !annotation !9
  %73 = getelementptr inbounds %struct.signal_struct, ptr %71, i32 0, i32 6, i32 1
  %74 = load i64, ptr %73, align 4
  store i64 %74, ptr %1, align 8
  %75 = getelementptr inbounds [2 x i32], ptr %2, i32 0, i32 1
  %76 = load ptr, ptr %72, align 4
  %77 = icmp eq ptr %76, %72
  %78 = lshr i64 %74, 32
  %79 = trunc i64 %78 to i32
  %80 = trunc i64 %74 to i32
  br i1 %77, label %125, label %81

81:                                               ; preds = %117, %62
  %82 = phi ptr [ %83, %117 ], [ %76, %62 ]
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.sigqueue, ptr %82, i32 0, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.sigqueue, ptr %82, i32 0, i32 2, i32 0, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, -2
  %89 = add i32 %85, -1
  %90 = and i32 %89, 31
  %91 = shl nuw i32 1, %90
  br i1 %88, label %97, label %92, !prof !11

92:                                               ; preds = %81
  %93 = lshr i32 %89, 5
  %94 = getelementptr [2 x i32], ptr %2, i32 0, i32 %93
  %95 = load i32, ptr %94, align 4
  %96 = or i32 %95, %91
  store i32 %96, ptr %94, align 4
  br label %117

97:                                               ; preds = %81
  %98 = xor i32 %91, -1
  %99 = lshr i32 %89, 5
  %100 = getelementptr [2 x i32], ptr %1, i32 0, i32 %99
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, %98
  store i32 %102, ptr %100, align 4
  %103 = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  store ptr %104, ptr %105, align 4
  store volatile ptr %83, ptr %104, align 4
  store volatile ptr %82, ptr %82, align 4
  store ptr %82, ptr %103, align 4
  %106 = getelementptr inbounds %struct.sigqueue, ptr %82, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %97
  %111 = getelementptr inbounds %struct.sigqueue, ptr %82, i32 0, i32 3
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  tail call void @dec_rlimit_put_ucounts(ptr noundef nonnull %112, i32 noundef 12) #16
  store ptr null, ptr %111, align 4
  br label %115

115:                                              ; preds = %114, %110
  %116 = load ptr, ptr @sigqueue_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %116, ptr noundef %82) #16
  br label %117

117:                                              ; preds = %115, %97, %92
  %118 = icmp eq ptr %83, %72
  br i1 %118, label %119, label %81

119:                                              ; preds = %117
  %120 = getelementptr inbounds [2 x i32], ptr %1, i32 0, i32 1
  %121 = load i32, ptr %120, align 4
  %122 = load i32, ptr %75, align 4
  %123 = load i32, ptr %1, align 8
  %124 = load i32, ptr %2, align 8
  br label %125

125:                                              ; preds = %119, %62
  %126 = phi i32 [ %124, %119 ], [ 0, %62 ]
  %127 = phi i32 [ %123, %119 ], [ %80, %62 ]
  %128 = phi i32 [ %122, %119 ], [ 0, %62 ]
  %129 = phi i32 [ %121, %119 ], [ %79, %62 ]
  %130 = or i32 %129, %128
  %131 = getelementptr %struct.signal_struct, ptr %71, i32 0, i32 6, i32 1, i32 0, i32 1
  store i32 %130, ptr %131, align 4
  %132 = or i32 %127, %126
  store i32 %132, ptr %73, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #16
  %133 = load ptr, ptr %6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %133, i32 noundef %8) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ignore_signals(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i32 [ 0, %1 ], [ %7, %3 ]
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr %struct.sighand_struct, ptr %5, i32 0, i32 3, i32 %4
  store ptr inttoptr (i32 1 to ptr), ptr %6, align 4
  %7 = add nuw nsw i32 %4, 1
  %8 = icmp eq i32 %7, 64
  br i1 %8, label %9, label %3

9:                                                ; preds = %3
  tail call void @flush_signals(ptr noundef %0)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flush_signal_handlers(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sighand_struct, ptr %4, i32 0, i32 3
  %6 = icmp eq i32 %1, 0
  br label %7

7:                                                ; preds = %14, %2
  %8 = phi ptr [ %5, %2 ], [ %16, %14 ]
  %9 = phi i32 [ 64, %2 ], [ %17, %14 ]
  br i1 %6, label %10, label %13

10:                                               ; preds = %7
  %11 = load ptr, ptr %8, align 4
  %12 = icmp eq ptr %11, inttoptr (i32 1 to ptr)
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %7
  store ptr null, ptr %8, align 4
  br label %14

14:                                               ; preds = %13, %10
  %15 = getelementptr inbounds %struct.sigaction, ptr %8, i32 0, i32 1
  %16 = getelementptr %struct.k_sigaction, ptr %8, i32 1
  %17 = add nsw i32 %9, -1
  %18 = icmp eq i32 %17, 0
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  br i1 %18, label %19, label %7

19:                                               ; preds = %14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @unhandled_signal(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 53
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %8 = load ptr, ptr %7, align 4
  %9 = add i32 %1, -1
  %10 = getelementptr %struct.sighand_struct, ptr %8, i32 0, i32 3, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp ult ptr %11, inttoptr (i32 2 to ptr)
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 0
  br label %17

17:                                               ; preds = %13, %6, %2
  %18 = phi i1 [ %16, %13 ], [ true, %2 ], [ false, %6 ]
  ret i1 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dequeue_signal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  store i8 0, ptr %5, align 1
  store i32 0, ptr %3, align 4
  %6 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 98
  %7 = call fastcc i32 @__dequeue_signal(ptr noundef %6, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %4
  store i32 1, ptr %3, align 4
  %10 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %11 = load ptr, ptr %10, align 16
  %12 = getelementptr inbounds %struct.signal_struct, ptr %11, i32 0, i32 6
  %13 = call fastcc i32 @__dequeue_signal(ptr noundef %12, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5)
  %14 = icmp eq i32 %13, 14
  br i1 %14, label %15, label %43, !prof !11

15:                                               ; preds = %9
  %16 = load ptr, ptr %10, align 16
  %17 = getelementptr inbounds %struct.signal_struct, ptr %16, i32 0, i32 17
  %18 = getelementptr inbounds %struct.signal_struct, ptr %16, i32 0, i32 17, i32 4
  %19 = load volatile i8, ptr %18, align 8
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.signal_struct, ptr %16, i32 0, i32 18
  %24 = load i64, ptr %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.signal_struct, ptr %16, i32 0, i32 17, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %28, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i64 %30() #16
  %32 = load ptr, ptr %10, align 16
  %33 = getelementptr inbounds %struct.signal_struct, ptr %32, i32 0, i32 18
  %34 = load i64, ptr %33, align 8
  %35 = tail call i64 @hrtimer_forward(ptr noundef %17, i64 noundef %31, i64 noundef %34) #16
  %36 = getelementptr inbounds %struct.signal_struct, ptr %16, i32 0, i32 17, i32 1
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds %struct.signal_struct, ptr %16, i32 0, i32 17, i32 0, i32 1
  %39 = load i64, ptr %38, align 8
  %40 = sub i64 %39, %37
  tail call void @hrtimer_start_range_ns(ptr noundef %17, i64 noundef %37, i64 noundef %40, i32 noundef 0) #16
  br label %41

41:                                               ; preds = %26, %22, %15, %4
  %42 = phi i32 [ 14, %15 ], [ 14, %22 ], [ 14, %26 ], [ %7, %4 ]
  tail call void @recalc_sigpending()
  br label %45

43:                                               ; preds = %9
  tail call void @recalc_sigpending()
  %44 = icmp eq i32 %13, 0
  br i1 %44, label %68, label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %13, %43 ]
  %47 = add i32 %46, -1
  %48 = icmp ult i32 %47, 31
  %49 = shl nuw i32 1, %47
  %50 = and i32 %49, 3932160
  %51 = icmp ne i32 %50, 0
  %52 = select i1 %48, i1 %51, i1 false
  br i1 %52, label %53, label %58, !prof !11

53:                                               ; preds = %45
  %54 = tail call ptr @llvm.thread.pointer() #16
  %55 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 45
  %56 = load i32, ptr %55, align 4
  %57 = or i32 %56, 65536
  store i32 %57, ptr %55, align 4
  br label %58

58:                                               ; preds = %53, %45
  %59 = load i8, ptr %5, align 1, !range !24
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %63 = load ptr, ptr %62, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %64 = load i16, ptr %63, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr %63, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  tail call void @posixtimer_rearm(ptr noundef %2) #16
  %66 = load ptr, ptr %62, align 4
  tail call void @_raw_spin_lock(ptr noundef %66) #16
  %67 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 3, i32 0, i32 3
  store i32 0, ptr %67, align 4
  br label %68

68:                                               ; preds = %61, %58, %43
  %69 = phi i32 [ 0, %43 ], [ %46, %61 ], [ %46, %58 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__dequeue_signal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.sigpending, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %1, align 4
  %8 = xor i32 %7, -1
  %9 = and i32 %6, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %4
  %12 = and i32 %9, 1073743064
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 %9, i32 %12
  %15 = tail call i32 @llvm.cttz.i32(i32 %14, i1 false) #16, !range !18
  %16 = add nuw nsw i32 %15, 1
  br label %28

17:                                               ; preds = %4
  %18 = getelementptr %struct.sigpending, ptr %0, i32 0, i32 1, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i32, ptr %1, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %19, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %90, label %25

25:                                               ; preds = %17
  %26 = tail call i32 @llvm.cttz.i32(i32 %23, i1 true) #16, !range !18
  %27 = add nuw nsw i32 %26, 33
  br label %28

28:                                               ; preds = %25, %11
  %29 = phi i32 [ %27, %25 ], [ %16, %11 ]
  %30 = load ptr, ptr %0, align 4
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %44, label %32

32:                                               ; preds = %40, %28
  %33 = phi ptr [ %42, %40 ], [ %30, %28 ]
  %34 = phi ptr [ %41, %40 ], [ null, %28 ]
  %35 = getelementptr inbounds %struct.sigqueue, ptr %33, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, %29
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = icmp eq ptr %34, null
  br i1 %39, label %40, label %55

40:                                               ; preds = %38, %32
  %41 = phi ptr [ %34, %32 ], [ %33, %38 ]
  %42 = load ptr, ptr %33, align 4
  %43 = icmp eq ptr %42, %0
  br i1 %43, label %44, label %32

44:                                               ; preds = %40, %28
  %45 = phi ptr [ null, %28 ], [ %41, %40 ]
  %46 = add nsw i32 %29, -1
  %47 = and i32 %46, 31
  %48 = shl nuw i32 1, %47
  %49 = xor i32 %48, -1
  %50 = lshr i32 %46, 5
  %51 = getelementptr [2 x i32], ptr %5, i32 0, i32 %50
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, ptr %51, align 4
  %54 = icmp eq ptr %45, null
  br i1 %54, label %87, label %55

55:                                               ; preds = %44, %38
  %56 = phi ptr [ %45, %44 ], [ %34, %38 ]
  %57 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = load ptr, ptr %56, align 4
  %60 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  store ptr %58, ptr %60, align 4
  store volatile ptr %59, ptr %58, align 4
  store volatile ptr %56, ptr %56, align 4
  store ptr %56, ptr %57, align 4
  %61 = getelementptr inbounds %struct.sigqueue, ptr %56, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %2, ptr noundef align 4 dereferenceable(32) %61, i32 32, i1 false) #16
  %62 = getelementptr inbounds %struct.sigqueue, ptr %56, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %55
  %67 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, -2
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 3, i32 0, i32 3
  %72 = load i32, ptr %71, align 4
  %73 = icmp ne i32 %72, 0
  br label %74

74:                                               ; preds = %70, %66, %55
  %75 = phi i1 [ false, %66 ], [ false, %55 ], [ %73, %70 ]
  %76 = zext i1 %75 to i8
  store i8 %76, ptr %3, align 1
  %77 = load i32, ptr %62, align 4
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.sigqueue, ptr %56, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  tail call void @dec_rlimit_put_ucounts(ptr noundef nonnull %82, i32 noundef 12) #16
  store ptr null, ptr %81, align 4
  br label %85

85:                                               ; preds = %84, %80
  %86 = load ptr, ptr @sigqueue_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %86, ptr noundef nonnull %56) #16
  br label %90

87:                                               ; preds = %44
  %88 = getelementptr inbounds i8, ptr %2, i32 20
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %88, i8 0, i32 12, i1 false) #16
  store i32 %29, ptr %2, align 4
  %89 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %89, i8 0, i64 16, i1 false) #16
  br label %90

90:                                               ; preds = %87, %85, %74, %17
  %91 = phi i32 [ 0, %17 ], [ %29, %74 ], [ %29, %85 ], [ %29, %87 ]
  ret i32 %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @posixtimer_rearm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @signal_wake_up_state(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @_set_bit(i32 noundef 0, ptr noundef %0) #16
  %3 = or i32 %1, 1
  %4 = tail call i32 @wake_up_state(ptr noundef %0, i32 noundef %3) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @kick_process(ptr noundef %0) #16
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kick_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @setup_print_fatal_signals(ptr noundef %0) #6 section ".init.text" {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = call i32 @get_option(ptr noundef nonnull %2, ptr noundef nonnull @print_fatal_signals) #16
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__group_send_sig_info(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @send_signal(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 1)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @send_signal(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = ptrtoint ptr %1 to i32
  switch i32 %5, label %11 [
    i32 0, label %6
    i32 1, label %65
  ]

6:                                                ; preds = %4
  %7 = tail call ptr @llvm.thread.pointer() #16
  %8 = tail call ptr @task_active_pid_ns(ptr noundef %2) #16
  %9 = tail call i32 @__task_pid_nr_ns(ptr noundef %7, i32 noundef 0, ptr noundef %8) #16
  %10 = icmp eq i32 %9, 0
  br label %65

11:                                               ; preds = %4
  %12 = load i32, ptr %1, align 4
  %13 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, -1
  %16 = icmp ult i32 %15, 127
  br i1 %16, label %17, label %43

17:                                               ; preds = %11
  %18 = icmp ult i32 %12, 32
  br i1 %18, label %19, label %40

19:                                               ; preds = %17
  %20 = getelementptr [32 x %struct.anon.100], ptr @sig_sicodes, i32 0, i32 %12
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp ugt i32 %14, %22
  br i1 %23, label %40, label %24

24:                                               ; preds = %19
  %25 = getelementptr [32 x %struct.anon.100], ptr @sig_sicodes, i32 0, i32 %12, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i32 %12, 7
  %28 = and i32 %14, -2
  %29 = icmp eq i32 %28, 4
  %30 = and i1 %27, %29
  br i1 %30, label %65, label %31

31:                                               ; preds = %24
  %32 = icmp eq i32 %12, 11
  %33 = add nsw i32 %14, -3
  %34 = icmp ult i32 %33, 2
  %35 = and i1 %32, %34
  br i1 %35, label %65, label %36

36:                                               ; preds = %31
  %37 = icmp eq i32 %12, 5
  %38 = icmp eq i32 %14, 6
  %39 = and i1 %37, %38
  br i1 %39, label %65, label %42

40:                                               ; preds = %19, %17
  %41 = icmp ult i32 %14, 7
  br i1 %41, label %65, label %44

42:                                               ; preds = %36
  switch i8 %26, label %65 [
    i8 0, label %44
    i8 9, label %44
    i8 10, label %44
  ]

43:                                               ; preds = %11
  switch i32 %14, label %44 [
    i32 -2, label %65
    i32 -5, label %65
  ]

44:                                               ; preds = %43, %42, %42, %42, %40
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %45 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 82
  %46 = load volatile ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.cred, ptr %46, i32 0, i32 21
  %48 = load ptr, ptr %47, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %49 = icmp eq ptr %48, @init_user_ns
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 3, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, -1
  %54 = load i32, ptr @overflowuid, align 4
  %55 = select i1 %53, i32 %54, i32 %52
  store i32 %55, ptr %51, align 4
  br label %56

56:                                               ; preds = %50, %44
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %57 = load i32, ptr %13, align 4
  %58 = icmp eq i32 %57, 128
  %59 = tail call ptr @llvm.thread.pointer() #16
  %60 = tail call ptr @task_active_pid_ns(ptr noundef %2) #16
  %61 = tail call i32 @__task_pid_nr_ns(ptr noundef %59, i32 noundef 0, ptr noundef %60) #16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 3
  store i32 0, ptr %64, align 4
  br label %65

65:                                               ; preds = %63, %56, %43, %43, %42, %40, %36, %31, %24, %6, %4
  %66 = phi i1 [ %10, %6 ], [ false, %43 ], [ true, %4 ], [ %58, %56 ], [ true, %63 ], [ false, %42 ], [ false, %24 ], [ false, %31 ], [ false, %36 ], [ false, %40 ], [ false, %43 ]
  %67 = tail call fastcc i32 @__send_signal(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %66)
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_send_sig_info(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %5 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 94
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8, !prof !11

8:                                                ; preds = %13, %4
  %9 = phi ptr [ %14, %13 ], [ %6, %4 ]
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %9) #16
  %11 = load volatile ptr, ptr %5, align 4
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %17, label %13, !prof !10

13:                                               ; preds = %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %9, i32 noundef %10) #16
  %14 = load volatile ptr, ptr %5, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8, !prof !11

16:                                               ; preds = %13, %4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %20

17:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %18 = tail call fastcc i32 @send_signal(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %19 = load ptr, ptr %5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %10) #16
  br label %20

20:                                               ; preds = %17, %16
  %21 = phi i32 [ %18, %17 ], [ -3, %16 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @force_sig_info(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #16
  %3 = tail call fastcc i32 @force_sig_info_to_task(ptr noundef %0, ptr noundef %2, i32 noundef 0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @force_sig_info_to_task(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr %0, align 4
  %5 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 94
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #16
  %8 = load ptr, ptr %5, align 4
  %9 = add i32 %4, -1
  %10 = getelementptr %struct.sighand_struct, ptr %8, i32 0, i32 3, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, inttoptr (i32 1 to ptr)
  %13 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 95
  %14 = lshr i32 %9, 5
  %15 = getelementptr [2 x i32], ptr %13, i32 0, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %9, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  %21 = select i1 %20, i1 true, i1 %12
  %22 = icmp ne i32 %2, 0
  %23 = or i1 %22, %21
  br i1 %23, label %24, label %36

24:                                               ; preds = %3
  store ptr null, ptr %10, align 4
  %25 = icmp eq i32 %2, 2
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.sigaction, ptr %10, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %28, 8388608
  store i32 %29, ptr %27, align 4
  br label %30

30:                                               ; preds = %26, %24
  br i1 %20, label %31, label %39

31:                                               ; preds = %30
  %32 = xor i32 %18, -1
  %33 = load i32, ptr %15, align 4
  %34 = and i32 %33, %32
  store i32 %34, ptr %15, align 4
  tail call void @recalc_sigpending_and_wake(ptr noundef %1)
  %35 = load ptr, ptr %10, align 4
  br label %36

36:                                               ; preds = %31, %3
  %37 = phi ptr [ %35, %31 ], [ %11, %3 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %36, %30
  %40 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 5
  %41 = load i32, ptr %40, align 8
  %42 = icmp eq i32 %41, 0
  %43 = icmp eq i32 %2, 2
  %44 = or i1 %43, %42
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 93
  %47 = load ptr, ptr %46, align 16
  %48 = getelementptr inbounds %struct.signal_struct, ptr %47, i32 0, i32 12
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, -65
  store i32 %50, ptr %48, align 8
  br label %51

51:                                               ; preds = %45, %39, %36
  %52 = tail call fastcc i32 @send_signal(i32 noundef %4, ptr noundef %0, ptr noundef %1, i32 noundef 0)
  %53 = load ptr, ptr %5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %53, i32 noundef %7) #16
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @zap_other_threads(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.signal_struct, ptr %3, i32 0, i32 11
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 64
  %6 = load volatile ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 -1380
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %37, label %9

9:                                                ; preds = %32, %1
  %10 = phi ptr [ %35, %32 ], [ %7, %1 ]
  %11 = phi ptr [ %34, %32 ], [ %6, %1 ]
  %12 = phi i32 [ %21, %32 ], [ 0, %1 ]
  %13 = getelementptr i8, ptr %11, i32 -152
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, -2031617
  store i32 %15, ptr %13, align 4
  %16 = and i32 %14, 2097152
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18, !prof !28

18:                                               ; preds = %9
  %19 = and i32 %14, -4128769
  store i32 %19, ptr %13, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  tail call void @wake_up_bit(ptr noundef %13, i32 noundef 21) #16
  br label %20

20:                                               ; preds = %18, %9
  %21 = add i32 %12, 1
  %22 = getelementptr i8, ptr %11, i32 -168
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %11, i32 276
  %27 = load i32, ptr %26, align 4
  %28 = or i32 %27, 256
  store i32 %28, ptr %26, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %10) #16
  %29 = tail call i32 @wake_up_state(ptr noundef %10, i32 noundef 257) #16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  tail call void @kick_process(ptr noundef %10) #16
  br label %32

32:                                               ; preds = %31, %25, %20
  %33 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 64
  %34 = load volatile ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 -1380
  %36 = icmp eq ptr %35, %0
  br i1 %36, label %37, label %9

37:                                               ; preds = %32, %1
  %38 = phi i32 [ 0, %1 ], [ %21, %32 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__lock_task_sighand(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6, !prof !11

6:                                                ; preds = %11, %2
  %7 = phi ptr [ %12, %11 ], [ %4, %2 ]
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %7) #16
  store i32 %8, ptr %1, align 4
  %9 = load volatile ptr, ptr %3, align 4
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %14, label %11, !prof !10

11:                                               ; preds = %6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %7, i32 noundef %8) #16
  %12 = load volatile ptr, ptr %3, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6, !prof !11

14:                                               ; preds = %11, %6, %2
  %15 = phi ptr [ null, %2 ], [ %7, %6 ], [ null, %11 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @group_send_sig_info(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %5 = icmp ugt i32 %0, 64
  br i1 %5, label %57, label %6

6:                                                ; preds = %4
  %7 = icmp eq ptr %1, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %6
  %9 = icmp ugt ptr %1, inttoptr (i32 1 to ptr)
  br i1 %9, label %10, label %59

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %59

14:                                               ; preds = %10, %6
  %15 = tail call ptr @llvm.thread.pointer() #16
  %16 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 93
  %17 = load ptr, ptr %16, align 16
  %18 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 93
  %19 = load ptr, ptr %18, align 16
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %59, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 83
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 82
  %25 = load volatile ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 5
  %27 = getelementptr inbounds %struct.cred, ptr %25, i32 0, i32 3
  %28 = load i32, ptr %26, align 4
  %29 = load i32, ptr %27, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %59, label %31

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.cred, ptr %25, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %28, %33
  br i1 %34, label %59, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, %29
  %39 = icmp eq i32 %37, %33
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %59, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.cred, ptr %25, i32 0, i32 21
  %43 = load ptr, ptr %42, align 4
  %44 = tail call zeroext i1 @ns_capable(ptr noundef %43, i32 noundef 5) #16
  br i1 %44, label %59, label %45

45:                                               ; preds = %41
  %46 = icmp eq i32 %0, 18
  br i1 %46, label %47, label %57

47:                                               ; preds = %45
  %48 = load ptr, ptr %18, align 16
  %49 = getelementptr %struct.signal_struct, ptr %48, i32 0, i32 22, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr %16, align 16
  %54 = getelementptr %struct.signal_struct, ptr %53, i32 0, i32 22, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %50, %55
  br i1 %56, label %59, label %57

57:                                               ; preds = %52, %45, %4
  %58 = phi i32 [ -1, %52 ], [ -1, %45 ], [ -22, %4 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %77

59:                                               ; preds = %52, %47, %41, %35, %31, %21, %14, %10, %8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %60 = icmp eq i32 %0, 0
  br i1 %60, label %77, label %61

61:                                               ; preds = %59
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %62 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 94
  %63 = load volatile ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %73, label %65, !prof !11

65:                                               ; preds = %70, %61
  %66 = phi ptr [ %71, %70 ], [ %63, %61 ]
  %67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %66) #16
  %68 = load volatile ptr, ptr %62, align 4
  %69 = icmp eq ptr %66, %68
  br i1 %69, label %74, label %70, !prof !10

70:                                               ; preds = %65
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %66, i32 noundef %67) #16
  %71 = load volatile ptr, ptr %62, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %65, !prof !11

73:                                               ; preds = %70, %61
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %77

74:                                               ; preds = %65
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %75 = tail call fastcc i32 @send_signal(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #16
  %76 = load ptr, ptr %62, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %76, i32 noundef %67) #16
  br label %77

77:                                               ; preds = %74, %73, %59, %57
  %78 = phi i32 [ 0, %59 ], [ %75, %74 ], [ -3, %73 ], [ %58, %57 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__kill_pgrp_info(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %3
  %6 = getelementptr %struct.pid, ptr %2, i32 0, i32 3, i32 2
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = getelementptr i8, ptr %7, i32 -1364
  %10 = icmp eq ptr %9, null
  %11 = or i1 %8, %10
  br i1 %11, label %27, label %12

12:                                               ; preds = %12, %5
  %13 = phi ptr [ %22, %12 ], [ %9, %5 ]
  %14 = phi i32 [ %18, %12 ], [ 0, %5 ]
  %15 = tail call i32 @group_send_sig_info(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %13, i32 noundef 2)
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = or i32 %14, %17
  %19 = getelementptr %struct.task_struct, ptr %13, i32 0, i32 63, i32 2
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  %22 = getelementptr i8, ptr %20, i32 -1364
  %23 = icmp eq ptr %22, null
  %24 = or i1 %21, %23
  br i1 %24, label %25, label %12

25:                                               ; preds = %12
  %26 = icmp eq i32 %18, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %25, %5, %3
  %28 = phi i32 [ %15, %25 ], [ -3, %3 ], [ -3, %5 ]
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %28, %27 ], [ 0, %25 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kill_pid_info(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  br label %4

4:                                                ; preds = %8, %3
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %5 = tail call ptr @pid_task(ptr noundef %2, i32 noundef 0) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %11

8:                                                ; preds = %4
  %9 = tail call i32 @group_send_sig_info(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 1)
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %10 = icmp eq i32 %9, -3
  br i1 %10, label %4, label %11, !prof !11

11:                                               ; preds = %8, %7
  %12 = phi i32 [ -3, %7 ], [ %9, %8 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kill_pid_usb_asyncio(i32 noundef %0, i32 noundef %1, [1 x i32] %2, ptr noundef %3, ptr nocapture noundef readonly %4) #0 {
  %6 = alloca %struct.kernel_siginfo, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  %7 = icmp ugt i32 %0, 64
  br i1 %7, label %54, label %8

8:                                                ; preds = %5
  %9 = extractvalue [1 x i32] %2, 0
  %10 = getelementptr inbounds i8, ptr %6, i32 16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %10, i8 0, i32 16, i1 false) #16
  store i32 %0, ptr %6, align 4
  %11 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 1
  store i32 %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 2
  store i32 -4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 3
  store i32 %9, ptr %13, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %14 = tail call ptr @pid_task(ptr noundef %3, i32 noundef 0) #16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %52, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 82
  %18 = load volatile ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 5
  %20 = getelementptr inbounds %struct.cred, ptr %18, i32 0, i32 3
  %21 = load i32, ptr %19, align 4
  %22 = load i32, ptr %20, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %34, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.cred, ptr %18, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %21, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.cred, ptr %4, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %22
  %32 = icmp eq i32 %30, %26
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %28, %24, %16
  %35 = icmp eq i32 %0, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %34
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %37 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 94
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40, !prof !11

40:                                               ; preds = %45, %36
  %41 = phi ptr [ %46, %45 ], [ %38, %36 ]
  %42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %41) #16
  %43 = load volatile ptr, ptr %37, align 4
  %44 = icmp eq ptr %41, %43
  br i1 %44, label %49, label %45, !prof !10

45:                                               ; preds = %40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %41, i32 noundef %42) #16
  %46 = load volatile ptr, ptr %37, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %40, !prof !11

48:                                               ; preds = %45, %36
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %52

49:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %50 = call fastcc i32 @__send_signal(i32 noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %14, i32 noundef 1, i1 noundef zeroext false)
  %51 = load ptr, ptr %37, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %51, i32 noundef %42) #16
  br label %52

52:                                               ; preds = %49, %48, %34, %28, %8
  %53 = phi i32 [ %50, %49 ], [ 0, %34 ], [ -3, %8 ], [ -1, %28 ], [ -3, %48 ]
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %54

54:                                               ; preds = %52, %5
  %55 = phi i32 [ %53, %52 ], [ -22, %5 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  ret i32 %55
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__send_signal(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 94
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  %9 = load volatile i32, ptr %8, align 4
  store volatile i32 %9, ptr %6, align 4
  %10 = lshr i32 %9, 16
  %11 = and i32 %9, 65535
  %12 = icmp eq i32 %11, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  br i1 %12, label %13, label %14, !prof !11

13:                                               ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/signal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1082, 0\0A.popsection", ""() #16, !srcloc !29
  unreachable

14:                                               ; preds = %5
  %15 = tail call fastcc zeroext i1 @prepare_signal(i32 noundef %0, ptr noundef %2, i1 noundef zeroext %4)
  br i1 %15, label %16, label %172

16:                                               ; preds = %14
  %17 = icmp eq i32 %3, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 93
  %20 = load ptr, ptr %19, align 16
  %21 = getelementptr inbounds %struct.signal_struct, ptr %20, i32 0, i32 6
  br label %24

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 98
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi ptr [ %21, %18 ], [ %23, %22 ]
  %26 = icmp slt i32 %0, 32
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.sigpending, ptr %25, i32 0, i32 1
  %29 = add i32 %0, -1
  %30 = lshr i32 %29, 5
  %31 = getelementptr [2 x i32], ptr %28, i32 0, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %29, 31
  %34 = shl nuw i32 1, %33
  %35 = and i32 %32, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %172

37:                                               ; preds = %27
  %38 = icmp eq i32 %0, 9
  br i1 %38, label %120, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 2097152
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %120

44:                                               ; preds = %24
  %45 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 2097152
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %56, label %120

49:                                               ; preds = %39
  %50 = icmp ugt ptr %1, inttoptr (i32 1 to ptr)
  br i1 %50, label %51, label %56

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = xor i32 %53, -1
  %55 = lshr i32 %54, 31
  br label %56

56:                                               ; preds = %51, %49, %44
  %57 = phi i32 [ 1, %49 ], [ %55, %51 ], [ 0, %44 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %58 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 82
  %59 = load volatile ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.cred, ptr %59, i32 0, i32 22
  %61 = load ptr, ptr %60, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %62 = tail call i32 @inc_rlimit_get_ucounts(ptr noundef %61, i32 noundef 12) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %112, label %64

64:                                               ; preds = %56
  %65 = icmp eq i32 %57, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 93
  %68 = load ptr, ptr %67, align 16
  %69 = getelementptr %struct.signal_struct, ptr %68, i32 0, i32 50, i32 11
  %70 = load volatile i32, ptr %69, align 8
  %71 = icmp ugt i32 %62, %70
  br i1 %71, label %72, label %73, !prof !11

72:                                               ; preds = %66
  tail call fastcc void @print_dropped_signal(i32 noundef %0) #16
  br label %77

73:                                               ; preds = %66, %64
  %74 = load ptr, ptr @sigqueue_cachep, align 4
  %75 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %74, i32 noundef 2592) #16
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %78, !prof !11

77:                                               ; preds = %73, %72
  tail call void @dec_rlimit_put_ucounts(ptr noundef %61, i32 noundef 12) #16
  br label %112

78:                                               ; preds = %73
  store volatile ptr %75, ptr %75, align 8
  %79 = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  store ptr %75, ptr %79, align 4
  %80 = getelementptr inbounds %struct.sigqueue, ptr %75, i32 0, i32 1
  store i32 0, ptr %80, align 8
  %81 = getelementptr inbounds %struct.sigqueue, ptr %75, i32 0, i32 3
  store ptr %61, ptr %81, align 4
  %82 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  store ptr %75, ptr %82, align 4
  store ptr %25, ptr %75, align 8
  store ptr %83, ptr %79, align 4
  store volatile ptr %75, ptr %83, align 4
  %84 = ptrtoint ptr %1 to i32
  switch i32 %84, label %110 [
    i32 0, label %85
    i32 1, label %103
  ]

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.sigqueue, ptr %75, i32 0, i32 2
  %87 = getelementptr inbounds %struct.sigqueue, ptr %75, i32 0, i32 2, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(32) %87, i8 0, i32 20, i1 false) #16
  store i32 %0, ptr %86, align 4
  %88 = getelementptr inbounds %struct.sigqueue, ptr %75, i32 0, i32 2, i32 0, i32 1
  store i32 0, ptr %88, align 8
  %89 = getelementptr inbounds %struct.sigqueue, ptr %75, i32 0, i32 2, i32 0, i32 2
  store i32 0, ptr %89, align 4
  %90 = tail call ptr @llvm.thread.pointer() #16
  %91 = tail call ptr @task_active_pid_ns(ptr noundef %2) #16
  %92 = tail call i32 @__task_pid_nr_ns(ptr noundef %90, i32 noundef 1, ptr noundef %91) #16
  %93 = getelementptr inbounds %struct.sigqueue, ptr %75, i32 0, i32 2, i32 0, i32 3
  store i32 %92, ptr %93, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %94 = load volatile ptr, ptr %58, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %95 = getelementptr inbounds %struct.task_struct, ptr %90, i32 0, i32 83
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %struct.cred, ptr %96, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, -1
  %100 = load i32, ptr @overflowuid, align 4
  %101 = select i1 %99, i32 %100, i32 %98
  %102 = getelementptr inbounds %struct.sigqueue, ptr %75, i32 0, i32 2, i32 0, i32 3, i32 0, i32 1
  store i32 %101, ptr %102, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %120

103:                                              ; preds = %78
  %104 = getelementptr inbounds %struct.sigqueue, ptr %75, i32 0, i32 2
  %105 = getelementptr inbounds %struct.sigqueue, ptr %75, i32 0, i32 2, i32 0, i32 3, i32 0, i32 2
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(32) %105, i8 0, i32 12, i1 false) #16
  store i32 %0, ptr %104, align 4
  %106 = getelementptr inbounds %struct.sigqueue, ptr %75, i32 0, i32 2, i32 0, i32 1
  store i32 0, ptr %106, align 8
  %107 = getelementptr inbounds %struct.sigqueue, ptr %75, i32 0, i32 2, i32 0, i32 2
  store i32 128, ptr %107, align 4
  %108 = getelementptr inbounds %struct.sigqueue, ptr %75, i32 0, i32 2, i32 0, i32 3
  store i32 0, ptr %108, align 8
  %109 = getelementptr inbounds %struct.sigqueue, ptr %75, i32 0, i32 2, i32 0, i32 3, i32 0, i32 1
  store i32 0, ptr %109, align 4
  br label %120

110:                                              ; preds = %78
  %111 = getelementptr inbounds %struct.sigqueue, ptr %75, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %111, ptr noundef align 4 dereferenceable(32) %1, i32 32, i1 false) #16
  br label %120

112:                                              ; preds = %77, %56
  %113 = icmp ugt ptr %1, inttoptr (i32 1 to ptr)
  %114 = icmp sgt i32 %0, 31
  %115 = and i1 %114, %113
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 2
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %172

120:                                              ; preds = %116, %112, %110, %103, %85, %44, %39, %37
  %121 = phi i32 [ 0, %37 ], [ 0, %39 ], [ 0, %110 ], [ 0, %103 ], [ 0, %85 ], [ 4, %116 ], [ 4, %112 ], [ 0, %44 ]
  %122 = load ptr, ptr %7, align 4
  %123 = getelementptr inbounds %struct.sighand_struct, ptr %122, i32 0, i32 2, i32 1
  %124 = load volatile ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, %123
  br i1 %125, label %128, label %126, !prof !10

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.sighand_struct, ptr %122, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %127, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  br label %128

128:                                              ; preds = %126, %120
  %129 = getelementptr inbounds %struct.sigpending, ptr %25, i32 0, i32 1
  %130 = add i32 %0, -1
  %131 = and i32 %130, 31
  %132 = shl nuw i32 1, %131
  %133 = lshr i32 %130, 5
  %134 = getelementptr [2 x i32], ptr %129, i32 0, i32 %133
  %135 = load i32, ptr %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, ptr %134, align 4
  %137 = icmp ugt i32 %3, 1
  br i1 %137, label %138, label %171

138:                                              ; preds = %128
  %139 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 93
  %140 = load ptr, ptr %139, align 16
  %141 = getelementptr inbounds %struct.signal_struct, ptr %140, i32 0, i32 7
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  %144 = getelementptr i8, ptr %142, i32 -8
  %145 = icmp eq ptr %144, null
  %146 = or i1 %143, %145
  br i1 %146, label %171, label %147

147:                                              ; preds = %138
  %148 = icmp eq i32 %0, 18
  %149 = icmp ult i32 %130, 31
  %150 = shl nuw nsw i32 1, %130
  %151 = and i32 %150, 3932160
  %152 = icmp ne i32 %151, 0
  %153 = select i1 %149, i1 %152, i1 false
  %154 = select i1 %148, i1 true, i1 %153
  %155 = select i1 %148, i32 -3932161, i32 -131073
  br label %156

156:                                              ; preds = %161, %147
  %157 = phi ptr [ %144, %147 ], [ %168, %161 ]
  br i1 %154, label %158, label %161

158:                                              ; preds = %156
  %159 = load i32, ptr %157, align 4
  %160 = and i32 %159, %155
  store i32 %160, ptr %157, align 4
  br label %161

161:                                              ; preds = %158, %156
  %162 = getelementptr [2 x i32], ptr %157, i32 0, i32 %133
  %163 = load i32, ptr %162, align 4
  %164 = or i32 %163, %132
  store i32 %164, ptr %162, align 4
  %165 = getelementptr inbounds %struct.multiprocess_signals, ptr %157, i32 0, i32 1
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  %168 = getelementptr i8, ptr %166, i32 -8
  %169 = icmp eq ptr %168, null
  %170 = or i1 %167, %169
  br i1 %170, label %171, label %156

171:                                              ; preds = %161, %138, %128
  tail call fastcc void @complete_signal(i32 noundef %0, ptr noundef %2, i32 noundef %3)
  br label %172

172:                                              ; preds = %171, %116, %27, %14
  %173 = phi i32 [ 2, %27 ], [ %121, %171 ], [ 1, %14 ], [ 3, %116 ]
  %174 = phi i32 [ 0, %27 ], [ 0, %171 ], [ 0, %14 ], [ -11, %116 ]
  %175 = icmp ne i32 %3, 0
  %176 = zext i1 %175 to i32
  %177 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_signal_generate, i32 0, i32 1), align 4
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %202

179:                                              ; preds = %172
  %180 = tail call ptr @llvm.thread.pointer() #16
  %181 = getelementptr inbounds %struct.thread_info, ptr %180, i32 0, i32 2
  %182 = load i32, ptr %181, align 8
  %183 = lshr i32 %182, 5
  %184 = getelementptr i32, ptr @__cpu_online_mask, i32 %183
  %185 = load volatile i32, ptr %184, align 4
  %186 = and i32 %182, 31
  %187 = shl nuw i32 1, %186
  %188 = and i32 %187, %185
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %202, label %190

190:                                              ; preds = %179
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !30
  %191 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_signal_generate, i32 0, i32 7), align 4
  %192 = icmp eq ptr %191, null
  br i1 %192, label %201, label %193

193:                                              ; preds = %193, %190
  %194 = phi ptr [ %198, %193 ], [ %191, %190 ]
  %195 = load volatile ptr, ptr %194, align 4
  %196 = getelementptr inbounds %struct.tracepoint_func, ptr %194, i32 0, i32 1
  %197 = load ptr, ptr %196, align 4
  tail call void %195(ptr noundef %197, i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %176, i32 noundef %173) #16
  %198 = getelementptr %struct.tracepoint_func, ptr %194, i32 1
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %193

201:                                              ; preds = %193, %190
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  br label %202

202:                                              ; preds = %201, %179, %172
  ret i32 %174
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @send_sig_info(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp ugt i32 %0, 64
  br i1 %4, label %21, label %5

5:                                                ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %6 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 94
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9, !prof !11

9:                                                ; preds = %14, %5
  %10 = phi ptr [ %15, %14 ], [ %7, %5 ]
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %10) #16
  %12 = load volatile ptr, ptr %6, align 4
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %18, label %14, !prof !10

14:                                               ; preds = %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %10, i32 noundef %11) #16
  %15 = load volatile ptr, ptr %6, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9, !prof !11

17:                                               ; preds = %14, %5
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %21

18:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %19 = tail call fastcc i32 @send_signal(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0) #16
  %20 = load ptr, ptr %6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %11) #16
  br label %21

21:                                               ; preds = %18, %17, %3
  %22 = phi i32 [ -22, %3 ], [ %19, %18 ], [ -3, %17 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @send_sig(i32 noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 0
  %5 = select i1 %4, ptr null, ptr inttoptr (i32 1 to ptr)
  %6 = icmp ugt i32 %0, 64
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %8 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 94
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11, !prof !11

11:                                               ; preds = %16, %7
  %12 = phi ptr [ %17, %16 ], [ %9, %7 ]
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %12) #16
  %14 = load volatile ptr, ptr %8, align 4
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %20, label %16, !prof !10

16:                                               ; preds = %11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %12, i32 noundef %13) #16
  %17 = load volatile ptr, ptr %8, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %11, !prof !11

19:                                               ; preds = %16, %7
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %23

20:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %21 = tail call fastcc i32 @send_signal(i32 noundef %0, ptr noundef %5, ptr noundef %1, i32 noundef 0) #16
  %22 = load ptr, ptr %8, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %13) #16
  br label %23

23:                                               ; preds = %20, %19, %3
  %24 = phi i32 [ -22, %3 ], [ %21, %20 ], [ -3, %19 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @force_sig(i32 noundef %0) #0 {
  %2 = alloca %struct.kernel_siginfo, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #16
  %3 = getelementptr inbounds i8, ptr %2, i32 20
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(12) %3, i8 0, i64 12, i1 false)
  store i32 %0, ptr %2, align 4
  %4 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 2
  store i32 128, ptr %5, align 4
  %6 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 3
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 3, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = tail call ptr @llvm.thread.pointer() #16
  %9 = call fastcc i32 @force_sig_info_to_task(ptr noundef nonnull %2, ptr noundef %8, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @force_fatal_sig(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.kernel_siginfo, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #16
  %3 = getelementptr inbounds i8, ptr %2, i32 20
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(12) %3, i8 0, i64 12, i1 false)
  store i32 %0, ptr %2, align 4
  %4 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 2
  store i32 128, ptr %5, align 4
  %6 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 3
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 3, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = tail call ptr @llvm.thread.pointer() #16
  %9 = call fastcc i32 @force_sig_info_to_task(ptr noundef nonnull %2, ptr noundef %8, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @force_exit_sig(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.kernel_siginfo, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #16
  %3 = getelementptr inbounds i8, ptr %2, i32 20
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(12) %3, i8 0, i64 12, i1 false)
  store i32 %0, ptr %2, align 4
  %4 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 2
  store i32 128, ptr %5, align 4
  %6 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 3
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 3, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = tail call ptr @llvm.thread.pointer() #16
  %9 = call fastcc i32 @force_sig_info_to_task(ptr noundef nonnull %2, ptr noundef %8, i32 noundef 2)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @force_sigsegv(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.kernel_siginfo, align 4
  %3 = alloca %struct.kernel_siginfo, align 4
  %4 = icmp eq i32 %0, 11
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %6 = getelementptr inbounds i8, ptr %3, i32 20
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false) #16
  store i32 11, ptr %3, align 4
  %7 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 2
  store i32 128, ptr %8, align 4
  %9 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 3
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 3, i32 0, i32 1
  store i32 0, ptr %10, align 4
  %11 = tail call ptr @llvm.thread.pointer() #16
  %12 = call fastcc i32 @force_sig_info_to_task(ptr noundef nonnull %3, ptr noundef %11, i32 noundef 1) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %21

13:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #16
  %14 = getelementptr inbounds i8, ptr %2, i32 20
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(12) %14, i8 0, i64 12, i1 false) #16
  store i32 11, ptr %2, align 4
  %15 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 2
  store i32 128, ptr %16, align 4
  %17 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 3
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 3, i32 0, i32 1
  store i32 0, ptr %18, align 4
  %19 = tail call ptr @llvm.thread.pointer() #16
  %20 = call fastcc i32 @force_sig_info_to_task(ptr noundef nonnull %2, ptr noundef %19, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #16
  br label %21

21:                                               ; preds = %13, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @force_sig_fault_to_task(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.kernel_siginfo, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %6 = getelementptr inbounds i8, ptr %5, i32 16
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store i32 %0, ptr %5, align 4
  %7 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 2
  store i32 %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 3
  store ptr %2, ptr %9, align 4
  %10 = call fastcc i32 @force_sig_info_to_task(ptr noundef nonnull %5, ptr noundef %3, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @force_sig_fault(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.kernel_siginfo, align 4
  %5 = tail call ptr @llvm.thread.pointer() #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #16
  %6 = getelementptr inbounds i8, ptr %4, i32 16
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false) #16
  store i32 %0, ptr %4, align 4
  %7 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 2
  store i32 %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 3
  store ptr %2, ptr %9, align 4
  %10 = call fastcc i32 @force_sig_info_to_task(ptr noundef nonnull %4, ptr noundef %5, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @send_sig_fault(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.kernel_siginfo, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %6 = getelementptr inbounds i8, ptr %5, i32 16
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store i32 %0, ptr %5, align 4
  %7 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 2
  store i32 %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 3
  store ptr %2, ptr %9, align 4
  %10 = icmp ugt i32 %0, 64
  br i1 %10, label %27, label %11

11:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %12 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 94
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15, !prof !11

15:                                               ; preds = %20, %11
  %16 = phi ptr [ %21, %20 ], [ %13, %11 ]
  %17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %16) #16
  %18 = load volatile ptr, ptr %12, align 4
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %24, label %20, !prof !10

20:                                               ; preds = %15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %16, i32 noundef %17) #16
  %21 = load volatile ptr, ptr %12, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %15, !prof !11

23:                                               ; preds = %20, %11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %27

24:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %25 = call fastcc i32 @send_signal(i32 noundef %0, ptr noundef nonnull %5, ptr noundef %3, i32 noundef 0) #16
  %26 = load ptr, ptr %12, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %17) #16
  br label %27

27:                                               ; preds = %24, %23, %4
  %28 = phi i32 [ -22, %4 ], [ %25, %24 ], [ -3, %23 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @force_sig_mceerr(i32 noundef %0, ptr noundef %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.kernel_siginfo, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #16
  %5 = add i32 %0, -6
  %6 = icmp ult i32 %5, -2
  br i1 %6, label %7, label %8, !prof !11

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1754, i32 noundef 9, ptr noundef null) #16
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds i8, ptr %4, i32 16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %9, i8 0, i32 16, i1 false) #16
  store i32 7, ptr %4, align 4
  %10 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 1
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 2
  store i32 %0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 3
  store ptr %1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 3, i32 0, i32 1
  store i16 %2, ptr %13, align 4
  %14 = tail call ptr @llvm.thread.pointer() #16
  %15 = call fastcc i32 @force_sig_info_to_task(ptr noundef nonnull %4, ptr noundef %14, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @send_sig_mceerr(i32 noundef %0, ptr noundef %1, i16 noundef signext %2, ptr noundef %3) #0 {
  %5 = alloca %struct.kernel_siginfo, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %6 = add i32 %0, -6
  %7 = icmp ult i32 %6, -2
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1768, i32 noundef 9, ptr noundef null) #16
  br label %9

9:                                                ; preds = %8, %4
  %10 = getelementptr inbounds i8, ptr %5, i32 16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %10, i8 0, i32 16, i1 false) #16
  store i32 7, ptr %5, align 4
  %11 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 1
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 2
  store i32 %0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 3
  store ptr %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 3, i32 0, i32 1
  store i16 %2, ptr %14, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %15 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 94
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18, !prof !11

18:                                               ; preds = %23, %9
  %19 = phi ptr [ %24, %23 ], [ %16, %9 ]
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %19) #16
  %21 = load volatile ptr, ptr %15, align 4
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %27, label %23, !prof !10

23:                                               ; preds = %18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %19, i32 noundef %20) #16
  %24 = load volatile ptr, ptr %15, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18, !prof !11

26:                                               ; preds = %23, %9
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %30

27:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %28 = call fastcc i32 @send_signal(i32 noundef 7, ptr noundef nonnull %5, ptr noundef %3, i32 noundef 0) #16
  %29 = load ptr, ptr %15, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %20) #16
  br label %30

30:                                               ; preds = %27, %26
  %31 = phi i32 [ %28, %27 ], [ -3, %26 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @force_sig_bnderr(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.kernel_siginfo, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #16
  %5 = getelementptr inbounds i8, ptr %4, i32 16
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 11, ptr %4, align 4
  %6 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 1
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 2
  store i32 3, ptr %7, align 4
  %8 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 3
  store ptr %0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 3, i32 0, i32 2
  store ptr %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 3, i32 0, i32 3
  store ptr %2, ptr %10, align 4
  %11 = tail call ptr @llvm.thread.pointer() #16
  %12 = call fastcc i32 @force_sig_info_to_task(ptr noundef nonnull %4, ptr noundef %11, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @force_sig_pkuerr(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.kernel_siginfo, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = getelementptr inbounds i8, ptr %3, i32 16
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store i32 11, ptr %3, align 4
  %5 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 2
  store i32 4, ptr %6, align 4
  %7 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 3
  store ptr %0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 3, i32 0, i32 2
  store i32 %1, ptr %8, align 4
  %9 = tail call ptr @llvm.thread.pointer() #16
  %10 = call fastcc i32 @force_sig_info_to_task(ptr noundef nonnull %3, ptr noundef %9, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @force_sig_perf(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.kernel_siginfo, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #16
  %5 = getelementptr inbounds i8, ptr %4, i32 24
  store i64 0, ptr %5, align 4
  store i32 5, ptr %4, align 4
  %6 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 1
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 2
  store i32 6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 3
  store ptr %0, ptr %8, align 4
  %9 = trunc i64 %2 to i32
  %10 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 3, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 3, i32 0, i32 2
  store i32 %1, ptr %11, align 4
  %12 = tail call ptr @llvm.thread.pointer() #16
  %13 = call fastcc i32 @force_sig_info_to_task(ptr noundef nonnull %4, ptr noundef %12, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @force_sig_seccomp(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.kernel_siginfo, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #16
  %5 = getelementptr inbounds i8, ptr %4, i32 24
  store i64 0, ptr %5, align 4
  store i32 31, ptr %4, align 4
  %6 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 2
  store i32 1, ptr %6, align 4
  %7 = tail call ptr @llvm.thread.pointer() #16
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 8172
  %11 = load i32, ptr %10, align 4
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 3
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 1
  store i32 %1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 3, i32 0, i32 2
  store i32 1073741864, ptr %15, align 4
  %16 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 3, i32 0, i32 1
  store i32 %0, ptr %16, align 4
  %17 = select i1 %2, i32 2, i32 0
  %18 = call fastcc i32 @force_sig_info_to_task(ptr noundef nonnull %4, ptr noundef %7, i32 noundef %17)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @force_sig_ptrace_errno_trap(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.kernel_siginfo, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = getelementptr inbounds i8, ptr %3, i32 16
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store i32 5, ptr %3, align 4
  %5 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1
  store i32 %0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 2
  store i32 4, ptr %6, align 4
  %7 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 3
  store ptr %1, ptr %7, align 4
  %8 = tail call ptr @llvm.thread.pointer() #16
  %9 = call fastcc i32 @force_sig_info_to_task(ptr noundef nonnull %3, ptr noundef %8, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @force_sig_fault_trapno(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.kernel_siginfo, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %6 = getelementptr inbounds i8, ptr %5, i32 20
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  store i32 %0, ptr %5, align 4
  %7 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 2
  store i32 %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 3
  store ptr %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 3, i32 0, i32 1
  store i32 %3, ptr %10, align 4
  %11 = tail call ptr @llvm.thread.pointer() #16
  %12 = call fastcc i32 @force_sig_info_to_task(ptr noundef nonnull %5, ptr noundef %11, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @send_sig_fault_trapno(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.kernel_siginfo, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  %7 = getelementptr inbounds i8, ptr %6, i32 20
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(12) %7, i8 0, i64 12, i1 false)
  store i32 %0, ptr %6, align 4
  %8 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 1
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 2
  store i32 %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 3
  store ptr %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 3, i32 0, i32 1
  store i32 %3, ptr %11, align 4
  %12 = icmp ugt i32 %0, 64
  br i1 %12, label %29, label %13

13:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %14 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 94
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17, !prof !11

17:                                               ; preds = %22, %13
  %18 = phi ptr [ %23, %22 ], [ %15, %13 ]
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %18) #16
  %20 = load volatile ptr, ptr %14, align 4
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %26, label %22, !prof !10

22:                                               ; preds = %17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %18, i32 noundef %19) #16
  %23 = load volatile ptr, ptr %14, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %17, !prof !11

25:                                               ; preds = %22, %13
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %29

26:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %27 = call fastcc i32 @send_signal(i32 noundef %0, ptr noundef nonnull %6, ptr noundef %4, i32 noundef 0) #16
  %28 = load ptr, ptr %14, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %19) #16
  br label %29

29:                                               ; preds = %26, %25, %5
  %30 = phi i32 [ -22, %5 ], [ %27, %26 ], [ -3, %25 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kill_pgrp(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #16
  %4 = icmp eq i32 %2, 0
  %5 = select i1 %4, ptr null, ptr inttoptr (i32 1 to ptr)
  %6 = icmp eq ptr %0, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = getelementptr %struct.pid, ptr %0, i32 0, i32 3, i32 2
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = getelementptr i8, ptr %9, i32 -1364
  %12 = icmp eq ptr %11, null
  %13 = or i1 %10, %12
  br i1 %13, label %29, label %14

14:                                               ; preds = %14, %7
  %15 = phi ptr [ %24, %14 ], [ %11, %7 ]
  %16 = phi i32 [ %20, %14 ], [ 0, %7 ]
  %17 = tail call i32 @group_send_sig_info(i32 noundef %1, ptr noundef %5, ptr noundef nonnull %15, i32 noundef 2) #16
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = or i32 %16, %19
  %21 = getelementptr %struct.task_struct, ptr %15, i32 0, i32 63, i32 2
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  %24 = getelementptr i8, ptr %22, i32 -1364
  %25 = icmp eq ptr %24, null
  %26 = or i1 %23, %25
  br i1 %26, label %27, label %14

27:                                               ; preds = %14
  %28 = icmp eq i32 %20, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %27, %7, %3
  %30 = phi i32 [ %17, %27 ], [ -3, %3 ], [ -3, %7 ]
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %30, %29 ], [ 0, %27 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #16, !srcloc !33
  %33 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #16, !srcloc !34
  %34 = extractvalue { i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  br label %37

37:                                               ; preds = %36, %31
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !35
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kill_pid(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 0
  %5 = select i1 %4, ptr null, ptr inttoptr (i32 1 to ptr)
  br label %6

6:                                                ; preds = %10, %3
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %7 = tail call ptr @pid_task(ptr noundef %0, i32 noundef 0) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %13

10:                                               ; preds = %6
  %11 = tail call i32 @group_send_sig_info(i32 noundef %1, ptr noundef %5, ptr noundef nonnull %7, i32 noundef 1) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %12 = icmp eq i32 %11, -3
  br i1 %12, label %6, label %13, !prof !11

13:                                               ; preds = %10, %9
  %14 = phi i32 [ -3, %9 ], [ %11, %10 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sigqueue_alloc() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 82
  %3 = load volatile ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %6 = tail call i32 @inc_rlimit_get_ucounts(ptr noundef %5, i32 noundef 12) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %34, label %8

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 93
  %10 = load ptr, ptr %9, align 16
  %11 = getelementptr %struct.signal_struct, ptr %10, i32 0, i32 50, i32 11
  %12 = load volatile i32, ptr %11, align 8
  %13 = icmp ugt i32 %6, %12
  br i1 %13, label %14, label %25, !prof !11

14:                                               ; preds = %8
  %15 = load i32, ptr @print_fatal_signals, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @___ratelimit(ptr noundef nonnull @print_dropped_signal.ratelimit_state, ptr noundef nonnull @__func__.print_dropped_signal) #16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 85
  %22 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %23 = load i32, ptr %22, align 8
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %21, i32 noundef %23, i32 noundef -1) #17
  br label %29

25:                                               ; preds = %8
  %26 = load ptr, ptr @sigqueue_cachep, align 4
  %27 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %26, i32 noundef 3264) #16
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30, !prof !11

29:                                               ; preds = %25, %20, %17, %14
  tail call void @dec_rlimit_put_ucounts(ptr noundef %5, i32 noundef 12) #16
  br label %34

30:                                               ; preds = %25
  store volatile ptr %27, ptr %27, align 8
  %31 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %27, ptr %31, align 4
  %32 = getelementptr inbounds %struct.sigqueue, ptr %27, i32 0, i32 1
  store i32 1, ptr %32, align 8
  %33 = getelementptr inbounds %struct.sigqueue, ptr %27, i32 0, i32 3
  store ptr %5, ptr %33, align 4
  br label %34

34:                                               ; preds = %30, %29, %0
  %35 = phi ptr [ null, %0 ], [ %27, %30 ], [ null, %29 ]
  ret ptr %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sigqueue_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sigqueue, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !11

6:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/signal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1931, 0\0A.popsection", ""() #16, !srcloc !36
  unreachable

7:                                                ; preds = %1
  %8 = tail call ptr @llvm.thread.pointer() #16
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 94
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #16
  %12 = load i32, ptr %2, align 4
  %13 = and i32 %12, -2
  store i32 %13, ptr %2, align 4
  %14 = load volatile ptr, ptr %0, align 4
  %15 = icmp ne ptr %14, %0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #16
  %16 = icmp eq ptr %0, null
  %17 = or i1 %16, %15
  br i1 %17, label %29, label %18

18:                                               ; preds = %7
  %19 = load i32, ptr %2, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.sigqueue, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @dec_rlimit_put_ucounts(ptr noundef nonnull %24, i32 noundef 12) #16
  store ptr null, ptr %23, align 4
  br label %27

27:                                               ; preds = %26, %22
  %28 = load ptr, ptr @sigqueue_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %28, ptr noundef nonnull %0) #16
  br label %29

29:                                               ; preds = %27, %18, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @send_sigqueue(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sigqueue, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sigqueue, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11, !prof !11

10:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/signal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1959, 0\0A.popsection", ""() #16, !srcloc !37
  unreachable

11:                                               ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %12 = tail call ptr @pid_task(ptr noundef %1, i32 noundef %2) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %102, label %14

14:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %15 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 94
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18, !prof !11

18:                                               ; preds = %23, %14
  %19 = phi ptr [ %24, %23 ], [ %16, %14 ]
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %19) #16
  %21 = load volatile ptr, ptr %15, align 4
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %27, label %23, !prof !10

23:                                               ; preds = %18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %19, i32 noundef %20) #16
  %24 = load volatile ptr, ptr %15, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18, !prof !11

26:                                               ; preds = %23, %14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %102

27:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %28 = tail call fastcc zeroext i1 @prepare_signal(i32 noundef %5, ptr noundef nonnull %12, i1 noundef zeroext false)
  br i1 %28, label %29, label %70

29:                                               ; preds = %27
  %30 = load volatile ptr, ptr %0, align 4
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %41, label %32, !prof !10

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.sigqueue, ptr %0, i32 0, i32 2, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, -2
  br i1 %35, label %37, label %36, !prof !10

36:                                               ; preds = %32
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/signal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1978, 0\0A.popsection", ""() #16, !srcloc !38
  unreachable

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.sigqueue, ptr %0, i32 0, i32 2, i32 0, i32 3, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %38, align 4
  br label %70

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.sigqueue, ptr %0, i32 0, i32 2, i32 0, i32 3, i32 0, i32 1
  store i32 0, ptr %42, align 4
  %43 = load ptr, ptr %15, align 4
  %44 = getelementptr inbounds %struct.sighand_struct, ptr %43, i32 0, i32 2, i32 1
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %44
  br i1 %46, label %49, label %47, !prof !10

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.sighand_struct, ptr %43, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %48, i32 noundef 3, i32 noundef 1, ptr noundef null) #16
  br label %49

49:                                               ; preds = %47, %41
  %50 = icmp eq i32 %2, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 93
  %53 = load ptr, ptr %52, align 16
  %54 = getelementptr inbounds %struct.signal_struct, ptr %53, i32 0, i32 6
  br label %57

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 98
  br label %57

57:                                               ; preds = %55, %51
  %58 = phi ptr [ %54, %51 ], [ %56, %55 ]
  %59 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  store ptr %0, ptr %59, align 4
  store ptr %58, ptr %0, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %60, ptr %61, align 4
  store volatile ptr %0, ptr %60, align 4
  %62 = getelementptr inbounds %struct.sigpending, ptr %58, i32 0, i32 1
  %63 = add i32 %5, -1
  %64 = and i32 %63, 31
  %65 = shl nuw i32 1, %64
  %66 = lshr i32 %63, 5
  %67 = getelementptr [2 x i32], ptr %62, i32 0, i32 %66
  %68 = load i32, ptr %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, ptr %67, align 4
  tail call fastcc void @complete_signal(i32 noundef %5, ptr noundef nonnull %12, i32 noundef %2)
  br label %70

70:                                               ; preds = %57, %37, %27
  %71 = phi i32 [ 0, %37 ], [ 0, %57 ], [ 1, %27 ]
  %72 = phi i32 [ 2, %37 ], [ 0, %57 ], [ 1, %27 ]
  %73 = icmp ne i32 %2, 0
  %74 = zext i1 %73 to i32
  %75 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_signal_generate, i32 0, i32 1), align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %100

77:                                               ; preds = %70
  %78 = tail call ptr @llvm.thread.pointer() #16
  %79 = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 2
  %80 = load i32, ptr %79, align 8
  %81 = lshr i32 %80, 5
  %82 = getelementptr i32, ptr @__cpu_online_mask, i32 %81
  %83 = load volatile i32, ptr %82, align 4
  %84 = and i32 %80, 31
  %85 = shl nuw i32 1, %84
  %86 = and i32 %85, %83
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %77
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !30
  %89 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_signal_generate, i32 0, i32 7), align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %99, label %91

91:                                               ; preds = %91, %88
  %92 = phi ptr [ %96, %91 ], [ %89, %88 ]
  %93 = load volatile ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.tracepoint_func, ptr %92, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  tail call void %93(ptr noundef %95, i32 noundef %5, ptr noundef %4, ptr noundef nonnull %12, i32 noundef %74, i32 noundef %72) #16
  %96 = getelementptr %struct.tracepoint_func, ptr %92, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %91

99:                                               ; preds = %91, %88
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  br label %100

100:                                              ; preds = %99, %77, %70
  %101 = load ptr, ptr %15, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %101, i32 noundef %20) #16
  br label %102

102:                                              ; preds = %100, %26, %11
  %103 = phi i32 [ %71, %100 ], [ -1, %11 ], [ -1, %26 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @prepare_signal(i32 noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.sigset_t, align 8
  %5 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 93
  %6 = load ptr, ptr %5, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store i64 0, ptr %4, align 8, !annotation !9
  %7 = getelementptr inbounds %struct.signal_struct, ptr %6, i32 0, i32 12
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.signal_struct, ptr %6, i32 0, i32 13
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = add i32 %0, -1
  br label %93

17:                                               ; preds = %11
  %18 = icmp eq i32 %0, 9
  br label %160

19:                                               ; preds = %3
  %20 = add i32 %0, -1
  %21 = icmp ult i32 %20, 31
  br i1 %21, label %22, label %93

22:                                               ; preds = %19
  %23 = shl nuw nsw i32 1, %20
  %24 = and i32 %23, 3932160
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %22
  store i32 131072, ptr %4, align 8
  %27 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.signal_struct, ptr %6, i32 0, i32 6
  call fastcc void @flush_sigqueue_mask(ptr noundef nonnull %4, ptr noundef %28)
  %29 = load ptr, ptr %5, align 16
  %30 = getelementptr inbounds %struct.signal_struct, ptr %29, i32 0, i32 3
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %93, label %33

33:                                               ; preds = %33, %26
  %34 = phi ptr [ %36, %33 ], [ %31, %26 ]
  %35 = getelementptr i8, ptr %34, i32 260
  call fastcc void @flush_sigqueue_mask(ptr noundef nonnull %4, ptr noundef %35)
  %36 = load volatile ptr, ptr %34, align 4
  %37 = load ptr, ptr %5, align 16
  %38 = getelementptr inbounds %struct.signal_struct, ptr %37, i32 0, i32 3
  %39 = icmp eq ptr %36, %38
  br i1 %39, label %93, label %33

40:                                               ; preds = %22
  %41 = icmp eq i32 %0, 18
  br i1 %41, label %42, label %93

42:                                               ; preds = %40
  store i32 3932160, ptr %4, align 8
  %43 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  store i32 0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.signal_struct, ptr %6, i32 0, i32 6
  call fastcc void @flush_sigqueue_mask(ptr noundef nonnull %4, ptr noundef %44)
  %45 = load ptr, ptr %5, align 16
  %46 = getelementptr inbounds %struct.signal_struct, ptr %45, i32 0, i32 3
  %47 = load volatile ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %46
  br i1 %48, label %73, label %49

49:                                               ; preds = %68, %42
  %50 = phi ptr [ %69, %68 ], [ %47, %42 ]
  %51 = getelementptr i8, ptr %50, i32 -1388
  %52 = getelementptr i8, ptr %50, i32 260
  call fastcc void @flush_sigqueue_mask(ptr noundef nonnull %4, ptr noundef %52)
  %53 = getelementptr i8, ptr %50, i32 -160
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, -458753
  store i32 %55, ptr %53, align 4
  %56 = and i32 %54, 3670016
  %57 = icmp eq i32 %56, 2097152
  br i1 %57, label %58, label %60, !prof !23

58:                                               ; preds = %49
  %59 = and i32 %54, -2555905
  store i32 %59, ptr %53, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  tail call void @wake_up_bit(ptr noundef %53, i32 noundef 21) #16
  br label %60

60:                                               ; preds = %58, %49
  %61 = getelementptr i8, ptr %50, i32 -836
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 65536
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67, !prof !10

65:                                               ; preds = %60
  %66 = tail call i32 @wake_up_state(ptr noundef %51, i32 noundef 4) #16
  br label %68

67:                                               ; preds = %60
  tail call fastcc void @ptrace_trap_notify(ptr noundef %51)
  br label %68

68:                                               ; preds = %67, %65
  %69 = load volatile ptr, ptr %50, align 4
  %70 = load ptr, ptr %5, align 16
  %71 = getelementptr inbounds %struct.signal_struct, ptr %70, i32 0, i32 3
  %72 = icmp eq ptr %69, %71
  br i1 %72, label %73, label %49

73:                                               ; preds = %68, %42
  %74 = load i32, ptr %7, align 8
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.signal_struct, ptr %6, i32 0, i32 11
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %77, %73
  %82 = phi i32 [ 18, %77 ], [ 34, %73 ]
  %83 = and i32 %74, 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85, !prof !10

85:                                               ; preds = %81
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 270, i32 noundef 9, ptr noundef null) #16
  %86 = load i32, ptr %7, align 8
  br label %87

87:                                               ; preds = %85, %81
  %88 = phi i32 [ %86, %85 ], [ %74, %81 ]
  %89 = and i32 %88, -52
  %90 = or i32 %89, %82
  store i32 %90, ptr %7, align 8
  %91 = getelementptr inbounds %struct.signal_struct, ptr %6, i32 0, i32 11
  store i32 0, ptr %91, align 4
  %92 = getelementptr inbounds %struct.signal_struct, ptr %6, i32 0, i32 8
  store i32 0, ptr %92, align 8
  br label %93

93:                                               ; preds = %87, %77, %40, %33, %26, %19, %15
  %94 = phi i32 [ %16, %15 ], [ %20, %26 ], [ %20, %19 ], [ %20, %77 ], [ %20, %87 ], [ %20, %40 ], [ %20, %33 ]
  %95 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 95
  %96 = lshr i32 %94, 5
  %97 = getelementptr [2 x i32], ptr %95, i32 0, i32 %96
  %98 = load i32, ptr %97, align 4
  %99 = and i32 %94, 31
  %100 = shl nuw i32 1, %99
  %101 = and i32 %98, %100
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %160

103:                                              ; preds = %93
  %104 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 96
  %105 = getelementptr [2 x i32], ptr %104, i32 0, i32 %96
  %106 = load i32, ptr %105, align 4
  %107 = and i32 %106, %100
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %160

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 5
  %111 = load i32, ptr %110, align 8
  %112 = icmp ne i32 %111, 0
  %113 = icmp ne i32 %0, 9
  %114 = and i1 %113, %112
  br i1 %114, label %160, label %115

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 94
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr %struct.sighand_struct, ptr %117, i32 0, i32 3, i32 %94
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 53
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %121, 1
  %123 = icmp ult i32 %94, 31
  %124 = and i1 %123, %122
  br i1 %124, label %125, label %129

125:                                              ; preds = %115
  %126 = shl nuw nsw i32 1, %94
  %127 = and i32 %126, 262400
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %160, !prof !10

129:                                              ; preds = %125, %115
  %130 = load ptr, ptr %5, align 16
  %131 = getelementptr inbounds %struct.signal_struct, ptr %130, i32 0, i32 12
  %132 = load i32, ptr %131, align 8
  %133 = and i32 %132, 64
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %143, label %135, !prof !10

135:                                              ; preds = %129
  %136 = icmp eq ptr %119, null
  br i1 %136, label %137, label %143

137:                                              ; preds = %135
  %138 = and i1 %123, %2
  br i1 %138, label %139, label %160

139:                                              ; preds = %137
  %140 = shl nuw nsw i32 1, %94
  %141 = and i32 %140, 262400
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %160, label %143

143:                                              ; preds = %139, %135, %129
  %144 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 4
  %145 = load i32, ptr %144, align 4
  %146 = and i32 %145, 2097152
  %147 = icmp ne i32 %146, 0
  %148 = icmp eq ptr %119, inttoptr (i32 3 to ptr)
  %149 = select i1 %147, i1 %148, i1 false
  %150 = xor i1 %2, true
  %151 = and i1 %149, %150
  br i1 %151, label %160, label %152, !prof !11

152:                                              ; preds = %143
  %153 = ptrtoint ptr %119 to i32
  switch i32 %153, label %159 [
    i32 1, label %160
    i32 0, label %154
  ]

154:                                              ; preds = %152
  br i1 %123, label %155, label %160

155:                                              ; preds = %154
  %156 = shl nuw nsw i32 1, %94
  %157 = and i32 %156, 138608640
  %158 = icmp eq i32 %157, 0
  br label %160

159:                                              ; preds = %152
  br label %160

160:                                              ; preds = %159, %155, %154, %152, %143, %139, %137, %125, %109, %103, %93, %17
  %161 = phi i1 [ %18, %17 ], [ true, %103 ], [ true, %93 ], [ true, %109 ], [ false, %125 ], [ false, %139 ], [ false, %137 ], [ false, %143 ], [ false, %152 ], [ true, %154 ], [ %158, %155 ], [ true, %159 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret i1 %161
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @complete_signal(i32 noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 93
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 95
  %7 = add i32 %0, -1
  %8 = lshr i32 %7, 5
  %9 = getelementptr [2 x i32], ptr %6, i32 0, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %10, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = icmp eq i32 %0, 9
  br i1 %21, label %82, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 1
  %24 = load volatile i32, ptr %23, align 8
  %25 = and i32 %24, 12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = tail call i32 @task_curr(ptr noundef %1) #16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %79

30:                                               ; preds = %27
  %31 = load volatile i32, ptr %1, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %79, label %34

34:                                               ; preds = %30, %22, %15, %3
  %35 = icmp eq i32 %2, 0
  br i1 %35, label %153, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 64
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %37
  br i1 %39, label %153, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 5
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq i32 %0, 9
  br label %44

44:                                               ; preds = %72, %40
  %45 = phi ptr [ %42, %40 ], [ %73, %72 ]
  %46 = phi ptr [ %42, %40 ], [ %76, %72 ]
  %47 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 95
  %48 = getelementptr [2 x i32], ptr %47, i32 0, i32 %8
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, %12
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %52
  br i1 %43, label %78, label %58

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 1
  %60 = load volatile i32, ptr %59, align 8
  %61 = and i32 %60, 12
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = tail call i32 @task_curr(ptr noundef %46) #16
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load volatile i32, ptr %46, align 4
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %41, align 8
  br label %72

72:                                               ; preds = %70, %58, %52, %44
  %73 = phi ptr [ %71, %70 ], [ %45, %58 ], [ %45, %52 ], [ %45, %44 ]
  %74 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 64
  %75 = load volatile ptr, ptr %74, align 4
  %76 = getelementptr i8, ptr %75, i32 -1380
  %77 = icmp eq ptr %76, %73
  br i1 %77, label %153, label %44

78:                                               ; preds = %66, %63, %57
  store ptr %46, ptr %41, align 8
  br label %79

79:                                               ; preds = %78, %30, %27
  %80 = phi ptr [ %46, %78 ], [ %1, %30 ], [ %1, %27 ]
  %81 = icmp ult i32 %7, 31
  br i1 %81, label %82, label %87

82:                                               ; preds = %79, %20
  %83 = phi ptr [ %80, %79 ], [ %1, %20 ]
  %84 = shl nuw nsw i32 1, %7
  %85 = and i32 %84, 142540800
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %146

87:                                               ; preds = %82, %79
  %88 = phi i1 [ true, %82 ], [ false, %79 ]
  %89 = phi ptr [ %83, %82 ], [ %80, %79 ]
  %90 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 94
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr %struct.sighand_struct, ptr %91, i32 0, i32 3, i32 %7
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %146

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 13
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 12
  %101 = load i32, ptr %100, align 8
  %102 = and i32 %101, 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %146

104:                                              ; preds = %99, %95
  %105 = getelementptr inbounds %struct.task_struct, ptr %89, i32 0, i32 96
  %106 = getelementptr [2 x i32], ptr %105, i32 0, i32 %8
  %107 = load i32, ptr %106, align 4
  %108 = and i32 %107, %12
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %146

110:                                              ; preds = %104
  %111 = icmp eq i32 %0, 9
  br i1 %111, label %116, label %112

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 5
  %114 = load i32, ptr %113, align 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %146

116:                                              ; preds = %112, %110
  br i1 %88, label %117, label %121

117:                                              ; preds = %116
  %118 = shl nuw i32 1, %7
  %119 = and i32 %118, 1098908924
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %146

121:                                              ; preds = %117, %116
  %122 = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 12
  store i32 4, ptr %122, align 8
  %123 = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 8
  store i32 %0, ptr %123, align 8
  %124 = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 11
  store i32 0, ptr %124, align 4
  br label %125

125:                                              ; preds = %141, %121
  %126 = phi ptr [ %1, %121 ], [ %144, %141 ]
  %127 = getelementptr inbounds %struct.task_struct, ptr %126, i32 0, i32 45
  %128 = load i32, ptr %127, align 4
  %129 = and i32 %128, -2031617
  store i32 %129, ptr %127, align 4
  %130 = and i32 %128, 2097152
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %134, label %132, !prof !28

132:                                              ; preds = %125
  %133 = and i32 %128, -4128769
  store i32 %133, ptr %127, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  tail call void @wake_up_bit(ptr noundef %127, i32 noundef 21) #16
  br label %134

134:                                              ; preds = %132, %125
  %135 = getelementptr inbounds %struct.task_struct, ptr %126, i32 0, i32 98, i32 1
  %136 = load i32, ptr %135, align 4
  %137 = or i32 %136, 256
  store i32 %137, ptr %135, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %126) #16
  %138 = tail call i32 @wake_up_state(ptr noundef %126, i32 noundef 257) #16
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  tail call void @kick_process(ptr noundef %126) #16
  br label %141

141:                                              ; preds = %140, %134
  %142 = getelementptr inbounds %struct.task_struct, ptr %126, i32 0, i32 64
  %143 = load volatile ptr, ptr %142, align 4
  %144 = getelementptr i8, ptr %143, i32 -1380
  %145 = icmp eq ptr %144, %1
  br i1 %145, label %153, label %125

146:                                              ; preds = %117, %112, %104, %99, %87, %82
  %147 = phi ptr [ %89, %117 ], [ %89, %112 ], [ %89, %104 ], [ %89, %99 ], [ %89, %87 ], [ %83, %82 ]
  %148 = icmp eq i32 %0, 9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %147) #16
  %149 = select i1 %148, i32 257, i32 1
  %150 = tail call i32 @wake_up_state(ptr noundef %147, i32 noundef %149) #16
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  tail call void @kick_process(ptr noundef %147) #16
  br label %153

153:                                              ; preds = %152, %146, %141, %72, %36, %34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @do_notify_parent(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.kernel_siginfo, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = icmp eq i32 %1, -1
  br i1 %4, label %5, label %6, !prof !11

5:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/signal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2023, 0\0A.popsection", ""() #16, !srcloc !39
  unreachable

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 1
  %8 = load volatile i32, ptr %7, align 8
  %9 = and i32 %8, 12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !10

11:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/signal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2026, 0\0A.popsection", ""() #16, !srcloc !40
  unreachable

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 59
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 64
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %25, label %24, !prof !10

24:                                               ; preds = %20, %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/signal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2029, 0\0A.popsection", ""() #16, !srcloc !41
  unreachable

25:                                               ; preds = %20, %12
  %26 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 41
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30, !prof !11

29:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2003, i32 noundef 9, ptr noundef null) #16
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 62
  %32 = load ptr, ptr %31, align 64
  %33 = getelementptr inbounds %struct.pid, ptr %32, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %33, i32 noundef 3, i32 noundef 0, ptr noundef null) #16
  %34 = icmp eq i32 %1, 17
  br i1 %34, label %44, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 105
  %37 = load i64, ptr %36, align 32
  %38 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 56
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 106
  %41 = load volatile i64, ptr %40, align 8
  %42 = icmp eq i64 %37, %41
  %43 = select i1 %42, i32 %1, i32 17
  br label %44

44:                                               ; preds = %35, %30
  %45 = phi i32 [ 17, %30 ], [ %43, %35 ]
  %46 = getelementptr inbounds i8, ptr %3, i32 8
  store i32 0, ptr %46, align 4
  store i32 %45, ptr %3, align 4
  %47 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1
  store i32 0, ptr %47, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %48 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 56
  %49 = load ptr, ptr %48, align 8
  %50 = tail call ptr @task_active_pid_ns(ptr noundef %49) #16
  %51 = tail call i32 @__task_pid_nr_ns(ptr noundef %0, i32 noundef 0, ptr noundef %50) #16
  %52 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 3
  store i32 %51, ptr %52, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %53 = load ptr, ptr %48, align 8
  %54 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 82
  %55 = load volatile ptr, ptr %54, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %56 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 82
  %57 = load volatile ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.cred, ptr %57, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %60 = icmp eq i32 %59, -1
  %61 = load i32, ptr @overflowuid, align 4
  %62 = select i1 %60, i32 %61, i32 %59
  %63 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 3, i32 0, i32 1
  store i32 %62, ptr %63, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %64 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 70
  %65 = load i64, ptr %64, align 8
  %66 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 71
  %67 = load i64, ptr %66, align 16
  %68 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %69 = load ptr, ptr %68, align 16
  %70 = getelementptr inbounds %struct.signal_struct, ptr %69, i32 0, i32 27
  %71 = load i64, ptr %70, align 8
  %72 = add i64 %71, %65
  %73 = tail call i64 @nsec_to_clock_t(i64 noundef %72) #16
  %74 = trunc i64 %73 to i32
  %75 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 3, i32 0, i32 3
  store i32 %74, ptr %75, align 4
  %76 = load ptr, ptr %68, align 16
  %77 = getelementptr inbounds %struct.signal_struct, ptr %76, i32 0, i32 28
  %78 = load i64, ptr %77, align 8
  %79 = add i64 %78, %67
  %80 = tail call i64 @nsec_to_clock_t(i64 noundef %79) #16
  %81 = trunc i64 %80 to i32
  %82 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 3, i32 0, i32 4
  store i32 %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 42
  %84 = load i32, ptr %83, align 64
  %85 = and i32 %84, 127
  %86 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 3, i32 0, i32 2
  store i32 %85, ptr %86, align 4
  %87 = and i32 %84, 128
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %44
  %90 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 2
  store i32 3, ptr %90, align 4
  br label %97

91:                                               ; preds = %44
  %92 = icmp eq i32 %85, 0
  %93 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 2
  br i1 %92, label %95, label %94

94:                                               ; preds = %91
  store i32 2, ptr %93, align 4
  br label %97

95:                                               ; preds = %91
  store i32 1, ptr %93, align 4
  %96 = ashr i32 %84, 8
  store i32 %96, ptr %86, align 4
  br label %97

97:                                               ; preds = %95, %94, %89
  %98 = load ptr, ptr %48, align 8
  %99 = getelementptr inbounds %struct.task_struct, ptr %98, i32 0, i32 94
  %100 = load ptr, ptr %99, align 4
  %101 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %100) #16
  %102 = load i32, ptr %13, align 8
  %103 = icmp eq i32 %102, 0
  %104 = icmp eq i32 %45, 17
  %105 = and i1 %104, %103
  br i1 %105, label %106, label %115

106:                                              ; preds = %97
  %107 = getelementptr %struct.sighand_struct, ptr %100, i32 0, i32 3, i32 16
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, inttoptr (i32 1 to ptr)
  br i1 %109, label %123, label %110

110:                                              ; preds = %106
  %111 = getelementptr %struct.sighand_struct, ptr %100, i32 0, i32 3, i32 16, i32 0, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = and i32 %112, 2
  %114 = icmp ne i32 %113, 0
  br label %118

115:                                              ; preds = %97
  %116 = add i32 %45, -1
  %117 = icmp ult i32 %116, 64
  br i1 %117, label %118, label %123

118:                                              ; preds = %115, %110
  %119 = phi i32 [ %45, %115 ], [ 17, %110 ]
  %120 = phi i1 [ false, %115 ], [ %114, %110 ]
  %121 = load ptr, ptr %48, align 8
  %122 = call fastcc i32 @__send_signal(i32 noundef %119, ptr noundef nonnull %3, ptr noundef %121, i32 noundef 1, i1 noundef zeroext false)
  br label %123

123:                                              ; preds = %118, %115, %106
  %124 = phi i1 [ %120, %118 ], [ false, %115 ], [ true, %106 ]
  %125 = load ptr, ptr %48, align 8
  call void @__wake_up_parent(ptr noundef %0, ptr noundef %125) #16
  call void @_raw_spin_unlock_irqrestore(ptr noundef %100, i32 noundef %101) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret i1 %124
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_active_pid_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nsec_to_clock_t(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ptrace_notify(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.kernel_siginfo, align 4
  %3 = and i32 %0, -65409
  %4 = icmp eq i32 %3, 5
  br i1 %4, label %6, label %5, !prof !10

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/signal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2347, 0\0A.popsection", ""() #16, !srcloc !42
  unreachable

6:                                                ; preds = %1
  %7 = tail call ptr @llvm.thread.pointer() #16
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 102
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !10

11:                                               ; preds = %6
  tail call void @task_work_run() #16
  br label %12

12:                                               ; preds = %11, %6
  %13 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 94
  %14 = load ptr, ptr %13, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %14) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #16
  %15 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(28) %15, i8 0, i64 28, i1 false) #16
  store i32 5, ptr %2, align 4
  %16 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 2
  store i32 %0, ptr %16, align 4
  %17 = tail call i32 @__task_pid_nr_ns(ptr noundef %7, i32 noundef 0, ptr noundef null) #16
  %18 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 3
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 83
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.cred, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, -1
  %24 = load i32, ptr @overflowuid, align 4
  %25 = select i1 %23, i32 %24, i32 %22
  %26 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 3, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  call fastcc void @ptrace_stop(i32 noundef %0, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #16
  %27 = load ptr, ptr %13, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %28 = load i16, ptr %27, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %27, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_work_run() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @get_signal(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @llvm.thread.pointer() #16
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 94
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 93
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 102
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !10

11:                                               ; preds = %1
  tail call void @task_work_run() #16
  br label %12

12:                                               ; preds = %11, %1
  %13 = load volatile i32, ptr %3, align 4
  %14 = and i32 %13, 256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %3) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !43
  %17 = load ptr, ptr %8, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @task_work_run() #16
  br label %20

20:                                               ; preds = %19, %16, %12
  %21 = load volatile i32, ptr %3, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %335, label %24

24:                                               ; preds = %20
  %25 = tail call zeroext i1 @uprobe_deny_signal() #16
  br i1 %25, label %335, label %26, !prof !11

26:                                               ; preds = %24
  %27 = load volatile i32, ptr @system_freezing_cnt, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29, !prof !10

29:                                               ; preds = %26
  %30 = tail call zeroext i1 @freezing_slow_path(ptr noundef %3) #16
  br i1 %30, label %31, label %33, !prof !11

31:                                               ; preds = %29
  %32 = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #16
  br label %33

33:                                               ; preds = %31, %29, %26
  %34 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 12
  %35 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 59
  %36 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 10
  %37 = getelementptr inbounds %struct.ksignal, ptr %0, i32 0, i32 1
  %38 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 98, i32 1
  %39 = getelementptr %struct.sighand_struct, ptr %5, i32 0, i32 3, i32 8
  %40 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %41 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 45
  %42 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 49
  %43 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 98
  %44 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 95
  %45 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 5
  %46 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 4
  %47 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 2
  br label %49

48:                                               ; preds = %288, %282, %143, %138, %135, %132, %121
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  br label %49

49:                                               ; preds = %48, %33
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #16
  %50 = load i32, ptr %34, align 8
  %51 = and i32 %50, 48
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %81, label %53, !prof !10

53:                                               ; preds = %77, %49
  %54 = phi i32 [ %78, %77 ], [ %50, %49 ]
  %55 = and i32 %54, 32
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, i32 5, i32 6
  %58 = and i32 %54, -49
  store i32 %58, ptr %34, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %59 = load i16, ptr %5, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #16
  tail call fastcc void @do_notify_parent_cldstop(ptr noundef %3, i1 noundef zeroext false, i32 noundef %57)
  %61 = load ptr, ptr %35, align 4
  %62 = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 55
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 56
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 93
  %67 = load ptr, ptr %66, align 16
  %68 = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 93
  %69 = load ptr, ptr %68, align 16
  %70 = icmp eq ptr %67, %69
  br i1 %70, label %72, label %71

71:                                               ; preds = %53
  tail call fastcc void @do_notify_parent_cldstop(ptr noundef %61, i1 noundef zeroext true, i32 noundef %57)
  br label %72

72:                                               ; preds = %71, %53
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #16, !srcloc !33
  %73 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #16, !srcloc !34
  %74 = extractvalue { i32, i32 } %73, 0
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  br label %77

77:                                               ; preds = %76, %72
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !35
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #16
  %78 = load i32, ptr %34, align 8
  %79 = and i32 %78, 48
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %53, !prof !10

81:                                               ; preds = %77, %49
  %82 = phi i32 [ %50, %49 ], [ %78, %77 ]
  br label %83

83:                                               ; preds = %329, %81
  %84 = phi i32 [ %330, %329 ], [ %82, %81 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  %85 = and i32 %84, 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load ptr, ptr %36, align 8
  %89 = icmp eq ptr %88, null
  br i1 %89, label %117, label %90

90:                                               ; preds = %87, %83
  store i32 9, ptr %37, align 4
  %91 = load i32, ptr %38, align 4
  %92 = and i32 %91, -257
  store i32 %92, ptr %38, align 4
  %93 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_signal_deliver, i32 0, i32 1), align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %116

95:                                               ; preds = %90
  %96 = load i32, ptr %40, align 8
  %97 = lshr i32 %96, 5
  %98 = getelementptr i32, ptr @__cpu_online_mask, i32 %97
  %99 = load volatile i32, ptr %98, align 4
  %100 = and i32 %96, 31
  %101 = shl nuw i32 1, %100
  %102 = and i32 %101, %99
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %116, label %104

104:                                              ; preds = %95
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !44
  %105 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_signal_deliver, i32 0, i32 7), align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %115, label %107

107:                                              ; preds = %107, %104
  %108 = phi ptr [ %112, %107 ], [ %105, %104 ]
  %109 = load volatile ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.tracepoint_func, ptr %108, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  tail call void %109(ptr noundef %111, i32 noundef 9, ptr noundef null, ptr noundef %39) #16
  %112 = getelementptr %struct.tracepoint_func, ptr %108, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %107

115:                                              ; preds = %107, %104
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !45
  br label %116

116:                                              ; preds = %115, %95, %90
  tail call void @recalc_sigpending()
  br label %291

117:                                              ; preds = %87
  %118 = load i32, ptr %41, align 4
  %119 = and i32 %118, 131072
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %125, label %121, !prof !10

121:                                              ; preds = %117
  %122 = tail call fastcc zeroext i1 @do_signal_stop(i32 noundef 0)
  br i1 %122, label %48, label %123

123:                                              ; preds = %121
  %124 = load i32, ptr %41, align 4
  br label %125

125:                                              ; preds = %123, %117
  %126 = phi i32 [ %124, %123 ], [ %118, %117 ]
  %127 = and i32 %126, 9961472
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %139, label %129, !prof !10

129:                                              ; preds = %125
  %130 = and i32 %126, 1572864
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  tail call fastcc void @do_jobctl_trap()
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %133 = load i16, ptr %5, align 4
  %134 = add i16 %133, 1
  store i16 %134, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  br label %48

135:                                              ; preds = %129
  %136 = and i32 %126, 8388608
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %48, label %138

138:                                              ; preds = %135
  tail call fastcc void @do_freezer_trap()
  br label %48

139:                                              ; preds = %125
  %140 = load i8, ptr %42, align 8
  %141 = and i8 %140, 32
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %146, label %143, !prof !10

143:                                              ; preds = %139
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %144 = load i16, ptr %5, align 4
  %145 = add i16 %144, 1
  store i16 %145, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  tail call void @cgroup_leave_frozen(i1 noundef zeroext false) #16
  br label %48

146:                                              ; preds = %139
  store i32 0, ptr %2, align 4
  %147 = load i32, ptr %38, align 4
  %148 = load i32, ptr %44, align 8
  %149 = xor i32 %148, -1
  %150 = and i32 %147, 1073743064
  %151 = and i32 %150, %149
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %206, label %153

153:                                              ; preds = %146
  %154 = load ptr, ptr %43, align 4
  %155 = icmp eq ptr %154, %43
  br i1 %155, label %206, label %156

156:                                              ; preds = %168, %153
  %157 = phi ptr [ %169, %168 ], [ %154, %153 ]
  %158 = getelementptr inbounds %struct.sigqueue, ptr %157, i32 0, i32 2, i32 0, i32 2
  %159 = load i32, ptr %158, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.sigqueue, ptr %157, i32 0, i32 2
  %163 = load i32, ptr %162, align 4
  %164 = add i32 %163, -1
  %165 = shl nuw i32 1, %164
  %166 = and i32 %165, 1073743064
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %161, %156
  %169 = load ptr, ptr %157, align 4
  %170 = icmp eq ptr %169, %43
  br i1 %170, label %206, label %156

171:                                              ; preds = %175, %161
  %172 = phi ptr [ %173, %175 ], [ %157, %161 ]
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, %43
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.sigqueue, ptr %173, i32 0, i32 2
  %177 = load i32, ptr %176, align 4
  %178 = icmp eq i32 %177, %163
  br i1 %178, label %187, label %171

179:                                              ; preds = %171
  %180 = and i32 %164, 31
  %181 = shl nuw i32 1, %180
  %182 = xor i32 %181, -1
  %183 = lshr i32 %164, 5
  %184 = getelementptr [2 x i32], ptr %38, i32 0, i32 %183
  %185 = load i32, ptr %184, align 4
  %186 = and i32 %185, %182
  store i32 %186, ptr %184, align 4
  tail call void @recalc_sigpending() #16
  br label %187

187:                                              ; preds = %179, %175
  %188 = getelementptr inbounds %struct.list_head, ptr %157, i32 0, i32 1
  %189 = load ptr, ptr %188, align 4
  %190 = load ptr, ptr %157, align 4
  %191 = getelementptr inbounds %struct.list_head, ptr %190, i32 0, i32 1
  store ptr %189, ptr %191, align 4
  store volatile ptr %190, ptr %189, align 4
  store volatile ptr %157, ptr %157, align 4
  store ptr %157, ptr %188, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %37, ptr noundef align 4 dereferenceable(32) %162, i32 32, i1 false) #16
  %192 = getelementptr inbounds %struct.sigqueue, ptr %157, i32 0, i32 1
  %193 = load i32, ptr %192, align 4
  %194 = and i32 %193, 1
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %187
  %197 = getelementptr inbounds %struct.sigqueue, ptr %157, i32 0, i32 3
  %198 = load ptr, ptr %197, align 4
  %199 = icmp eq ptr %198, null
  br i1 %199, label %201, label %200

200:                                              ; preds = %196
  tail call void @dec_rlimit_put_ucounts(ptr noundef nonnull %198, i32 noundef 12) #16
  store ptr null, ptr %197, align 4
  br label %201

201:                                              ; preds = %200, %196
  %202 = load ptr, ptr @sigqueue_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %202, ptr noundef %157) #16
  br label %203

203:                                              ; preds = %201, %187
  %204 = load i32, ptr %37, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %203, %168, %153, %146
  %207 = call i32 @dequeue_signal(ptr noundef %3, ptr noundef %44, ptr noundef %37, ptr noundef nonnull %2)
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %325, label %209

209:                                              ; preds = %206, %203
  %210 = phi i32 [ %207, %206 ], [ %204, %203 ]
  %211 = load i32, ptr %45, align 8
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %225, label %213, !prof !10

213:                                              ; preds = %209
  %214 = icmp eq i32 %210, 9
  br i1 %214, label %225, label %215

215:                                              ; preds = %213
  %216 = add i32 %210, -1
  %217 = getelementptr %struct.sighand_struct, ptr %5, i32 0, i32 3, i32 %216, i32 0, i32 1
  %218 = load i32, ptr %217, align 4
  %219 = and i32 %218, 8388608
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %215
  %222 = load i32, ptr %2, align 4
  %223 = tail call fastcc i32 @ptrace_signal(i32 noundef %210, ptr noundef %37, i32 noundef %222)
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %329, label %225

225:                                              ; preds = %221, %215, %213, %209
  %226 = phi i32 [ %210, %215 ], [ %223, %221 ], [ 9, %213 ], [ %210, %209 ]
  %227 = add i32 %226, -1
  %228 = getelementptr %struct.sighand_struct, ptr %5, i32 0, i32 3, i32 %227
  %229 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_signal_deliver, i32 0, i32 1), align 4
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %231, label %252

231:                                              ; preds = %225
  %232 = load i32, ptr %40, align 8
  %233 = lshr i32 %232, 5
  %234 = getelementptr i32, ptr @__cpu_online_mask, i32 %233
  %235 = load volatile i32, ptr %234, align 4
  %236 = and i32 %232, 31
  %237 = shl nuw i32 1, %236
  %238 = and i32 %237, %235
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %252, label %240

240:                                              ; preds = %231
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !44
  %241 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_signal_deliver, i32 0, i32 7), align 4
  %242 = icmp eq ptr %241, null
  br i1 %242, label %251, label %243

243:                                              ; preds = %243, %240
  %244 = phi ptr [ %248, %243 ], [ %241, %240 ]
  %245 = load volatile ptr, ptr %244, align 4
  %246 = getelementptr inbounds %struct.tracepoint_func, ptr %244, i32 0, i32 1
  %247 = load ptr, ptr %246, align 4
  tail call void %245(ptr noundef %247, i32 noundef %226, ptr noundef %37, ptr noundef %228) #16
  %248 = getelementptr %struct.tracepoint_func, ptr %244, i32 1
  %249 = load ptr, ptr %248, align 4
  %250 = icmp eq ptr %249, null
  br i1 %250, label %251, label %243

251:                                              ; preds = %243, %240
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !45
  br label %252

252:                                              ; preds = %251, %231, %225
  %253 = load ptr, ptr %228, align 4
  %254 = ptrtoint ptr %253 to i32
  switch i32 %254, label %255 [
    i32 1, label %329
    i32 0, label %260
  ]

255:                                              ; preds = %252
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %0, ptr noundef align 4 dereferenceable(20) %228, i32 20, i1 false)
  %256 = getelementptr inbounds %struct.sigaction, ptr %228, i32 0, i32 1
  %257 = load i32, ptr %256, align 4
  %258 = icmp sgt i32 %257, -1
  br i1 %258, label %325, label %259

259:                                              ; preds = %255
  store ptr null, ptr %228, align 4
  br label %325

260:                                              ; preds = %252
  %261 = icmp ult i32 %227, 31
  br i1 %261, label %262, label %270

262:                                              ; preds = %260
  %263 = shl nuw nsw i32 1, %227
  %264 = and i32 %263, 138608640
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %329

266:                                              ; preds = %262
  %267 = load i32, ptr %34, align 8
  %268 = and i32 %267, 64
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %277, label %274, !prof !10

270:                                              ; preds = %260
  %271 = load i32, ptr %34, align 8
  %272 = and i32 %271, 64
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %291, label %329, !prof !10

274:                                              ; preds = %266
  %275 = and i32 %263, 262400
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %329, label %277

277:                                              ; preds = %274, %266
  %278 = and i32 %263, 3932160
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %291, label %280

280:                                              ; preds = %277
  %281 = icmp eq i32 %226, 19
  br i1 %281, label %288, label %282

282:                                              ; preds = %280
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %283 = load i16, ptr %5, align 4
  %284 = add i16 %283, 1
  store i16 %284, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  %285 = tail call i32 @is_current_pgrp_orphaned() #16
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %48

287:                                              ; preds = %282
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #16
  br label %288

288:                                              ; preds = %287, %280
  %289 = load i32, ptr %37, align 4
  %290 = tail call fastcc zeroext i1 @do_signal_stop(i32 noundef %289)
  br i1 %290, label %48, label %329

291:                                              ; preds = %277, %270, %116
  %292 = phi i32 [ 9, %116 ], [ %226, %277 ], [ %226, %270 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %293 = load i16, ptr %5, align 4
  %294 = add i16 %293, 1
  store i16 %294, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  %295 = load i8, ptr %42, align 8
  %296 = and i8 %295, 32
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %299, label %298, !prof !10

298:                                              ; preds = %291
  tail call void @cgroup_leave_frozen(i1 noundef zeroext true) #16
  br label %299

299:                                              ; preds = %298, %291
  %300 = load i32, ptr %46, align 4
  %301 = or i32 %300, 1024
  store i32 %301, ptr %46, align 4
  %302 = add i32 %292, -1
  %303 = icmp ult i32 %302, 31
  br i1 %303, label %304, label %318

304:                                              ; preds = %299
  %305 = shl nuw nsw i32 1, %302
  %306 = and i32 %305, 1098908924
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %318, label %308

308:                                              ; preds = %304
  %309 = load i32, ptr @print_fatal_signals, align 4
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %316, label %311

311:                                              ; preds = %308
  %312 = load i32, ptr %37, align 4
  %313 = load ptr, ptr %47, align 4
  %314 = getelementptr i8, ptr %313, i32 8112
  %315 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %312) #17
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !46
  tail call void @show_regs(ptr noundef %314) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !47
  br label %316

316:                                              ; preds = %311, %308
  tail call void @do_coredump(ptr noundef %37) #16
  %317 = load i32, ptr %46, align 4
  br label %318

318:                                              ; preds = %316, %304, %299
  %319 = phi i32 [ %317, %316 ], [ %301, %304 ], [ %301, %299 ]
  %320 = and i32 %319, 16
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %323, label %322

322:                                              ; preds = %318
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  br label %331

323:                                              ; preds = %318
  %324 = load i32, ptr %37, align 4
  tail call void @do_group_exit(i32 noundef %324) #16
  br label %329

325:                                              ; preds = %259, %255, %206
  %326 = phi i32 [ %226, %255 ], [ %226, %259 ], [ 0, %206 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %327 = load i16, ptr %5, align 4
  %328 = add i16 %327, 1
  store i16 %328, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  br label %331

329:                                              ; preds = %323, %288, %274, %270, %262, %252, %221
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  %330 = load i32, ptr %34, align 8
  br label %83

331:                                              ; preds = %325, %322
  %332 = phi i32 [ %326, %325 ], [ %292, %322 ]
  %333 = getelementptr inbounds %struct.ksignal, ptr %0, i32 0, i32 2
  store i32 %332, ptr %333, align 4
  %334 = icmp sgt i32 %332, 0
  br label %335

335:                                              ; preds = %331, %24, %20
  %336 = phi i1 [ %334, %331 ], [ false, %20 ], [ false, %24 ]
  ret i1 %336
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uprobe_deny_signal() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @do_notify_parent_cldstop(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.kernel_siginfo, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #16
  br i1 %1, label %5, label %7

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 56
  br label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 59
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 55
  br label %11

11:                                               ; preds = %7, %5
  %12 = phi ptr [ %6, %5 ], [ %10, %7 ]
  %13 = phi ptr [ %0, %5 ], [ %9, %7 ]
  %14 = load ptr, ptr %12, align 4
  %15 = getelementptr inbounds i8, ptr %4, i32 20
  store i32 0, ptr %15, align 4
  store i32 17, ptr %4, align 4
  %16 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 1
  store i32 0, ptr %16, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %17 = tail call ptr @task_active_pid_ns(ptr noundef %14) #16
  %18 = tail call i32 @__task_pid_nr_ns(ptr noundef %13, i32 noundef 0, ptr noundef %17) #16
  %19 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 3
  store i32 %18, ptr %19, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %20 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 82
  %21 = load volatile ptr, ptr %20, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %22 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 82
  %23 = load volatile ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %26 = icmp eq i32 %25, -1
  %27 = load i32, ptr @overflowuid, align 4
  %28 = select i1 %26, i32 %27, i32 %25
  %29 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 3, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %30 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 70
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 71
  %33 = load i64, ptr %32, align 16
  %34 = tail call i64 @nsec_to_clock_t(i64 noundef %31) #16
  %35 = trunc i64 %34 to i32
  %36 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 3, i32 0, i32 3
  store i32 %35, ptr %36, align 4
  %37 = tail call i64 @nsec_to_clock_t(i64 noundef %33) #16
  %38 = trunc i64 %37 to i32
  %39 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 3, i32 0, i32 4
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 2
  store i32 %2, ptr %40, align 4
  switch i32 %2, label %51 [
    i32 6, label %52
    i32 5, label %41
    i32 4, label %47
  ]

41:                                               ; preds = %11
  %42 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 93
  %43 = load ptr, ptr %42, align 16
  %44 = getelementptr inbounds %struct.signal_struct, ptr %43, i32 0, i32 8
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 127
  br label %52

47:                                               ; preds = %11
  %48 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 42
  %49 = load i32, ptr %48, align 64
  %50 = and i32 %49, 127
  br label %52

51:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/signal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2169, 0\0A.popsection", ""() #16, !srcloc !48
  unreachable

52:                                               ; preds = %47, %41, %11
  %53 = phi i32 [ %50, %47 ], [ %46, %41 ], [ 18, %11 ]
  %54 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 3, i32 0, i32 2
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 94
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %56) #16
  %58 = getelementptr %struct.sighand_struct, ptr %56, i32 0, i32 3, i32 16
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, inttoptr (i32 1 to ptr)
  br i1 %60, label %68, label %61

61:                                               ; preds = %52
  %62 = getelementptr %struct.sighand_struct, ptr %56, i32 0, i32 3, i32 16, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = call fastcc i32 @send_signal(i32 noundef 17, ptr noundef nonnull %4, ptr noundef %14, i32 noundef 1) #16
  br label %68

68:                                               ; preds = %66, %61, %52
  call void @__wake_up_parent(ptr noundef %13, ptr noundef %14) #16
  call void @_raw_spin_unlock_irqrestore(ptr noundef %56, i32 noundef %57) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @do_signal_stop(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #16
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 93
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 45
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 131072
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %114

9:                                                ; preds = %1
  %10 = icmp ugt i32 %0, 65535
  %11 = load i1, ptr @do_signal_stop.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %16, !prof !11

14:                                               ; preds = %9
  store i1 true, ptr @do_signal_stop.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2388, i32 noundef 9, ptr noundef null) #16
  %15 = load i32, ptr %5, align 4
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi i32 [ %15, %14 ], [ %6, %9 ]
  %18 = and i32 %17, 65536
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %162, label %20, !prof !11

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.signal_struct, ptr %4, i32 0, i32 12
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %162, !prof !10

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.signal_struct, ptr %4, i32 0, i32 10
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %162, !prof !10

29:                                               ; preds = %25
  %30 = and i32 %22, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.signal_struct, ptr %4, i32 0, i32 8
  store i32 %0, ptr %33, align 8
  br label %34

34:                                               ; preds = %32, %29
  %35 = getelementptr inbounds %struct.signal_struct, ptr %4, i32 0, i32 11
  store i32 0, ptr %35, align 4
  %36 = or i32 %0, 393216
  %37 = and i32 %0, -4128768
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39, !prof !10

39:                                               ; preds = %34
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/signal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 287, 0\0A.popsection", ""() #16, !srcloc !19
  unreachable

40:                                               ; preds = %34
  %41 = load volatile i32, ptr %2, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 98, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 256
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %63, !prof !10

49:                                               ; preds = %44, %40
  %50 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %63, !prof !10

54:                                               ; preds = %49
  %55 = and i32 %0, 65535
  %56 = icmp eq i32 %55, 0
  %57 = load i32, ptr %5, align 4
  %58 = and i32 %57, -458752
  %59 = select i1 %56, i32 %57, i32 %58
  %60 = or i32 %59, %36
  store i32 %60, ptr %5, align 4
  %61 = load i32, ptr %35, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %35, align 4
  br label %63

63:                                               ; preds = %54, %49, %44
  %64 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 64
  %65 = load volatile ptr, ptr %64, align 4
  %66 = getelementptr i8, ptr %65, i32 -1380
  %67 = icmp eq ptr %66, %2
  br i1 %67, label %114, label %68

68:                                               ; preds = %63
  %69 = and i32 %0, 65535
  %70 = icmp eq i32 %69, 0
  br label %71

71:                                               ; preds = %109, %68
  %72 = phi ptr [ %66, %68 ], [ %112, %109 ]
  %73 = phi ptr [ %65, %68 ], [ %111, %109 ]
  %74 = getelementptr i8, ptr %73, i32 -844
  %75 = load volatile i32, ptr %74, align 8
  %76 = and i32 %75, 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %109

78:                                               ; preds = %71
  %79 = load volatile i32, ptr %72, align 4
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = getelementptr i8, ptr %73, i32 276
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 256
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %109, !prof !10

87:                                               ; preds = %82, %78
  %88 = getelementptr i8, ptr %73, i32 -832
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %109, !prof !10

92:                                               ; preds = %87
  %93 = getelementptr i8, ptr %73, i32 -152
  %94 = load i32, ptr %93, align 4
  %95 = and i32 %94, -458752
  %96 = select i1 %70, i32 %94, i32 %95
  %97 = or i32 %96, %36
  store i32 %97, ptr %93, align 4
  %98 = load i32, ptr %35, align 4
  %99 = add i32 %98, 1
  store i32 %99, ptr %35, align 4
  %100 = getelementptr i8, ptr %73, i32 -828
  %101 = load i32, ptr %100, align 8
  %102 = and i32 %101, 65536
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %108, !prof !10

104:                                              ; preds = %92
  tail call void @_set_bit(i32 noundef 0, ptr noundef %72) #16
  %105 = tail call i32 @wake_up_state(ptr noundef %72, i32 noundef 1) #16
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  tail call void @kick_process(ptr noundef %72) #16
  br label %109

108:                                              ; preds = %92
  tail call fastcc void @ptrace_trap_notify(ptr noundef %72)
  br label %109

109:                                              ; preds = %108, %107, %104, %87, %82, %71
  %110 = getelementptr inbounds %struct.task_struct, ptr %72, i32 0, i32 64
  %111 = load volatile ptr, ptr %110, align 4
  %112 = getelementptr i8, ptr %111, i32 -1380
  %113 = icmp eq ptr %112, %2
  br i1 %113, label %114, label %71

114:                                              ; preds = %109, %63, %1
  %115 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 5
  %116 = load i32, ptr %115, align 8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %145, !prof !10

118:                                              ; preds = %114
  %119 = tail call fastcc zeroext i1 @task_participate_group_stop(ptr noundef %2)
  %120 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 108
  %121 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %120) #16
  %122 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 1
  store volatile i32 260, ptr %122, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %120, i32 noundef %121) #16
  %123 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 94
  %124 = load ptr, ptr %123, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %125 = load i16, ptr %124, align 4
  %126 = add i16 %125, 1
  store i16 %126, ptr %124, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  br i1 %119, label %127, label %133

127:                                              ; preds = %118
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #16
  tail call fastcc void @do_notify_parent_cldstop(ptr noundef %2, i1 noundef zeroext false, i32 noundef 5)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #16, !srcloc !33
  %128 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #16, !srcloc !34
  %129 = extractvalue { i32, i32 } %128, 0
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  br label %132

132:                                              ; preds = %131, %127
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !35
  br label %133

133:                                              ; preds = %132, %118
  tail call void @cgroup_enter_frozen() #16
  %134 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 4
  %135 = load i32, ptr %134, align 4
  %136 = or i32 %135, 1073741824
  store i32 %136, ptr %134, align 4
  tail call void @schedule() #16
  %137 = load i32, ptr %134, align 4
  %138 = and i32 %137, -1073741825
  store i32 %138, ptr %134, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !49
  %139 = load volatile i32, ptr @system_freezing_cnt, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %162, label %141, !prof !10

141:                                              ; preds = %133
  %142 = tail call zeroext i1 @freezing_slow_path(ptr noundef %2) #16
  br i1 %142, label %143, label %162, !prof !11

143:                                              ; preds = %141
  %144 = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #16
  br label %162

145:                                              ; preds = %114
  %146 = load volatile i32, ptr %2, align 4
  %147 = and i32 %146, 1
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 98, i32 1
  %151 = load i32, ptr %150, align 4
  %152 = and i32 %151, 256
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %162, !prof !10

154:                                              ; preds = %149, %145
  %155 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 4
  %156 = load i32, ptr %155, align 4
  %157 = and i32 %156, 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %162, !prof !10

159:                                              ; preds = %154
  %160 = load i32, ptr %5, align 4
  %161 = or i32 %160, 524288
  store i32 %161, ptr %5, align 4
  br label %162

162:                                              ; preds = %159, %154, %149, %143, %141, %133, %25, %20, %16
  %163 = phi i1 [ false, %25 ], [ false, %20 ], [ false, %16 ], [ true, %133 ], [ true, %141 ], [ true, %143 ], [ false, %149 ], [ false, %154 ], [ false, %159 ]
  ret i1 %163
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @do_jobctl_trap() unnamed_addr #0 {
  %1 = alloca %struct.kernel_siginfo, align 4
  %2 = tail call ptr @llvm.thread.pointer() #16
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 93
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 45
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 65535
  %8 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65536
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %43, label %12

12:                                               ; preds = %0
  %13 = getelementptr inbounds %struct.signal_struct, ptr %4, i32 0, i32 11
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.signal_struct, ptr %4, i32 0, i32 12
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 5, i32 %7
  br label %22

22:                                               ; preds = %16, %12
  %23 = phi i32 [ %7, %12 ], [ %21, %16 ]
  %24 = icmp eq i32 %23, 0
  %25 = load i1, ptr @do_jobctl_trap.__already_done, align 1
  %26 = xor i1 %25, true
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %29, !prof !11

28:                                               ; preds = %22
  store i1 true, ptr @do_jobctl_trap.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2506, i32 noundef 9, ptr noundef null) #16
  br label %29

29:                                               ; preds = %28, %22
  %30 = or i32 %23, 32768
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #16
  %31 = getelementptr inbounds i8, ptr %1, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(28) %31, i8 0, i64 28, i1 false) #16
  store i32 %23, ptr %1, align 4
  %32 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 2
  store i32 %30, ptr %32, align 4
  %33 = tail call i32 @__task_pid_nr_ns(ptr noundef %2, i32 noundef 0, ptr noundef null) #16
  %34 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 3
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 83
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.cred, ptr %36, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, -1
  %40 = load i32, ptr @overflowuid, align 4
  %41 = select i1 %39, i32 %40, i32 %38
  %42 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 3, i32 0, i32 1
  store i32 %41, ptr %42, align 4
  call fastcc void @ptrace_stop(i32 noundef %30, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %1) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #16
  br label %51

43:                                               ; preds = %0
  %44 = icmp eq i32 %7, 0
  %45 = load i1, ptr @do_jobctl_trap.__already_done.20, align 1
  %46 = xor i1 %45, true
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %49, !prof !11

48:                                               ; preds = %43
  store i1 true, ptr @do_jobctl_trap.__already_done.20, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2510, i32 noundef 9, ptr noundef null) #16
  br label %49

49:                                               ; preds = %48, %43
  tail call fastcc void @ptrace_stop(i32 noundef %7, i32 noundef 5, i32 noundef 0, ptr noundef null)
  %50 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 42
  store i32 0, ptr %50, align 64
  br label %51

51:                                               ; preds = %49, %29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @do_freezer_trap() unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #16
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 45
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 10092544
  %5 = icmp eq i32 %4, 8388608
  br i1 %5, label %11, label %6

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 94
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %9 = load i16, ptr %8, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  br label %28

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 1
  store volatile i32 1, ptr %12, align 8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %1) #16
  %13 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 94
  %14 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %15 = load i16, ptr %14, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  tail call void @cgroup_enter_frozen() #16
  %17 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, 1073741824
  store i32 %19, ptr %17, align 4
  tail call void @schedule() #16
  %20 = load i32, ptr %17, align 4
  %21 = and i32 %20, -1073741825
  store i32 %21, ptr %17, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !49
  %22 = load volatile i32, ptr @system_freezing_cnt, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24, !prof !10

24:                                               ; preds = %11
  %25 = tail call zeroext i1 @freezing_slow_path(ptr noundef %1) #16
  br i1 %25, label %26, label %28, !prof !11

26:                                               ; preds = %24
  %27 = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #16
  br label %28

28:                                               ; preds = %26, %24, %11, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_leave_frozen(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ptrace_signal(i32 noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @llvm.thread.pointer() #16
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 45
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 65536
  store i32 %7, ptr %5, align 4
  tail call fastcc void @ptrace_stop(i32 noundef %0, i32 noundef 4, i32 noundef 0, ptr noundef %1)
  %8 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 42
  %9 = load i32, ptr %8, align 64
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %52, label %11

11:                                               ; preds = %3
  store i32 0, ptr %8, align 64
  %12 = load i32, ptr %1, align 4
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %31, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds i8, ptr %1, i32 12
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %15, i8 0, i32 20, i1 false) #16
  store i32 %9, ptr %1, align 4
  %16 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 2
  store i32 0, ptr %17, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %18 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 56
  %19 = load ptr, ptr %18, align 8
  %20 = tail call i32 @__task_pid_nr_ns(ptr noundef %19, i32 noundef 0, ptr noundef null) #16
  %21 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 3
  store i32 %20, ptr %21, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %22 = load ptr, ptr %18, align 8
  %23 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 82
  %24 = load volatile ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.cred, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %27 = icmp eq i32 %26, -1
  %28 = load i32, ptr @overflowuid, align 4
  %29 = select i1 %27, i32 %28, i32 %26
  %30 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 3, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %31

31:                                               ; preds = %14, %11
  %32 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 95
  %33 = add i32 %9, -1
  %34 = lshr i32 %33, 5
  %35 = getelementptr [2 x i32], ptr %32, i32 0, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %33, 31
  %38 = shl nuw i32 1, %37
  %39 = and i32 %36, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %31
  %42 = load volatile i32, ptr %4, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 98, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 256
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45, %31
  %51 = tail call fastcc i32 @send_signal(i32 noundef %9, ptr noundef %1, ptr noundef %4, i32 noundef %2)
  br label %52

52:                                               ; preds = %50, %45, %41, %3
  %53 = phi i32 [ 0, %3 ], [ 0, %50 ], [ %9, %45 ], [ %9, %41 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_current_pgrp_orphaned() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_coredump(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_group_exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @signal_setup_done(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.sigset_t, align 8
  %5 = alloca %struct.kernel_siginfo, align 4
  %6 = alloca %struct.kernel_siginfo, align 4
  %7 = icmp eq i32 %0, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ksignal, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 11
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  %13 = getelementptr inbounds i8, ptr %6, i32 20
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(12) %13, i8 0, i64 12, i1 false) #16
  store i32 11, ptr %6, align 4
  %14 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 1
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 2
  store i32 128, ptr %15, align 4
  %16 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 3
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 3, i32 0, i32 1
  store i32 0, ptr %17, align 4
  %18 = tail call ptr @llvm.thread.pointer() #16
  %19 = call fastcc i32 @force_sig_info_to_task(ptr noundef nonnull %6, ptr noundef %18, i32 noundef 1) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  br label %69

20:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %21 = getelementptr inbounds i8, ptr %5, i32 20
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(12) %21, i8 0, i64 12, i1 false) #16
  store i32 11, ptr %5, align 4
  %22 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 1
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 2
  store i32 128, ptr %23, align 4
  %24 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 3
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 3, i32 0, i32 1
  store i32 0, ptr %25, align 4
  %26 = tail call ptr @llvm.thread.pointer() #16
  %27 = call fastcc i32 @force_sig_info_to_task(ptr noundef nonnull %5, ptr noundef %26, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %69

28:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %29 = tail call ptr @llvm.thread.pointer() #16
  tail call void @_clear_bit(i32 noundef 20, ptr noundef %29) #16
  %30 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 95
  %31 = getelementptr inbounds %struct.sigaction, ptr %1, i32 0, i32 3
  %32 = getelementptr %struct.task_struct, ptr %29, i32 0, i32 95, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr %struct.sigaction, ptr %1, i32 0, i32 3, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = or i32 %35, %33
  %37 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  store i32 %36, ptr %37, align 4
  %38 = load i32, ptr %30, align 4
  %39 = load i32, ptr %31, align 4
  %40 = or i32 %39, %38
  store i32 %40, ptr %4, align 8
  %41 = getelementptr inbounds %struct.sigaction, ptr %1, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 1073741824
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %28
  %46 = getelementptr inbounds %struct.ksignal, ptr %1, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, -1
  %49 = and i32 %48, 31
  %50 = shl nuw i32 1, %49
  %51 = lshr i32 %48, 5
  %52 = getelementptr [2 x i32], ptr %4, i32 0, i32 %51
  %53 = load i32, ptr %52, align 4
  %54 = or i32 %50, %53
  store i32 %54, ptr %52, align 4
  %55 = load i32, ptr %4, align 8
  br label %56

56:                                               ; preds = %45, %28
  %57 = phi i32 [ %55, %45 ], [ %40, %28 ]
  %58 = and i32 %57, -262401
  store i32 %58, ptr %4, align 8
  call void @__set_current_blocked(ptr noundef nonnull %4) #16
  %59 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 101
  %60 = load i32, ptr %59, align 8
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 99
  store i32 0, ptr %63, align 64
  %64 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 100
  store i32 0, ptr %64, align 4
  store i32 2, ptr %59, align 8
  br label %65

65:                                               ; preds = %62, %56
  %66 = icmp eq i32 %2, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %65
  tail call void @ptrace_notify(i32 noundef 5) #16
  br label %68

68:                                               ; preds = %67, %65
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %69

69:                                               ; preds = %68, %20, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exit_signals(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.sigset_t, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  store i64 0, ptr %2, align 8, !annotation !9
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !50
  %3 = load volatile i32, ptr @cgroup_threadgroup_rwsem, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %16, !prof !10

5:                                                ; preds = %1
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !51
  %7 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cgroup_threadgroup_rwsem, i32 0, i32 1), align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #11, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #16, !srcloc !52
  br label %18

16:                                               ; preds = %1
  %17 = tail call zeroext i1 @__percpu_down_read(ptr noundef nonnull @cgroup_threadgroup_rwsem, i1 noundef zeroext false) #16
  br label %18

18:                                               ; preds = %16, %5
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !53
  %19 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 64
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %24 = load ptr, ptr %23, align 16
  %25 = getelementptr inbounds %struct.signal_struct, ptr %24, i32 0, i32 12
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %59, label %29

29:                                               ; preds = %22, %18
  %30 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %31, 4
  store i32 %32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !54
  %33 = load volatile i32, ptr @cgroup_threadgroup_rwsem, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %46, !prof !10

35:                                               ; preds = %29
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !51
  %37 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cgroup_threadgroup_rwsem, i32 0, i32 1), align 4
  %38 = ptrtoint ptr %37 to i32
  %39 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %40 = inttoptr i32 %39 to ptr
  %41 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %40) #11, !srcloc !12
  %42 = add i32 %41, %38
  %43 = inttoptr i32 %42 to ptr
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, -1
  store i32 %45, ptr %43, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %36) #16, !srcloc !52
  br label %58

46:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !55
  %47 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !51
  %48 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cgroup_threadgroup_rwsem, i32 0, i32 1), align 4
  %49 = ptrtoint ptr %48 to i32
  %50 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %51 = inttoptr i32 %50 to ptr
  %52 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %51) #11, !srcloc !12
  %53 = add i32 %52, %49
  %54 = inttoptr i32 %53 to ptr
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, -1
  store i32 %56, ptr %54, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %47) #16, !srcloc !52
  %57 = tail call i32 @rcuwait_wake_up(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cgroup_threadgroup_rwsem, i32 0, i32 2)) #16
  br label %58

58:                                               ; preds = %46, %35
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !56
  br label %123

59:                                               ; preds = %22
  %60 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %61 = load ptr, ptr %60, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %61) #16
  %62 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = or i32 %63, 4
  store i32 %64, ptr %62, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !54
  %65 = load volatile i32, ptr @cgroup_threadgroup_rwsem, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %78, !prof !10

67:                                               ; preds = %59
  %68 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !51
  %69 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cgroup_threadgroup_rwsem, i32 0, i32 1), align 4
  %70 = ptrtoint ptr %69 to i32
  %71 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %72 = inttoptr i32 %71 to ptr
  %73 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %72) #11, !srcloc !12
  %74 = add i32 %73, %70
  %75 = inttoptr i32 %74 to ptr
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %76, -1
  store i32 %77, ptr %75, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %68) #16, !srcloc !52
  br label %90

78:                                               ; preds = %59
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !55
  %79 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !51
  %80 = load ptr, ptr getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cgroup_threadgroup_rwsem, i32 0, i32 1), align 4
  %81 = ptrtoint ptr %80 to i32
  %82 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %83 = inttoptr i32 %82 to ptr
  %84 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %83) #11, !srcloc !12
  %85 = add i32 %84, %81
  %86 = inttoptr i32 %85 to ptr
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %87, -1
  store i32 %88, ptr %86, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %79) #16, !srcloc !52
  %89 = tail call i32 @rcuwait_wake_up(ptr noundef getelementptr inbounds (%struct.percpu_rw_semaphore, ptr @cgroup_threadgroup_rwsem, i32 0, i32 2)) #16
  br label %90

90:                                               ; preds = %78, %67
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !56
  %91 = load volatile i32, ptr %0, align 4
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %111, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 95
  %96 = load i64, ptr %95, align 8
  %97 = getelementptr inbounds [2 x i32], ptr %2, i32 0, i32 1
  %98 = lshr i64 %96, 32
  %99 = trunc i64 %98 to i32
  %100 = xor i32 %99, -1
  store i32 %100, ptr %97, align 4
  %101 = trunc i64 %96 to i32
  %102 = xor i32 %101, -1
  store i32 %102, ptr %2, align 8
  call fastcc void @retarget_shared_pending(ptr noundef %0, ptr noundef nonnull %2)
  %103 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 45
  %104 = load i32, ptr %103, align 4
  %105 = and i32 %104, 131072
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %111, label %107, !prof !10

107:                                              ; preds = %94
  %108 = tail call fastcc zeroext i1 @task_participate_group_stop(ptr noundef %0)
  %109 = xor i1 %108, true
  %110 = select i1 %108, i32 5, i32 0
  br label %111

111:                                              ; preds = %107, %94, %90
  %112 = phi i1 [ true, %94 ], [ true, %90 ], [ %109, %107 ]
  %113 = phi i32 [ 0, %94 ], [ 0, %90 ], [ %110, %107 ]
  %114 = load ptr, ptr %60, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %115 = load i16, ptr %114, align 4
  %116 = add i16 %115, 1
  store i16 %116, ptr %114, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  br i1 %112, label %123, label %117, !prof !10

117:                                              ; preds = %111
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #16
  tail call fastcc void @do_notify_parent_cldstop(ptr noundef %0, i1 noundef zeroext false, i32 noundef %113)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #16, !srcloc !33
  %118 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #16, !srcloc !34
  %119 = extractvalue { i32, i32 } %118, 0
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  br label %122

122:                                              ; preds = %121, %117
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !35
  br label %123

123:                                              ; preds = %122, %111, %58
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @retarget_shared_pending(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.signal_struct, ptr %4, i32 0, i32 6, i32 1
  %6 = getelementptr %struct.signal_struct, ptr %4, i32 0, i32 6, i32 1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  %11 = load i32, ptr %5, align 4
  %12 = load i32, ptr %1, align 4
  %13 = and i32 %12, %11
  %14 = or i32 %13, %10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %60, label %16

16:                                               ; preds = %57, %2
  %17 = phi i32 [ %48, %57 ], [ %10, %2 ]
  %18 = phi i32 [ %49, %57 ], [ %13, %2 ]
  %19 = phi ptr [ %25, %57 ], [ %0, %2 ]
  %20 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 64
  %21 = load volatile ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 -1380
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %60, label %24

24:                                               ; preds = %31, %16
  %25 = phi ptr [ %34, %31 ], [ %22, %16 ]
  %26 = phi ptr [ %33, %31 ], [ %21, %16 ]
  %27 = getelementptr i8, ptr %26, i32 -832
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %36, %24
  %32 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 64
  %33 = load volatile ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 -1380
  %35 = icmp eq ptr %34, %0
  br i1 %35, label %60, label %24

36:                                               ; preds = %24
  %37 = getelementptr i8, ptr %26, i32 244
  %38 = getelementptr i8, ptr %26, i32 248
  %39 = load i32, ptr %38, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %17, %40
  %42 = load i32, ptr %37, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %18, %43
  %45 = or i32 %44, %41
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %31, label %47

47:                                               ; preds = %36
  %48 = and i32 %39, %17
  %49 = and i32 %42, %18
  %50 = load volatile i32, ptr %25, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  tail call void @_set_bit(i32 noundef 0, ptr noundef %25) #16
  %54 = tail call i32 @wake_up_state(ptr noundef %25, i32 noundef 1) #16
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  tail call void @kick_process(ptr noundef %25) #16
  br label %57

57:                                               ; preds = %56, %53, %47
  %58 = or i32 %49, %48
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %16

60:                                               ; preds = %57, %31, %16, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @task_participate_group_stop(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 45
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 262144
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %5, 131072
  %9 = icmp eq i32 %8, 0
  %10 = load i1, ptr @task_participate_group_stop.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %1
  store i1 true, ptr @task_participate_group_stop.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 370, i32 noundef 9, ptr noundef null) #16
  %14 = load i32, ptr %4, align 4
  br label %15

15:                                               ; preds = %13, %1
  %16 = phi i32 [ %14, %13 ], [ %5, %1 ]
  %17 = and i32 %16, -458753
  store i32 %17, ptr %4, align 4
  %18 = and i32 %16, 3670016
  %19 = icmp eq i32 %18, 2097152
  br i1 %19, label %20, label %22, !prof !23

20:                                               ; preds = %15
  %21 = and i32 %16, -2555905
  store i32 %21, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  tail call void @wake_up_bit(ptr noundef %4, i32 noundef 21) #16
  br label %22

22:                                               ; preds = %20, %15
  br i1 %7, label %52, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.signal_struct, ptr %3, i32 0, i32 11
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  %27 = load i1, ptr @task_participate_group_stop.__already_done.22, align 1
  %28 = xor i1 %27, true
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %31, !prof !11

30:                                               ; preds = %23
  store i1 true, ptr @task_participate_group_stop.__already_done.22, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 377, i32 noundef 9, ptr noundef null) #16
  br label %31

31:                                               ; preds = %30, %23
  %32 = load i32, ptr %24, align 4
  br i1 %26, label %35, label %33

33:                                               ; preds = %31
  %34 = add i32 %32, -1
  store i32 %34, ptr %24, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %34, %33 ], [ %32, %31 ]
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.signal_struct, ptr %3, i32 0, i32 12
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = and i32 %40, 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46, !prof !10

46:                                               ; preds = %43
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 270, i32 noundef 9, ptr noundef null) #16
  %47 = load i32, ptr %39, align 8
  br label %48

48:                                               ; preds = %46, %43
  %49 = phi i32 [ %47, %46 ], [ %40, %43 ]
  %50 = and i32 %49, -52
  %51 = or i32 %50, 1
  store i32 %51, ptr %39, align 8
  br label %52

52:                                               ; preds = %48, %38, %35, %22
  %53 = phi i1 [ true, %48 ], [ false, %22 ], [ false, %38 ], [ false, %35 ]
  ret i1 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sys_restart_syscall() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #16
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 51
  %3 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 51, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef %2) #16
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @do_no_restart_syscall(ptr nocapture noundef readnone %0) local_unnamed_addr #9 {
  ret i32 -4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_current_blocked(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4
  %3 = and i32 %2, -262401
  store i32 %3, ptr %0, align 4
  tail call void @__set_current_blocked(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__set_current_blocked(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.sigset_t, align 8
  %3 = tail call ptr @llvm.thread.pointer() #16
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 95
  %5 = getelementptr %struct.task_struct, ptr %3, i32 0, i32 95, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr [2 x i32], ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, ptr %4, align 4
  %12 = load i32, ptr %0, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %39, label %14

14:                                               ; preds = %10, %1
  %15 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 94
  %16 = load ptr, ptr %15, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %16) #16
  %17 = load volatile i32, ptr %3, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 64
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %34, label %24

24:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %25 = load i32, ptr %7, align 4
  %26 = load i32, ptr %5, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = getelementptr inbounds [2 x i32], ptr %2, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  %30 = load i32, ptr %0, align 4
  %31 = load i32, ptr %4, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  store i32 %33, ptr %2, align 8
  call fastcc void @retarget_shared_pending(ptr noundef %3, ptr noundef nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  br label %34

34:                                               ; preds = %24, %20, %14
  %35 = load i64, ptr %0, align 4
  store i64 %35, ptr %4, align 8
  tail call void @recalc_sigpending() #16
  %36 = load ptr, ptr %15, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %37 = load i16, ptr %36, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %36, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  br label %39

39:                                               ; preds = %34, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sigprocmask(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) #0 {
  %4 = alloca %struct.sigset_t, align 8
  %5 = tail call ptr @llvm.thread.pointer() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store i64 0, ptr %4, align 8, !annotation !9
  %6 = icmp eq ptr %2, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 95
  %9 = load i64, ptr %8, align 8
  store i64 %9, ptr %2, align 4
  br label %10

10:                                               ; preds = %7, %3
  switch i32 %0, label %38 [
    i32 0, label %11
    i32 1, label %22
    i32 2, label %35
  ]

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 95
  %13 = getelementptr %struct.task_struct, ptr %5, i32 0, i32 95, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, %14
  %18 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  store i32 %17, ptr %18, align 4
  %19 = load i32, ptr %12, align 4
  %20 = load i32, ptr %1, align 4
  %21 = or i32 %20, %19
  store i32 %21, ptr %4, align 8
  br label %37

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 95
  %24 = getelementptr %struct.task_struct, ptr %5, i32 0, i32 95, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr [2 x i32], ptr %1, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %25, %28
  %30 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  %31 = load i32, ptr %23, align 4
  %32 = load i32, ptr %1, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  store i32 %34, ptr %4, align 8
  br label %37

35:                                               ; preds = %10
  %36 = load i64, ptr %1, align 4
  store i64 %36, ptr %4, align 8
  br label %37

37:                                               ; preds = %35, %22, %11
  call void @__set_current_blocked(ptr noundef nonnull %4)
  br label %38

38:                                               ; preds = %37, %10
  %39 = phi i32 [ 0, %37 ], [ -22, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @set_user_sigmask(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.sigset_t, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store i64 0, ptr %3, align 8, !annotation !9
  %4 = icmp eq ptr %0, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %2
  %6 = icmp eq i32 %1, 8
  br i1 %6, label %7, label %29

7:                                                ; preds = %5
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %0, i32 8, i32 -1090519040) #18, !srcloc !57
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19, !prof !10

11:                                               ; preds = %7
  %12 = tail call ptr @llvm.thread.pointer() #16
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #11, !srcloc !58
  %15 = and i32 %14, -13
  %16 = or i32 %15, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %17 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef nonnull %0, i32 noundef 8) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !10

19:                                               ; preds = %11, %7
  %20 = phi i32 [ %17, %11 ], [ 8, %7 ]
  %21 = sub i32 8, %20
  %22 = getelementptr i8, ptr %3, i32 %21
  call void @llvm.memset.p0.i32(ptr align 1 %22, i8 0, i32 %20, i1 false) #16
  br label %29

23:                                               ; preds = %11
  call void @_set_bit(i32 noundef 20, ptr noundef %12) #16
  %24 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 97
  %25 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 95
  %26 = load i64, ptr %25, align 8
  store i64 %26, ptr %24, align 8
  %27 = load i32, ptr %3, align 8
  %28 = and i32 %27, -262401
  store i32 %28, ptr %3, align 8
  call void @__set_current_blocked(ptr noundef nonnull %3) #16
  br label %29

29:                                               ; preds = %23, %19, %5, %2
  %30 = phi i32 [ 0, %23 ], [ 0, %2 ], [ -22, %5 ], [ -14, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_rt_sigprocmask(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.sigset_t, align 8
  %6 = alloca %struct.sigset_t, align 8
  %7 = alloca %struct.sigset_t, align 8
  %8 = inttoptr i32 %1 to ptr
  %9 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  store i64 0, ptr %7, align 8, !annotation !9
  %10 = icmp eq i32 %3, 8
  br i1 %10, label %11, label %72

11:                                               ; preds = %4
  %12 = tail call ptr @llvm.thread.pointer() #16
  %13 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 95
  %14 = load i64, ptr %13, align 8
  store i64 %14, ptr %6, align 8
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %58, label %16

16:                                               ; preds = %11
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %8, i32 8, i32 -1090519040) #18, !srcloc !57
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27, !prof !10

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %21) #11, !srcloc !58
  %23 = and i32 %22, -13
  %24 = or i32 %23, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %25 = call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 8) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27, !prof !10

27:                                               ; preds = %20, %16
  %28 = phi i32 [ %25, %20 ], [ 8, %16 ]
  %29 = sub i32 8, %28
  %30 = getelementptr i8, ptr %7, i32 %29
  call void @llvm.memset.p0.i32(ptr align 1 %30, i8 0, i32 %28, i1 false) #16
  br label %72

31:                                               ; preds = %20
  %32 = load i32, ptr %7, align 8
  %33 = and i32 %32, -262401
  store i32 %33, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store i64 0, ptr %5, align 8, !annotation !9
  switch i32 %0, label %57 [
    i32 0, label %34
    i32 1, label %43
    i32 2, label %54
  ]

34:                                               ; preds = %31
  %35 = getelementptr %struct.task_struct, ptr %12, i32 0, i32 95, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds [2 x i32], ptr %7, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = or i32 %38, %36
  %40 = getelementptr inbounds [2 x i32], ptr %5, i32 0, i32 1
  store i32 %39, ptr %40, align 4
  %41 = load i32, ptr %13, align 4
  %42 = or i32 %41, %33
  store i32 %42, ptr %5, align 8
  br label %56

43:                                               ; preds = %31
  %44 = getelementptr %struct.task_struct, ptr %12, i32 0, i32 95, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds [2 x i32], ptr %7, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %45, %48
  %50 = getelementptr inbounds [2 x i32], ptr %5, i32 0, i32 1
  store i32 %49, ptr %50, align 4
  %51 = load i32, ptr %13, align 4
  %52 = xor i32 %33, -1
  %53 = and i32 %51, %52
  store i32 %53, ptr %5, align 8
  br label %56

54:                                               ; preds = %31
  %55 = load i64, ptr %7, align 8
  store i64 %55, ptr %5, align 8
  br label %56

56:                                               ; preds = %54, %43, %34
  call void @__set_current_blocked(ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %58

57:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %72

58:                                               ; preds = %56, %11
  %59 = icmp eq i32 %2, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %58
  %61 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %9, i32 8, i32 -1090519040) #18, !srcloc !61
  %62 = extractvalue { i32, i32 } %61, 0
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %66 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %65) #11, !srcloc !58
  %67 = and i32 %66, -13
  %68 = or i32 %67, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %68) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %69 = call i32 @arm_copy_to_user(ptr noundef nonnull %9, ptr noundef nonnull %6, i32 noundef 8) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64, %58
  br label %72

72:                                               ; preds = %71, %64, %60, %57, %27, %4
  %73 = phi i32 [ 0, %71 ], [ -22, %4 ], [ -22, %57 ], [ -14, %64 ], [ -14, %27 ], [ -14, %60 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_rt_sigpending(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.sigset_t, align 8
  %4 = inttoptr i32 %0 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %5 = icmp ugt i32 %1, 8
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @llvm.thread.pointer() #16
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 94
  %9 = load ptr, ptr %8, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %9) #16
  %10 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 98, i32 1
  %11 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 93
  %12 = load ptr, ptr %11, align 16
  %13 = getelementptr inbounds %struct.signal_struct, ptr %12, i32 0, i32 6, i32 1
  %14 = getelementptr %struct.task_struct, ptr %7, i32 0, i32 98, i32 1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.signal_struct, ptr %12, i32 0, i32 6, i32 1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, %15
  %19 = getelementptr inbounds [2 x i32], ptr %3, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = load i32, ptr %10, align 4
  %21 = load i32, ptr %13, align 4
  %22 = or i32 %21, %20
  store i32 %22, ptr %3, align 8
  %23 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %24 = load i16, ptr %23, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  %26 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 95
  %27 = getelementptr %struct.task_struct, ptr %7, i32 0, i32 95, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %19, align 4
  %30 = and i32 %29, %28
  store i32 %30, ptr %19, align 4
  %31 = load i32, ptr %26, align 4
  %32 = load i32, ptr %3, align 8
  %33 = and i32 %32, %31
  store i32 %33, ptr %3, align 8
  %34 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 %1, i32 -1090519040) #18, !srcloc !61
  %35 = extractvalue { i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %6
  %38 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %39 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %38) #11, !srcloc !58
  %40 = and i32 %39, -13
  %41 = or i32 %40, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %42 = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %3, i32 noundef %1) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  br label %43

43:                                               ; preds = %37, %6
  %44 = phi i32 [ %42, %37 ], [ %1, %6 ]
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 0, i32 -14
  br label %47

47:                                               ; preds = %43, %2
  %48 = phi i32 [ -22, %2 ], [ %46, %43 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret i32 %48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @siginfo_layout(i32 noundef %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = add i32 %1, -1
  %4 = icmp ult i32 %3, 127
  br i1 %4, label %5, label %35

5:                                                ; preds = %2
  %6 = icmp ult i32 %0, 32
  br i1 %6, label %7, label %32

7:                                                ; preds = %5
  %8 = getelementptr [32 x %struct.anon.100], ptr @sig_sicodes, i32 0, i32 %0
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp ult i32 %10, %1
  br i1 %11, label %32, label %12

12:                                               ; preds = %7
  %13 = getelementptr [32 x %struct.anon.100], ptr @sig_sicodes, i32 0, i32 %0, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %0, 7
  %17 = and i32 %1, -2
  %18 = icmp eq i32 %17, 4
  %19 = and i1 %16, %18
  br i1 %19, label %40, label %20

20:                                               ; preds = %12
  %21 = icmp eq i32 %0, 11
  %22 = icmp eq i32 %1, 3
  %23 = and i1 %21, %22
  br i1 %23, label %40, label %24

24:                                               ; preds = %20
  %25 = icmp eq i32 %1, 4
  %26 = and i1 %21, %25
  br i1 %26, label %40, label %27

27:                                               ; preds = %24
  %28 = icmp eq i32 %0, 5
  %29 = icmp eq i32 %1, 6
  %30 = and i1 %28, %29
  %31 = select i1 %30, i32 8, i32 %15
  br label %40

32:                                               ; preds = %7, %5
  %33 = icmp ult i32 %1, 7
  %34 = select i1 %33, i32 2, i32 0
  br label %40

35:                                               ; preds = %2
  switch i32 %1, label %37 [
    i32 -2, label %40
    i32 -5, label %36
  ]

36:                                               ; preds = %35
  br label %40

37:                                               ; preds = %35
  %38 = icmp slt i32 %1, 0
  %39 = select i1 %38, i32 10, i32 0
  br label %40

40:                                               ; preds = %37, %36, %35, %32, %27, %24, %20, %12
  %41 = phi i32 [ 2, %36 ], [ 5, %12 ], [ 6, %20 ], [ 7, %24 ], [ %31, %27 ], [ %34, %32 ], [ 1, %35 ], [ %39, %37 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @copy_siginfo_to_user(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 32
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 32, i32 -1090519040) #18, !srcloc !61
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #16
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #11, !srcloc !58
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %13 = tail call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef %1, i32 noundef 32) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %7
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 96, i32 -1090519040) #18, !srcloc !62
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #11, !srcloc !58
  %21 = and i32 %20, -13
  %22 = or i32 %21, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %23 = tail call i32 @arm_clear_user(ptr noundef %3, i32 noundef 96) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 0, i32 -14
  br label %26

26:                                               ; preds = %19, %15, %7, %2
  %27 = phi i32 [ -14, %7 ], [ -14, %2 ], [ -14, %15 ], [ %25, %19 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @copy_siginfo_from_user(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 32, i32 -1090519040) #18, !srcloc !57
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14, !prof !10

6:                                                ; preds = %2
  %7 = tail call ptr @llvm.thread.pointer() #16
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #11, !srcloc !58
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %12 = tail call i32 @arm_copy_from_user(ptr noundef %0, ptr noundef %1, i32 noundef 32) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14, !prof !10

14:                                               ; preds = %6, %2
  %15 = phi i32 [ %12, %6 ], [ 32, %2 ]
  %16 = sub i32 32, %15
  %17 = getelementptr i8, ptr %0, i32 %16
  tail call void @llvm.memset.p0.i32(ptr align 1 %17, i8 0, i32 %15, i1 false) #16
  br label %20

18:                                               ; preds = %6
  %19 = tail call fastcc i32 @post_copy_siginfo_from_user(ptr noundef %0, ptr noundef %1)
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi i32 [ %19, %18 ], [ -14, %14 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @post_copy_siginfo_from_user(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [96 x i8], align 1
  %4 = load i32, ptr %0, align 4
  %5 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 128
  br i1 %7, label %56, label %8

8:                                                ; preds = %2
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %8
  %11 = add i32 %4, -1
  %12 = icmp ult i32 %11, 31
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = shl nuw nsw i32 1, %11
  %15 = and i32 %14, 1342244056
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr [32 x %struct.anon.100], ptr @sig_sicodes, i32 0, i32 %4
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ugt i32 %6, %20
  br i1 %21, label %28, label %56

22:                                               ; preds = %13, %10
  %23 = icmp ult i32 %6, 7
  br i1 %23, label %56, label %28

24:                                               ; preds = %8
  %25 = icmp sgt i32 %6, -8
  %26 = icmp eq i32 %6, -60
  %27 = or i1 %25, %26
  br i1 %27, label %56, label %28

28:                                               ; preds = %24, %22, %17
  %29 = getelementptr i8, ptr %1, i32 32
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(96) %3, i8 0, i32 96, i1 false), !annotation !9
  %30 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %29, i32 96, i32 -1090519040) #18, !srcloc !57
  %31 = extractvalue { i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %41, !prof !10

33:                                               ; preds = %28
  %34 = tail call ptr @llvm.thread.pointer() #16
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %36 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %35) #11, !srcloc !58
  %37 = and i32 %36, -13
  %38 = or i32 %37, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %39 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %29, i32 noundef 96) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41, !prof !10

41:                                               ; preds = %33, %28
  %42 = phi i32 [ %39, %33 ], [ 96, %28 ]
  %43 = sub i32 96, %42
  %44 = getelementptr i8, ptr %3, i32 %43
  call void @llvm.memset.p0.i32(ptr align 1 %44, i8 0, i32 %42, i1 false) #16
  br label %53

45:                                               ; preds = %48
  %46 = add nuw nsw i32 %49, 1
  %47 = icmp eq i32 %46, 96
  br i1 %47, label %55, label %48

48:                                               ; preds = %45, %33
  %49 = phi i32 [ %46, %45 ], [ 0, %33 ]
  %50 = getelementptr [96 x i8], ptr %3, i32 0, i32 %49
  %51 = load i8, ptr %50, align 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %45, label %53

53:                                               ; preds = %48, %41
  %54 = phi i32 [ -14, %41 ], [ -7, %48 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #16
  br label %56

55:                                               ; preds = %45
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #16
  br label %56

56:                                               ; preds = %55, %53, %24, %22, %17, %2
  %57 = phi i32 [ %54, %53 ], [ 0, %55 ], [ 0, %2 ], [ 0, %17 ], [ 0, %22 ], [ 0, %24 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_rt_sigtimedwait(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.sigset_t, align 8
  %6 = alloca %struct.timespec64, align 8
  %7 = alloca %struct.kernel_siginfo, align 4
  %8 = inttoptr i32 %0 to ptr
  %9 = inttoptr i32 %1 to ptr
  %10 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store i64 0, ptr %5, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #16, !annotation !9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %7, i8 0, i32 32, i1 false) #16, !annotation !9
  %11 = icmp eq i32 %3, 8
  br i1 %11, label %12, label %43

12:                                               ; preds = %4
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 8, i32 -1090519040) #18, !srcloc !57
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %24, !prof !10

16:                                               ; preds = %12
  %17 = tail call ptr @llvm.thread.pointer() #16
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %18) #11, !srcloc !58
  %20 = and i32 %19, -13
  %21 = or i32 %20, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %22 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %8, i32 noundef 8) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24, !prof !10

24:                                               ; preds = %16, %12
  %25 = phi i32 [ %22, %16 ], [ 8, %12 ]
  %26 = sub i32 8, %25
  %27 = getelementptr i8, ptr %5, i32 %26
  call void @llvm.memset.p0.i32(ptr align 1 %27, i8 0, i32 %25, i1 false) #16
  br label %43

28:                                               ; preds = %16
  %29 = icmp eq i32 %2, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %28
  %31 = call i32 @get_timespec64(ptr noundef nonnull %6, ptr noundef nonnull %10) #16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30, %28
  %34 = phi ptr [ %6, %30 ], [ null, %28 ]
  %35 = call fastcc i32 @do_sigtimedwait(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef %34) #16
  %36 = icmp sgt i32 %35, 0
  %37 = icmp ne i32 %1, 0
  %38 = and i1 %37, %36
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = call i32 @copy_siginfo_to_user(ptr noundef nonnull %9, ptr noundef nonnull %7) #16
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 %35, i32 -14
  br label %43

43:                                               ; preds = %39, %33, %30, %24, %4
  %44 = phi i32 [ -22, %4 ], [ -14, %30 ], [ %35, %33 ], [ %42, %39 ], [ -14, %24 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_rt_sigtimedwait_time32(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.sigset_t, align 8
  %6 = alloca %struct.timespec64, align 8
  %7 = alloca %struct.kernel_siginfo, align 4
  %8 = inttoptr i32 %0 to ptr
  %9 = inttoptr i32 %1 to ptr
  %10 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store i64 0, ptr %5, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false) #16, !annotation !9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %7, i8 0, i32 32, i1 false) #16, !annotation !9
  %11 = icmp eq i32 %3, 8
  br i1 %11, label %12, label %43

12:                                               ; preds = %4
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 8, i32 -1090519040) #18, !srcloc !57
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %24, !prof !10

16:                                               ; preds = %12
  %17 = tail call ptr @llvm.thread.pointer() #16
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %18) #11, !srcloc !58
  %20 = and i32 %19, -13
  %21 = or i32 %20, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %22 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %8, i32 noundef 8) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24, !prof !10

24:                                               ; preds = %16, %12
  %25 = phi i32 [ %22, %16 ], [ 8, %12 ]
  %26 = sub i32 8, %25
  %27 = getelementptr i8, ptr %5, i32 %26
  call void @llvm.memset.p0.i32(ptr align 1 %27, i8 0, i32 %25, i1 false) #16
  br label %43

28:                                               ; preds = %16
  %29 = icmp eq i32 %2, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %28
  %31 = call i32 @get_old_timespec32(ptr noundef nonnull %6, ptr noundef nonnull %10) #16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30, %28
  %34 = phi ptr [ %6, %30 ], [ null, %28 ]
  %35 = call fastcc i32 @do_sigtimedwait(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef %34) #16
  %36 = icmp sgt i32 %35, 0
  %37 = icmp ne i32 %1, 0
  %38 = and i1 %37, %36
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = call i32 @copy_siginfo_to_user(ptr noundef nonnull %9, ptr noundef nonnull %7) #16
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 %35, i32 -14
  br label %43

43:                                               ; preds = %39, %33, %30, %24, %4
  %44 = phi i32 [ -22, %4 ], [ -14, %30 ], [ %35, %33 ], [ %42, %39 ], [ -14, %24 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_kill(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.kernel_siginfo, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = getelementptr inbounds i8, ptr %3, i32 12
  %5 = getelementptr inbounds i8, ptr %3, i32 20
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false) #16
  store i32 %1, ptr %3, align 4
  %6 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 2
  store i32 0, ptr %7, align 4
  %8 = tail call ptr @llvm.thread.pointer() #16
  %9 = tail call i32 @__task_pid_nr_ns(ptr noundef %8, i32 noundef 1, ptr noundef null) #16
  store i32 %9, ptr %4, align 4
  %10 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 83
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, -1
  %15 = load i32, ptr @overflowuid, align 4
  %16 = select i1 %14, i32 %15, i32 %13
  %17 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 3, i32 0, i32 1
  store i32 %16, ptr %17, align 4
  %18 = icmp sgt i32 %0, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %20 = tail call ptr @find_vpid(i32 noundef %0) #16
  br label %21

21:                                               ; preds = %25, %19
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %22 = call ptr @pid_task(ptr noundef %20, i32 noundef 0) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %28

25:                                               ; preds = %21
  %26 = call i32 @group_send_sig_info(i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %22, i32 noundef 1) #16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %27 = icmp eq i32 %26, -3
  br i1 %27, label %21, label %28, !prof !11

28:                                               ; preds = %25, %24
  %29 = phi i32 [ -3, %24 ], [ %26, %25 ]
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %108

30:                                               ; preds = %2
  %31 = icmp eq i32 %0, -2147483648
  br i1 %31, label %108, label %32

32:                                               ; preds = %30
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #16
  switch i32 %0, label %39 [
    i32 -1, label %33
    i32 0, label %42
  ]

33:                                               ; preds = %32
  %34 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 34), align 4
  %35 = getelementptr i8, ptr %34, i32 -1116
  %36 = icmp eq ptr %35, @init_task
  br i1 %36, label %100, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 93
  br label %74

39:                                               ; preds = %32
  %40 = sub nsw i32 0, %0
  %41 = tail call ptr @find_vpid(i32 noundef %40) #16
  br label %47

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 93
  %44 = load ptr, ptr %43, align 16
  %45 = getelementptr %struct.signal_struct, ptr %44, i32 0, i32 22, i32 2
  %46 = load ptr, ptr %45, align 8
  br label %47

47:                                               ; preds = %42, %39
  %48 = phi ptr [ %41, %39 ], [ %46, %42 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %72, label %50

50:                                               ; preds = %47
  %51 = getelementptr %struct.pid, ptr %48, i32 0, i32 3, i32 2
  %52 = load volatile ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  %54 = getelementptr i8, ptr %52, i32 -1364
  %55 = icmp eq ptr %54, null
  %56 = or i1 %53, %55
  br i1 %56, label %72, label %57

57:                                               ; preds = %57, %50
  %58 = phi ptr [ %67, %57 ], [ %54, %50 ]
  %59 = phi i32 [ %63, %57 ], [ 0, %50 ]
  %60 = call i32 @group_send_sig_info(i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %58, i32 noundef 2) #16
  %61 = icmp eq i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = or i32 %59, %62
  %64 = getelementptr %struct.task_struct, ptr %58, i32 0, i32 63, i32 2
  %65 = load volatile ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  %67 = getelementptr i8, ptr %65, i32 -1364
  %68 = icmp eq ptr %67, null
  %69 = or i1 %66, %68
  br i1 %69, label %70, label %57

70:                                               ; preds = %57
  %71 = icmp eq i32 %63, 0
  br i1 %71, label %72, label %101

72:                                               ; preds = %70, %50, %47
  %73 = phi i32 [ %60, %70 ], [ -3, %47 ], [ -3, %50 ]
  br label %101

74:                                               ; preds = %91, %37
  %75 = phi ptr [ %96, %91 ], [ %35, %37 ]
  %76 = phi ptr [ %95, %91 ], [ %34, %37 ]
  %77 = phi i32 [ %93, %91 ], [ 0, %37 ]
  %78 = phi i32 [ %92, %91 ], [ 0, %37 ]
  %79 = call i32 @__task_pid_nr_ns(ptr noundef %75, i32 noundef 0, ptr noundef null) #16
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %91

81:                                               ; preds = %74
  %82 = getelementptr i8, ptr %76, i32 500
  %83 = load ptr, ptr %82, align 16
  %84 = load ptr, ptr %38, align 16
  %85 = icmp eq ptr %83, %84
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = call i32 @group_send_sig_info(i32 noundef %1, ptr noundef nonnull %3, ptr noundef %75, i32 noundef 4) #16
  %88 = add i32 %77, 1
  %89 = icmp eq i32 %87, -1
  %90 = select i1 %89, i32 %78, i32 %87
  br label %91

91:                                               ; preds = %86, %81, %74
  %92 = phi i32 [ %78, %81 ], [ %90, %86 ], [ %78, %74 ]
  %93 = phi i32 [ %77, %81 ], [ %88, %86 ], [ %77, %74 ]
  %94 = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 34
  %95 = load volatile ptr, ptr %94, align 4
  %96 = getelementptr i8, ptr %95, i32 -1116
  %97 = icmp eq ptr %96, @init_task
  br i1 %97, label %98, label %74

98:                                               ; preds = %91
  %99 = icmp eq i32 %93, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %98, %33
  br label %101

101:                                              ; preds = %100, %98, %72, %70
  %102 = phi i32 [ %73, %72 ], [ 0, %70 ], [ -3, %100 ], [ %92, %98 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #16, !srcloc !33
  %103 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #16, !srcloc !34
  %104 = extractvalue { i32, i32 } %103, 0
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  br label %107

107:                                              ; preds = %106, %101
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !35
  br label %108

108:                                              ; preds = %107, %30, %28
  %109 = phi i32 [ %29, %28 ], [ %102, %107 ], [ -3, %30 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret i32 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_pidfd_send_signal(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.kernel_siginfo, align 4
  %6 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false) #16, !annotation !9
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %8, label %103

8:                                                ; preds = %4
  %9 = tail call i32 @__fdget(i32 noundef %0) #16, !noalias !63
  %10 = and i32 %9, -4
  %11 = inttoptr i32 %10 to ptr
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %103, label %13

13:                                               ; preds = %8
  %14 = tail call ptr @pidfd_pid(ptr noundef nonnull %11) #16
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call ptr @tgid_pidfd_to_pid(ptr noundef nonnull %11) #16
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi ptr [ %17, %16 ], [ %14, %13 ]
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = ptrtoint ptr %19 to i32
  br label %98

23:                                               ; preds = %18
  %24 = tail call ptr @llvm.thread.pointer() #16
  %25 = tail call ptr @task_active_pid_ns(ptr noundef %24) #16
  %26 = icmp eq ptr %19, null
  br i1 %26, label %98, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.pid, ptr %19, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr %struct.pid, ptr %19, i32 0, i32 7, i32 %29, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  %33 = icmp eq ptr %31, %25
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %35, %27
  %36 = phi ptr [ %38, %35 ], [ %31, %27 ]
  %37 = getelementptr inbounds %struct.pid_namespace, ptr %36, i32 0, i32 6
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  %40 = icmp eq ptr %38, %25
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %42, label %35

42:                                               ; preds = %35, %27
  %43 = phi i1 [ %32, %27 ], [ %39, %35 ]
  br i1 %43, label %98, label %44

44:                                               ; preds = %42
  %45 = icmp eq i32 %2, 0
  br i1 %45, label %77, label %46

46:                                               ; preds = %44
  %47 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %6, i32 32, i32 -1090519040) #18, !srcloc !57
  %48 = extractvalue { i32, i32 } %47, 0
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %57, !prof !10

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %52 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %51) #11, !srcloc !58
  %53 = and i32 %52, -13
  %54 = or i32 %53, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %54) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %55 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 32) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57, !prof !10

57:                                               ; preds = %50, %46
  %58 = phi i32 [ %55, %50 ], [ 32, %46 ]
  %59 = sub i32 32, %58
  %60 = getelementptr i8, ptr %5, i32 %59
  call void @llvm.memset.p0.i32(ptr align 1 %60, i8 0, i32 %58, i1 false) #16
  br label %98

61:                                               ; preds = %50
  %62 = call fastcc i32 @post_copy_siginfo_from_user(ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %98, !prof !10

64:                                               ; preds = %61
  %65 = load i32, ptr %5, align 4
  %66 = icmp eq i32 %65, %1
  br i1 %66, label %67, label %98, !prof !10

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 62
  %69 = load ptr, ptr %68, align 64
  %70 = icmp eq ptr %69, %19
  br i1 %70, label %90, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = icmp sgt i32 %73, -1
  %75 = icmp eq i32 %73, -6
  %76 = or i1 %74, %75
  br i1 %76, label %98, label %90

77:                                               ; preds = %44
  %78 = getelementptr inbounds i8, ptr %5, i32 12
  %79 = getelementptr inbounds i8, ptr %5, i32 16
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %79, i8 0, i32 16, i1 false) #16
  store i32 %1, ptr %5, align 4
  %80 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 1
  store i32 0, ptr %80, align 4
  %81 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 2
  store i32 0, ptr %81, align 4
  %82 = tail call i32 @__task_pid_nr_ns(ptr noundef %24, i32 noundef 1, ptr noundef null) #16
  store i32 %82, ptr %78, align 4
  %83 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 83
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.cred, ptr %84, i32 0, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, -1
  %88 = load i32, ptr @overflowuid, align 4
  %89 = select i1 %87, i32 %88, i32 %86
  store i32 %89, ptr %79, align 4
  br label %90

90:                                               ; preds = %77, %71, %67
  br label %91

91:                                               ; preds = %95, %90
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %92 = call ptr @pid_task(ptr noundef nonnull %19, i32 noundef 0) #16
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %98

95:                                               ; preds = %91
  %96 = call i32 @group_send_sig_info(i32 noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %92, i32 noundef 1) #16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %97 = icmp eq i32 %96, -3
  br i1 %97, label %91, label %98, !prof !11

98:                                               ; preds = %95, %94, %71, %64, %61, %57, %42, %23, %21
  %99 = phi i32 [ %22, %21 ], [ %62, %61 ], [ -22, %64 ], [ -1, %71 ], [ -22, %42 ], [ -3, %94 ], [ -22, %23 ], [ -14, %57 ], [ %96, %95 ]
  %100 = and i32 %9, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  call void @fput(ptr noundef nonnull %11) #16
  br label %103

103:                                              ; preds = %102, %98, %8, %4
  %104 = phi i32 [ -22, %4 ], [ -9, %8 ], [ %99, %98 ], [ %99, %102 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_tgkill(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.kernel_siginfo, align 4
  %5 = icmp slt i32 %1, 1
  %6 = icmp slt i32 %0, 1
  %7 = or i1 %6, %5
  br i1 %7, label %24, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #16
  %9 = getelementptr inbounds i8, ptr %4, i32 20
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(12) %9, i8 0, i64 12, i1 false) #16
  store i32 %2, ptr %4, align 4
  %10 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 1
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 2
  store i32 -6, ptr %11, align 4
  %12 = tail call ptr @llvm.thread.pointer() #16
  %13 = tail call i32 @__task_pid_nr_ns(ptr noundef %12, i32 noundef 1, ptr noundef null) #16
  %14 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 3
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 83
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, -1
  %20 = load i32, ptr @overflowuid, align 4
  %21 = select i1 %19, i32 %20, i32 %18
  %22 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 3, i32 0, i32 1
  store i32 %21, ptr %22, align 4
  %23 = call fastcc i32 @do_send_specific(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  br label %24

24:                                               ; preds = %8, %3
  %25 = phi i32 [ %23, %8 ], [ -22, %3 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_tkill(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.kernel_siginfo, align 4
  %4 = icmp slt i32 %0, 1
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %6 = getelementptr inbounds i8, ptr %3, i32 20
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false) #16
  store i32 %1, ptr %3, align 4
  %7 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 2
  store i32 -6, ptr %8, align 4
  %9 = tail call ptr @llvm.thread.pointer() #16
  %10 = tail call i32 @__task_pid_nr_ns(ptr noundef %9, i32 noundef 1, ptr noundef null) #16
  %11 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 3
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 83
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.cred, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, -1
  %17 = load i32, ptr @overflowuid, align 4
  %18 = select i1 %16, i32 %17, i32 %15
  %19 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 3, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = call fastcc i32 @do_send_specific(i32 noundef 0, i32 noundef %0, i32 noundef %1, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %21

21:                                               ; preds = %5, %2
  %22 = phi i32 [ %20, %5 ], [ -22, %2 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_rt_sigqueueinfo(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.kernel_siginfo, align 4
  %5 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false) #16, !annotation !9
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 32, i32 -1090519040) #18, !srcloc !57
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17, !prof !10

9:                                                ; preds = %3
  %10 = tail call ptr @llvm.thread.pointer() #16
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #11, !srcloc !58
  %13 = and i32 %12, -13
  %14 = or i32 %13, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %15 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %5, i32 noundef 32) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !10

17:                                               ; preds = %9, %3
  %18 = phi i32 [ %15, %9 ], [ 32, %3 ]
  %19 = sub i32 32, %18
  %20 = getelementptr i8, ptr %4, i32 %19
  call void @llvm.memset.p0.i32(ptr align 1 %20, i8 0, i32 %18, i1 false) #16
  br label %44

21:                                               ; preds = %9
  store i32 %1, ptr %4, align 4
  %22 = call fastcc i32 @post_copy_siginfo_from_user(ptr noundef nonnull %4, ptr noundef %5) #16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %44, !prof !10

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp sgt i32 %26, -1
  %28 = icmp eq i32 %26, -6
  %29 = or i1 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = call i32 @__task_pid_nr_ns(ptr noundef %10, i32 noundef 0, ptr noundef null) #16
  %32 = icmp eq i32 %31, %0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30, %24
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %34 = call ptr @find_vpid(i32 noundef %0) #16
  br label %35

35:                                               ; preds = %39, %33
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %36 = call ptr @pid_task(ptr noundef %34, i32 noundef 0) #16
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %42

39:                                               ; preds = %35
  %40 = call i32 @group_send_sig_info(i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %36, i32 noundef 1) #16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %41 = icmp eq i32 %40, -3
  br i1 %41, label %35, label %42, !prof !11

42:                                               ; preds = %39, %38
  %43 = phi i32 [ -3, %38 ], [ %40, %39 ]
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %44

44:                                               ; preds = %42, %30, %21, %17
  %45 = phi i32 [ %22, %21 ], [ %43, %42 ], [ -1, %30 ], [ -14, %17 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_rt_tgsigqueueinfo(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.kernel_siginfo, align 4
  %6 = inttoptr i32 %3 to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false) #16, !annotation !9
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 32, i32 -1090519040) #18, !srcloc !57
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18, !prof !10

10:                                               ; preds = %4
  %11 = tail call ptr @llvm.thread.pointer() #16
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #11, !srcloc !58
  %14 = and i32 %13, -13
  %15 = or i32 %14, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %16 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %6, i32 noundef 32) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !10

18:                                               ; preds = %10, %4
  %19 = phi i32 [ %16, %10 ], [ 32, %4 ]
  %20 = sub i32 32, %19
  %21 = getelementptr i8, ptr %5, i32 %20
  call void @llvm.memset.p0.i32(ptr align 1 %21, i8 0, i32 %19, i1 false) #16
  br label %40

22:                                               ; preds = %10
  store i32 %2, ptr %5, align 4
  %23 = call fastcc i32 @post_copy_siginfo_from_user(ptr noundef nonnull %5, ptr noundef %6) #16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %40, !prof !10

25:                                               ; preds = %22
  %26 = icmp slt i32 %1, 1
  %27 = icmp slt i32 %0, 1
  %28 = or i1 %27, %26
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp sgt i32 %31, -1
  %33 = icmp eq i32 %31, -6
  %34 = or i1 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = call i32 @__task_pid_nr_ns(ptr noundef %11, i32 noundef 0, ptr noundef null) #16
  %37 = icmp eq i32 %36, %1
  br i1 %37, label %38, label %40

38:                                               ; preds = %35, %29
  %39 = call fastcc i32 @do_send_specific(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %5) #16
  br label %40

40:                                               ; preds = %38, %35, %25, %22, %18
  %41 = phi i32 [ %23, %22 ], [ %39, %38 ], [ -22, %25 ], [ -1, %35 ], [ -14, %18 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kernel_sigaction(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.sigset_t, align 8
  %4 = tail call ptr @llvm.thread.pointer() #16
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 94
  %6 = load ptr, ptr %5, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %6) #16
  %7 = load ptr, ptr %5, align 4
  %8 = add i32 %0, -1
  %9 = getelementptr %struct.sighand_struct, ptr %7, i32 0, i32 3, i32 %8
  store ptr %1, ptr %9, align 4
  %10 = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = lshr i32 %8, 5
  %15 = getelementptr [2 x i32], ptr %3, i32 0, i32 %14
  store i64 0, ptr %3, align 8
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 93
  %19 = load ptr, ptr %18, align 16
  %20 = getelementptr inbounds %struct.signal_struct, ptr %19, i32 0, i32 6
  call fastcc void @flush_sigqueue_mask(ptr noundef nonnull %3, ptr noundef %20)
  %21 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 98
  call fastcc void @flush_sigqueue_mask(ptr noundef nonnull %3, ptr noundef %21)
  tail call void @recalc_sigpending()
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %22

22:                                               ; preds = %11, %2
  %23 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %24 = load i16, ptr %23, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @flush_sigqueue_mask(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sigpending, ptr %1, i32 0, i32 1
  %4 = getelementptr [2 x i32], ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr %struct.sigpending, ptr %1, i32 0, i32 1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, %5
  %9 = load i32, ptr %0, align 4
  %10 = load i32, ptr %3, align 4
  %11 = and i32 %10, %9
  %12 = or i32 %11, %8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %52, label %14

14:                                               ; preds = %2
  %15 = xor i32 %5, -1
  %16 = and i32 %7, %15
  store i32 %16, ptr %6, align 4
  %17 = load i32, ptr %0, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %10, %18
  store i32 %19, ptr %3, align 4
  %20 = load ptr, ptr %1, align 4
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %52, label %22

22:                                               ; preds = %50, %14
  %23 = phi ptr [ %24, %50 ], [ %20, %14 ]
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.sigqueue, ptr %23, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, -1
  %28 = lshr i32 %27, 5
  %29 = getelementptr [2 x i32], ptr %0, i32 0, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %27, 31
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, %30
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %50, label %35

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %37, ptr %38, align 4
  store volatile ptr %24, ptr %37, align 4
  store volatile ptr %23, ptr %23, align 4
  store ptr %23, ptr %36, align 4
  %39 = getelementptr inbounds %struct.sigqueue, ptr %23, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.sigqueue, ptr %23, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @dec_rlimit_put_ucounts(ptr noundef nonnull %45, i32 noundef 12) #16
  store ptr null, ptr %44, align 4
  br label %48

48:                                               ; preds = %47, %43
  %49 = load ptr, ptr @sigqueue_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %49, ptr noundef %23) #16
  br label %50

50:                                               ; preds = %48, %35, %22
  %51 = icmp eq ptr %24, %1
  br i1 %51, label %52, label %22

52:                                               ; preds = %50, %14, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @sigaction_compat_abi(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_sigaction(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.sigset_t, align 8
  %5 = tail call ptr @llvm.thread.pointer() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store i64 0, ptr %4, align 8, !annotation !9
  %6 = add i32 %0, -65
  %7 = icmp ult i32 %6, -64
  br i1 %7, label %82, label %8

8:                                                ; preds = %3
  %9 = icmp ne ptr %1, null
  %10 = icmp ult i32 %0, 32
  %11 = and i1 %10, %9
  %12 = add nsw i32 %0, -1
  br i1 %11, label %13, label %17

13:                                               ; preds = %8
  %14 = shl nuw nsw i32 1, %12
  %15 = and i32 %14, 262400
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %82

17:                                               ; preds = %13, %8
  %18 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 94
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr %struct.sighand_struct, ptr %19, i32 0, i32 3, i32 %12
  tail call void @_raw_spin_lock_irq(ptr noundef %19) #16
  %21 = getelementptr inbounds %struct.sigaction, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 8388608
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %27 = load i16, ptr %26, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  br label %82

29:                                               ; preds = %17
  %30 = icmp eq ptr %2, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef align 4 dereferenceable(20) %20, i32 20, i1 false)
  br label %32

32:                                               ; preds = %31, %29
  br i1 %9, label %33, label %37

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.sigaction, ptr %1, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, -570423289
  store i32 %36, ptr %34, align 4
  br label %37

37:                                               ; preds = %33, %32
  br i1 %30, label %42, label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.sigaction, ptr %2, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, -570423289
  store i32 %41, ptr %39, align 4
  br label %42

42:                                               ; preds = %38, %37
  tail call void @sigaction_compat_abi(ptr noundef %1, ptr noundef %2)
  br i1 %9, label %43, label %78

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.sigaction, ptr %1, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, -262401
  store i32 %46, ptr %44, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %20, ptr noundef nonnull align 4 dereferenceable(20) %1, i32 20, i1 false)
  %47 = load ptr, ptr %18, align 4
  %48 = getelementptr %struct.sighand_struct, ptr %47, i32 0, i32 3, i32 %12
  %49 = load ptr, ptr %48, align 4
  %50 = ptrtoint ptr %49 to i32
  switch i32 %50, label %78 [
    i32 1, label %57
    i32 0, label %51
  ]

51:                                               ; preds = %43
  %52 = icmp ult i32 %12, 31
  br i1 %52, label %53, label %78

53:                                               ; preds = %51
  %54 = shl nuw nsw i32 1, %12
  %55 = and i32 %54, 138608640
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %53, %43
  %58 = and i32 %12, 31
  %59 = shl nuw i32 1, %58
  %60 = lshr i32 %12, 5
  %61 = getelementptr [2 x i32], ptr %4, i32 0, i32 %60
  %62 = load i32, ptr %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, ptr %61, align 4
  %64 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 93
  %65 = load ptr, ptr %64, align 16
  %66 = getelementptr inbounds %struct.signal_struct, ptr %65, i32 0, i32 6
  call fastcc void @flush_sigqueue_mask(ptr noundef nonnull %4, ptr noundef %66)
  %67 = load ptr, ptr %64, align 16
  %68 = getelementptr inbounds %struct.signal_struct, ptr %67, i32 0, i32 3
  %69 = load volatile ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, %68
  br i1 %70, label %78, label %71

71:                                               ; preds = %71, %57
  %72 = phi ptr [ %74, %71 ], [ %69, %57 ]
  %73 = getelementptr i8, ptr %72, i32 260
  call fastcc void @flush_sigqueue_mask(ptr noundef nonnull %4, ptr noundef %73)
  %74 = load volatile ptr, ptr %72, align 4
  %75 = load ptr, ptr %64, align 16
  %76 = getelementptr inbounds %struct.signal_struct, ptr %75, i32 0, i32 3
  %77 = icmp eq ptr %74, %76
  br i1 %77, label %78, label %71

78:                                               ; preds = %71, %57, %53, %51, %43, %42
  %79 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %80 = load i16, ptr %79, align 4
  %81 = add i16 %80, 1
  store i16 %81, ptr %79, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  br label %82

82:                                               ; preds = %78, %25, %13, %3
  %83 = phi i32 [ -22, %25 ], [ 0, %78 ], [ -22, %13 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sigaltstack(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.sigaltstack, align 4
  %4 = alloca %struct.sigaltstack, align 4
  %5 = inttoptr i32 %0 to ptr
  %6 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false) #16, !annotation !9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false) #16, !annotation !9
  %7 = icmp eq i32 %0, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %5, i32 12, i32 -1090519040) #18, !srcloc !57
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20, !prof !10

12:                                               ; preds = %8
  %13 = tail call ptr @llvm.thread.pointer() #16
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #11, !srcloc !58
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %18 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef 12) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !10

20:                                               ; preds = %12, %8
  %21 = phi i32 [ %18, %12 ], [ 12, %8 ]
  %22 = sub i32 12, %21
  %23 = getelementptr i8, ptr %3, i32 %22
  call void @llvm.memset.p0.i32(ptr align 1 %23, i8 0, i32 %21, i1 false) #16
  br label %50

24:                                               ; preds = %12, %2
  %25 = phi ptr [ null, %2 ], [ %3, %12 ]
  %26 = icmp ne i32 %1, 0
  %27 = select i1 %26, ptr %4, ptr null
  %28 = call i32 @llvm.read_register.i32(metadata !0) #16
  %29 = or i32 %28, 8191
  %30 = add nsw i32 %29, -7
  %31 = inttoptr i32 %30 to ptr
  %32 = getelementptr %struct.pt_regs, ptr %31, i32 -1, i32 0, i32 13
  %33 = load i32, ptr %32, align 4
  %34 = call fastcc i32 @do_sigaltstack(ptr noundef %25, ptr noundef %27, i32 noundef %33) #16
  %35 = icmp eq i32 %34, 0
  %36 = and i1 %26, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %24
  %38 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %6, i32 12, i32 -1090519040) #18, !srcloc !61
  %39 = extractvalue { i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = tail call ptr @llvm.thread.pointer() #16
  %43 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  %44 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %43) #11, !srcloc !58
  %45 = and i32 %44, -13
  %46 = or i32 %45, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %46) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %47 = call i32 @arm_copy_to_user(ptr noundef nonnull %6, ptr noundef nonnull %4, i32 noundef 12) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 0, i32 -14
  br label %50

50:                                               ; preds = %41, %37, %24, %20
  %51 = phi i32 [ %34, %24 ], [ -14, %20 ], [ -14, %37 ], [ %49, %41 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @restore_altstack(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.sigaltstack, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false), !annotation !9
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 12, i32 -1090519040) #18, !srcloc !57
  %4 = extractvalue { i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14, !prof !10

6:                                                ; preds = %1
  %7 = tail call ptr @llvm.thread.pointer() #16
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #11, !srcloc !58
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %12 = call i32 @arm_copy_from_user(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 12) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14, !prof !10

14:                                               ; preds = %6, %1
  %15 = phi i32 [ %12, %6 ], [ 12, %1 ]
  %16 = sub i32 12, %15
  %17 = getelementptr i8, ptr %2, i32 %16
  call void @llvm.memset.p0.i32(ptr align 1 %17, i8 0, i32 %15, i1 false) #16
  br label %64

18:                                               ; preds = %6
  %19 = call i32 @llvm.read_register.i32(metadata !0)
  %20 = or i32 %19, 8191
  %21 = add nsw i32 %20, -7
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr %struct.pt_regs, ptr %22, i32 -1, i32 0, i32 13
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %2, align 4
  %26 = getelementptr inbounds %struct.sigaltstack, ptr %2, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.sigaltstack, ptr %2, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 101
  %31 = load i32, ptr %30, align 8
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %42

33:                                               ; preds = %18
  %34 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 99
  %35 = load i32, ptr %34, align 64
  %36 = icmp ugt i32 %24, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = sub i32 %24, %35
  %39 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 100
  %40 = load i32, ptr %39, align 4
  %41 = icmp ugt i32 %38, %40
  br i1 %41, label %42, label %64, !prof !10

42:                                               ; preds = %37, %33, %18
  %43 = and i32 %29, 2147483647
  %44 = icmp ugt i32 %43, 2
  br i1 %44, label %64, label %45, !prof !11

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 99
  %47 = load i32, ptr %46, align 64
  %48 = ptrtoint ptr %25 to i32
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 100
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, %27
  %54 = icmp eq i32 %31, %29
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %64, label %56

56:                                               ; preds = %50, %45
  %57 = icmp eq i32 %43, 2
  br i1 %57, label %60, label %58

58:                                               ; preds = %56
  %59 = icmp ult i32 %27, 2048
  br i1 %59, label %64, label %60, !prof !11

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %48, %58 ], [ 0, %56 ]
  %62 = phi i32 [ %27, %58 ], [ 0, %56 ]
  store i32 %61, ptr %46, align 64
  %63 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 100
  store i32 %62, ptr %63, align 4
  store i32 %29, ptr %30, align 8
  br label %64

64:                                               ; preds = %60, %58, %50, %42, %37, %14
  %65 = phi i32 [ 0, %37 ], [ 0, %42 ], [ 0, %50 ], [ 0, %58 ], [ 0, %60 ], [ -14, %14 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #16
  ret i32 %65
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc i32 @do_sigaltstack(ptr noundef readonly %0, ptr noundef writeonly %1, i32 noundef %2) unnamed_addr #10 {
  %4 = tail call ptr @llvm.thread.pointer() #16
  %5 = icmp eq ptr %1, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %3
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %1, i8 0, i32 12, i1 false)
  %7 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %8 = load i32, ptr %7, align 64
  %9 = inttoptr i32 %8 to ptr
  store ptr %9, ptr %1, align 4
  %10 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 100
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sigaltstack, ptr %1, i32 0, i32 2
  store i32 %11, ptr %12, align 4
  %13 = load i32, ptr %10, align 4
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %16 = load i32, ptr %15, align 8
  br i1 %14, label %26, label %17

17:                                               ; preds = %6
  %18 = icmp sgt i32 %16, -1
  br i1 %18, label %19, label %26

19:                                               ; preds = %17
  %20 = load i32, ptr %7, align 64
  %21 = icmp ult i32 %20, %2
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = sub i32 %2, %20
  %24 = icmp ule i32 %23, %13
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %22, %19, %17, %6
  %27 = phi i32 [ 0, %17 ], [ 0, %19 ], [ %25, %22 ], [ 2, %6 ]
  %28 = and i32 %16, -2147483648
  %29 = or i32 %28, %27
  %30 = getelementptr inbounds %struct.sigaltstack, ptr %1, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  br label %31

31:                                               ; preds = %26, %3
  %32 = icmp eq ptr %0, null
  br i1 %32, label %73, label %33

33:                                               ; preds = %31
  %34 = load ptr, ptr %0, align 4
  %35 = getelementptr inbounds %struct.sigaltstack, ptr %0, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.sigaltstack, ptr %0, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 101
  %40 = load i32, ptr %39, align 8
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %42, label %51

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %44 = load i32, ptr %43, align 64
  %45 = icmp ult i32 %44, %2
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = sub i32 %2, %44
  %48 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 100
  %49 = load i32, ptr %48, align 4
  %50 = icmp ugt i32 %47, %49
  br i1 %50, label %51, label %73, !prof !10

51:                                               ; preds = %46, %42, %33
  %52 = and i32 %38, 2147483647
  %53 = icmp ugt i32 %52, 2
  br i1 %53, label %73, label %54, !prof !11

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 99
  %56 = load i32, ptr %55, align 64
  %57 = ptrtoint ptr %34 to i32
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 100
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, %36
  %63 = icmp eq i32 %40, %38
  %64 = select i1 %62, i1 %63, i1 false
  br i1 %64, label %73, label %65

65:                                               ; preds = %59, %54
  %66 = icmp eq i32 %52, 2
  br i1 %66, label %69, label %67

67:                                               ; preds = %65
  %68 = icmp ult i32 %36, 2048
  br i1 %68, label %73, label %69, !prof !11

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %57, %67 ], [ 0, %65 ]
  %71 = phi i32 [ %36, %67 ], [ 0, %65 ]
  store i32 %70, ptr %55, align 64
  %72 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 100
  store i32 %71, ptr %72, align 4
  store i32 %38, ptr %39, align 8
  br label %73

73:                                               ; preds = %69, %67, %59, %51, %46, %31
  %74 = phi i32 [ 0, %31 ], [ 0, %69 ], [ -12, %67 ], [ -22, %51 ], [ -1, %46 ], [ 0, %59 ]
  ret i32 %74
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__save_altstack(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @llvm.thread.pointer() #16
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %5 = load i32, ptr %4, align 64
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %7) #11, !srcloc !58
  %9 = and i32 %8, -13
  %10 = or i32 %9, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %11 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, ptr %6, i32 -1090519041) #16, !srcloc !66
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %12 = getelementptr inbounds %struct.sigaltstack, ptr %0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 101
  %14 = load i32, ptr %13, align 8
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %7) #11, !srcloc !58
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %18 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %12, i32 %14, i32 -1090519041) #16, !srcloc !67
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %19 = or i32 %18, %11
  %20 = getelementptr inbounds %struct.sigaltstack, ptr %0, i32 0, i32 2
  %21 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 100
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %7) #11, !srcloc !58
  %24 = and i32 %23, -13
  %25 = or i32 %24, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %26 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %20, i32 %22, i32 -1090519041) #16, !srcloc !68
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %27 = or i32 %19, %26
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sigpending(i32 noundef %0) #0 {
  %2 = alloca %struct.sigset_t, align 8
  %3 = inttoptr i32 %0 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %4 = tail call ptr @llvm.thread.pointer() #16
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 94
  %6 = load ptr, ptr %5, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %6) #16
  %7 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 98, i32 1
  %8 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 93
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr inbounds %struct.signal_struct, ptr %9, i32 0, i32 6, i32 1
  %11 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 98, i32 1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.signal_struct, ptr %9, i32 0, i32 6, i32 1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, %12
  %16 = getelementptr inbounds [2 x i32], ptr %2, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  %17 = load i32, ptr %7, align 4
  %18 = load i32, ptr %10, align 4
  %19 = or i32 %18, %17
  store i32 %19, ptr %2, align 8
  %20 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %21 = load i16, ptr %20, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  %23 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 95
  %24 = getelementptr %struct.task_struct, ptr %4, i32 0, i32 95, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr %16, align 4
  %27 = and i32 %26, %25
  store i32 %27, ptr %16, align 4
  %28 = load i32, ptr %23, align 4
  %29 = load i32, ptr %2, align 8
  %30 = and i32 %29, %28
  store i32 %30, ptr %2, align 8
  %31 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 4, i32 -1090519040) #18, !srcloc !61
  %32 = extractvalue { i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %36 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %35) #11, !srcloc !58
  %37 = and i32 %36, -13
  %38 = or i32 %37, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %39 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 4) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 0, i32 -14
  br label %42

42:                                               ; preds = %34, %1
  %43 = phi i32 [ -14, %1 ], [ %41, %34 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sigprocmask(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sigset_t, align 8
  %7 = inttoptr i32 %1 to ptr
  %8 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %9 = tail call ptr @llvm.thread.pointer() #16
  %10 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 95
  %11 = load i32, ptr %10, align 8
  store i32 %11, ptr %4, align 4
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %43, label %13

13:                                               ; preds = %3
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %7, i32 4, i32 -1090519040) #18, !srcloc !57
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24, !prof !10

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %18) #11, !srcloc !58
  %20 = and i32 %19, -13
  %21 = or i32 %20, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %22 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef 4) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24, !prof !10

24:                                               ; preds = %17, %13
  %25 = phi i32 [ %22, %17 ], [ 4, %13 ]
  %26 = sub i32 4, %25
  %27 = getelementptr i8, ptr %5, i32 %26
  call void @llvm.memset.p0.i32(ptr align 1 %27, i8 0, i32 %25, i1 false) #16
  br label %57

28:                                               ; preds = %17
  %29 = load i64, ptr %10, align 8
  store i64 %29, ptr %6, align 8
  %30 = trunc i64 %29 to i32
  switch i32 %0, label %57 [
    i32 0, label %31
    i32 1, label %34
    i32 2, label %38
  ]

31:                                               ; preds = %28
  %32 = load i32, ptr %5, align 4
  %33 = or i32 %32, %30
  br label %40

34:                                               ; preds = %28
  %35 = load i32, ptr %5, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %36, %30
  br label %40

38:                                               ; preds = %28
  %39 = load i32, ptr %5, align 4
  br label %40

40:                                               ; preds = %38, %34, %31
  %41 = phi i32 [ %39, %38 ], [ %37, %34 ], [ %33, %31 ]
  %42 = and i32 %41, -262401
  store i32 %42, ptr %6, align 8
  call void @__set_current_blocked(ptr noundef nonnull %6) #16
  br label %43

43:                                               ; preds = %40, %3
  %44 = icmp eq i32 %2, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %43
  %46 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %8, i32 4, i32 -1090519040) #18, !srcloc !61
  %47 = extractvalue { i32, i32 } %46, 0
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %51 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %50) #11, !srcloc !58
  %52 = and i32 %51, -13
  %53 = or i32 %52, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %54 = call i32 @arm_copy_to_user(ptr noundef nonnull %8, ptr noundef nonnull %4, i32 noundef 4) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49, %43
  br label %57

57:                                               ; preds = %56, %49, %45, %28, %24
  %58 = phi i32 [ 0, %56 ], [ -22, %28 ], [ -14, %49 ], [ -14, %24 ], [ -14, %45 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_rt_sigaction(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.k_sigaction, align 4
  %6 = alloca %struct.k_sigaction, align 4
  %7 = inttoptr i32 %1 to ptr
  %8 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false) #16, !annotation !9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false) #16, !annotation !9
  %9 = icmp eq i32 %3, 8
  br i1 %9, label %10, label %48

10:                                               ; preds = %4
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %10
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %7, i32 20, i32 -1090519040) #18, !srcloc !57
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %24, !prof !10

16:                                               ; preds = %12
  %17 = tail call ptr @llvm.thread.pointer() #16
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %18) #11, !srcloc !58
  %20 = and i32 %19, -13
  %21 = or i32 %20, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %22 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef 20) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24, !prof !10

24:                                               ; preds = %16, %12
  %25 = phi i32 [ %22, %16 ], [ 20, %12 ]
  %26 = sub i32 20, %25
  %27 = getelementptr i8, ptr %5, i32 %26
  call void @llvm.memset.p0.i32(ptr align 1 %27, i8 0, i32 %25, i1 false) #16
  br label %48

28:                                               ; preds = %16, %10
  %29 = phi ptr [ null, %10 ], [ %5, %16 ]
  %30 = icmp eq i32 %2, 0
  %31 = select i1 %30, ptr null, ptr %6
  %32 = call i32 @do_sigaction(i32 noundef %0, ptr noundef %29, ptr noundef %31) #16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  br i1 %30, label %47, label %35

35:                                               ; preds = %34
  %36 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %8, i32 20, i32 -1090519040) #18, !srcloc !61
  %37 = extractvalue { i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = tail call ptr @llvm.thread.pointer() #16
  %41 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 3
  %42 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %41) #11, !srcloc !58
  %43 = and i32 %42, -13
  %44 = or i32 %43, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %45 = call i32 @arm_copy_to_user(ptr noundef nonnull %8, ptr noundef nonnull %6, i32 noundef 20) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39, %34
  br label %48

48:                                               ; preds = %47, %39, %35, %28, %24, %4
  %49 = phi i32 [ 0, %47 ], [ -22, %4 ], [ %32, %28 ], [ -14, %39 ], [ -14, %24 ], [ -14, %35 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #16
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sigaction(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.k_sigaction, align 4
  %5 = alloca %struct.k_sigaction, align 4
  %6 = inttoptr i32 %1 to ptr
  %7 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #16, !annotation !9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false) #16, !annotation !9
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %57, label %9

9:                                                ; preds = %3
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %6, i32 16, i32 -1090519040) #18, !srcloc !69
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %105

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #16
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #11, !srcloc !58
  %17 = and i32 %16, -13
  %18 = or i32 %17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %19 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %6, i32 -1090519041) #16, !srcloc !70
  %20 = extractvalue { i32, i32 } %19, 0
  %21 = extractvalue { i32, i32 } %19, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %22 = inttoptr i32 %21 to ptr
  store ptr %22, ptr %4, align 4
  %23 = icmp eq i32 %20, 0
  br i1 %23, label %24, label %105

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.old_sigaction, ptr %6, i32 0, i32 3
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #11, !srcloc !58
  %27 = and i32 %26, -13
  %28 = or i32 %27, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %29 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %25, i32 -1090519041) #16, !srcloc !71
  %30 = extractvalue { i32, i32 } %29, 0
  %31 = extractvalue { i32, i32 } %29, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %32 = inttoptr i32 %31 to ptr
  %33 = getelementptr inbounds %struct.sigaction, ptr %4, i32 0, i32 2
  store ptr %32, ptr %33, align 4
  %34 = icmp eq i32 %30, 0
  br i1 %34, label %35, label %105

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.old_sigaction, ptr %6, i32 0, i32 2
  %37 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #11, !srcloc !58
  %38 = and i32 %37, -13
  %39 = or i32 %38, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %40 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %36, i32 -1090519041) #16, !srcloc !72
  %41 = extractvalue { i32, i32 } %40, 0
  %42 = extractvalue { i32, i32 } %40, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %43 = getelementptr inbounds %struct.sigaction, ptr %4, i32 0, i32 1
  store i32 %42, ptr %43, align 4
  %44 = icmp eq i32 %41, 0
  br i1 %44, label %45, label %105

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.old_sigaction, ptr %6, i32 0, i32 1
  %47 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #11, !srcloc !58
  %48 = and i32 %47, -13
  %49 = or i32 %48, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %50 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %46, i32 -1090519041) #16, !srcloc !73
  %51 = extractvalue { i32, i32 } %50, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %105

53:                                               ; preds = %45
  %54 = extractvalue { i32, i32 } %50, 1
  %55 = getelementptr inbounds %struct.sigaction, ptr %4, i32 0, i32 3
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.sigaction, ptr %4, i32 0, i32 3, i32 0, i32 1
  store i32 0, ptr %56, align 4
  br label %57

57:                                               ; preds = %53, %3
  %58 = phi ptr [ null, %3 ], [ %4, %53 ]
  %59 = icmp ne i32 %2, 0
  %60 = select i1 %59, ptr %5, ptr null
  %61 = call i32 @do_sigaction(i32 noundef %0, ptr noundef %58, ptr noundef %60) #16
  %62 = icmp eq i32 %61, 0
  %63 = and i1 %59, %62
  br i1 %63, label %64, label %104

64:                                               ; preds = %57
  %65 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %7, i32 16, i32 -1090519040) #18, !srcloc !74
  %66 = extractvalue { i32, i32 } %65, 0
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %105

68:                                               ; preds = %64
  %69 = load ptr, ptr %5, align 4
  %70 = tail call ptr @llvm.thread.pointer() #16
  %71 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 3
  %72 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %71) #11, !srcloc !58
  %73 = and i32 %72, -13
  %74 = or i32 %73, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %74) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %75 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %7, ptr %69, i32 -1090519041) #16, !srcloc !75
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %72) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %105

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.old_sigaction, ptr %7, i32 0, i32 3
  %79 = getelementptr inbounds %struct.sigaction, ptr %5, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %71) #11, !srcloc !58
  %82 = and i32 %81, -13
  %83 = or i32 %82, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %83) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %84 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %78, ptr %80, i32 -1090519041) #16, !srcloc !76
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %81) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %77
  %87 = getelementptr inbounds %struct.old_sigaction, ptr %7, i32 0, i32 2
  %88 = getelementptr inbounds %struct.sigaction, ptr %5, i32 0, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %71) #11, !srcloc !58
  %91 = and i32 %90, -13
  %92 = or i32 %91, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %92) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %93 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %87, i32 %89, i32 -1090519041) #16, !srcloc !77
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %90) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %86
  %96 = getelementptr inbounds %struct.old_sigaction, ptr %7, i32 0, i32 1
  %97 = getelementptr inbounds %struct.sigaction, ptr %5, i32 0, i32 3
  %98 = load i32, ptr %97, align 4
  %99 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %71) #11, !srcloc !58
  %100 = and i32 %99, -13
  %101 = or i32 %100, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %101) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %102 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %96, i32 %98, i32 -1090519041) #16, !srcloc !78
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %99) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %95, %57
  br label %105

105:                                              ; preds = %104, %95, %86, %77, %68, %64, %45, %35, %24, %13, %9
  %106 = phi i32 [ %61, %104 ], [ -14, %9 ], [ -14, %13 ], [ -14, %24 ], [ -14, %35 ], [ -14, %45 ], [ -14, %95 ], [ -14, %86 ], [ -14, %77 ], [ -14, %68 ], [ -14, %64 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #16
  ret i32 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sys_pause() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #16
  %2 = load volatile i32, ptr %1, align 4
  %3 = and i32 %2, 256
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %15, !prof !10

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 1
  br label %7

7:                                                ; preds = %11, %5
  %8 = load volatile i32, ptr %1, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  store volatile i32 1, ptr %6, align 8
  tail call void @schedule() #16
  %12 = load volatile i32, ptr %1, align 4
  %13 = and i32 %12, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %7, label %15, !prof !10

15:                                               ; preds = %11, %7, %0
  ret i32 -514
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_rt_sigsuspend(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.sigset_t, align 8
  %4 = inttoptr i32 %0 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store i64 0, ptr %3, align 8, !annotation !9
  %5 = icmp eq i32 %1, 8
  br i1 %5, label %6, label %42

6:                                                ; preds = %2
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 8, i32 -1090519040) #18, !srcloc !57
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18, !prof !10

10:                                               ; preds = %6
  %11 = tail call ptr @llvm.thread.pointer() #16
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #11, !srcloc !58
  %14 = and i32 %13, -13
  %15 = or i32 %14, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #16, !srcloc !59
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %16 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %4, i32 noundef 8) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #16, !srcloc !59
  call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !60
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !10

18:                                               ; preds = %10, %6
  %19 = phi i32 [ %16, %10 ], [ 8, %6 ]
  %20 = sub i32 8, %19
  %21 = getelementptr i8, ptr %3, i32 %20
  call void @llvm.memset.p0.i32(ptr align 1 %21, i8 0, i32 %19, i1 false) #16
  br label %42

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 97
  %24 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 95
  %25 = load i64, ptr %24, align 8
  store i64 %25, ptr %23, align 8
  %26 = load i32, ptr %3, align 8
  %27 = and i32 %26, -262401
  store i32 %27, ptr %3, align 8
  call void @__set_current_blocked(ptr noundef nonnull %3) #16
  %28 = load volatile i32, ptr %11, align 4
  %29 = and i32 %28, 256
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %41, !prof !10

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 1
  br label %33

33:                                               ; preds = %37, %31
  %34 = load volatile i32, ptr %11, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  store volatile i32 1, ptr %32, align 8
  call void @schedule() #16
  %38 = load volatile i32, ptr %11, align 4
  %39 = and i32 %38, 256
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %33, label %41, !prof !10

41:                                               ; preds = %37, %33, %22
  call void @_set_bit(i32 noundef 20, ptr noundef %11) #16
  br label %42

42:                                               ; preds = %41, %18, %2
  %43 = phi i32 [ -514, %41 ], [ -22, %2 ], [ -14, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sigsuspend(i32 %0, i32 %1, i32 noundef %2) #0 {
  %4 = alloca %struct.sigset_t, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %5 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  store i32 0, ptr %5, align 4
  %6 = tail call ptr @llvm.thread.pointer() #16
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 97
  %8 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 95
  %9 = load i64, ptr %8, align 8
  store i64 %9, ptr %7, align 8
  %10 = and i32 %2, -262401
  store i32 %10, ptr %4, align 8
  call void @__set_current_blocked(ptr noundef nonnull %4) #16
  %11 = load volatile i32, ptr %6, align 4
  %12 = and i32 %11, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %24, !prof !10

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 1
  br label %16

16:                                               ; preds = %20, %14
  %17 = load volatile i32, ptr %6, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  store volatile i32 1, ptr %15, align 8
  tail call void @schedule() #16
  %21 = load volatile i32, ptr %6, align 4
  %22 = and i32 %21, 256
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %16, label %24, !prof !10

24:                                               ; preds = %20, %16, %3
  tail call void @_set_bit(i32 noundef 20, ptr noundef %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret i32 -514
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local ptr @arch_vma_name(ptr noundef %0) local_unnamed_addr #0 {
  ret ptr null
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @signals_init() local_unnamed_addr #6 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 48, i32 noundef 4, i32 noundef 262144, ptr noundef null) #16
  store ptr %1, ptr @sigqueue_cachep, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_signal_generate(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_signal_generate, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_signal_generate, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_signal_generate, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_signal_generate, ptr %5, i32 0, i32 4
  %17 = getelementptr inbounds %struct.trace_event_raw_signal_generate, ptr %5, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_signal_generate, ptr %5, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_signal_generate, ptr %5, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %11, i32 noundef %13, i32 noundef %15, ptr noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22) #16
  %23 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %24

24:                                               ; preds = %8, %3
  %25 = phi i32 [ %23, %8 ], [ %6, %3 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_signal_deliver(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_signal_deliver, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_signal_deliver, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_signal_deliver, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_signal_deliver, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_signal_deliver, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #16
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @dec_rlimit_put_ucounts(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_option(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inc_rlimit_get_ucounts(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @print_dropped_signal(i32 noundef %0) unnamed_addr #14 {
  %2 = load i32, ptr @print_fatal_signals, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @___ratelimit(ptr noundef nonnull @print_dropped_signal.ratelimit_state, ptr noundef nonnull @__func__.print_dropped_signal) #16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @llvm.thread.pointer() #16
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 85
  %10 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 52
  %11 = load i32, ptr %10, align 8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %9, i32 noundef %11, i32 noundef %0) #17
  br label %13

13:                                               ; preds = %7, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ptrace_trap_notify(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65536
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @ptrace_trap_notify.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !11

10:                                               ; preds = %1
  store i1 true, ptr @ptrace_trap_notify.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 886, i32 noundef 9, ptr noundef null) #16
  br label %11

11:                                               ; preds = %10, %1
  %12 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  %14 = load volatile i32, ptr %13, align 4
  store volatile i32 %14, ptr %2, align 4
  %15 = lshr i32 %14, 16
  %16 = and i32 %14, 65535
  %17 = icmp eq i32 %16, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  br i1 %17, label %18, label %19, !prof !11

18:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/signal.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 887, 0\0A.popsection", ""() #16, !srcloc !79
  unreachable

19:                                               ; preds = %11
  %20 = load volatile i32, ptr %0, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 98, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 256
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %37, !prof !10

28:                                               ; preds = %23, %19
  %29 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37, !prof !10

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 45
  %35 = load i32, ptr %34, align 4
  %36 = or i32 %35, 1048576
  store i32 %36, ptr %34, align 4
  br label %37

37:                                               ; preds = %33, %28, %23
  %38 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 45
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 4194304
  %41 = icmp eq i32 %40, 0
  tail call void @_set_bit(i32 noundef 0, ptr noundef %0) #16
  %42 = select i1 %41, i32 1, i32 9
  %43 = tail call i32 @wake_up_state(ptr noundef %0, i32 noundef %42) #16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  tail call void @kick_process(ptr noundef %0) #16
  br label %46

46:                                               ; preds = %45, %37
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @task_curr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ptrace_stop(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @llvm.thread.pointer() #16
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 108
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #16
  %8 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 1
  store volatile i32 264, ptr %8, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #16
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !80
  %9 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 121
  store ptr %3, ptr %9, align 4
  %10 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 42
  store i32 %0, ptr %10, align 64
  %11 = icmp eq i32 %1, 5
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 45
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 131072
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = tail call fastcc zeroext i1 @task_participate_group_stop(ptr noundef %5)
  br label %19

19:                                               ; preds = %17, %12, %4
  %20 = phi i1 [ %18, %17 ], [ false, %12 ], [ false, %4 ]
  %21 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 45
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, -524289
  store i32 %23, ptr %21, align 4
  %24 = and i32 %22, 3276800
  %25 = icmp eq i32 %24, 2097152
  br i1 %25, label %26, label %28, !prof !23

26:                                               ; preds = %19
  %27 = and i32 %22, -2621441
  store i32 %27, ptr %21, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  tail call void @wake_up_bit(ptr noundef %21, i32 noundef 21) #16
  br label %28

28:                                               ; preds = %26, %19
  %29 = icmp eq ptr %3, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, -256
  %34 = icmp eq i32 %33, 32768
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i32, ptr %21, align 4
  %37 = and i32 %36, -1048577
  store i32 %37, ptr %21, align 4
  %38 = and i32 %36, 2752512
  %39 = icmp eq i32 %38, 2097152
  br i1 %39, label %40, label %42, !prof !23

40:                                               ; preds = %35
  %41 = and i32 %36, -3145729
  store i32 %41, ptr %21, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  tail call void @wake_up_bit(ptr noundef %21, i32 noundef 21) #16
  br label %42

42:                                               ; preds = %40, %35, %30, %28
  %43 = load i32, ptr %21, align 4
  %44 = and i32 %43, 2097152
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46, !prof !10

46:                                               ; preds = %42
  %47 = and i32 %43, -2097153
  store i32 %47, ptr %21, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !21
  tail call void @wake_up_bit(ptr noundef %21, i32 noundef 21) #16
  br label %48

48:                                               ; preds = %46, %42
  %49 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 94
  %50 = load ptr, ptr %49, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %51 = load i16, ptr %50, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %50, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #16
  %53 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 5
  %54 = load i32, ptr %53, align 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %86, label %56, !prof !11

56:                                               ; preds = %48
  tail call fastcc void @do_notify_parent_cldstop(ptr noundef %5, i1 noundef zeroext true, i32 noundef %1)
  br i1 %20, label %57, label %68

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 55
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 56
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 93
  %63 = load ptr, ptr %62, align 16
  %64 = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 93
  %65 = load ptr, ptr %64, align 16
  %66 = icmp eq ptr %63, %65
  br i1 %66, label %68, label %67

67:                                               ; preds = %57
  tail call fastcc void @do_notify_parent_cldstop(ptr noundef %5, i1 noundef zeroext false, i32 noundef %1)
  br label %68

68:                                               ; preds = %67, %57, %56
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !81
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #16, !srcloc !33
  %69 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #16, !srcloc !34
  %70 = extractvalue { i32, i32 } %69, 0
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  br label %73

73:                                               ; preds = %72, %68
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !35
  tail call void @cgroup_enter_frozen() #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !82
  %74 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 4
  %75 = load i32, ptr %74, align 4
  %76 = or i32 %75, 1073741824
  store i32 %76, ptr %74, align 4
  tail call void @schedule() #16
  %77 = load i32, ptr %74, align 4
  %78 = and i32 %77, -1073741825
  store i32 %78, ptr %74, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !49
  %79 = load volatile i32, ptr @system_freezing_cnt, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81, !prof !10

81:                                               ; preds = %73
  %82 = tail call zeroext i1 @freezing_slow_path(ptr noundef %5) #16
  br i1 %82, label %83, label %85, !prof !11

83:                                               ; preds = %81
  %84 = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #16
  br label %85

85:                                               ; preds = %83, %81, %73
  tail call void @cgroup_leave_frozen(i1 noundef zeroext true) #16
  br label %97

86:                                               ; preds = %48
  br i1 %20, label %87, label %88

87:                                               ; preds = %86
  tail call fastcc void @do_notify_parent_cldstop(ptr noundef %5, i1 noundef zeroext false, i32 noundef %1)
  br label %88

88:                                               ; preds = %87, %86
  store volatile i32 0, ptr %8, align 8
  %89 = icmp eq i32 %2, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %88
  store i32 0, ptr %10, align 64
  br label %91

91:                                               ; preds = %90, %88
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #16, !srcloc !33
  %92 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #16, !srcloc !34
  %93 = extractvalue { i32, i32 } %92, 0
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  br label %96

96:                                               ; preds = %95, %91
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !35
  br label %97

97:                                               ; preds = %96, %85
  %98 = load ptr, ptr %49, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %98) #16
  store ptr null, ptr %9, align 4
  %99 = load i32, ptr %21, align 4
  %100 = and i32 %99, -4194305
  store i32 %100, ptr %21, align 4
  %101 = and i32 %99, 10092544
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %134

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 98, i32 1
  %105 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 95
  %106 = getelementptr %struct.task_struct, ptr %5, i32 0, i32 98, i32 1, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr %struct.task_struct, ptr %5, i32 0, i32 95, i32 0, i32 1
  %109 = load i32, ptr %108, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %107, %110
  %112 = load i32, ptr %104, align 4
  %113 = load i32, ptr %105, align 4
  %114 = xor i32 %113, -1
  %115 = and i32 %112, %114
  %116 = or i32 %115, %111
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %134

118:                                              ; preds = %103
  %119 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 93
  %120 = load ptr, ptr %119, align 16
  %121 = getelementptr inbounds %struct.signal_struct, ptr %120, i32 0, i32 6, i32 1
  %122 = getelementptr %struct.signal_struct, ptr %120, i32 0, i32 6, i32 1, i32 0, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = and i32 %123, %110
  %125 = load i32, ptr %121, align 4
  %126 = and i32 %125, %114
  %127 = or i32 %126, %124
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %118
  %130 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 49
  %131 = load i8, ptr %130, align 8
  %132 = and i8 %131, 32
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %129, %118, %103, %97
  tail call void @_set_bit(i32 noundef 0, ptr noundef %5) #16
  br label %135

135:                                              ; preds = %134, %129
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_enter_frozen() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_regs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_clear_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_sigtimedwait(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.sigset_t, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sigset_t, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  store i64 9223372036854775807, ptr %5, align 8
  %8 = tail call ptr @llvm.thread.pointer() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %9 = load i64, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  %10 = icmp eq ptr %2, null
  %11 = trunc i64 %9 to i32
  %12 = lshr i64 %9, 32
  %13 = trunc i64 %12 to i32
  br i1 %10, label %30, label %14

14:                                               ; preds = %3
  %15 = load i64, ptr %2, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %105, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 1
  %19 = load i32, ptr %18, align 8
  %20 = icmp ult i32 %19, 1000000000
  br i1 %20, label %21, label %105

21:                                               ; preds = %17
  %22 = icmp ugt i64 %15, 9223372035
  br i1 %22, label %28, label %23, !prof !11

23:                                               ; preds = %21
  %24 = load i64, ptr %18, align 8
  %25 = mul nuw nsw i64 %15, 1000000000
  %26 = and i64 %24, 4294967295
  %27 = add nuw i64 %26, %25
  br label %28

28:                                               ; preds = %23, %21
  %29 = phi i64 [ %27, %23 ], [ 9223372036854775807, %21 ]
  store i64 %29, ptr %5, align 8
  br label %30

30:                                               ; preds = %28, %3
  %31 = phi i64 [ %29, %28 ], [ 9223372036854775807, %3 ]
  %32 = phi ptr [ %5, %28 ], [ null, %3 ]
  %33 = and i32 %11, -262401
  %34 = getelementptr inbounds [2 x i32], ptr %6, i32 0, i32 1
  %35 = xor i32 %13, -1
  store i32 %35, ptr %34, align 4
  %36 = xor i32 %33, -1
  store i32 %36, ptr %6, align 8
  %37 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 94
  %38 = load ptr, ptr %37, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %38) #16
  %39 = call i32 @dequeue_signal(ptr noundef %8, ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull %7)
  %40 = icmp eq i32 %39, 0
  %41 = icmp ne i64 %31, 0
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %95

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 96
  %45 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 95
  %46 = load i64, ptr %45, align 8
  store i64 %46, ptr %44, align 32
  %47 = getelementptr %struct.task_struct, ptr %8, i32 0, i32 95, i32 0, i32 1
  %48 = lshr i64 %46, 32
  %49 = trunc i64 %48 to i32
  %50 = and i32 %49, %35
  store i32 %50, ptr %47, align 4
  %51 = trunc i64 %46 to i32
  %52 = and i32 %51, %36
  store i32 %52, ptr %45, align 4
  tail call void @recalc_sigpending()
  %53 = load ptr, ptr %37, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %54 = load i16, ptr %53, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %53, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  %56 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 1
  store volatile i32 1, ptr %56, align 8
  %57 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 143
  %58 = load i64, ptr %57, align 8
  %59 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 4
  %60 = load i32, ptr %59, align 4
  %61 = or i32 %60, 1073741824
  store i32 %61, ptr %59, align 4
  %62 = call i32 @schedule_hrtimeout_range(ptr noundef %32, i64 noundef %58, i32 noundef 1) #16
  %63 = load i32, ptr %59, align 4
  %64 = and i32 %63, -1073741825
  store i32 %64, ptr %59, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !49
  %65 = load volatile i32, ptr @system_freezing_cnt, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67, !prof !10

67:                                               ; preds = %43
  %68 = call zeroext i1 @freezing_slow_path(ptr noundef %8) #16
  br i1 %68, label %69, label %71, !prof !11

69:                                               ; preds = %67
  %70 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #16
  br label %71

71:                                               ; preds = %69, %67, %43
  %72 = load ptr, ptr %37, align 4
  call void @_raw_spin_lock_irq(ptr noundef %72) #16
  %73 = load volatile i32, ptr %8, align 4
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %91, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 64
  %78 = load volatile ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, %77
  br i1 %79, label %91, label %80

80:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %81 = getelementptr %struct.task_struct, ptr %8, i32 0, i32 96, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = load i32, ptr %47, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %82, %84
  %86 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  store i32 %85, ptr %86, align 4
  %87 = load i32, ptr %44, align 4
  %88 = load i32, ptr %45, align 4
  %89 = xor i32 %88, -1
  %90 = and i32 %87, %89
  store i32 %90, ptr %4, align 8
  call fastcc void @retarget_shared_pending(ptr noundef %8, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %91

91:                                               ; preds = %80, %76, %71
  %92 = load i64, ptr %44, align 4
  store i64 %92, ptr %45, align 8
  call void @recalc_sigpending() #16
  %93 = getelementptr %struct.task_struct, ptr %8, i32 0, i32 96, i32 0, i32 1
  store i32 0, ptr %93, align 4
  store i32 0, ptr %44, align 4
  %94 = call i32 @dequeue_signal(ptr noundef %8, ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull %7)
  br label %95

95:                                               ; preds = %91, %30
  %96 = phi i32 [ %94, %91 ], [ %39, %30 ]
  %97 = phi i32 [ %62, %91 ], [ 0, %30 ]
  %98 = load ptr, ptr %37, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %99 = load i16, ptr %98, align 4
  %100 = add i16 %99, 1
  store i16 %100, ptr %98, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  %101 = icmp eq i32 %96, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = icmp eq i32 %97, 0
  %104 = select i1 %103, i32 -11, i32 -4
  br label %105

105:                                              ; preds = %102, %95, %17, %14
  %106 = phi i32 [ %104, %102 ], [ -22, %17 ], [ %96, %95 ], [ -22, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  ret i32 %106
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_hrtimeout_range(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vpid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pidfd_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tgid_pidfd_to_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_send_specific(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %5 = tail call ptr @find_task_by_vpid(i32 noundef %1) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %85, label %7

7:                                                ; preds = %4
  %8 = icmp slt i32 %0, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = tail call i32 @__task_pid_nr_ns(ptr noundef nonnull %5, i32 noundef 1, ptr noundef null) #16
  %11 = icmp eq i32 %10, %0
  br i1 %11, label %12, label %85

12:                                               ; preds = %9, %7
  %13 = icmp ugt i32 %2, 64
  br i1 %13, label %85, label %14

14:                                               ; preds = %12
  %15 = icmp eq ptr %3, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %14
  %17 = icmp ugt ptr %3, inttoptr (i32 1 to ptr)
  br i1 %17, label %18, label %65

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %65

22:                                               ; preds = %18, %14
  %23 = tail call ptr @llvm.thread.pointer() #16
  %24 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 93
  %25 = load ptr, ptr %24, align 16
  %26 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 93
  %27 = load ptr, ptr %26, align 16
  %28 = icmp eq ptr %25, %27
  br i1 %28, label %65, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 83
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 82
  %33 = load volatile ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.cred, ptr %31, i32 0, i32 5
  %35 = getelementptr inbounds %struct.cred, ptr %33, i32 0, i32 3
  %36 = load i32, ptr %34, align 4
  %37 = load i32, ptr %35, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %65, label %39

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.cred, ptr %33, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %36, %41
  br i1 %42, label %65, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.cred, ptr %31, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, %37
  %47 = icmp eq i32 %45, %41
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %65, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.cred, ptr %33, i32 0, i32 21
  %51 = load ptr, ptr %50, align 4
  %52 = tail call zeroext i1 @ns_capable(ptr noundef %51, i32 noundef 5) #16
  br i1 %52, label %65, label %53

53:                                               ; preds = %49
  %54 = icmp eq i32 %2, 18
  br i1 %54, label %55, label %85

55:                                               ; preds = %53
  %56 = load ptr, ptr %26, align 16
  %57 = getelementptr %struct.signal_struct, ptr %56, i32 0, i32 22, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %67, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr %24, align 16
  %62 = getelementptr %struct.signal_struct, ptr %61, i32 0, i32 22, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %58, %63
  br i1 %64, label %67, label %85

65:                                               ; preds = %49, %43, %39, %29, %22, %18, %16
  %66 = icmp eq i32 %2, 0
  br i1 %66, label %85, label %67

67:                                               ; preds = %65, %60, %55
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  %68 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 94
  %69 = load volatile ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %79, label %71, !prof !11

71:                                               ; preds = %76, %67
  %72 = phi ptr [ %77, %76 ], [ %69, %67 ]
  %73 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %72) #16
  %74 = load volatile ptr, ptr %68, align 4
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %80, label %76, !prof !10

76:                                               ; preds = %71
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %72, i32 noundef %73) #16
  %77 = load volatile ptr, ptr %68, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %71, !prof !11

79:                                               ; preds = %76, %67
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %84

80:                                               ; preds = %71
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  %81 = tail call fastcc i32 @send_signal(i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef 0) #16
  %82 = load ptr, ptr %68, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %82, i32 noundef %73) #16
  %83 = icmp eq i32 %81, -3
  br i1 %83, label %84, label %85, !prof !11

84:                                               ; preds = %80, %79
  br label %85

85:                                               ; preds = %84, %80, %65, %60, %53, %12, %9, %4
  %86 = phi i32 [ 0, %84 ], [ %81, %80 ], [ 0, %65 ], [ -3, %9 ], [ -3, %4 ], [ -1, %53 ], [ -1, %60 ], [ -22, %12 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  ret i32 %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_task_by_vpid(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }

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
!12 = !{i64 804144}
!13 = !{i64 2149048370}
!14 = !{i64 2149044194}
!15 = !{i64 2149044269, i64 2149044296, i64 2149044343, i64 2149044365, i64 2149044393, i64 2149044413}
!16 = !{i64 785689}
!17 = !{i64 2149072514}
!18 = !{i32 0, i32 33}
!19 = !{i64 2155089616, i64 2155090096, i64 2155089653, i64 2155089709, i64 2155089743, i64 2155089767, i64 2155089808, i64 2155089829, i64 2155089857, i64 2155089891}
!20 = !{i64 2155090987, i64 2155091467, i64 2155091024, i64 2155091080, i64 2155091114, i64 2155091138, i64 2155091179, i64 2155091200, i64 2155091228, i64 2155091262}
!21 = !{i64 2155092044}
!22 = !{i64 2155092628, i64 2155093108, i64 2155092665, i64 2155092721, i64 2155092755, i64 2155092779, i64 2155092820, i64 2155092841, i64 2155092869, i64 2155092903}
!23 = !{!"branch_weights", i32 1, i32 4001}
!24 = !{i8 0, i8 2}
!25 = !{i64 2149071373}
!26 = !{i64 2149447142}
!27 = !{i64 2149447359}
!28 = !{!"branch_weights", i32 4001, i32 1}
!29 = !{i64 2155228298, i64 2155228779, i64 2155228335, i64 2155228391, i64 2155228425, i64 2155228449, i64 2155228490, i64 2155228511, i64 2155228539, i64 2155228573}
!30 = !{i64 2154675251}
!31 = !{i64 2154675453}
!32 = !{i64 2149056252}
!33 = !{i64 879766, i64 2148369737, i64 2148369763, i64 2148369810, i64 2148369832, i64 2148369860, i64 2148369880}
!34 = !{i64 1559676, i64 1559699, i64 1559719, i64 1559743, i64 1559759}
!35 = !{i64 2149093855}
!36 = !{i64 2155311610, i64 2155312091, i64 2155311647, i64 2155311703, i64 2155311737, i64 2155311761, i64 2155311802, i64 2155311823, i64 2155311851, i64 2155311885}
!37 = !{i64 2155312981, i64 2155313462, i64 2155313018, i64 2155313074, i64 2155313108, i64 2155313132, i64 2155313173, i64 2155313194, i64 2155313222, i64 2155313256}
!38 = !{i64 2155314114, i64 2155314595, i64 2155314151, i64 2155314207, i64 2155314241, i64 2155314265, i64 2155314306, i64 2155314327, i64 2155314355, i64 2155314389}
!39 = !{i64 2155315790, i64 2155316271, i64 2155315827, i64 2155315883, i64 2155315917, i64 2155315941, i64 2155315982, i64 2155316003, i64 2155316031, i64 2155316065}
!40 = !{i64 2155321765, i64 2155322246, i64 2155321802, i64 2155321858, i64 2155321892, i64 2155321916, i64 2155321957, i64 2155321978, i64 2155322006, i64 2155322040}
!41 = !{i64 2155322904, i64 2155323385, i64 2155322941, i64 2155322997, i64 2155323031, i64 2155323055, i64 2155323096, i64 2155323117, i64 2155323145, i64 2155323179}
!42 = !{i64 2155358730, i64 2155359211, i64 2155358767, i64 2155358823, i64 2155358857, i64 2155358881, i64 2155358922, i64 2155358943, i64 2155358971, i64 2155359005}
!43 = !{i64 2154430438}
!44 = !{i64 2154692006}
!45 = !{i64 2154692172}
!46 = !{i64 2155243508}
!47 = !{i64 2155243556}
!48 = !{i64 2155345830, i64 2155346311, i64 2155345867, i64 2155345923, i64 2155345957, i64 2155345981, i64 2155346022, i64 2155346043, i64 2155346071, i64 2155346105}
!49 = !{i64 2154441400}
!50 = !{i64 2151452733}
!51 = !{i64 785444, i64 785505}
!52 = !{i64 788461}
!53 = !{i64 2151460350}
!54 = !{i64 2151468815}
!55 = !{i64 2151477126}
!56 = !{i64 2151485344}
!57 = !{i64 2150824011, i64 2150824036}
!58 = !{i64 3320123}
!59 = !{i64 3320320}
!60 = !{i64 2150805599}
!61 = !{i64 2150824589, i64 2150824614}
!62 = !{i64 2150821301, i64 2150821326}
!63 = !{!64}
!64 = distinct !{!64, !65, !"fdget: argument 0"}
!65 = distinct !{!65, !"fdget"}
!66 = !{i64 2155558501, i64 2155558781, i64 2155559115, i64 2155559449}
!67 = !{i64 2155566743, i64 2155567023, i64 2155567357, i64 2155567691}
!68 = !{i64 2155574976, i64 2155575256, i64 2155575590, i64 2155575924}
!69 = !{i64 2155619684, i64 2155619709}
!70 = !{i64 2155628724, i64 2155629004, i64 2155629338, i64 2155629672}
!71 = !{i64 2155644954, i64 2155645234, i64 2155645568, i64 2155645902}
!72 = !{i64 2155657081, i64 2155657361, i64 2155657695, i64 2155658029}
!73 = !{i64 2155669077, i64 2155669357, i64 2155669691, i64 2155670025}
!74 = !{i64 2155672813, i64 2155672838}
!75 = !{i64 2155678750, i64 2155679030, i64 2155679364, i64 2155679698}
!76 = !{i64 2155687034, i64 2155687314, i64 2155687648, i64 2155687982}
!77 = !{i64 2155695291, i64 2155695571, i64 2155695905, i64 2155696239}
!78 = !{i64 2155703560, i64 2155703840, i64 2155704174, i64 2155704508}
!79 = !{i64 2155135726, i64 2155136206, i64 2155135763, i64 2155135819, i64 2155135853, i64 2155135877, i64 2155135918, i64 2155135939, i64 2155135967, i64 2155136001}
!80 = !{i64 2155354534}
!81 = !{i64 2155354968}
!82 = !{i64 2155355093}
