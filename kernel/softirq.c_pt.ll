; ModuleID = '/llk/IR/kernel/softirq.c_pt.bc'
source_filename = "../kernel/softirq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_irq_stat:\09\09\09\09\09"
module asm "\09.asciz \09\22irq_stat\22\09\09\09\09\09"
module asm "__kstrtabns_irq_stat:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__local_bh_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22_local_bh_enable\22\09\09\09\09\09"
module asm "__kstrtabns__local_bh_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___local_bh_enable_ip:\09\09\09\09\09"
module asm "\09.asciz \09\22__local_bh_enable_ip\22\09\09\09\09\09"
module asm "__kstrtabns___local_bh_enable_ip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tasklet_schedule:\09\09\09\09\09"
module asm "\09.asciz \09\22__tasklet_schedule\22\09\09\09\09\09"
module asm "__kstrtabns___tasklet_schedule:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tasklet_hi_schedule:\09\09\09\09\09"
module asm "\09.asciz \09\22__tasklet_hi_schedule\22\09\09\09\09\09"
module asm "__kstrtabns___tasklet_hi_schedule:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tasklet_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22tasklet_setup\22\09\09\09\09\09"
module asm "__kstrtabns_tasklet_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tasklet_init:\09\09\09\09\09"
module asm "\09.asciz \09\22tasklet_init\22\09\09\09\09\09"
module asm "__kstrtabns_tasklet_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tasklet_unlock_spin_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22tasklet_unlock_spin_wait\22\09\09\09\09\09"
module asm "__kstrtabns_tasklet_unlock_spin_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tasklet_kill:\09\09\09\09\09"
module asm "\09.asciz \09\22tasklet_kill\22\09\09\09\09\09"
module asm "__kstrtabns_tasklet_kill:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tasklet_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22tasklet_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_tasklet_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tasklet_unlock_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22tasklet_unlock_wait\22\09\09\09\09\09"
module asm "__kstrtabns_tasklet_unlock_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_eval_map = type { ptr, ptr, i32 }
%struct.trace_event_fields = type { ptr, %union.anon.89 }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.91, %struct.trace_event, ptr, ptr, %union.anon.92, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.91 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.92 = type { ptr }
%struct.irq_cpustat_t = type { i32, [60 x i8] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.softirq_action = type { ptr }
%struct.tasklet_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.trace_print_flags = type { i32, ptr }
%struct.kernel_stat = type { i32, [10 x i32] }
%struct.static_key_false = type { %struct.static_key }
%struct.smp_hotplug_thread = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.irqaction = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, [12 x i8] }
%struct.trace_event_raw_irq_handler_entry = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_irq_handler_exit = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_softirq = type { %struct.trace_entry, i32, [0 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.38 }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.93, i32 }
%union.anon.93 = type { ptr }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_irq_handler_entry = internal constant [18 x i8] c"irq_handler_entry\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_irq_handler_entry = dso_local global %struct.static_call_key { ptr @__traceiter_irq_handler_entry }, align 4
@__tracepoint_irq_handler_entry = dso_local global %struct.tracepoint { ptr @__tpstrtab_irq_handler_entry, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_irq_handler_entry, ptr null, ptr @__traceiter_irq_handler_entry, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_irq_handler_entry = internal constant ptr @__tracepoint_irq_handler_entry, section "__tracepoints_ptrs", align 4
@__tpstrtab_irq_handler_exit = internal constant [17 x i8] c"irq_handler_exit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_irq_handler_exit = dso_local global %struct.static_call_key { ptr @__traceiter_irq_handler_exit }, align 4
@__tracepoint_irq_handler_exit = dso_local global %struct.tracepoint { ptr @__tpstrtab_irq_handler_exit, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_irq_handler_exit, ptr null, ptr @__traceiter_irq_handler_exit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_irq_handler_exit = internal constant ptr @__tracepoint_irq_handler_exit, section "__tracepoints_ptrs", align 4
@__tpstrtab_softirq_entry = internal constant [14 x i8] c"softirq_entry\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_softirq_entry = dso_local global %struct.static_call_key { ptr @__traceiter_softirq_entry }, align 4
@__tracepoint_softirq_entry = dso_local global %struct.tracepoint { ptr @__tpstrtab_softirq_entry, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_softirq_entry, ptr null, ptr @__traceiter_softirq_entry, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_softirq_entry = internal constant ptr @__tracepoint_softirq_entry, section "__tracepoints_ptrs", align 4
@__tpstrtab_softirq_exit = internal constant [13 x i8] c"softirq_exit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_softirq_exit = dso_local global %struct.static_call_key { ptr @__traceiter_softirq_exit }, align 4
@__tracepoint_softirq_exit = dso_local global %struct.tracepoint { ptr @__tpstrtab_softirq_exit, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_softirq_exit, ptr null, ptr @__traceiter_softirq_exit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_softirq_exit = internal constant ptr @__tracepoint_softirq_exit, section "__tracepoints_ptrs", align 4
@__tpstrtab_softirq_raise = internal constant [14 x i8] c"softirq_raise\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_softirq_raise = dso_local global %struct.static_call_key { ptr @__traceiter_softirq_raise }, align 4
@__tracepoint_softirq_raise = dso_local global %struct.tracepoint { ptr @__tpstrtab_softirq_raise, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_softirq_raise, ptr null, ptr @__traceiter_softirq_raise, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_softirq_raise = internal constant ptr @__tracepoint_softirq_raise, section "__tracepoints_ptrs", align 4
@.str = private unnamed_addr constant [11 x i8] c"HI_SOFTIRQ\00", align 1
@__TRACE_SYSTEM_HI_SOFTIRQ = internal global %struct.trace_eval_map { ptr @.str.28, ptr @.str, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_HI_SOFTIRQ = internal global ptr @__TRACE_SYSTEM_HI_SOFTIRQ, section "_ftrace_eval_map", align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"TIMER_SOFTIRQ\00", align 1
@__TRACE_SYSTEM_TIMER_SOFTIRQ = internal global %struct.trace_eval_map { ptr @.str.28, ptr @.str.1, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_TIMER_SOFTIRQ = internal global ptr @__TRACE_SYSTEM_TIMER_SOFTIRQ, section "_ftrace_eval_map", align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"NET_TX_SOFTIRQ\00", align 1
@__TRACE_SYSTEM_NET_TX_SOFTIRQ = internal global %struct.trace_eval_map { ptr @.str.28, ptr @.str.2, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_NET_TX_SOFTIRQ = internal global ptr @__TRACE_SYSTEM_NET_TX_SOFTIRQ, section "_ftrace_eval_map", align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"NET_RX_SOFTIRQ\00", align 1
@__TRACE_SYSTEM_NET_RX_SOFTIRQ = internal global %struct.trace_eval_map { ptr @.str.28, ptr @.str.3, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_NET_RX_SOFTIRQ = internal global ptr @__TRACE_SYSTEM_NET_RX_SOFTIRQ, section "_ftrace_eval_map", align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"BLOCK_SOFTIRQ\00", align 1
@__TRACE_SYSTEM_BLOCK_SOFTIRQ = internal global %struct.trace_eval_map { ptr @.str.28, ptr @.str.4, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_BLOCK_SOFTIRQ = internal global ptr @__TRACE_SYSTEM_BLOCK_SOFTIRQ, section "_ftrace_eval_map", align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"IRQ_POLL_SOFTIRQ\00", align 1
@__TRACE_SYSTEM_IRQ_POLL_SOFTIRQ = internal global %struct.trace_eval_map { ptr @.str.28, ptr @.str.5, i32 5 }, section ".init.data", align 4
@TRACE_SYSTEM_IRQ_POLL_SOFTIRQ = internal global ptr @__TRACE_SYSTEM_IRQ_POLL_SOFTIRQ, section "_ftrace_eval_map", align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"TASKLET_SOFTIRQ\00", align 1
@__TRACE_SYSTEM_TASKLET_SOFTIRQ = internal global %struct.trace_eval_map { ptr @.str.28, ptr @.str.6, i32 6 }, section ".init.data", align 4
@TRACE_SYSTEM_TASKLET_SOFTIRQ = internal global ptr @__TRACE_SYSTEM_TASKLET_SOFTIRQ, section "_ftrace_eval_map", align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"SCHED_SOFTIRQ\00", align 1
@__TRACE_SYSTEM_SCHED_SOFTIRQ = internal global %struct.trace_eval_map { ptr @.str.28, ptr @.str.7, i32 7 }, section ".init.data", align 4
@TRACE_SYSTEM_SCHED_SOFTIRQ = internal global ptr @__TRACE_SYSTEM_SCHED_SOFTIRQ, section "_ftrace_eval_map", align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"HRTIMER_SOFTIRQ\00", align 1
@__TRACE_SYSTEM_HRTIMER_SOFTIRQ = internal global %struct.trace_eval_map { ptr @.str.28, ptr @.str.8, i32 8 }, section ".init.data", align 4
@TRACE_SYSTEM_HRTIMER_SOFTIRQ = internal global ptr @__TRACE_SYSTEM_HRTIMER_SOFTIRQ, section "_ftrace_eval_map", align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"RCU_SOFTIRQ\00", align 1
@__TRACE_SYSTEM_RCU_SOFTIRQ = internal global %struct.trace_eval_map { ptr @.str.28, ptr @.str.9, i32 9 }, section ".init.data", align 4
@TRACE_SYSTEM_RCU_SOFTIRQ = internal global ptr @__TRACE_SYSTEM_RCU_SOFTIRQ, section "_ftrace_eval_map", align 4
@trace_event_fields_irq_handler_entry = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.27, %union.anon.89 { %struct.anon.90 { ptr @.str.28, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.29, %union.anon.89 { %struct.anon.90 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_irq_handler_entry = internal global %struct.trace_event_class { ptr @.str.28, ptr @trace_event_raw_event_irq_handler_entry, ptr @perf_trace_irq_handler_entry, ptr @trace_event_reg, ptr @trace_event_fields_irq_handler_entry, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_irq_handler_entry, i64 24), ptr getelementptr (i8, ptr @event_class_irq_handler_entry, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_irq_handler_entry = internal global %struct.trace_event_functions { ptr @trace_raw_output_irq_handler_entry, ptr null, ptr null, ptr null }, align 4
@print_fmt_irq_handler_entry = internal global [44 x i8] c"\22irq=%d name=%s\22, REC->irq, __get_str(name)\00", align 1
@event_irq_handler_entry = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_irq_handler_entry, %union.anon.91 { ptr @__tracepoint_irq_handler_entry }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_irq_handler_entry }, ptr @print_fmt_irq_handler_entry, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_irq_handler_entry = internal global ptr @event_irq_handler_entry, section "_ftrace_events", align 4
@trace_event_fields_irq_handler_exit = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.27, %union.anon.89 { %struct.anon.90 { ptr @.str.28, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.27, %union.anon.89 { %struct.anon.90 { ptr @.str.32, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_irq_handler_exit = internal global %struct.trace_event_class { ptr @.str.28, ptr @trace_event_raw_event_irq_handler_exit, ptr @perf_trace_irq_handler_exit, ptr @trace_event_reg, ptr @trace_event_fields_irq_handler_exit, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_irq_handler_exit, i64 24), ptr getelementptr (i8, ptr @event_class_irq_handler_exit, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_irq_handler_exit = internal global %struct.trace_event_functions { ptr @trace_raw_output_irq_handler_exit, ptr null, ptr null, ptr null }, align 4
@print_fmt_irq_handler_exit = internal global [62 x i8] c"\22irq=%d ret=%s\22, REC->irq, REC->ret ? \22handled\22 : \22unhandled\22\00", align 1
@event_irq_handler_exit = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_irq_handler_exit, %union.anon.91 { ptr @__tracepoint_irq_handler_exit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_irq_handler_exit }, ptr @print_fmt_irq_handler_exit, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_irq_handler_exit = internal global ptr @event_irq_handler_exit, section "_ftrace_events", align 4
@trace_event_fields_softirq = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.36, %union.anon.89 { %struct.anon.90 { ptr @.str.37, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_softirq = internal global %struct.trace_event_class { ptr @.str.28, ptr @trace_event_raw_event_softirq, ptr @perf_trace_softirq, ptr @trace_event_reg, ptr @trace_event_fields_softirq, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_softirq, i64 24), ptr getelementptr (i8, ptr @event_class_softirq, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_softirq = internal global %struct.trace_event_functions { ptr @trace_raw_output_softirq, ptr null, ptr null, ptr null }, align 4
@print_fmt_softirq = internal global [347 x i8] c"\22vec=%u [action=%s]\22, REC->vec, __print_symbolic(REC->vec, { HI_SOFTIRQ, \22HI\22 }, { TIMER_SOFTIRQ, \22TIMER\22 }, { NET_TX_SOFTIRQ, \22NET_TX\22 }, { NET_RX_SOFTIRQ, \22NET_RX\22 }, { BLOCK_SOFTIRQ, \22BLOCK\22 }, { IRQ_POLL_SOFTIRQ, \22IRQ_POLL\22 }, { TASKLET_SOFTIRQ, \22TASKLET\22 }, { SCHED_SOFTIRQ, \22SCHED\22 }, { HRTIMER_SOFTIRQ, \22HRTIMER\22 }, { RCU_SOFTIRQ, \22RCU\22 })\00", align 1
@event_softirq_entry = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_softirq, %union.anon.91 { ptr @__tracepoint_softirq_entry }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_softirq }, ptr @print_fmt_softirq, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_softirq_entry = internal global ptr @event_softirq_entry, section "_ftrace_events", align 4
@event_softirq_exit = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_softirq, %union.anon.91 { ptr @__tracepoint_softirq_exit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_softirq }, ptr @print_fmt_softirq, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_softirq_exit = internal global ptr @event_softirq_exit, section "_ftrace_events", align 4
@event_softirq_raise = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_softirq, %union.anon.91 { ptr @__tracepoint_softirq_raise }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_softirq }, ptr @print_fmt_softirq, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_softirq_raise = internal global ptr @event_softirq_raise, section "_ftrace_events", align 4
@irq_stat = dso_local global %struct.irq_cpustat_t zeroinitializer, section ".data..percpu..shared_aligned", align 64
@__kstrtab_irq_stat = external dso_local constant [0 x i8], align 1
@__kstrtabns_irq_stat = external dso_local constant [0 x i8], align 1
@__ksymtab_irq_stat = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @irq_stat to i32), ptr @__kstrtab_irq_stat, ptr @__kstrtabns_irq_stat }, section "___ksymtab+irq_stat", align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"HI\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"TIMER\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"NET_TX\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"NET_RX\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"BLOCK\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"IRQ_POLL\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"TASKLET\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"SCHED\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"HRTIMER\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"RCU\00", align 1
@softirq_to_name = dso_local local_unnamed_addr constant [10 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], align 4
@_local_bh_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"kernel/softirq.c\00", align 1
@__kstrtab__local_bh_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns__local_bh_enable = external dso_local constant [0 x i8], align 1
@__ksymtab__local_bh_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_local_bh_enable to i32), ptr @__kstrtab__local_bh_enable, ptr @__kstrtabns__local_bh_enable }, section "___ksymtab+_local_bh_enable", align 4
@__local_bh_enable_ip.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab___local_bh_enable_ip = external dso_local constant [0 x i8], align 1
@__kstrtabns___local_bh_enable_ip = external dso_local constant [0 x i8], align 1
@__ksymtab___local_bh_enable_ip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__local_bh_enable_ip to i32), ptr @__kstrtab___local_bh_enable_ip, ptr @__kstrtabns___local_bh_enable_ip }, section "___ksymtab+__local_bh_enable_ip", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@softirq_vec = internal global [10 x %struct.softirq_action] zeroinitializer, section ".data..cacheline_aligned", align 64
@.str.23 = private unnamed_addr constant [85 x i8] c"\013softirq: huh, entered softirq %u %s %p with preempt_count %08x, exited with %08x?\0A\00", align 1
@ksoftirqd = dso_local global ptr null, section ".data..percpu", align 4
@tasklet_vec = internal global %struct.tasklet_head zeroinitializer, section ".data..percpu", align 4
@__kstrtab___tasklet_schedule = external dso_local constant [0 x i8], align 1
@__kstrtabns___tasklet_schedule = external dso_local constant [0 x i8], align 1
@__ksymtab___tasklet_schedule = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tasklet_schedule to i32), ptr @__kstrtab___tasklet_schedule, ptr @__kstrtabns___tasklet_schedule }, section "___ksymtab+__tasklet_schedule", align 4
@tasklet_hi_vec = internal global %struct.tasklet_head zeroinitializer, section ".data..percpu", align 4
@__kstrtab___tasklet_hi_schedule = external dso_local constant [0 x i8], align 1
@__kstrtabns___tasklet_hi_schedule = external dso_local constant [0 x i8], align 1
@__ksymtab___tasklet_hi_schedule = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tasklet_hi_schedule to i32), ptr @__kstrtab___tasklet_hi_schedule, ptr @__kstrtabns___tasklet_hi_schedule }, section "___ksymtab+__tasklet_hi_schedule", align 4
@__kstrtab_tasklet_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_tasklet_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_tasklet_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tasklet_setup to i32), ptr @__kstrtab_tasklet_setup, ptr @__kstrtabns_tasklet_setup }, section "___ksymtab+tasklet_setup", align 4
@__kstrtab_tasklet_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_tasklet_init = external dso_local constant [0 x i8], align 1
@__ksymtab_tasklet_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tasklet_init to i32), ptr @__kstrtab_tasklet_init, ptr @__kstrtabns_tasklet_init }, section "___ksymtab+tasklet_init", align 4
@__kstrtab_tasklet_unlock_spin_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_tasklet_unlock_spin_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_tasklet_unlock_spin_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tasklet_unlock_spin_wait to i32), ptr @__kstrtab_tasklet_unlock_spin_wait, ptr @__kstrtabns_tasklet_unlock_spin_wait }, section "___ksymtab+tasklet_unlock_spin_wait", align 4
@.str.25 = private unnamed_addr constant [51 x i8] c"\015softirq: Attempt to kill tasklet from interrupt\0A\00", align 1
@__kstrtab_tasklet_kill = external dso_local constant [0 x i8], align 1
@__kstrtabns_tasklet_kill = external dso_local constant [0 x i8], align 1
@__ksymtab_tasklet_kill = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tasklet_kill to i32), ptr @__kstrtab_tasklet_kill, ptr @__kstrtabns_tasklet_kill }, section "___ksymtab+tasklet_kill", align 4
@__kstrtab_tasklet_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_tasklet_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_tasklet_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tasklet_unlock to i32), ptr @__kstrtab_tasklet_unlock, ptr @__kstrtabns_tasklet_unlock }, section "___ksymtab_gpl+tasklet_unlock", align 4
@__kstrtab_tasklet_unlock_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_tasklet_unlock_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_tasklet_unlock_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tasklet_unlock_wait to i32), ptr @__kstrtab_tasklet_unlock_wait, ptr @__kstrtabns_tasklet_unlock_wait }, section "___ksymtab_gpl+tasklet_unlock_wait", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__initcall__kmod_softirq__265_974_spawn_ksoftirqdearly = internal global ptr @spawn_ksoftirqd, section ".initcallearly.init", align 4
@.str.26 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.28 = private constant [4 x i8] c"irq\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"irq=%d name=%s\0A\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"irq=%d ret=%s\0A\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"handled\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"unhandled\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"vec\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"vec=%u [action=%s]\0A\00", align 1
@trace_raw_output_softirq.symbols = internal constant [11 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.10 }, %struct.trace_print_flags { i32 1, ptr @.str.11 }, %struct.trace_print_flags { i32 2, ptr @.str.12 }, %struct.trace_print_flags { i32 3, ptr @.str.13 }, %struct.trace_print_flags { i32 4, ptr @.str.14 }, %struct.trace_print_flags { i32 5, ptr @.str.15 }, %struct.trace_print_flags { i32 6, ptr @.str.16 }, %struct.trace_print_flags { i32 7, ptr @.str.17 }, %struct.trace_print_flags { i32 8, ptr @.str.18 }, %struct.trace_print_flags { i32 9, ptr @.str.19 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@kstat = external dso_local global %struct.kernel_stat, section ".data..percpu", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@softirq_handle_end.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@force_irqthreads_key = external dso_local global %struct.static_key_false, align 4
@tasklet_clear_sched.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.41 = private unnamed_addr constant [37 x i8] c"tasklet SCHED state not set: %s %pS\0A\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"callback\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"softirq:dead\00", align 1
@softirq_threads = internal global %struct.smp_hotplug_thread { ptr @ksoftirqd, %struct.list_head zeroinitializer, ptr @ksoftirqd_should_run, ptr @run_ksoftirqd, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr @.str.45 }, align 4
@.str.45 = private unnamed_addr constant [13 x i8] c"ksoftirqd/%u\00", align 1
@llvm.compiler.used = appending global [55 x ptr] [ptr @TRACE_SYSTEM_BLOCK_SOFTIRQ, ptr @TRACE_SYSTEM_HI_SOFTIRQ, ptr @TRACE_SYSTEM_HRTIMER_SOFTIRQ, ptr @TRACE_SYSTEM_IRQ_POLL_SOFTIRQ, ptr @TRACE_SYSTEM_NET_RX_SOFTIRQ, ptr @TRACE_SYSTEM_NET_TX_SOFTIRQ, ptr @TRACE_SYSTEM_RCU_SOFTIRQ, ptr @TRACE_SYSTEM_SCHED_SOFTIRQ, ptr @TRACE_SYSTEM_TASKLET_SOFTIRQ, ptr @TRACE_SYSTEM_TIMER_SOFTIRQ, ptr @__TRACE_SYSTEM_BLOCK_SOFTIRQ, ptr @__TRACE_SYSTEM_HI_SOFTIRQ, ptr @__TRACE_SYSTEM_HRTIMER_SOFTIRQ, ptr @__TRACE_SYSTEM_IRQ_POLL_SOFTIRQ, ptr @__TRACE_SYSTEM_NET_RX_SOFTIRQ, ptr @__TRACE_SYSTEM_NET_TX_SOFTIRQ, ptr @__TRACE_SYSTEM_RCU_SOFTIRQ, ptr @__TRACE_SYSTEM_SCHED_SOFTIRQ, ptr @__TRACE_SYSTEM_TASKLET_SOFTIRQ, ptr @__TRACE_SYSTEM_TIMER_SOFTIRQ, ptr @__event_irq_handler_entry, ptr @__event_irq_handler_exit, ptr @__event_softirq_entry, ptr @__event_softirq_exit, ptr @__event_softirq_raise, ptr @__initcall__kmod_softirq__265_974_spawn_ksoftirqdearly, ptr @__ksymtab___local_bh_enable_ip, ptr @__ksymtab___tasklet_hi_schedule, ptr @__ksymtab___tasklet_schedule, ptr @__ksymtab__local_bh_enable, ptr @__ksymtab_irq_stat, ptr @__ksymtab_tasklet_init, ptr @__ksymtab_tasklet_kill, ptr @__ksymtab_tasklet_setup, ptr @__ksymtab_tasklet_unlock, ptr @__ksymtab_tasklet_unlock_spin_wait, ptr @__ksymtab_tasklet_unlock_wait, ptr @__tracepoint_irq_handler_entry, ptr @__tracepoint_irq_handler_exit, ptr @__tracepoint_ptr_irq_handler_entry, ptr @__tracepoint_ptr_irq_handler_exit, ptr @__tracepoint_ptr_softirq_entry, ptr @__tracepoint_ptr_softirq_exit, ptr @__tracepoint_ptr_softirq_raise, ptr @__tracepoint_softirq_entry, ptr @__tracepoint_softirq_exit, ptr @__tracepoint_softirq_raise, ptr @event_class_irq_handler_entry, ptr @event_class_irq_handler_exit, ptr @event_class_softirq, ptr @event_irq_handler_entry, ptr @event_irq_handler_exit, ptr @event_softirq_entry, ptr @event_softirq_exit, ptr @event_softirq_raise], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_irq_handler_entry(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_irq_handler_entry, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, ptr noundef %2) #17
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_irq_handler_exit(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_irq_handler_exit, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, ptr noundef %2, i32 noundef %3) #17
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_softirq_entry(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_softirq_entry, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #17
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_softirq_exit(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_softirq_exit, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #17
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_softirq_raise(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_softirq_raise, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #17
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_irq_handler_entry(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #17
  br i1 %13, label %33, label %14

14:                                               ; preds = %12, %9, %3
  %15 = getelementptr inbounds %struct.irqaction, ptr %2, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  %18 = select i1 %17, ptr @.str.26, ptr %16
  %19 = tail call i32 @strlen(ptr noundef nonnull %18) #17
  %20 = add i32 %19, 17
  %21 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %20) #17
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %14
  %24 = shl i32 %19, 16
  %25 = add i32 %24, 65552
  %26 = getelementptr inbounds %struct.trace_event_raw_irq_handler_entry, ptr %21, i32 0, i32 2
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_irq_handler_entry, ptr %21, i32 0, i32 1
  store i32 %1, ptr %27, align 4
  %28 = getelementptr i8, ptr %21, i32 16
  %29 = load ptr, ptr %15, align 4
  %30 = icmp eq ptr %29, null
  %31 = select i1 %30, ptr @.str.26, ptr %29
  %32 = call ptr @strcpy(ptr noundef %28, ptr noundef nonnull %31)
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #17
  br label %33

33:                                               ; preds = %23, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_irq_handler_entry(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.irqaction, ptr %2, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr @.str.26, ptr %7
  %10 = tail call i32 @strlen(ptr noundef nonnull %9) #17
  %11 = shl i32 %10, 16
  %12 = add i32 %11, 65552
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #15, !srcloc !12
  %19 = add i32 %18, %15
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load volatile ptr, ptr %20, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %53, label %27

27:                                               ; preds = %24, %3
  %28 = add i32 %10, 28
  %29 = and i32 %28, -8
  %30 = add i32 %29, -4
  %31 = call ptr @perf_trace_buf_alloc(i32 noundef %30, ptr noundef nonnull %4, ptr noundef nonnull %5) #17
  %32 = icmp eq ptr %31, null
  br i1 %32, label %53, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %4, align 4
  %35 = call ptr @llvm.returnaddress(i32 0) #17
  %36 = ptrtoint ptr %35 to i32
  %37 = getelementptr [18 x i32], ptr %34, i32 0, i32 15
  store i32 %36, ptr %37, align 4
  %38 = call ptr @llvm.frameaddress.p0(i32 0) #17
  %39 = ptrtoint ptr %38 to i32
  %40 = getelementptr [18 x i32], ptr %34, i32 0, i32 11
  store i32 %39, ptr %40, align 4
  %41 = call i32 @llvm.read_register.i32(metadata !0) #17
  %42 = getelementptr [18 x i32], ptr %34, i32 0, i32 13
  store i32 %41, ptr %42, align 4
  %43 = getelementptr [18 x i32], ptr %34, i32 0, i32 16
  store i32 19, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_irq_handler_entry, ptr %31, i32 0, i32 2
  store i32 %12, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_irq_handler_entry, ptr %31, i32 0, i32 1
  store i32 %1, ptr %45, align 4
  %46 = getelementptr i8, ptr %31, i32 16
  %47 = load ptr, ptr %6, align 4
  %48 = icmp eq ptr %47, null
  %49 = select i1 %48, ptr @.str.26, ptr %47
  %50 = call ptr @strcpy(ptr noundef %46, ptr noundef nonnull %49)
  %51 = load i32, ptr %5, align 4
  %52 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %31, i32 noundef %30, i32 noundef %51, ptr noundef %0, i64 noundef 1, ptr noundef %52, ptr noundef %20, ptr noundef null) #17
  br label %53

53:                                               ; preds = %33, %27, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_irq_handler_exit(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #17
  br i1 %14, label %21, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 16) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_irq_handler_exit, ptr %16, i32 0, i32 1
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_irq_handler_exit, ptr %16, i32 0, i32 2
  store i32 %3, ptr %20, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #17
  br label %21

21:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_irq_handler_exit(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #15, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %39, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  %23 = icmp eq ptr %22, null
  br i1 %23, label %39, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #17
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #17
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #17
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_irq_handler_exit, ptr %22, i32 0, i32 1
  store i32 %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_irq_handler_exit, ptr %22, i32 0, i32 2
  store i32 %3, ptr %36, align 4
  %37 = load i32, ptr %6, align 4
  %38 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %37, ptr noundef %0, i64 noundef 1, ptr noundef %38, ptr noundef %14, ptr noundef null) #17
  br label %39

39:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_softirq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #17
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #17
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_softirq, ptr %14, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #17
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_softirq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #15, !srcloc !12
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
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #17
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #17
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #17
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #17
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_softirq, ptr %20, i32 0, i32 1
  store i32 %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #17
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @_local_bh_enable() #0 {
  %1 = tail call ptr @llvm.thread.pointer() #17
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 983040
  %5 = icmp ne i32 %4, 0
  %6 = load i1, ptr @_local_bh_enable.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !11

9:                                                ; preds = %0
  store i1 true, ptr @_local_bh_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 355, i32 noundef 9, ptr noundef null) #17
  br label %10

10:                                               ; preds = %9, %0
  %11 = load volatile i32, ptr %2, align 4
  %12 = load volatile i32, ptr %2, align 4
  %13 = load volatile i32, ptr %2, align 4
  %14 = add i32 %13, -512
  store volatile i32 %14, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__local_bh_enable_ip(i32 %0, i32 noundef %1) #0 {
  %3 = tail call ptr @llvm.thread.pointer() #17
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 983040
  %7 = icmp ne i32 %6, 0
  %8 = load i1, ptr @__local_bh_enable_ip.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !11

11:                                               ; preds = %2
  store i1 true, ptr @__local_bh_enable_ip.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 362, i32 noundef 9, ptr noundef null) #17
  br label %12

12:                                               ; preds = %11, %2
  %13 = load volatile i32, ptr %4, align 4
  %14 = load volatile i32, ptr %4, align 4
  %15 = sub i32 1, %1
  %16 = add i32 %15, %14
  store volatile i32 %16, ptr %4, align 4
  %17 = load volatile i32, ptr %4, align 4
  %18 = and i32 %17, 15728640
  %19 = load volatile i32, ptr %4, align 4
  %20 = and i32 %19, 983040
  %21 = or i32 %20, %18
  %22 = load volatile i32, ptr %4, align 4
  %23 = and i32 %22, 65280
  %24 = or i32 %21, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %12
  %27 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %28 = inttoptr i32 %27 to ptr
  %29 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %28) #15, !srcloc !12
  %30 = add i32 %29, ptrtoint (ptr @irq_stat to i32)
  %31 = inttoptr i32 %30 to ptr
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34, !prof !10

34:                                               ; preds = %26
  tail call void @do_softirq()
  br label %35

35:                                               ; preds = %34, %26, %12
  %36 = load volatile i32, ptr %4, align 4
  %37 = add i32 %36, -1
  store volatile i32 %37, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @do_softirq() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #17
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 15728640
  %5 = load volatile i32, ptr %2, align 4
  %6 = and i32 %5, 983040
  %7 = or i32 %6, %4
  %8 = load volatile i32, ptr %2, align 4
  %9 = and i32 %8, 65280
  %10 = or i32 %7, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %0
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !13
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #15, !srcloc !12
  %17 = add i32 %16, ptrtoint (ptr @irq_stat to i32)
  %18 = inttoptr i32 %17 to ptr
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %12
  %22 = add i32 %16, ptrtoint (ptr @ksoftirqd to i32)
  %23 = inttoptr i32 %22 to ptr
  %24 = load ptr, ptr %23, align 4
  %25 = and i32 %19, 65
  %26 = icmp ne i32 %25, 0
  %27 = icmp eq ptr %24, null
  %28 = select i1 %26, i1 true, i1 %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 1
  %31 = load volatile i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = tail call zeroext i1 @__kthread_should_park(ptr noundef nonnull %24) #17
  br i1 %34, label %35, label %36

35:                                               ; preds = %33, %29, %21
  tail call void @__do_softirq() #17
  br label %36

36:                                               ; preds = %35, %33, %12
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %13) #17, !srcloc !14
  br label %37

37:                                               ; preds = %36, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__do_softirq() local_unnamed_addr #0 section ".softirqentry.text" {
  %1 = load volatile i32, ptr @jiffies, align 64
  %2 = xor i32 %1, -1
  %3 = tail call ptr @llvm.thread.pointer() #17
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, -2049
  store i32 %6, ptr %4, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #15, !srcloc !12
  %10 = add i32 %9, ptrtoint (ptr @irq_stat to i32)
  %11 = inttoptr i32 %10 to ptr
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %14 = load volatile i32, ptr %13, align 4
  %15 = add i32 %14, 256
  store volatile i32 %15, ptr %13, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !15
  %16 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  br label %17

17:                                               ; preds = %130, %0
  %18 = phi i32 [ %12, %0 ], [ %124, %130 ]
  %19 = phi i32 [ 10, %0 ], [ %134, %130 ]
  %20 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %21 = inttoptr i32 %20 to ptr
  %22 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %21) #15, !srcloc !12
  %23 = add i32 %22, ptrtoint (ptr @irq_stat to i32)
  %24 = inttoptr i32 %23 to ptr
  store i32 0, ptr %24, align 4
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !16
  %25 = icmp eq i32 %18, 0
  br i1 %25, label %109, label %26

26:                                               ; preds = %17
  %27 = tail call i32 @llvm.cttz.i32(i32 %18, i1 true), !range !17
  br label %28

28:                                               ; preds = %104, %26
  %29 = phi i32 [ %107, %104 ], [ %27, %26 ]
  %30 = phi ptr [ %105, %104 ], [ @softirq_vec, %26 ]
  %31 = phi i32 [ %106, %104 ], [ %18, %26 ]
  %32 = add nuw nsw i32 %29, 1
  %33 = getelementptr %struct.softirq_action, ptr %30, i32 %29
  %34 = ptrtoint ptr %33 to i32
  %35 = sub i32 %34, ptrtoint (ptr @softirq_vec to i32)
  %36 = ashr exact i32 %35, 2
  %37 = load volatile i32, ptr %13, align 4
  %38 = getelementptr %struct.kernel_stat, ptr @kstat, i32 0, i32 1, i32 %36
  %39 = ptrtoint ptr %38 to i32
  %40 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %41 = inttoptr i32 %40 to ptr
  %42 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %41) #15, !srcloc !12
  %43 = add i32 %42, %39
  %44 = inttoptr i32 %43 to ptr
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %44, align 4
  %47 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_softirq_entry, i32 0, i32 1), align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %28
  %50 = load i32, ptr %16, align 8
  %51 = lshr i32 %50, 5
  %52 = getelementptr i32, ptr @__cpu_online_mask, i32 %51
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %50, 31
  %55 = shl nuw i32 1, %54
  %56 = and i32 %55, %53
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %49
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !18
  %59 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_softirq_entry, i32 0, i32 7), align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %69, label %61

61:                                               ; preds = %61, %58
  %62 = phi ptr [ %66, %61 ], [ %59, %58 ]
  %63 = load volatile ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.tracepoint_func, ptr %62, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  tail call void %63(ptr noundef %65, i32 noundef %36) #17
  %66 = getelementptr %struct.tracepoint_func, ptr %62, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %61

69:                                               ; preds = %61, %58
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !19
  br label %70

70:                                               ; preds = %69, %49, %28
  %71 = load ptr, ptr %33, align 4
  tail call void %71(ptr noundef %33) #17
  %72 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_softirq_exit, i32 0, i32 1), align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %70
  %75 = load i32, ptr %16, align 8
  %76 = lshr i32 %75, 5
  %77 = getelementptr i32, ptr @__cpu_online_mask, i32 %76
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %75, 31
  %80 = shl nuw i32 1, %79
  %81 = and i32 %80, %78
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %74
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !20
  %84 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_softirq_exit, i32 0, i32 7), align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %94, label %86

86:                                               ; preds = %86, %83
  %87 = phi ptr [ %91, %86 ], [ %84, %83 ]
  %88 = load volatile ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.tracepoint_func, ptr %87, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  tail call void %88(ptr noundef %90, i32 noundef %36) #17
  %91 = getelementptr %struct.tracepoint_func, ptr %87, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %86

94:                                               ; preds = %86, %83
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !21
  br label %95

95:                                               ; preds = %94, %74, %70
  %96 = load volatile i32, ptr %13, align 4
  %97 = icmp eq i32 %37, %96
  br i1 %97, label %104, label %98, !prof !10

98:                                               ; preds = %95
  %99 = getelementptr [10 x ptr], ptr @softirq_to_name, i32 0, i32 %36
  %100 = load ptr, ptr %99, align 4
  %101 = load ptr, ptr %33, align 4
  %102 = load volatile i32, ptr %13, align 4
  %103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %36, ptr noundef %100, ptr noundef %101, i32 noundef %37, i32 noundef %102) #18
  store volatile i32 %37, ptr %13, align 4
  br label %104

104:                                              ; preds = %98, %95
  %105 = getelementptr %struct.softirq_action, ptr %30, i32 %32
  %106 = lshr i32 %31, %32
  %107 = tail call i32 @llvm.cttz.i32(i32 %106, i1 true), !range !17
  %108 = icmp eq i32 %106, 0
  br i1 %108, label %109, label %28

109:                                              ; preds = %104, %17
  %110 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %111 = inttoptr i32 %110 to ptr
  %112 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %111) #15, !srcloc !12
  %113 = add i32 %112, ptrtoint (ptr @ksoftirqd to i32)
  %114 = inttoptr i32 %113 to ptr
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, %3
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  tail call void @rcu_softirq_qs() #17
  br label %118

118:                                              ; preds = %117, %109
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #17, !srcloc !22
  %119 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %120 = inttoptr i32 %119 to ptr
  %121 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %120) #15, !srcloc !12
  %122 = add i32 %121, ptrtoint (ptr @irq_stat to i32)
  %123 = inttoptr i32 %122 to ptr
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %147, label %126

126:                                              ; preds = %118
  %127 = load volatile i32, ptr @jiffies, align 64
  %128 = add i32 %127, %2
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %126
  %131 = load volatile i32, ptr %3, align 4
  %132 = and i32 %131, 2
  %133 = icmp ne i32 %132, 0
  %134 = add nsw i32 %19, -1
  %135 = icmp eq i32 %134, 0
  %136 = select i1 %133, i1 true, i1 %135
  br i1 %136, label %137, label %17

137:                                              ; preds = %130, %126
  %138 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %139 = inttoptr i32 %138 to ptr
  %140 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %139) #15, !srcloc !12
  %141 = add i32 %140, ptrtoint (ptr @ksoftirqd to i32)
  %142 = inttoptr i32 %141 to ptr
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %147, label %145

145:                                              ; preds = %137
  %146 = tail call i32 @wake_up_process(ptr noundef nonnull %143) #17
  br label %147

147:                                              ; preds = %145, %137, %118
  %148 = load volatile i32, ptr %13, align 4
  %149 = load volatile i32, ptr %13, align 4
  %150 = load volatile i32, ptr %13, align 4
  %151 = add i32 %150, -256
  store volatile i32 %151, ptr %13, align 4
  %152 = load volatile i32, ptr %13, align 4
  %153 = and i32 %152, 15728640
  %154 = load volatile i32, ptr %13, align 4
  %155 = and i32 %154, 983040
  %156 = or i32 %155, %153
  %157 = load volatile i32, ptr %13, align 4
  %158 = and i32 %157, 65280
  %159 = or i32 %156, %158
  %160 = icmp ne i32 %159, 0
  %161 = load i1, ptr @softirq_handle_end.__already_done, align 1
  %162 = xor i1 %161, true
  %163 = select i1 %160, i1 %162, i1 false
  br i1 %163, label %164, label %165, !prof !11

164:                                              ; preds = %147
  store i1 true, ptr @softirq_handle_end.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 402, i32 noundef 9, ptr noundef null) #17
  br label %165

165:                                              ; preds = %164, %147
  %166 = load i32, ptr %4, align 4
  %167 = and i32 %166, -2049
  %168 = and i32 %5, 2048
  %169 = or i32 %167, %168
  store i32 %169, ptr %4, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_softirq_qs() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_enter_rcu() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #17
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = add i32 %3, 65536
  store volatile i32 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %0
  %10 = load volatile i32, ptr %2, align 4
  %11 = and i32 %10, 15728640
  %12 = load volatile i32, ptr %2, align 4
  %13 = and i32 %12, 983040
  %14 = or i32 %13, %11
  %15 = load volatile i32, ptr %2, align 4
  %16 = and i32 %15, 65280
  %17 = or i32 %14, %16
  %18 = icmp eq i32 %17, 65536
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  tail call void @tick_irq_enter() #17
  br label %20

20:                                               ; preds = %19, %9, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_irq_enter() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_enter() local_unnamed_addr #0 {
  tail call void @rcu_irq_enter() #17
  %1 = tail call ptr @llvm.thread.pointer() #17
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = add i32 %3, 65536
  store volatile i32 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %0
  %10 = load volatile i32, ptr %2, align 4
  %11 = and i32 %10, 15728640
  %12 = load volatile i32, ptr %2, align 4
  %13 = and i32 %12, 983040
  %14 = or i32 %13, %11
  %15 = load volatile i32, ptr %2, align 4
  %16 = and i32 %15, 65280
  %17 = or i32 %14, %16
  %18 = icmp eq i32 %17, 65536
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  tail call void @tick_irq_enter() #17
  br label %20

20:                                               ; preds = %19, %9, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_enter() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_exit_rcu() local_unnamed_addr #0 {
  tail call fastcc void @__irq_exit_rcu()
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__irq_exit_rcu() unnamed_addr #5 {
  %1 = tail call ptr @llvm.thread.pointer() #17
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = add i32 %3, -65536
  store volatile i32 %4, ptr %2, align 4
  %5 = load volatile i32, ptr %2, align 4
  %6 = and i32 %5, 15728640
  %7 = load volatile i32, ptr %2, align 4
  %8 = and i32 %7, 983040
  %9 = or i32 %8, %6
  %10 = load volatile i32, ptr %2, align 4
  %11 = and i32 %10, 65280
  %12 = or i32 %9, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %50

14:                                               ; preds = %0
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #15, !srcloc !12
  %18 = add i32 %17, ptrtoint (ptr @irq_stat to i32)
  %19 = inttoptr i32 %18 to ptr
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %50, label %22

22:                                               ; preds = %14
  %23 = add i32 %17, ptrtoint (ptr @ksoftirqd to i32)
  %24 = inttoptr i32 %23 to ptr
  %25 = load ptr, ptr %24, align 4
  %26 = and i32 %20, 65
  %27 = icmp ne i32 %26, 0
  %28 = icmp eq ptr %25, null
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 1
  %32 = load volatile i32, ptr %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = tail call zeroext i1 @__kthread_should_park(ptr noundef nonnull %25) #17
  br i1 %35, label %36, label %50

36:                                               ; preds = %34, %30, %22
  %37 = load volatile i32, ptr @force_irqthreads_key, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %47, !prof !11

39:                                               ; preds = %36
  %40 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %41 = inttoptr i32 %40 to ptr
  %42 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %41) #15, !srcloc !12
  %43 = add i32 %42, ptrtoint (ptr @ksoftirqd to i32)
  %44 = inttoptr i32 %43 to ptr
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %39, %36
  tail call void @__do_softirq() #17
  br label %50

48:                                               ; preds = %39
  %49 = tail call i32 @wake_up_process(ptr noundef nonnull %45) #17
  br label %50

50:                                               ; preds = %48, %47, %34, %14, %0
  %51 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %52 = load i32, ptr %51, align 8
  %53 = tail call i32 @idle_cpu(i32 noundef %52) #17
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %50
  %56 = load volatile i32, ptr %1, align 4
  %57 = and i32 %56, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load volatile i32, ptr %2, align 4
  %61 = and i32 %60, 983040
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  tail call void @tick_nohz_irq_exit() #17
  br label %64

64:                                               ; preds = %63, %59, %55, %50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_exit() local_unnamed_addr #0 {
  tail call fastcc void @__irq_exit_rcu()
  tail call void @rcu_irq_exit() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_exit() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @raise_softirq_irqoff(i32 noundef %0) local_unnamed_addr #5 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_softirq_raise, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %27

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #17
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !23
  %16 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_softirq_raise, i32 0, i32 7), align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %18, %15
  %19 = phi ptr [ %23, %18 ], [ %16, %15 ]
  %20 = load volatile ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tracepoint_func, ptr %19, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void %20(ptr noundef %22, i32 noundef %0) #17
  %23 = getelementptr %struct.tracepoint_func, ptr %19, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18

26:                                               ; preds = %18, %15
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !24
  br label %27

27:                                               ; preds = %26, %4, %1
  %28 = shl nuw i32 1, %0
  %29 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %30 = inttoptr i32 %29 to ptr
  %31 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %30) #15, !srcloc !12
  %32 = add i32 %31, ptrtoint (ptr @irq_stat to i32)
  %33 = inttoptr i32 %32 to ptr
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %34, %28
  store i32 %35, ptr %33, align 4
  %36 = tail call ptr @llvm.thread.pointer() #17
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 15728640
  %40 = load volatile i32, ptr %37, align 4
  %41 = and i32 %40, 983040
  %42 = or i32 %41, %39
  %43 = load volatile i32, ptr %37, align 4
  %44 = and i32 %43, 65280
  %45 = or i32 %42, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %27
  %48 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %49 = inttoptr i32 %48 to ptr
  %50 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %49) #15, !srcloc !12
  %51 = add i32 %50, ptrtoint (ptr @ksoftirqd to i32)
  %52 = inttoptr i32 %51 to ptr
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %47
  %56 = tail call i32 @wake_up_process(ptr noundef nonnull %53) #17
  br label %57

57:                                               ; preds = %55, %47, %27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__raise_softirq_irqoff(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_softirq_raise, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %27

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #17
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !23
  %16 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_softirq_raise, i32 0, i32 7), align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %18, %15
  %19 = phi ptr [ %23, %18 ], [ %16, %15 ]
  %20 = load volatile ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tracepoint_func, ptr %19, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void %20(ptr noundef %22, i32 noundef %0) #17
  %23 = getelementptr %struct.tracepoint_func, ptr %19, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18

26:                                               ; preds = %18, %15
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !24
  br label %27

27:                                               ; preds = %26, %4, %1
  %28 = shl nuw i32 1, %0
  %29 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %30 = inttoptr i32 %29 to ptr
  %31 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %30) #15, !srcloc !12
  %32 = add i32 %31, ptrtoint (ptr @irq_stat to i32)
  %33 = inttoptr i32 %32 to ptr
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %34, %28
  store i32 %35, ptr %33, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @raise_softirq(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !13
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_softirq_raise, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #17
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !23
  %17 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_softirq_raise, i32 0, i32 7), align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %19, %16
  %20 = phi ptr [ %24, %19 ], [ %17, %16 ]
  %21 = load volatile ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.tracepoint_func, ptr %20, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call void %21(ptr noundef %23, i32 noundef %0) #17
  %24 = getelementptr %struct.tracepoint_func, ptr %20, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %19

27:                                               ; preds = %19, %16
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !24
  br label %28

28:                                               ; preds = %27, %5, %1
  %29 = shl nuw i32 1, %0
  %30 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %31 = inttoptr i32 %30 to ptr
  %32 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %31) #15, !srcloc !12
  %33 = add i32 %32, ptrtoint (ptr @irq_stat to i32)
  %34 = inttoptr i32 %33 to ptr
  %35 = load i32, ptr %34, align 4
  %36 = or i32 %35, %29
  store i32 %36, ptr %34, align 4
  %37 = tail call ptr @llvm.thread.pointer() #17
  %38 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %39, 15728640
  %41 = load volatile i32, ptr %38, align 4
  %42 = and i32 %41, 983040
  %43 = or i32 %42, %40
  %44 = load volatile i32, ptr %38, align 4
  %45 = and i32 %44, 65280
  %46 = or i32 %43, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %28
  %49 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %50 = inttoptr i32 %49 to ptr
  %51 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %50) #15, !srcloc !12
  %52 = add i32 %51, ptrtoint (ptr @ksoftirqd to i32)
  %53 = inttoptr i32 %52 to ptr
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %48
  %57 = tail call i32 @wake_up_process(ptr noundef nonnull %54) #17
  br label %58

58:                                               ; preds = %56, %48, %28
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #17, !srcloc !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @open_softirq(i32 noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr [10 x %struct.softirq_action], ptr @softirq_vec, i32 0, i32 %0
  store ptr %1, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__tasklet_schedule(ptr noundef %0) #0 {
  tail call fastcc void @__tasklet_schedule_common(ptr noundef %0, ptr noundef nonnull @tasklet_vec, i32 noundef 6)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__tasklet_schedule_common(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !13
  %5 = ptrtoint ptr %1 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %7 = inttoptr i32 %6 to ptr
  %8 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %7) #15, !srcloc !12
  %9 = add i32 %8, %5
  %10 = inttoptr i32 %9 to ptr
  store ptr null, ptr %0, align 4
  %11 = getelementptr inbounds %struct.tasklet_head, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  store ptr %0, ptr %12, align 4
  store ptr %0, ptr %11, align 4
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_softirq_raise, i32 0, i32 1), align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %3
  %16 = tail call ptr @llvm.thread.pointer() #17
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = lshr i32 %18, 5
  %20 = getelementptr i32, ptr @__cpu_online_mask, i32 %19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %18, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, %21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !23
  %27 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_softirq_raise, i32 0, i32 7), align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %29, %26
  %30 = phi ptr [ %34, %29 ], [ %27, %26 ]
  %31 = load volatile ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.tracepoint_func, ptr %30, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  tail call void %31(ptr noundef %33, i32 noundef %2) #17
  %34 = getelementptr %struct.tracepoint_func, ptr %30, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29

37:                                               ; preds = %29, %26
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !24
  br label %38

38:                                               ; preds = %37, %15, %3
  %39 = shl nuw i32 1, %2
  %40 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %41 = inttoptr i32 %40 to ptr
  %42 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %41) #15, !srcloc !12
  %43 = add i32 %42, ptrtoint (ptr @irq_stat to i32)
  %44 = inttoptr i32 %43 to ptr
  %45 = load i32, ptr %44, align 4
  %46 = or i32 %45, %39
  store i32 %46, ptr %44, align 4
  %47 = tail call ptr @llvm.thread.pointer() #17
  %48 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %49, 15728640
  %51 = load volatile i32, ptr %48, align 4
  %52 = and i32 %51, 983040
  %53 = or i32 %52, %50
  %54 = load volatile i32, ptr %48, align 4
  %55 = and i32 %54, 65280
  %56 = or i32 %53, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %38
  %59 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %60 = inttoptr i32 %59 to ptr
  %61 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %60) #15, !srcloc !12
  %62 = add i32 %61, ptrtoint (ptr @ksoftirqd to i32)
  %63 = inttoptr i32 %62 to ptr
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %58
  %67 = tail call i32 @wake_up_process(ptr noundef nonnull %64) #17
  br label %68

68:                                               ; preds = %66, %58, %38
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #17, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__tasklet_hi_schedule(ptr noundef %0) #0 {
  tail call fastcc void @__tasklet_schedule_common(ptr noundef %0, ptr noundef nonnull @tasklet_hi_vec, i32 noundef 0)
  ret void
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tasklet_setup(ptr noundef %0, ptr noundef %1) #7 {
  store ptr null, ptr %0, align 4
  %3 = getelementptr inbounds %struct.tasklet_struct, ptr %0, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.tasklet_struct, ptr %0, i32 0, i32 2
  store volatile i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.tasklet_struct, ptr %0, i32 0, i32 4
  store ptr %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.tasklet_struct, ptr %0, i32 0, i32 3
  store i8 1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.tasklet_struct, ptr %0, i32 0, i32 5
  store i32 0, ptr %7, align 4
  ret void
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tasklet_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #7 {
  store ptr null, ptr %0, align 4
  %4 = getelementptr inbounds %struct.tasklet_struct, ptr %0, i32 0, i32 1
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.tasklet_struct, ptr %0, i32 0, i32 2
  store volatile i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.tasklet_struct, ptr %0, i32 0, i32 4
  store ptr %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.tasklet_struct, ptr %0, i32 0, i32 3
  store i8 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.tasklet_struct, ptr %0, i32 0, i32 5
  store i32 %2, ptr %8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tasklet_unlock_spin_wait(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tasklet_struct, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %6, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !25
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !26
  %7 = load volatile i32, ptr %2, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %6

10:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tasklet_kill(ptr noundef %0) #0 {
  %2 = alloca %struct.wait_bit_queue_entry, align 4
  %3 = tail call ptr @llvm.thread.pointer() #17
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 15728640
  %7 = load volatile i32, ptr %4, align 4
  %8 = and i32 %7, 983040
  %9 = or i32 %8, %6
  %10 = load volatile i32, ptr %4, align 4
  %11 = and i32 %10, 65280
  %12 = or i32 %9, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #18
  br label %16

16:                                               ; preds = %14, %1
  %17 = getelementptr inbounds %struct.tasklet_struct, ptr %0, i32 0, i32 1
  %18 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %17) #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %2, i32 0, i32 1
  br label %22

22:                                               ; preds = %38, %20
  %23 = load volatile i32, ptr %17, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = call ptr @__var_waitqueue(ptr noundef %17) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !9
  call void @init_wait_var_entry(ptr noundef nonnull %2, ptr noundef %17, i32 noundef 0) #17
  %28 = call i32 @prepare_to_wait_event(ptr noundef %27, ptr noundef %21, i32 noundef 2) #17
  %29 = load volatile i32, ptr %17, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %32, %26
  call void @schedule() #17
  %33 = call i32 @prepare_to_wait_event(ptr noundef %27, ptr noundef %21, i32 noundef 2) #17
  %34 = load volatile i32, ptr %17, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %32

37:                                               ; preds = %32, %26
  call void @finish_wait(ptr noundef %27, ptr noundef %21) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #17
  br label %38

38:                                               ; preds = %37, %22
  %39 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %17) #17
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %22

41:                                               ; preds = %38, %16
  call void @tasklet_unlock_wait(ptr noundef %0)
  %42 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %17) #17
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  call void @wake_up_var(ptr noundef %17) #17
  br label %54

45:                                               ; preds = %41
  %46 = load i1, ptr @tasklet_clear_sched.__already_done, align 1
  br i1 %46, label %54, label %47, !prof !10

47:                                               ; preds = %45
  store i1 true, ptr @tasklet_clear_sched.__already_done, align 1
  %48 = getelementptr inbounds %struct.tasklet_struct, ptr %0, i32 0, i32 3
  %49 = load i8, ptr %48, align 4, !range !27
  %50 = icmp eq i8 %49, 0
  %51 = select i1 %50, ptr @.str.43, ptr @.str.42
  %52 = getelementptr inbounds %struct.tasklet_struct, ptr %0, i32 0, i32 4
  %53 = load ptr, ptr %52, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 758, i32 noundef 9, ptr noundef nonnull @.str.41, ptr noundef nonnull %51, ptr noundef %53) #17
  br label %54

54:                                               ; preds = %47, %45, %44
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__var_waitqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_var_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tasklet_unlock_wait(ptr noundef %0) #0 {
  %2 = alloca %struct.wait_bit_queue_entry, align 4
  %3 = getelementptr inbounds %struct.tasklet_struct, ptr %0, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @__var_waitqueue(ptr noundef %3) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #17
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !9
  call void @init_wait_var_entry(ptr noundef nonnull %2, ptr noundef %3, i32 noundef 0) #17
  %9 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %2, i32 0, i32 1
  %10 = call i32 @prepare_to_wait_event(ptr noundef %8, ptr noundef %9, i32 noundef 2) #17
  %11 = load volatile i32, ptr %3, align 4
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %14, %7
  call void @schedule() #17
  %15 = call i32 @prepare_to_wait_event(ptr noundef %8, ptr noundef %9, i32 noundef 2) #17
  %16 = load volatile i32, ptr %3, align 4
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %14

19:                                               ; preds = %14, %7
  call void @finish_wait(ptr noundef %8, ptr noundef %9) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #17
  br label %20

20:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tasklet_unlock(ptr noundef %0) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !28
  %2 = getelementptr inbounds %struct.tasklet_struct, ptr %0, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %2) #17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  tail call void @wake_up_var(ptr noundef %2) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @softirq_init() local_unnamed_addr #9 section ".init.text" {
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %2 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  %3 = icmp ult i32 %2, %1
  br i1 %3, label %4, label %17

4:                                                ; preds = %4, %0
  %5 = phi i32 [ %15, %4 ], [ %2, %0 ]
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @tasklet_vec to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.tasklet_head, ptr %9, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = load i32, ptr %6, align 4
  %12 = add i32 %11, ptrtoint (ptr @tasklet_hi_vec to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.tasklet_head, ptr %13, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  %15 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef nonnull @__cpu_possible_mask) #19
  %16 = icmp ult i32 %15, %1
  br i1 %16, label %4, label %17

17:                                               ; preds = %4, %0
  store ptr @tasklet_action, ptr getelementptr inbounds ([10 x %struct.softirq_action], ptr @softirq_vec, i32 0, i32 6), align 8
  store ptr @tasklet_hi_action, ptr @softirq_vec, align 64
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tasklet_action(ptr nocapture noundef readnone %0) #0 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #15, !srcloc !12
  %5 = add i32 %4, ptrtoint (ptr @tasklet_vec to i32)
  %6 = inttoptr i32 %5 to ptr
  tail call fastcc void @tasklet_action_common(ptr noundef %6, i32 noundef 6)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tasklet_hi_action(ptr nocapture noundef readnone %0) #0 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #15, !srcloc !12
  %5 = add i32 %4, ptrtoint (ptr @tasklet_hi_vec to i32)
  %6 = inttoptr i32 %5 to ptr
  tail call fastcc void @tasklet_action_common(ptr noundef %6, i32 noundef 0)
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @spawn_ksoftirqd() #11 section ".init.text" {
  %1 = tail call i32 @__cpuhp_setup_state(i32 noundef 16, ptr noundef nonnull @.str.44, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @takeover_tasklets, i1 noundef zeroext false) #17
  %2 = tail call i32 @smpboot_register_percpu_thread(ptr noundef nonnull @softirq_threads) #17
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4, !prof !10

4:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/softirq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 970, 0\0A.popsection", ""() #17, !srcloc !30
  unreachable

5:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define weak dso_local i32 @early_irq_init() local_unnamed_addr #11 section ".init.text" {
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define weak dso_local i32 @arch_probe_nr_irqs() local_unnamed_addr #11 section ".init.text" {
  ret i32 16
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define weak dso_local i32 @arch_early_irq_init() local_unnamed_addr #11 section ".init.text" {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @arch_dynirq_lower_bound(i32 noundef %0) local_unnamed_addr #0 {
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_irq_handler_entry(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #17
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_irq_handler_entry, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_irq_handler_entry, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 65535
  %15 = getelementptr i8, ptr %5, i32 %14
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %11, ptr noundef %15) #17
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #17
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
define internal i32 @trace_raw_output_irq_handler_exit(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #17
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_irq_handler_exit, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_irq_handler_exit, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, ptr @.str.35, ptr @.str.34
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef %11, ptr noundef nonnull %15) #17
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #17
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_softirq(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #17
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_softirq, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %12, ptr noundef nonnull @trace_raw_output_softirq.symbols) #17
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.38, i32 noundef %12, ptr noundef %13) #17
  %14 = tail call i32 @trace_handle_return(ptr noundef %10) #17
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #14

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #15

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kthread_should_park(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idle_cpu(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_nohz_irq_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tasklet_action_common(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #17, !srcloc !22
  %3 = load ptr, ptr %0, align 4
  store ptr null, ptr %0, align 4
  %4 = getelementptr inbounds %struct.tasklet_head, ptr %0, i32 0, i32 1
  store ptr %0, ptr %4, align 4
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !16
  %5 = icmp eq ptr %3, null
  br i1 %5, label %79, label %6

6:                                                ; preds = %2
  %7 = shl nuw i32 1, %1
  br label %8

8:                                                ; preds = %77, %6
  %9 = phi ptr [ %3, %6 ], [ %10, %77 ]
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tasklet_struct, ptr %9, i32 0, i32 1
  %12 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %11) #17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tasklet_struct, ptr %9, i32 0, i32 2
  %16 = load volatile i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %14
  %19 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %11) #17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i1, ptr @tasklet_clear_sched.__already_done, align 1
  br i1 %22, label %40, label %23, !prof !10

23:                                               ; preds = %21
  store i1 true, ptr @tasklet_clear_sched.__already_done, align 1
  %24 = getelementptr inbounds %struct.tasklet_struct, ptr %9, i32 0, i32 3
  %25 = load i8, ptr %24, align 4, !range !27
  %26 = icmp eq i8 %25, 0
  %27 = select i1 %26, ptr @.str.43, ptr @.str.42
  %28 = getelementptr inbounds %struct.tasklet_struct, ptr %9, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 758, i32 noundef 9, ptr noundef nonnull @.str.41, ptr noundef nonnull %27, ptr noundef %29) #17
  br label %40

30:                                               ; preds = %18
  tail call void @wake_up_var(ptr noundef %11) #17
  %31 = getelementptr inbounds %struct.tasklet_struct, ptr %9, i32 0, i32 3
  %32 = load i8, ptr %31, align 4, !range !27
  %33 = icmp eq i8 %32, 0
  %34 = getelementptr inbounds %struct.tasklet_struct, ptr %9, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  br i1 %33, label %37, label %36

36:                                               ; preds = %30
  tail call void %35(ptr noundef nonnull %9) #17
  br label %40

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.tasklet_struct, ptr %9, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  tail call void %35(i32 noundef %39) #17
  br label %40

40:                                               ; preds = %37, %36, %23, %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !28
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %11) #17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  tail call void @wake_up_var(ptr noundef %11) #17
  br label %77

41:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !28
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %11) #17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #17, !srcloc !29
  tail call void @wake_up_var(ptr noundef %11) #17
  br label %42

42:                                               ; preds = %41, %8
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #17, !srcloc !22
  store ptr null, ptr %9, align 4
  %43 = load ptr, ptr %4, align 4
  store ptr %9, ptr %43, align 4
  store ptr %9, ptr %4, align 4
  %44 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_softirq_raise, i32 0, i32 1), align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %42
  %47 = tail call ptr @llvm.thread.pointer() #17
  %48 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %49 = load i32, ptr %48, align 8
  %50 = lshr i32 %49, 5
  %51 = getelementptr i32, ptr @__cpu_online_mask, i32 %50
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %49, 31
  %54 = shl nuw i32 1, %53
  %55 = and i32 %54, %52
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %46
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !23
  %58 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_softirq_raise, i32 0, i32 7), align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %60, %57
  %61 = phi ptr [ %65, %60 ], [ %58, %57 ]
  %62 = load volatile ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.tracepoint_func, ptr %61, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  tail call void %62(ptr noundef %64, i32 noundef %1) #17
  %65 = getelementptr %struct.tracepoint_func, ptr %61, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %60

68:                                               ; preds = %60, %57
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !24
  br label %69

69:                                               ; preds = %68, %46, %42
  %70 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %71 = inttoptr i32 %70 to ptr
  %72 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %71) #15, !srcloc !12
  %73 = add i32 %72, ptrtoint (ptr @irq_stat to i32)
  %74 = inttoptr i32 %73 to ptr
  %75 = load i32, ptr %74, align 4
  %76 = or i32 %75, %7
  store i32 %76, ptr %74, align 4
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !16
  br label %77

77:                                               ; preds = %69, %40
  %78 = icmp eq ptr %10, null
  br i1 %78, label %79, label %8

79:                                               ; preds = %77, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @takeover_tasklets(i32 noundef %0) #0 {
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #17, !srcloc !22
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @tasklet_vec to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.tasklet_head, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %5
  br i1 %8, label %34, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %5, align 4
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #15, !srcloc !12
  %14 = add i32 %13, ptrtoint (ptr getelementptr inbounds (%struct.tasklet_head, ptr @tasklet_vec, i32 0, i32 1) to i32)
  %15 = inttoptr i32 %14 to ptr
  %16 = load ptr, ptr %15, align 4
  store ptr %10, ptr %16, align 4
  %17 = load i32, ptr %2, align 4
  %18 = add i32 %17, ptrtoint (ptr @tasklet_vec to i32)
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.tasklet_head, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %23 = inttoptr i32 %22 to ptr
  %24 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %23) #15, !srcloc !12
  %25 = add i32 %24, ptrtoint (ptr getelementptr inbounds (%struct.tasklet_head, ptr @tasklet_vec, i32 0, i32 1) to i32)
  %26 = inttoptr i32 %25 to ptr
  store ptr %21, ptr %26, align 4
  %27 = load i32, ptr %2, align 4
  %28 = add i32 %27, ptrtoint (ptr @tasklet_vec to i32)
  %29 = inttoptr i32 %28 to ptr
  store ptr null, ptr %29, align 4
  %30 = load i32, ptr %2, align 4
  %31 = add i32 %30, ptrtoint (ptr @tasklet_vec to i32)
  %32 = inttoptr i32 %31 to ptr
  %33 = getelementptr inbounds %struct.tasklet_head, ptr %32, i32 0, i32 1
  store ptr %32, ptr %33, align 4
  br label %34

34:                                               ; preds = %9, %1
  %35 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_softirq_raise, i32 0, i32 1), align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %34
  %38 = tail call ptr @llvm.thread.pointer() #17
  %39 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 8
  %41 = lshr i32 %40, 5
  %42 = getelementptr i32, ptr @__cpu_online_mask, i32 %41
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %40, 31
  %45 = shl nuw i32 1, %44
  %46 = and i32 %45, %43
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %37
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !23
  %49 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_softirq_raise, i32 0, i32 7), align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %51, %48
  %52 = phi ptr [ %56, %51 ], [ %49, %48 ]
  %53 = load volatile ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.tracepoint_func, ptr %52, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  tail call void %53(ptr noundef %55, i32 noundef 6) #17
  %56 = getelementptr %struct.tracepoint_func, ptr %52, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %51

59:                                               ; preds = %51, %48
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !24
  br label %60

60:                                               ; preds = %59, %37, %34
  %61 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %62 = inttoptr i32 %61 to ptr
  %63 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %62) #15, !srcloc !12
  %64 = add i32 %63, ptrtoint (ptr @irq_stat to i32)
  %65 = inttoptr i32 %64 to ptr
  %66 = load i32, ptr %65, align 4
  %67 = or i32 %66, 64
  store i32 %67, ptr %65, align 4
  %68 = tail call ptr @llvm.thread.pointer() #17
  %69 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %70, 15728640
  %72 = load volatile i32, ptr %69, align 4
  %73 = and i32 %72, 983040
  %74 = or i32 %73, %71
  %75 = load volatile i32, ptr %69, align 4
  %76 = and i32 %75, 65280
  %77 = or i32 %74, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %60
  %80 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %81 = inttoptr i32 %80 to ptr
  %82 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %81) #15, !srcloc !12
  %83 = add i32 %82, ptrtoint (ptr @ksoftirqd to i32)
  %84 = inttoptr i32 %83 to ptr
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %79
  %88 = tail call i32 @wake_up_process(ptr noundef nonnull %85) #17
  br label %89

89:                                               ; preds = %87, %79, %60
  %90 = load i32, ptr %2, align 4
  %91 = add i32 %90, ptrtoint (ptr @tasklet_hi_vec to i32)
  %92 = inttoptr i32 %91 to ptr
  %93 = getelementptr inbounds %struct.tasklet_head, ptr %92, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, %92
  br i1 %95, label %121, label %96

96:                                               ; preds = %89
  %97 = load ptr, ptr %92, align 4
  %98 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %99 = inttoptr i32 %98 to ptr
  %100 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %99) #15, !srcloc !12
  %101 = add i32 %100, ptrtoint (ptr getelementptr inbounds (%struct.tasklet_head, ptr @tasklet_hi_vec, i32 0, i32 1) to i32)
  %102 = inttoptr i32 %101 to ptr
  %103 = load ptr, ptr %102, align 4
  store ptr %97, ptr %103, align 4
  %104 = load i32, ptr %2, align 4
  %105 = add i32 %104, ptrtoint (ptr @tasklet_hi_vec to i32)
  %106 = inttoptr i32 %105 to ptr
  %107 = getelementptr inbounds %struct.tasklet_head, ptr %106, i32 0, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %110 = inttoptr i32 %109 to ptr
  %111 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %110) #15, !srcloc !12
  %112 = add i32 %111, ptrtoint (ptr getelementptr inbounds (%struct.tasklet_head, ptr @tasklet_hi_vec, i32 0, i32 1) to i32)
  %113 = inttoptr i32 %112 to ptr
  store ptr %108, ptr %113, align 4
  %114 = load i32, ptr %2, align 4
  %115 = add i32 %114, ptrtoint (ptr @tasklet_hi_vec to i32)
  %116 = inttoptr i32 %115 to ptr
  store ptr null, ptr %116, align 4
  %117 = load i32, ptr %2, align 4
  %118 = add i32 %117, ptrtoint (ptr @tasklet_hi_vec to i32)
  %119 = inttoptr i32 %118 to ptr
  %120 = getelementptr inbounds %struct.tasklet_head, ptr %119, i32 0, i32 1
  store ptr %119, ptr %120, align 4
  br label %121

121:                                              ; preds = %96, %89
  %122 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_softirq_raise, i32 0, i32 1), align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %146

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %126 = load i32, ptr %125, align 8
  %127 = lshr i32 %126, 5
  %128 = getelementptr i32, ptr @__cpu_online_mask, i32 %127
  %129 = load volatile i32, ptr %128, align 4
  %130 = and i32 %126, 31
  %131 = shl nuw i32 1, %130
  %132 = and i32 %131, %129
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %146, label %134

134:                                              ; preds = %124
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !23
  %135 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_softirq_raise, i32 0, i32 7), align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %145, label %137

137:                                              ; preds = %137, %134
  %138 = phi ptr [ %142, %137 ], [ %135, %134 ]
  %139 = load volatile ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.tracepoint_func, ptr %138, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  tail call void %139(ptr noundef %141, i32 noundef 0) #17
  %142 = getelementptr %struct.tracepoint_func, ptr %138, i32 1
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %137

145:                                              ; preds = %137, %134
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !24
  br label %146

146:                                              ; preds = %145, %124, %121
  %147 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %148 = inttoptr i32 %147 to ptr
  %149 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %148) #15, !srcloc !12
  %150 = add i32 %149, ptrtoint (ptr @irq_stat to i32)
  %151 = inttoptr i32 %150 to ptr
  %152 = load i32, ptr %151, align 4
  %153 = or i32 %152, 1
  store i32 %153, ptr %151, align 4
  %154 = load volatile i32, ptr %69, align 4
  %155 = and i32 %154, 15728640
  %156 = load volatile i32, ptr %69, align 4
  %157 = and i32 %156, 983040
  %158 = or i32 %157, %155
  %159 = load volatile i32, ptr %69, align 4
  %160 = and i32 %159, 65280
  %161 = or i32 %158, %160
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %146
  %164 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %165 = inttoptr i32 %164 to ptr
  %166 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %165) #15, !srcloc !12
  %167 = add i32 %166, ptrtoint (ptr @ksoftirqd to i32)
  %168 = inttoptr i32 %167 to ptr
  %169 = load ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %173, label %171

171:                                              ; preds = %163
  %172 = tail call i32 @wake_up_process(ptr noundef nonnull %169) #17
  br label %173

173:                                              ; preds = %171, %163, %146
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smpboot_register_percpu_thread(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @ksoftirqd_should_run(i32 noundef %0) #16 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #15, !srcloc !12
  %5 = add i32 %4, ptrtoint (ptr @irq_stat to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load i32, ptr %6, align 4
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @run_ksoftirqd(i32 noundef %0) #0 {
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #17, !srcloc !22
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #17
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #15, !srcloc !12
  %5 = add i32 %4, ptrtoint (ptr @irq_stat to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  tail call void @__do_softirq()
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !16
  %10 = tail call i32 @__cond_resched() #17
  br label %12

11:                                               ; preds = %1
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #17, !srcloc !16
  br label %12

12:                                               ; preds = %11, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { nounwind readonly }
attributes #16 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readonly willreturn }

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
!12 = !{i64 493270}
!13 = !{i64 474570, i64 474631}
!14 = !{i64 477587}
!15 = !{i64 2149029747}
!16 = !{i64 474815}
!17 = !{i32 0, i32 33}
!18 = !{i64 2153168778}
!19 = !{i64 2153168928}
!20 = !{i64 2153184377}
!21 = !{i64 2153184525}
!22 = !{i64 475005}
!23 = !{i64 2153199960}
!24 = !{i64 2153200110}
!25 = !{i64 2154287567}
!26 = !{i64 2154287409}
!27 = !{i8 0, i8 2}
!28 = !{i64 2154292947}
!29 = !{i64 2154293218}
!30 = !{i64 2154359494, i64 2154359975, i64 2154359531, i64 2154359587, i64 2154359621, i64 2154359645, i64 2154359686, i64 2154359707, i64 2154359735, i64 2154359769}
