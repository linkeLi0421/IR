; ModuleID = '/llk/IR/kernel/trace/trace.c_pt.bc'
source_filename = "../kernel/trace/trace.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_ftrace_export:\09\09\09\09\09"
module asm "\09.asciz \09\22register_ftrace_export\22\09\09\09\09\09"
module asm "__kstrtabns_register_ftrace_export:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_ftrace_export:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_ftrace_export\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_ftrace_export:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_array_put:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_array_put\22\09\09\09\09\09"
module asm "__kstrtabns_trace_array_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tracing_on:\09\09\09\09\09"
module asm "\09.asciz \09\22tracing_on\22\09\09\09\09\09"
module asm "__kstrtabns_tracing_on:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___trace_puts:\09\09\09\09\09"
module asm "\09.asciz \09\22__trace_puts\22\09\09\09\09\09"
module asm "__kstrtabns___trace_puts:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___trace_bputs:\09\09\09\09\09"
module asm "\09.asciz \09\22__trace_bputs\22\09\09\09\09\09"
module asm "__kstrtabns___trace_bputs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tracing_snapshot:\09\09\09\09\09"
module asm "\09.asciz \09\22tracing_snapshot\22\09\09\09\09\09"
module asm "__kstrtabns_tracing_snapshot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tracing_snapshot_cond:\09\09\09\09\09"
module asm "\09.asciz \09\22tracing_snapshot_cond\22\09\09\09\09\09"
module asm "__kstrtabns_tracing_snapshot_cond:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tracing_alloc_snapshot:\09\09\09\09\09"
module asm "\09.asciz \09\22tracing_alloc_snapshot\22\09\09\09\09\09"
module asm "__kstrtabns_tracing_alloc_snapshot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tracing_snapshot_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22tracing_snapshot_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_tracing_snapshot_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tracing_cond_snapshot_data:\09\09\09\09\09"
module asm "\09.asciz \09\22tracing_cond_snapshot_data\22\09\09\09\09\09"
module asm "__kstrtabns_tracing_cond_snapshot_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tracing_snapshot_cond_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22tracing_snapshot_cond_enable\22\09\09\09\09\09"
module asm "__kstrtabns_tracing_snapshot_cond_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tracing_snapshot_cond_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22tracing_snapshot_cond_disable\22\09\09\09\09\09"
module asm "__kstrtabns_tracing_snapshot_cond_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tracing_off:\09\09\09\09\09"
module asm "\09.asciz \09\22tracing_off\22\09\09\09\09\09"
module asm "__kstrtabns_tracing_off:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tracing_is_on:\09\09\09\09\09"
module asm "\09.asciz \09\22tracing_is_on\22\09\09\09\09\09"
module asm "__kstrtabns_tracing_is_on:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_handle_return:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_handle_return\22\09\09\09\09\09"
module asm "__kstrtabns_trace_handle_return:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_event_buffer_lock_reserve:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_event_buffer_lock_reserve\22\09\09\09\09\09"
module asm "__kstrtabns_trace_event_buffer_lock_reserve:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_event_buffer_commit:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_event_buffer_commit\22\09\09\09\09\09"
module asm "__kstrtabns_trace_event_buffer_commit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_dump_stack:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_dump_stack\22\09\09\09\09\09"
module asm "__kstrtabns_trace_dump_stack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_printk_init_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_printk_init_buffers\22\09\09\09\09\09"
module asm "__kstrtabns_trace_printk_init_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_vbprintk:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_vbprintk\22\09\09\09\09\09"
module asm "__kstrtabns_trace_vbprintk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_array_printk:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_array_printk\22\09\09\09\09\09"
module asm "__kstrtabns_trace_array_printk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_array_init_printk:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_array_init_printk\22\09\09\09\09\09"
module asm "__kstrtabns_trace_array_init_printk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_vprintk:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_vprintk\22\09\09\09\09\09"
module asm "__kstrtabns_trace_vprintk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_array_get_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_array_get_by_name\22\09\09\09\09\09"
module asm "__kstrtabns_trace_array_get_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_array_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_array_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_trace_array_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ftrace_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22ftrace_dump\22\09\09\09\09\09"
module asm "__kstrtabns_ftrace_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_array = type { %struct.list_head, ptr, %struct.array_buffer, ptr, ptr, %struct.arch_spinlock_t, i32, i32, i32, i32, i8, i32, i32, ptr, i32, [32 x i8], i32, %struct.raw_spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr, [1 x %struct.cpumask], i32, i32, i32, %struct.list_head, ptr }
%struct.array_buffer = type { ptr, ptr, ptr, i64, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.anon.96 = type { ptr, ptr, i32 }
%struct.tracer_opt = type { ptr, i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.31, %struct.trace_event, ptr, ptr, %union.anon.32, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.31 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.32 = type { ptr }
%struct.tracer = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.ftrace_stacks = type { [4 x %struct.ftrace_stack] }
%struct.ftrace_stack = type { [1024 x i32] }
%struct.lock_class_key = type {}
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.pipe_buf_operations = type { ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.trace_export = type { ptr, ptr, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.65, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0 }
%struct.llist_node = type { ptr }
%union.anon.0 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.45 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.trace_parser = type { i8, ptr, i32, i32 }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.print_entry = type { %struct.trace_entry, i32, [0 x i8] }
%struct.ring_buffer_event = type { i32, [0 x i32] }
%struct.bputs_entry = type { %struct.trace_entry, i32, ptr }
%struct.__va_list = type { ptr }
%struct.tracer_flags = type { i32, ptr, ptr }
%struct.trace_options = type { ptr, ptr }
%struct.trace_option_dentry = type { ptr, ptr, ptr, ptr }
%struct.trace_array_cpu = type { %struct.atomic_t, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.kuid_t, [16 x i8], i8 }
%struct.kuid_t = type { i32 }
%struct.saved_cmdlines_buffer = type { [32769 x i32], ptr, i32, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.ftrace_entry = type { %struct.trace_entry, i32, i32 }
%struct.stack_entry = type { %struct.trace_entry, i32, [8 x i32] }
%struct.trace_func_repeats = type { i32, i32, i32, i64 }
%struct.func_repeats_entry = type { %struct.trace_entry, i32, i32, i16, i16, i32 }
%struct.trace_buffer_struct = type { i32, [4 x [1024 x i8]] }
%struct.bprint_entry = type { %struct.trace_entry, i32, ptr, [0 x i32] }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.90, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.91, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.92, ptr, %struct.address_space, %struct.list_head, %union.anon.93, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.90 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.91 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.92 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.93 = type { ptr }
%struct.file = type { %union.anon.8, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.8 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.trace_min_max_param = type { ptr, ptr, ptr, ptr }
%struct.tracing_log_err = type { %struct.list_head, %struct.err_info, [128 x i8], [256 x i8] }
%struct.err_info = type { ptr, i8, i8, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.13, %struct.list_head, %struct.list_head, %union.anon.14 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.9, ptr }
%union.anon.9 = type { i64 }
%struct.lockref = type { %union.anon.11 }
%union.anon.11 = type { i64 }
%union.anon.13 = type { %struct.list_head }
%union.anon.14 = type { %struct.hlist_node }
%struct.partial_page = type { i32, i32, i32 }
%struct.splice_pipe_desc = type { ptr, ptr, i32, i32, ptr, ptr }
%struct.raw_data_entry = type { %struct.trace_entry, i32, [0 x i8] }
%struct.ftrace_buffer_info = type { %struct.trace_iterator, ptr, i32, i32 }
%struct.buffer_ref = type { ptr, ptr, i32, %struct.refcount_struct }
%struct.page = type { i32, %union.anon.5, %union.anon.44, %struct.atomic_t }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.44 = type { %struct.atomic_t }
%struct.pipe_buffer = type { ptr, i32, i32, ptr, i32, i32 }

@__setup_str_set_cmdline_ftrace = internal constant [8 x i8] c"ftrace=\00", section ".init.rodata", align 1
@__setup_set_cmdline_ftrace = internal global %struct.obs_kernel_param { ptr @__setup_str_set_cmdline_ftrace, ptr @set_cmdline_ftrace, i32 0 }, section ".init.setup", align 4
@__setup_str_set_ftrace_dump_on_oops = internal constant [20 x i8] c"ftrace_dump_on_oops\00", section ".init.rodata", align 1
@__setup_set_ftrace_dump_on_oops = internal global %struct.obs_kernel_param { ptr @__setup_str_set_ftrace_dump_on_oops, ptr @set_ftrace_dump_on_oops, i32 0 }, section ".init.setup", align 4
@__setup_str_stop_trace_on_warning = internal constant [20 x i8] c"traceoff_on_warning\00", section ".init.rodata", align 1
@__setup_stop_trace_on_warning = internal global %struct.obs_kernel_param { ptr @__setup_str_stop_trace_on_warning, ptr @stop_trace_on_warning, i32 0 }, section ".init.setup", align 4
@__setup_str_boot_alloc_snapshot = internal constant [15 x i8] c"alloc_snapshot\00", section ".init.rodata", align 1
@__setup_boot_alloc_snapshot = internal global %struct.obs_kernel_param { ptr @__setup_str_boot_alloc_snapshot, ptr @boot_alloc_snapshot, i32 0 }, section ".init.setup", align 4
@__setup_str_set_trace_boot_options = internal constant [15 x i8] c"trace_options=\00", section ".init.rodata", align 1
@__setup_set_trace_boot_options = internal global %struct.obs_kernel_param { ptr @__setup_str_set_trace_boot_options, ptr @set_trace_boot_options, i32 0 }, section ".init.setup", align 4
@__setup_str_set_trace_boot_clock = internal constant [13 x i8] c"trace_clock=\00", section ".init.rodata", align 1
@__setup_set_trace_boot_clock = internal global %struct.obs_kernel_param { ptr @__setup_str_set_trace_boot_clock, ptr @set_trace_boot_clock, i32 0 }, section ".init.setup", align 4
@__setup_str_set_tracepoint_printk = internal constant [10 x i8] c"tp_printk\00", section ".init.rodata", align 1
@__setup_set_tracepoint_printk = internal global %struct.obs_kernel_param { ptr @__setup_str_set_tracepoint_printk, ptr @set_tracepoint_printk, i32 0 }, section ".init.setup", align 4
@__setup_str_set_tracepoint_printk_stop = internal constant [23 x i8] c"tp_printk_stop_on_boot\00", section ".init.rodata", align 1
@__setup_set_tracepoint_printk_stop = internal global %struct.obs_kernel_param { ptr @__setup_str_set_tracepoint_printk_stop, ptr @set_tracepoint_printk_stop, i32 0 }, section ".init.setup", align 4
@register_ftrace_export.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [21 x i8] c"kernel/trace/trace.c\00", align 1
@ftrace_export_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ftrace_export_lock, i64 12), ptr getelementptr (i8, ptr @ftrace_export_lock, i64 12) } }, align 4
@ftrace_exports_list = internal global ptr null, section ".data..read_mostly", align 4
@__kstrtab_register_ftrace_export = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_ftrace_export = external dso_local constant [0 x i8], align 1
@__ksymtab_register_ftrace_export = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_ftrace_export to i32), ptr @__kstrtab_register_ftrace_export, ptr @__kstrtabns_register_ftrace_export }, section "___ksymtab_gpl+register_ftrace_export", align 4
@__kstrtab_unregister_ftrace_export = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_ftrace_export = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_ftrace_export = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_ftrace_export to i32), ptr @__kstrtab_unregister_ftrace_export, ptr @__kstrtabns_unregister_ftrace_export }, section "___ksymtab_gpl+unregister_ftrace_export", align 4
@ftrace_trace_arrays = dso_local global %struct.list_head { ptr @ftrace_trace_arrays, ptr @ftrace_trace_arrays }, align 4
@trace_types_lock = dso_local global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @trace_types_lock, i64 12), ptr getelementptr (i8, ptr @trace_types_lock, i64 12) } }, align 4
@__kstrtab_trace_array_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_array_put = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_array_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_array_put to i32), ptr @__kstrtab_trace_array_put, ptr @__kstrtabns_trace_array_put }, section "___ksymtab_gpl+trace_array_put", align 4
@tracing_disabled = internal unnamed_addr global i1 false, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@global_trace = internal global %struct.trace_array { %struct.list_head zeroinitializer, ptr null, %struct.array_buffer zeroinitializer, ptr null, ptr null, %struct.arch_spinlock_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, ptr null, i32 10134273, [32 x i8] zeroinitializer, i32 0, %struct.raw_spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, [1 x %struct.cpumask] zeroinitializer, i32 0, i32 0, i32 0, %struct.list_head zeroinitializer, ptr null }, align 8
@__kstrtab_tracing_on = external dso_local constant [0 x i8], align 1
@__kstrtabns_tracing_on = external dso_local constant [0 x i8], align 1
@__ksymtab_tracing_on = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tracing_on to i32), ptr @__kstrtab_tracing_on, ptr @__kstrtabns_tracing_on }, section "___ksymtab_gpl+tracing_on", align 4
@tracing_selftest_running = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@__kstrtab___trace_puts = external dso_local constant [0 x i8], align 1
@__kstrtabns___trace_puts = external dso_local constant [0 x i8], align 1
@__ksymtab___trace_puts = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__trace_puts to i32), ptr @__kstrtab___trace_puts, ptr @__kstrtabns___trace_puts }, section "___ksymtab_gpl+__trace_puts", align 4
@__kstrtab___trace_bputs = external dso_local constant [0 x i8], align 1
@__kstrtabns___trace_bputs = external dso_local constant [0 x i8], align 1
@__ksymtab___trace_bputs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__trace_bputs to i32), ptr @__kstrtab___trace_bputs, ptr @__kstrtabns___trace_bputs }, section "___ksymtab_gpl+__trace_bputs", align 4
@tracing_snapshot.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Snapshot feature not enabled, but internal snapshot used\00", align 1
@__kstrtab_tracing_snapshot = external dso_local constant [0 x i8], align 1
@__kstrtabns_tracing_snapshot = external dso_local constant [0 x i8], align 1
@__ksymtab_tracing_snapshot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tracing_snapshot to i32), ptr @__kstrtab_tracing_snapshot, ptr @__kstrtabns_tracing_snapshot }, section "___ksymtab_gpl+tracing_snapshot", align 4
@tracing_snapshot_cond.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"Snapshot feature not enabled, but internal conditional snapshot used\00", align 1
@__kstrtab_tracing_snapshot_cond = external dso_local constant [0 x i8], align 1
@__kstrtabns_tracing_snapshot_cond = external dso_local constant [0 x i8], align 1
@__ksymtab_tracing_snapshot_cond = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tracing_snapshot_cond to i32), ptr @__kstrtab_tracing_snapshot_cond, ptr @__kstrtabns_tracing_snapshot_cond }, section "___ksymtab_gpl+tracing_snapshot_cond", align 4
@tracing_alloc_snapshot.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"Snapshot feature not enabled, but snapshot allocation used\00", align 1
@__kstrtab_tracing_alloc_snapshot = external dso_local constant [0 x i8], align 1
@__kstrtabns_tracing_alloc_snapshot = external dso_local constant [0 x i8], align 1
@__ksymtab_tracing_alloc_snapshot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tracing_alloc_snapshot to i32), ptr @__kstrtab_tracing_alloc_snapshot, ptr @__kstrtabns_tracing_alloc_snapshot }, section "___ksymtab_gpl+tracing_alloc_snapshot", align 4
@__kstrtab_tracing_snapshot_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_tracing_snapshot_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_tracing_snapshot_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tracing_snapshot_alloc to i32), ptr @__kstrtab_tracing_snapshot_alloc, ptr @__kstrtabns_tracing_snapshot_alloc }, section "___ksymtab_gpl+tracing_snapshot_alloc", align 4
@__kstrtab_tracing_cond_snapshot_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_tracing_cond_snapshot_data = external dso_local constant [0 x i8], align 1
@__ksymtab_tracing_cond_snapshot_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tracing_cond_snapshot_data to i32), ptr @__kstrtab_tracing_cond_snapshot_data, ptr @__kstrtabns_tracing_cond_snapshot_data }, section "___ksymtab_gpl+tracing_cond_snapshot_data", align 4
@__kstrtab_tracing_snapshot_cond_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_tracing_snapshot_cond_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_tracing_snapshot_cond_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tracing_snapshot_cond_enable to i32), ptr @__kstrtab_tracing_snapshot_cond_enable, ptr @__kstrtabns_tracing_snapshot_cond_enable }, section "___ksymtab_gpl+tracing_snapshot_cond_enable", align 4
@__kstrtab_tracing_snapshot_cond_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_tracing_snapshot_cond_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_tracing_snapshot_cond_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tracing_snapshot_cond_disable to i32), ptr @__kstrtab_tracing_snapshot_cond_disable, ptr @__kstrtabns_tracing_snapshot_cond_disable }, section "___ksymtab_gpl+tracing_snapshot_cond_disable", align 4
@__kstrtab_tracing_off = external dso_local constant [0 x i8], align 1
@__kstrtabns_tracing_off = external dso_local constant [0 x i8], align 1
@__ksymtab_tracing_off = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tracing_off to i32), ptr @__kstrtab_tracing_off, ptr @__kstrtabns_tracing_off }, section "___ksymtab_gpl+tracing_off", align 4
@__disable_trace_on_warning = dso_local local_unnamed_addr global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Disabling tracing due to warning\0A\00", align 1
@__kstrtab_tracing_is_on = external dso_local constant [0 x i8], align 1
@__kstrtabns_tracing_is_on = external dso_local constant [0 x i8], align 1
@__ksymtab_tracing_is_on = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tracing_is_on to i32), ptr @__kstrtab_tracing_is_on, ptr @__kstrtabns_tracing_is_on }, section "___ksymtab_gpl+tracing_is_on", align 4
@__setup_str_set_buf_size = internal constant [16 x i8] c"trace_buf_size=\00", section ".init.rodata", align 1
@__setup_set_buf_size = internal global %struct.obs_kernel_param { ptr @__setup_str_set_buf_size, ptr @set_buf_size, i32 0 }, section ".init.setup", align 4
@__setup_str_set_tracing_thresh = internal constant [16 x i8] c"tracing_thresh=\00", section ".init.rodata", align 1
@__setup_set_tracing_thresh = internal global %struct.obs_kernel_param { ptr @__setup_str_set_tracing_thresh, ptr @set_tracing_thresh, i32 0 }, section ".init.setup", align 4
@trace_clocks = internal unnamed_addr constant [8 x %struct.anon.96] [%struct.anon.96 { ptr @trace_clock_local, ptr @.str.70, i32 1 }, %struct.anon.96 { ptr @trace_clock_global, ptr @.str.71, i32 1 }, %struct.anon.96 { ptr @trace_clock_counter, ptr @.str.72, i32 0 }, %struct.anon.96 { ptr @trace_clock_jiffies, ptr @.str.73, i32 0 }, %struct.anon.96 { ptr @trace_clock, ptr @.str.74, i32 1 }, %struct.anon.96 { ptr @ktime_get_mono_fast_ns, ptr @.str.75, i32 1 }, %struct.anon.96 { ptr @ktime_get_raw_fast_ns, ptr @.str.76, i32 1 }, %struct.anon.96 { ptr @ktime_get_boot_fast_ns, ptr @.str.77, i32 1 }], align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"\016Tracer must have a name\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"\016Tracer has a name longer than %d\0A\00", align 1
@trace_types = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"\016Tracer %s already registered\0A\00", align 1
@dummy_tracer_opt = internal global [1 x %struct.tracer_opt] zeroinitializer, align 4
@default_bootup_tracer = internal unnamed_addr global ptr null, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"\016Starting tracer '%s'\0A\00", align 1
@tracing_start.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@trace_cmdline_lock = internal global %struct.arch_spinlock_t zeroinitializer, align 4
@trace_taskinfo_save = internal global i8 0, section ".data..percpu", align 1
@__kstrtab_trace_handle_return = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_handle_return = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_handle_return = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_handle_return to i32), ptr @__kstrtab_trace_handle_return, ptr @__kstrtabns_trace_handle_return }, section "___ksymtab_gpl+trace_handle_return", align 4
@trace_buffered_event_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@event_mutex = external dso_local global %struct.mutex, align 4
@trace_buffered_event_ref = internal unnamed_addr global i32 0, align 4
@tracing_buffer_mask = dso_local global [1 x %struct.cpumask] zeroinitializer, section ".data..read_mostly", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@trace_buffered_event = dso_local global ptr null, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@trace_buffered_event_enable.__already_done.14 = internal unnamed_addr global i1 false, section ".data.once", align 1
@trace_buffered_event_disable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@trace_buffered_event_disable.__already_done.15 = internal unnamed_addr global i1 false, section ".data.once", align 1
@trace_buffered_event_cnt = dso_local global i32 0, section ".data..percpu", align 4
@temp_buffer = internal unnamed_addr global ptr null, align 4
@__kstrtab_trace_event_buffer_lock_reserve = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_event_buffer_lock_reserve = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_event_buffer_lock_reserve = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_event_buffer_lock_reserve to i32), ptr @__kstrtab_trace_event_buffer_lock_reserve, ptr @__kstrtabns_trace_event_buffer_lock_reserve }, section "___ksymtab_gpl+trace_event_buffer_lock_reserve", align 4
@tracepoint_printk_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tracepoint_printk_mutex, i64 12), ptr getelementptr (i8, ptr @tracepoint_printk_mutex, i64 12) } }, align 4
@tracepoint_printk = dso_local local_unnamed_addr global i32 0, align 4
@tracepoint_print_iter = dso_local local_unnamed_addr global ptr null, align 4
@tracepoint_printk_key = internal global %struct.static_key_false zeroinitializer, align 4
@trace_event_exports_enabled = internal global %struct.static_key_false zeroinitializer, align 4
@__kstrtab_trace_event_buffer_commit = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_event_buffer_commit = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_event_buffer_commit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_event_buffer_commit to i32), ptr @__kstrtab_trace_event_buffer_commit, ptr @__kstrtabns_trace_event_buffer_commit }, section "___ksymtab_gpl+trace_event_buffer_commit", align 4
@event_function = external dso_local local_unnamed_addr global %struct.trace_event_call, align 4
@trace_function_exports_enabled = internal global %struct.static_key_false zeroinitializer, align 4
@__kstrtab_trace_dump_stack = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_dump_stack = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_dump_stack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_dump_stack to i32), ptr @__kstrtab_trace_dump_stack, ptr @__kstrtabns_trace_dump_stack }, section "___ksymtab_gpl+trace_dump_stack", align 4
@buffers_allocated = internal unnamed_addr global i1 false, align 4
@.str.16 = private unnamed_addr constant [4 x i8] c"\014\0A\00", align 1
@.str.17 = private unnamed_addr constant [62 x i8] c"\014**********************************************************\0A\00", align 1
@.str.18 = private unnamed_addr constant [62 x i8] c"\014**   NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE   **\0A\00", align 1
@.str.19 = private unnamed_addr constant [62 x i8] c"\014**                                                      **\0A\00", align 1
@.str.20 = private unnamed_addr constant [62 x i8] c"\014** trace_printk() being used. Allocating extra memory.  **\0A\00", align 1
@.str.21 = private unnamed_addr constant [62 x i8] c"\014** This means that this is a DEBUG kernel and it is     **\0A\00", align 1
@.str.22 = private unnamed_addr constant [62 x i8] c"\014** unsafe for production use.                           **\0A\00", align 1
@.str.23 = private unnamed_addr constant [62 x i8] c"\014** If you see this message and you are not debugging    **\0A\00", align 1
@.str.24 = private unnamed_addr constant [62 x i8] c"\014** the kernel, report this immediately to your vendor!  **\0A\00", align 1
@__kstrtab_trace_printk_init_buffers = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_printk_init_buffers = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_printk_init_buffers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_printk_init_buffers to i32), ptr @__kstrtab_trace_printk_init_buffers, ptr @__kstrtabns_trace_printk_init_buffers }, section "___ksymtab_gpl+trace_printk_init_buffers", align 4
@event_bprint = external dso_local local_unnamed_addr global %struct.trace_event_call, align 4
@__kstrtab_trace_vbprintk = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_vbprintk = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_vbprintk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_vbprintk to i32), ptr @__kstrtab_trace_vbprintk, ptr @__kstrtabns_trace_vbprintk }, section "___ksymtab_gpl+trace_vbprintk", align 4
@__kstrtab_trace_array_printk = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_array_printk = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_array_printk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_array_printk to i32), ptr @__kstrtab_trace_array_printk, ptr @__kstrtabns_trace_array_printk }, section "___ksymtab_gpl+trace_array_printk", align 4
@__kstrtab_trace_array_init_printk = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_array_init_printk = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_array_init_printk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_array_init_printk to i32), ptr @__kstrtab_trace_array_init_printk, ptr @__kstrtabns_trace_array_init_printk }, section "___ksymtab_gpl+trace_array_init_printk", align 4
@__kstrtab_trace_vprintk = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_vprintk = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_vprintk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_vprintk to i32), ptr @__kstrtab_trace_vprintk, ptr @__kstrtabns_trace_vprintk }, section "___ksymtab_gpl+trace_vprintk", align 4
@trace_check_vprintf.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@trace_no_verify = internal global %struct.static_key_false zeroinitializer, align 4
@static_fmt_buf = internal global [128 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@trace_check_vprintf.__already_done.26 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"fmt: '%s' current_buffer: '%s'\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"(0x%px)\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"(0x%px:%s)\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"[UNSAFE-MEMORY]\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@trace_event_format.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@static_temp_buf = internal global [128 x i8] zeroinitializer, align 4
@trace_find_next_entry.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"# %s latency trace v1.1.5 on %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"5.17.0\00", align 1
@.str.35 = private unnamed_addr constant [72 x i8] c"# --------------------------------------------------------------------\0A\00", align 1
@.str.36 = private unnamed_addr constant [70 x i8] c"# latency: %lu us, #%lu/%lu, CPU#%d | (M:%s VP:%d, KP:%d, SP:%d HP:%d\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c" #P:%d)\0A\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"#    -----------------\0A\00", align 1
@.str.40 = private unnamed_addr constant [64 x i8] c"#    | task: %.16s-%d (uid:%d nice:%ld policy:%ld rt_prio:%ld)\0A\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"#  => started at: \00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"\0A#  => ended at:   \00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"\0A#\0A\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"#\0A\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"CPU:%d [LOST EVENTS]\0A\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"CPU:%d [LOST %lu EVENTS]\0A\00", align 1
@tgid_map = internal global ptr null, align 4
@pid_max = external dso_local local_unnamed_addr global i32, align 4
@tgid_map_max = internal unnamed_addr global i32 0, align 4
@.str.47 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@trace_options = internal global [26 x ptr] [ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr null], align 4
@ring_buffer_expanded = dso_local local_unnamed_addr global i8 0, align 1
@trace_buf_size = internal unnamed_addr global i32 1441792, align 4
@system_state = external dso_local local_unnamed_addr global i32, align 4
@.str.48 = private unnamed_addr constant [55 x i8] c"\014Tracer '%s' is not allowed on command line, ignored\0A\00", align 1
@nop_trace = external dso_local global %struct.tracer, align 4
@tracing_set_filter_buffering.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@trace_min_max_fops = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr null, ptr @trace_min_max_read, ptr @trace_min_max_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tracing_open_generic, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tracing_err_log_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tracing_err_log_lock, i64 12), ptr getelementptr (i8, ptr @tracing_err_log_lock, i64 12) } }, align 4
@.str.49 = private unnamed_addr constant [12 x i8] c"%s: error: \00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"\0A  Command: %s\0A\00", align 1
@.str.51 = private unnamed_addr constant [39 x i8] c"\014Could not create tracefs '%s' entry\0A\00", align 1
@__kstrtab_trace_array_get_by_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_array_get_by_name = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_array_get_by_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_array_get_by_name to i32), ptr @__kstrtab_trace_array_get_by_name, ptr @__kstrtabns_trace_array_get_by_name }, section "___ksymtab_gpl+trace_array_get_by_name", align 4
@__kstrtab_trace_array_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_array_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_array_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_array_destroy to i32), ptr @__kstrtab_trace_array_destroy, ptr @__kstrtabns_trace_array_destroy }, section "___ksymtab_gpl+trace_array_destroy", align 4
@.str.53 = private unnamed_addr constant [8 x i8] c"tracing\00", align 1
@__initcall__kmod_trace__293_9600_trace_eval_sync7s = internal global ptr @trace_eval_sync, section ".initcall7s.init", align 4
@__initcall__kmod_trace__294_9724_tracer_init_tracefs5 = internal global ptr @tracer_init_tracefs, section ".initcall5.init", align 4
@trace_printk_seq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"\010%s\00", align 1
@ftrace_dump.iter = internal global %struct.trace_iterator zeroinitializer, align 8
@ftrace_dump.dump_running = internal global %struct.atomic_t zeroinitializer, align 4
@.str.55 = private unnamed_addr constant [48 x i8] c"\010Bad dumping mode, switching to all CPUs dump\0A\00", align 1
@.str.56 = private unnamed_addr constant [26 x i8] c"\010Dumping ftrace buffer:\0A\00", align 1
@.str.59 = private unnamed_addr constant [37 x i8] c"\010---------------------------------\0A\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"\010   (ftrace buffer empty)\0A\00", align 1
@__kstrtab_ftrace_dump = external dso_local constant [0 x i8], align 1
@__kstrtabns_ftrace_dump = external dso_local constant [0 x i8], align 1
@__ksymtab_ftrace_dump = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ftrace_dump to i32), ptr @__kstrtab_ftrace_dump, ptr @__kstrtabns_ftrace_dump }, section "___ksymtab_gpl+ftrace_dump", align 4
@.str.61 = private unnamed_addr constant [51 x i8] c"\014Line length is too long: Should be less than %d\0A\00", align 1
@early_trace_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.62 = private unnamed_addr constant [44 x i8] c"\013ERROR: Failed to allocate trace iterator\0A\00", align 1
@__initcall__kmod_trace__296_10195_late_trace_init7s = internal global ptr @late_trace_init, section ".initcall7s.init", align 4
@tracing_selftest_disabled = dso_local local_unnamed_addr global i8 0, section ".data..read_mostly", align 1
@ftrace_dump_on_oops = dso_local local_unnamed_addr global i32 0, align 4
@tracing_thresh = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@bootup_tracer_buf = internal global [100 x i8] zeroinitializer, section ".init.data", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"orig_cpu\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"=0\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"=off\00", align 1
@trace_boot_options_buf = internal global [100 x i8] zeroinitializer, section ".init.data", align 1
@trace_boot_clock_buf = internal global [100 x i8] zeroinitializer, section ".init.data", align 1
@trace_boot_clock = internal unnamed_addr global ptr null, section ".init.data", align 4
@tracepoint_printk_stop_on_boot = internal unnamed_addr global i1 false, section ".init.data", align 1
@trace_marker_exports_enabled = internal global %struct.static_key_false zeroinitializer, align 4
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.68 = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1
@.str.69 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_slow_inc = private unnamed_addr constant [20 x i8] c"static_key_slow_inc\00", align 1
@__func__.static_key_slow_dec = private unnamed_addr constant [20 x i8] c"static_key_slow_dec\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"counter\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"uptime\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"perf\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"mono_raw\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"boot\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.78 = private unnamed_addr constant [7 x i8] c"<idle>\00", align 1
@__trace_find_cmdline.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"<XXX>\00", align 1
@savedcmd = internal unnamed_addr global ptr null, align 4
@.str.80 = private unnamed_addr constant [6 x i8] c"<...>\00", align 1
@__func__.static_key_enable = private unnamed_addr constant [18 x i8] c"static_key_enable\00", align 1
@static_key_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.static_key_disable = private unnamed_addr constant [19 x i8] c"static_key_disable\00", align 1
@static_key_disable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@output_printk.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tracepoint_iter_lock = internal global %struct.spinlock zeroinitializer, align 4
@event_kernel_stack = external dso_local local_unnamed_addr global %struct.trace_event_call, align 4
@ftrace_stack_reserve = internal global i32 0, section ".data..percpu", align 4
@__ftrace_trace_stack.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ftrace_stacks = internal global %struct.ftrace_stacks zeroinitializer, section ".data..percpu", align 4
@trace_percpu_buffer = internal unnamed_addr global ptr null, align 4
@alloc_percpu_trace_buffer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.83 = private unnamed_addr constant [55 x i8] c"\013ERROR: Could not allocate percpu trace_printk buffer\00", align 1
@event_print = external dso_local local_unnamed_addr global %struct.trace_event_call, align 4
@__start_rodata = external dso_local global [0 x i8], align 1
@__end_rodata = external dso_local global [0 x i8], align 1
@.str.84 = private unnamed_addr constant [24 x i8] c"include/linux/seq_buf.h\00", align 1
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@.str.85 = private unnamed_addr constant [12 x i8] c"%d %d %llu \00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"%d ?\0A\00", align 1
@.str.87 = private unnamed_addr constant [17 x i8] c"Unknown type %d\0A\00", align 1
@.str.88 = private unnamed_addr constant [34 x i8] c"##### CPU %u buffer started ####\0A\00", align 1
@.str.89 = private unnamed_addr constant [435 x i8] c"#                    _------=> CPU#            \0A#                   / _-----=> irqs-off/BH-disabled\0A#                  | / _----=> need-resched    \0A#                  || / _---=> hardirq/softirq \0A#                  ||| / _--=> preempt-depth   \0A#                  |||| / _-=> migrate-disable \0A#                  ||||| /     delay           \0A#  cmd     pid     |||||| time  |   caller     \0A#     \\   /        ||||||  \\    |    /       \0A\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"            \00", align 1
@.str.91 = private unnamed_addr constant [66 x i8] c"#                            %.*s  _-----=> irqs-off/BH-disabled\0A\00", align 1
@.str.92 = private unnamed_addr constant [58 x i8] c"#                            %.*s / _----=> need-resched\0A\00", align 1
@.str.93 = private unnamed_addr constant [61 x i8] c"#                            %.*s| / _---=> hardirq/softirq\0A\00", align 1
@.str.94 = private unnamed_addr constant [59 x i8] c"#                            %.*s|| / _--=> preempt-depth\0A\00", align 1
@.str.95 = private unnamed_addr constant [61 x i8] c"#                            %.*s||| / _-=> migrate-disable\0A\00", align 1
@.str.96 = private unnamed_addr constant [51 x i8] c"#                            %.*s|||| /     delay\0A\00", align 1
@.str.97 = private unnamed_addr constant [61 x i8] c"#           TASK-PID  %.*s CPU#  |||||  TIMESTAMP  FUNCTION\0A\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"     TGID   \00", align 1
@.str.99 = private unnamed_addr constant [56 x i8] c"#              | |    %.*s   |   |||||     |         |\0A\00", align 1
@.str.100 = private unnamed_addr constant [13 x i8] c"       |    \00", align 1
@.str.101 = private unnamed_addr constant [54 x i8] c"# entries-in-buffer/entries-written: %lu/%lu   #P:%d\0A\00", align 1
@.str.102 = private unnamed_addr constant [57 x i8] c"#           TASK-PID    %s CPU#     TIMESTAMP  FUNCTION\0A\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"   TGID   \00", align 1
@.str.104 = private unnamed_addr constant [52 x i8] c"#              | |      %s   |         |         |\0A\00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c"     |    \00", align 1
@.str.106 = private unnamed_addr constant [13 x i8] c"print-parent\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"sym-offset\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"sym-addr\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@.str.112 = private unnamed_addr constant [4 x i8] c"bin\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.114 = private unnamed_addr constant [13 x i8] c"trace_printk\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"annotate\00", align 1
@.str.116 = private unnamed_addr constant [15 x i8] c"userstacktrace\00", align 1
@.str.117 = private unnamed_addr constant [12 x i8] c"sym-userobj\00", align 1
@.str.118 = private unnamed_addr constant [16 x i8] c"printk-msg-only\00", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"context-info\00", align 1
@.str.120 = private unnamed_addr constant [15 x i8] c"latency-format\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"record-cmd\00", align 1
@.str.122 = private unnamed_addr constant [12 x i8] c"record-tgid\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"overwrite\00", align 1
@.str.124 = private unnamed_addr constant [16 x i8] c"disable_on_free\00", align 1
@.str.125 = private unnamed_addr constant [9 x i8] c"irq-info\00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"markers\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"event-fork\00", align 1
@.str.128 = private unnamed_addr constant [15 x i8] c"pause-on-trace\00", align 1
@.str.129 = private unnamed_addr constant [9 x i8] c"hash-ptr\00", align 1
@.str.130 = private unnamed_addr constant [11 x i8] c"stacktrace\00", align 1
@.str.131 = private unnamed_addr constant [2 x i8] c",\00", align 1
@create_trace_option_files.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@create_trace_option_files.__already_done.132 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.133 = private unnamed_addr constant [43 x i8] c"\013ERROR: Failed to create trace option: %s\00", align 1
@trace_options_fops = internal constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @trace_options_read, ptr @trace_options_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tracing_open_generic, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.134 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.135 = private unnamed_addr constant [48 x i8] c"\014Could not create tracefs directory 'options'\0A\00", align 1
@.str.136 = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@.str.137 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@.str.138 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@cpu_all_bits = external dso_local local_unnamed_addr constant [1 x i32], align 4
@trace_instance_dir = internal unnamed_addr global ptr null, align 4
@allocate_trace_buffer.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.139 = private unnamed_addr constant [18 x i8] c"available_tracers\00", align 1
@show_traces_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @show_traces_open, ptr null, ptr @show_traces_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.140 = private unnamed_addr constant [15 x i8] c"current_tracer\00", align 1
@set_tracer_fops = internal constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tracing_set_trace_read, ptr @tracing_set_trace_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tracing_open_generic, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.141 = private unnamed_addr constant [16 x i8] c"tracing_cpumask\00", align 1
@tracing_cpumask_fops = internal constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tracing_cpumask_read, ptr @tracing_cpumask_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tracing_open_generic_tr, ptr null, ptr @tracing_release_generic_tr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.142 = private unnamed_addr constant [14 x i8] c"trace_options\00", align 1
@tracing_iter_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @tracing_trace_options_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tracing_trace_options_open, ptr null, ptr @tracing_single_release_tr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.143 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@tracing_fops = internal constant %struct.file_operations { ptr null, ptr @tracing_lseek, ptr @seq_read, ptr @tracing_write_stub, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tracing_open, ptr null, ptr @tracing_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.144 = private unnamed_addr constant [11 x i8] c"trace_pipe\00", align 1
@tracing_pipe_fops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @tracing_read_pipe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tracing_poll_pipe, ptr null, ptr null, ptr null, i32 0, ptr @tracing_open_pipe, ptr null, ptr @tracing_release_pipe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tracing_splice_read_pipe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.145 = private unnamed_addr constant [15 x i8] c"buffer_size_kb\00", align 1
@tracing_entries_fops = internal constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tracing_entries_read, ptr @tracing_entries_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tracing_open_generic_tr, ptr null, ptr @tracing_release_generic_tr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.146 = private unnamed_addr constant [21 x i8] c"buffer_total_size_kb\00", align 1
@tracing_total_entries_fops = internal constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tracing_total_entries_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tracing_open_generic_tr, ptr null, ptr @tracing_release_generic_tr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.147 = private unnamed_addr constant [12 x i8] c"free_buffer\00", align 1
@tracing_free_buffer_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr null, ptr @tracing_free_buffer_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tracing_open_generic_tr, ptr null, ptr @tracing_free_buffer_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.148 = private unnamed_addr constant [13 x i8] c"trace_marker\00", align 1
@tracing_mark_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr null, ptr @tracing_mark_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tracing_mark_open, ptr null, ptr @tracing_release_generic_tr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.149 = private unnamed_addr constant [7 x i8] c"ftrace\00", align 1
@.str.150 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.151 = private unnamed_addr constant [8 x i8] c"trigger\00", align 1
@event_trigger_fops = external dso_local constant %struct.file_operations, align 4
@.str.152 = private unnamed_addr constant [17 x i8] c"trace_marker_raw\00", align 1
@tracing_mark_raw_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr null, ptr @tracing_mark_raw_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tracing_mark_open, ptr null, ptr @tracing_release_generic_tr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.153 = private unnamed_addr constant [12 x i8] c"trace_clock\00", align 1
@trace_clock_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @tracing_clock_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tracing_clock_open, ptr null, ptr @tracing_single_release_tr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.154 = private unnamed_addr constant [11 x i8] c"tracing_on\00", align 1
@rb_simple_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @rb_simple_read, ptr @rb_simple_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tracing_open_generic_tr, ptr null, ptr @tracing_release_generic_tr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.155 = private unnamed_addr constant [15 x i8] c"timestamp_mode\00", align 1
@trace_time_stamp_mode_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tracing_time_stamp_mode_open, ptr null, ptr @tracing_single_release_tr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.156 = private unnamed_addr constant [15 x i8] c"buffer_percent\00", align 1
@buffer_percent_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @buffer_percent_read, ptr @buffer_percent_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tracing_open_generic_tr, ptr null, ptr @tracing_release_generic_tr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.158 = private unnamed_addr constant [10 x i8] c"error_log\00", align 1
@tracing_err_log_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @tracing_err_log_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tracing_err_log_open, ptr null, ptr @tracing_err_log_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@show_traces_seq_ops = internal constant %struct.seq_operations { ptr @t_start, ptr @t_stop, ptr @t_next, ptr @t_show }, align 4
@.str.159 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.160 = private unnamed_addr constant [6 x i8] c"%*pb\0A\00", align 1
@.str.161 = private unnamed_addr constant [6 x i8] c"no%s\0A\00", align 1
@tracer_seq_ops = internal constant %struct.seq_operations { ptr @s_start, ptr @s_stop, ptr @s_next, ptr @s_show }, align 4
@__tracing_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.162 = private unnamed_addr constant [13 x i8] c"&iter->mutex\00", align 1
@all_cpu_access_lock = internal global %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @all_cpu_access_lock, i64 16), ptr getelementptr (i8, ptr @all_cpu_access_lock, i64 16) } }, align 4
@cpu_access_lock = internal global %struct.mutex zeroinitializer, section ".data..percpu", align 4
@s_next.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.163 = private unnamed_addr constant [14 x i8] c"# tracer: %s\0A\00", align 1
@tracing_start_tr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tracing_read_pipe.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.165 = private unnamed_addr constant [32 x i8] c"full flag set for trace type %d\00", align 1
@tracing_open_pipe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@default_pipe_buf_ops = external dso_local constant %struct.pipe_buf_operations, align 4
@.str.166 = private unnamed_addr constant [21 x i8] c"%lu (expanded: %lu)\0A\00", align 1
@.str.167 = private unnamed_addr constant [3 x i8] c"X\0A\00", align 1
@.str.168 = private unnamed_addr constant [10 x i8] c"<faulted>\00", align 1
@.str.169 = private unnamed_addr constant [9 x i8] c"%s%s%s%s\00", align 1
@.str.170 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.171 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.172 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.173 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.174 = private unnamed_addr constant [18 x i8] c"delta [absolute]\0A\00", align 1
@.str.175 = private unnamed_addr constant [18 x i8] c"[delta] absolute\0A\00", align 1
@trace_options_core_fops = internal constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @trace_options_core_read, ptr @trace_options_core_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tracing_open_generic, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tracing_err_log_seq_ops = internal constant %struct.seq_operations { ptr @tracing_err_log_seq_start, ptr @tracing_err_log_seq_stop, ptr @tracing_err_log_seq_next, ptr @tracing_err_log_seq_show }, align 4
@.str.176 = private unnamed_addr constant [18 x i8] c"[%5llu.%06u] %s%s\00", align 1
@.str.177 = private unnamed_addr constant [3 x i8] c"^\0A\00", align 1
@.str.178 = private unnamed_addr constant [7 x i8] c"cpu%ld\00", align 1
@.str.179 = private unnamed_addr constant [15 x i8] c"trace_pipe_raw\00", align 1
@tracing_buffers_fops = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr @tracing_buffers_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tracing_buffers_poll, ptr null, ptr null, ptr null, i32 0, ptr @tracing_buffers_open, ptr null, ptr @tracing_buffers_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tracing_buffers_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.180 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@tracing_stats_fops = internal constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tracing_stats_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tracing_open_generic_tr, ptr null, ptr @tracing_release_generic_tr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.181 = private unnamed_addr constant [8 x i8] c"per_cpu\00", align 1
@tracing_dentry_percpu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.182 = private unnamed_addr constant [58 x i8] c"\013ERROR: Could not create tracefs directory 'per_cpu/%d'\0A\00", align 1
@buffer_pipe_buf_ops = internal constant %struct.pipe_buf_operations { ptr null, ptr @buffer_pipe_buf_release, ptr null, ptr @buffer_pipe_buf_get }, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.185 = private unnamed_addr constant [14 x i8] c"entries: %ld\0A\00", align 1
@.str.186 = private unnamed_addr constant [14 x i8] c"overrun: %ld\0A\00", align 1
@.str.187 = private unnamed_addr constant [21 x i8] c"commit overrun: %ld\0A\00", align 1
@.str.188 = private unnamed_addr constant [12 x i8] c"bytes: %ld\0A\00", align 1
@.str.189 = private unnamed_addr constant [30 x i8] c"oldest event ts: %5llu.%06lu\0A\00", align 1
@.str.190 = private unnamed_addr constant [21 x i8] c"now ts: %5llu.%06lu\0A\00", align 1
@.str.191 = private unnamed_addr constant [23 x i8] c"oldest event ts: %llu\0A\00", align 1
@.str.192 = private unnamed_addr constant [14 x i8] c"now ts: %llu\0A\00", align 1
@.str.193 = private unnamed_addr constant [21 x i8] c"dropped events: %ld\0A\00", align 1
@.str.194 = private unnamed_addr constant [18 x i8] c"read events: %ld\0A\00", align 1
@.str.195 = private unnamed_addr constant [8 x i8] c"tracefs\00", align 1
@eval_map_wq = internal unnamed_addr global ptr null, section ".init.data", align 4
@.str.196 = private unnamed_addr constant [15 x i8] c"tracing_thresh\00", align 1
@tracing_thresh_fops = internal constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tracing_thresh_read, ptr @tracing_thresh_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tracing_open_generic, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.197 = private unnamed_addr constant [7 x i8] c"README\00", align 1
@tracing_readme_fops = internal constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @tracing_readme_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tracing_open_generic, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.198 = private unnamed_addr constant [15 x i8] c"saved_cmdlines\00", align 1
@tracing_saved_cmdlines_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tracing_saved_cmdlines_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.199 = private unnamed_addr constant [20 x i8] c"saved_cmdlines_size\00", align 1
@tracing_saved_cmdlines_size_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr @tracing_saved_cmdlines_size_read, ptr @tracing_saved_cmdlines_size_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tracing_open_generic, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.200 = private unnamed_addr constant [12 x i8] c"saved_tgids\00", align 1
@tracing_saved_tgids_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tracing_saved_tgids_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@trace_module_nb = internal global %struct.notifier_block { ptr @trace_module_notify, ptr null, i32 0 }, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@trace_access_lock_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.201 = private unnamed_addr constant [31 x i8] c"&per_cpu(cpu_access_lock, cpu)\00", align 1
@.str.202 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@readme_msg = internal constant [4395 x i8] c"tracing mini-HOWTO:\0A\0A# echo 0 > tracing_on : quick way to disable tracing\0A# echo 1 > tracing_on : quick way to re-enable tracing\0A\0A Important files:\0A  trace\09\09\09- The static contents of the buffer\0A\09\09\09  To clear the buffer write into this file: echo > trace\0A  trace_pipe\09\09- A consuming read to see the contents of the buffer\0A  current_tracer\09- function and latency tracers\0A  available_tracers\09- list of configured tracers for current_tracer\0A  error_log\09- error log for failed commands (that support it)\0A  buffer_size_kb\09- view and modify size of per cpu buffer\0A  buffer_total_size_kb  - view total size of all cpu buffers\0A\0A  trace_clock\09\09-change the clock used to order events\0A       local:   Per cpu clock but may not be synced across CPUs\0A      global:   Synced across CPUs but slows tracing down.\0A     counter:   Not a clock, but just an increment\0A      uptime:   Jiffy counter from time of boot\0A        perf:   Same clock that perf events use\0A\0A  timestamp_mode\09-view the mode used to timestamp events\0A       delta:   Delta difference against a buffer-wide timestamp\0A    absolute:   Absolute (standalone) timestamp\0A\0A  trace_marker\09\09- Writes into this file writes into the kernel buffer\0A\0A  trace_marker_raw\09\09- Writes into this file writes binary data into the kernel buffer\0A  tracing_cpumask\09- Limit which CPUs to trace\0A  instances\09\09- Make sub-buffers with: mkdir instances/foo\0A\09\09\09  Remove sub-buffer with rmdir\0A  trace_options\09\09- Set format or modify how tracing happens\0A\09\09\09  Disable an option by prefixing 'no' to the\0A\09\09\09  option name\0A  saved_cmdlines_size\09- echo command number in here to store comm-pid list\0A  dynamic_events\09\09- Create/append/remove/show the generic dynamic events\0A\09\09\09  Write into this file to define/undefine new trace events.\0A  uprobe_events\09\09- Create/append/remove/show the userspace dynamic events\0A\09\09\09  Write into this file to define/undefine new trace events.\0A\09  accepts: event-definitions (one definition per line)\0A\09   Format: p[:[<group>/]<event>] <place> [<args>]\0A\09           r[maxactive][:[<group>/]<event>] <place> [<args>]\0A\09           e[:[<group>/]<event>] <attached-group>.<attached-event> [<args>]\0A\09           -:[<group>/]<event>\0A   place (uprobe): <path>:<offset>[%return][(ref_ctr_offset)]\0A\09     args: <name>=fetcharg[:type]\0A\09 fetcharg: (%<register>|$<efield>), @<address>, @<symbol>[+|-<offset>],\0A\09           $stack<index>, $stack, $retval, $comm,\0A\09           +|-[u]<offset>(<fetcharg>), \\imm-value, \\\22imm-string\22\0A\09     type: s8/16/32/64, u8/16/32/64, x8/16/32/64, string, symbol,\0A\09           b<bit-width>@<bit-offset>/<container-size>, ustring,\0A\09           <type>\\[<array-size>\\]\0A\09    efield: For event probes ('e' types), the field is on of the fields\0A\09            of the <attached-group>/<attached-event>.\0A  events/\09\09- Directory containing all trace event subsystems:\0A      enable\09\09- Write 0/1 to enable/disable tracing of all events\0A  events/<system>/\09- Directory containing all trace events for <system>:\0A      enable\09\09- Write 0/1 to enable/disable tracing of all <system>\0A\09\09\09  events\0A      filter\09\09- If set, only events passing filter are traced\0A  events/<system>/<event>/\09- Directory containing control files for\0A\09\09\09  <event>:\0A      enable\09\09- Write 0/1 to enable/disable tracing of <event>\0A      filter\09\09- If set, only events passing filter are traced\0A      trigger\09\09- If set, a command to perform when event is hit\0A\09    Format: <trigger>[:count][if <filter>]\0A\09   trigger: traceon, traceoff\0A\09            enable_event:<system>:<event>\0A\09            disable_event:<system>:<event>\0A\09\09    stacktrace\0A\09   example: echo traceoff > events/block/block_unplug/trigger\0A\09            echo traceoff:3 > events/block/block_unplug/trigger\0A\09            echo 'enable_event:kmem:kmalloc:3 if nr_rq > 1' > \\\0A\09                  events/block/block_unplug/trigger\0A\09   The first disables tracing every time block_unplug is hit.\0A\09   The second disables tracing the first 3 times block_unplug is hit.\0A\09   The third enables the kmalloc event the first 3 times block_unplug\0A\09     is hit and has value of greater than 1 for the 'nr_rq' event field.\0A\09   Like function triggers, the counter is only decremented if it\0A\09    enabled or disabled tracing.\0A\09   To remove a trigger without a count:\0A\09     echo '!<trigger> > <system>/<event>/trigger\0A\09   To remove a trigger with a count:\0A\09     echo '!<trigger>:0 > <system>/<event>/trigger\0A\09   Filters can be ignored when removing a trigger.\0A\00", align 1
@tracing_saved_cmdlines_seq_ops = internal constant %struct.seq_operations { ptr @saved_cmdlines_start, ptr @saved_cmdlines_stop, ptr @saved_cmdlines_next, ptr @saved_cmdlines_show }, align 4
@.str.203 = private unnamed_addr constant [7 x i8] c"%d %s\0A\00", align 1
@.str.204 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@tracing_saved_tgids_seq_ops = internal constant %struct.seq_operations { ptr @saved_tgids_start, ptr @saved_tgids_stop, ptr @saved_tgids_next, ptr @saved_tgids_show }, align 4
@.str.205 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@eval_map_work = internal global %struct.work_struct zeroinitializer, section ".init.data", align 4
@.str.206 = private unnamed_addr constant [12 x i8] c"eval_map_wq\00", align 1
@.str.207 = private unnamed_addr constant [34 x i8] c"\013Unable to allocate eval_map_wq\0A\00", align 1
@__stop_ftrace_eval_maps = external dso_local global [0 x ptr], align 4
@__start_ftrace_eval_maps = external dso_local global [0 x ptr], align 4
@.str.208 = private unnamed_addr constant [10 x i8] c"instances\00", align 1
@create_trace_instances.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.209 = private unnamed_addr constant [47 x i8] c"\013ERROR: Failed to create instances directory\0A\00", align 1
@create_trace_instances.__already_done.210 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.211 = private unnamed_addr constant [46 x i8] c"\013ERROR: Failed to create instance directory\0A\00", align 1
@__stop___trace_bprintk_fmt = external dso_local global [0 x ptr], align 4
@__start___trace_bprintk_fmt = external dso_local global [0 x ptr], align 4
@.str.212 = private unnamed_addr constant [17 x i8] c"trace/RB:preapre\00", align 1
@tracer_alloc_buffers.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@tracer_alloc_buffers.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.213 = private unnamed_addr constant [50 x i8] c"\013ERROR: tracer: failed to allocate ring buffer!\0A\00", align 1
@.str.214 = private unnamed_addr constant [53 x i8] c"\014Trace clock %s not defined, going back to default\0A\00", align 1
@panic_notifier_list = external dso_local global %struct.atomic_notifier_head, align 4
@trace_panic_notifier = internal global %struct.notifier_block { ptr @trace_panic_handler, ptr null, i32 150 }, align 4
@trace_die_notifier = internal global %struct.notifier_block { ptr @trace_die_handler, ptr null, i32 200 }, align 4
@.str.216 = private unnamed_addr constant [40 x i8] c"\016trace event string verifier disabled\0A\00", align 1
@.str.217 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.218 = private unnamed_addr constant [45 x i8] c"\016ftrace bootup tracer '%s' not registered.\0A\00", align 1
@llvm.compiler.used = appending global [40 x ptr] [ptr @__initcall__kmod_trace__293_9600_trace_eval_sync7s, ptr @__initcall__kmod_trace__294_9724_tracer_init_tracefs5, ptr @__initcall__kmod_trace__296_10195_late_trace_init7s, ptr @__ksymtab___trace_bputs, ptr @__ksymtab___trace_puts, ptr @__ksymtab_ftrace_dump, ptr @__ksymtab_register_ftrace_export, ptr @__ksymtab_trace_array_destroy, ptr @__ksymtab_trace_array_get_by_name, ptr @__ksymtab_trace_array_init_printk, ptr @__ksymtab_trace_array_printk, ptr @__ksymtab_trace_array_put, ptr @__ksymtab_trace_dump_stack, ptr @__ksymtab_trace_event_buffer_commit, ptr @__ksymtab_trace_event_buffer_lock_reserve, ptr @__ksymtab_trace_handle_return, ptr @__ksymtab_trace_printk_init_buffers, ptr @__ksymtab_trace_vbprintk, ptr @__ksymtab_trace_vprintk, ptr @__ksymtab_tracing_alloc_snapshot, ptr @__ksymtab_tracing_cond_snapshot_data, ptr @__ksymtab_tracing_is_on, ptr @__ksymtab_tracing_off, ptr @__ksymtab_tracing_on, ptr @__ksymtab_tracing_snapshot, ptr @__ksymtab_tracing_snapshot_alloc, ptr @__ksymtab_tracing_snapshot_cond, ptr @__ksymtab_tracing_snapshot_cond_disable, ptr @__ksymtab_tracing_snapshot_cond_enable, ptr @__ksymtab_unregister_ftrace_export, ptr @__setup_boot_alloc_snapshot, ptr @__setup_set_buf_size, ptr @__setup_set_cmdline_ftrace, ptr @__setup_set_ftrace_dump_on_oops, ptr @__setup_set_trace_boot_clock, ptr @__setup_set_trace_boot_options, ptr @__setup_set_tracepoint_printk, ptr @__setup_set_tracepoint_printk_stop, ptr @__setup_set_tracing_thresh, ptr @__setup_stop_trace_on_warning], section "llvm.metadata"

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @set_cmdline_ftrace(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 @strlcpy(ptr noundef nonnull @bootup_tracer_buf, ptr noundef %0, i32 noundef 100) #34
  store ptr @bootup_tracer_buf, ptr @default_bootup_tracer, align 4
  store i8 1, ptr @ring_buffer_expanded, align 1
  ret i32 1
}

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @set_ftrace_dump_on_oops(ptr nocapture noundef readonly %0) #1 section ".init.text" {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  %4 = icmp eq i8 %3, 61
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = load i8, ptr %2, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(2) @.str.63, ptr noundef %2)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.64, ptr noundef %2)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(2) @.str.65, ptr noundef %2)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %11, %8, %5, %1
  %18 = phi i32 [ 1, %8 ], [ 1, %5 ], [ 1, %1 ], [ 2, %14 ], [ 2, %11 ]
  store i32 %18, ptr @ftrace_dump_on_oops, align 4
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi i32 [ 0, %14 ], [ 1, %17 ]
  ret i32 %20
}

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @stop_trace_on_warning(ptr nocapture noundef readonly %0) #1 section ".init.text" {
  %2 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(3) @.str.66)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(5) @.str.67)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  store i32 1, ptr @__disable_trace_on_warning, align 4
  br label %8

8:                                                ; preds = %7, %4, %1
  ret i32 1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @boot_alloc_snapshot(ptr nocapture noundef readnone %0) #2 section ".init.text" {
  store i8 1, ptr @ring_buffer_expanded, align 1
  ret i32 1
}

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @set_trace_boot_options(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 @strlcpy(ptr noundef nonnull @trace_boot_options_buf, ptr noundef %0, i32 noundef 100) #34
  ret i32 1
}

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @set_trace_boot_clock(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 @strlcpy(ptr noundef nonnull @trace_boot_clock_buf, ptr noundef %0, i32 noundef 100) #34
  store ptr @trace_boot_clock_buf, ptr @trace_boot_clock, align 4
  ret i32 1
}

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @set_tracepoint_printk(ptr nocapture noundef readonly %0) #1 section ".init.text" {
  %2 = load i8, ptr %0, align 1
  %3 = icmp eq i8 %2, 95
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(3) @.str.66)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(5) @.str.67)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  store i32 1, ptr @tracepoint_printk, align 4
  br label %11

11:                                               ; preds = %10, %7, %4, %1
  %12 = phi i32 [ 0, %1 ], [ 1, %10 ], [ 1, %7 ], [ 1, %4 ]
  ret i32 %12
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @set_tracepoint_printk_stop(ptr nocapture noundef readnone %0) #2 section ".init.text" {
  store i1 true, ptr @tracepoint_printk_stop_on_boot, align 1
  ret i32 1
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local i64 @ns2usecs(i64 noundef %0) local_unnamed_addr #3 {
  %2 = add i64 %0, 500
  %3 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %2, i32 0) #35, !srcloc !9
  %4 = extractvalue { i64, i32 } %3, 0
  %5 = extractvalue { i64, i32 } %3, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %2, i64 %4, i32 %5) #35, !srcloc !10
  %7 = extractvalue { i64, i32 } %6, 0
  %8 = lshr i64 %7, 9
  ret i64 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_ftrace_export(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.trace_export, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  %5 = load i1, ptr @register_ftrace_export.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %1
  store i1 true, ptr @register_ftrace_export.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 391, i32 noundef 9, ptr noundef null) #34
  br label %9

9:                                                ; preds = %8, %1
  br i1 %4, label %45, label %10

10:                                               ; preds = %9
  tail call void @mutex_lock(ptr noundef nonnull @ftrace_export_lock) #34
  %11 = getelementptr inbounds %struct.trace_export, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = load i8, ptr @static_key_initialized, align 1, !range !12
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %19, !prof !11

18:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 290, i32 noundef 9, ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.static_key_slow_inc, ptr noundef nonnull @trace_function_exports_enabled) #34
  br label %19

19:                                               ; preds = %18, %15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @trace_function_exports_enabled) #34, !srcloc !13
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @trace_function_exports_enabled, ptr nonnull @trace_function_exports_enabled, i32 1, ptr nonnull elementtype(i32) @trace_function_exports_enabled) #34, !srcloc !14
  %21 = load i32, ptr %11, align 4
  br label %22

22:                                               ; preds = %19, %10
  %23 = phi i32 [ %21, %19 ], [ %12, %10 ]
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load i8, ptr @static_key_initialized, align 1, !range !12
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %30, !prof !11

29:                                               ; preds = %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 290, i32 noundef 9, ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.static_key_slow_inc, ptr noundef nonnull @trace_event_exports_enabled) #34
  br label %30

30:                                               ; preds = %29, %26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @trace_event_exports_enabled) #34, !srcloc !13
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @trace_event_exports_enabled, ptr nonnull @trace_event_exports_enabled, i32 1, ptr nonnull elementtype(i32) @trace_event_exports_enabled) #34, !srcloc !14
  %32 = load i32, ptr %11, align 4
  br label %33

33:                                               ; preds = %30, %22
  %34 = phi i32 [ %32, %30 ], [ %23, %22 ]
  %35 = and i32 %34, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = load i8, ptr @static_key_initialized, align 1, !range !12
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %41, !prof !11

40:                                               ; preds = %37
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 290, i32 noundef 9, ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.static_key_slow_inc, ptr noundef nonnull @trace_marker_exports_enabled) #34
  br label %41

41:                                               ; preds = %40, %37
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @trace_marker_exports_enabled) #34, !srcloc !13
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @trace_marker_exports_enabled, ptr nonnull @trace_marker_exports_enabled, i32 1, ptr nonnull elementtype(i32) @trace_marker_exports_enabled) #34, !srcloc !14
  br label %43

43:                                               ; preds = %41, %33
  %44 = load ptr, ptr @ftrace_exports_list, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !15
  store volatile ptr %44, ptr %0, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !16
  store volatile ptr %0, ptr @ftrace_exports_list, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ftrace_export_lock) #34
  br label %45

45:                                               ; preds = %43, %9
  %46 = phi i32 [ 0, %43 ], [ -1, %9 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unregister_ftrace_export(ptr noundef readonly %0) #5 {
  tail call void @mutex_lock(ptr noundef nonnull @ftrace_export_lock) #34
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ @ftrace_exports_list, %1 ], [ %4, %2 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = icmp eq ptr %4, %0
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %2

8:                                                ; preds = %2
  br i1 %6, label %9, label %11

9:                                                ; preds = %8
  %10 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !17
  store volatile ptr %10, ptr %3, align 4
  br label %11

11:                                               ; preds = %9, %8
  %12 = phi i32 [ 0, %9 ], [ -1, %8 ]
  %13 = getelementptr inbounds %struct.trace_export, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %11
  %18 = load i8, ptr @static_key_initialized, align 1, !range !12
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21, !prof !11

20:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 296, i32 noundef 9, ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.static_key_slow_dec, ptr noundef nonnull @trace_function_exports_enabled) #34
  br label %21

21:                                               ; preds = %20, %17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @trace_function_exports_enabled) #34, !srcloc !13
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @trace_function_exports_enabled, ptr nonnull @trace_function_exports_enabled, i32 1, ptr nonnull elementtype(i32) @trace_function_exports_enabled) #34, !srcloc !18
  %23 = load i32, ptr %13, align 4
  br label %24

24:                                               ; preds = %21, %11
  %25 = phi i32 [ %23, %21 ], [ %14, %11 ]
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = load i8, ptr @static_key_initialized, align 1, !range !12
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %32, !prof !11

31:                                               ; preds = %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 296, i32 noundef 9, ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.static_key_slow_dec, ptr noundef nonnull @trace_event_exports_enabled) #34
  br label %32

32:                                               ; preds = %31, %28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @trace_event_exports_enabled) #34, !srcloc !13
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @trace_event_exports_enabled, ptr nonnull @trace_event_exports_enabled, i32 1, ptr nonnull elementtype(i32) @trace_event_exports_enabled) #34, !srcloc !18
  %34 = load i32, ptr %13, align 4
  br label %35

35:                                               ; preds = %32, %24
  %36 = phi i32 [ %34, %32 ], [ %25, %24 ]
  %37 = and i32 %36, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = load i8, ptr @static_key_initialized, align 1, !range !12
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %43, !prof !11

42:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 296, i32 noundef 9, ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.static_key_slow_dec, ptr noundef nonnull @trace_marker_exports_enabled) #34
  br label %43

43:                                               ; preds = %42, %39
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @trace_marker_exports_enabled) #34, !srcloc !13
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @trace_marker_exports_enabled, ptr nonnull @trace_marker_exports_enabled, i32 1, ptr nonnull elementtype(i32) @trace_marker_exports_enabled) #34, !srcloc !18
  br label %45

45:                                               ; preds = %43, %35
  tail call void @mutex_unlock(ptr noundef nonnull @ftrace_export_lock) #34
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_array_get(ptr noundef readnone %0) local_unnamed_addr #5 {
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @ftrace_trace_arrays, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @ftrace_trace_arrays
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %4, %0
  br i1 %7, label %8, label %2

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 28
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 4
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i32 [ 0, %8 ], [ -19, %2 ]
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_array_put(ptr noundef %0) #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %4 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 28
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9, !prof !11

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 465, i32 noundef 9, ptr noundef null) #34
  %8 = load i32, ptr %4, align 4
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %8, %7 ], [ %5, %3 ]
  %11 = add i32 %10, -1
  store i32 %11, ptr %4, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %12

12:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tracing_check_open_get_tr(ptr noundef %0) local_unnamed_addr #5 {
  %2 = load i1, ptr @tracing_disabled, align 4
  br i1 %2, label %3, label %18

3:                                                ; preds = %1
  %4 = icmp eq ptr %0, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  br label %6

6:                                                ; preds = %10, %5
  %7 = phi ptr [ @ftrace_trace_arrays, %5 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @ftrace_trace_arrays
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = icmp eq ptr %8, %0
  br i1 %11, label %12, label %6

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 28
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  br label %16

16:                                               ; preds = %12, %6
  %17 = phi i32 [ 0, %12 ], [ -19, %6 ]
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %18

18:                                               ; preds = %16, %3, %1
  %19 = phi i32 [ -19, %1 ], [ 0, %3 ], [ %17, %16 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @call_filter_check_discard(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9, !prof !19

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @filter_match_preds(ptr noundef %11, ptr noundef %1) #34
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call fastcc void @__trace_event_discard_commit(ptr noundef %2, ptr noundef %3)
  br label %15

15:                                               ; preds = %14, %9, %4
  %16 = phi i32 [ 1, %14 ], [ 0, %9 ], [ 0, %4 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filter_match_preds(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__trace_event_discard_commit(ptr noundef %0, ptr noundef %1) unnamed_addr #7 {
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !20
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #26, !srcloc !21
  %6 = add i32 %5, ptrtoint (ptr @trace_buffered_event to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = load volatile ptr, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !22
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #34, !srcloc !23
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #26, !srcloc !21
  %15 = add i32 %14, ptrtoint (ptr @trace_buffered_event_cnt to i32)
  %16 = inttoptr i32 %15 to ptr
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, -1
  store i32 %18, ptr %16, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #34, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !25
  br label %20

19:                                               ; preds = %2
  tail call void @ring_buffer_discard_commit(ptr noundef %0, ptr noundef %1) #34
  br label %20

20:                                               ; preds = %19, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @trace_find_filtered_pid(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = tail call zeroext i1 @trace_pid_list_is_set(ptr noundef %0, i32 noundef %1) #34
  ret i1 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @trace_pid_list_is_set(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @trace_ignore_this_task(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 52
  %7 = load i32, ptr %6, align 8
  %8 = tail call zeroext i1 @trace_pid_list_is_set(ptr noundef nonnull %0, i32 noundef %7) #34
  br i1 %8, label %9, label %15

9:                                                ; preds = %5, %3
  %10 = icmp eq ptr %1, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 52
  %13 = load i32, ptr %12, align 8
  %14 = tail call zeroext i1 @trace_pid_list_is_set(ptr noundef nonnull %1, i32 noundef %13) #34
  br label %15

15:                                               ; preds = %11, %9, %5
  %16 = phi i1 [ true, %5 ], [ false, %9 ], [ %14, %11 ]
  ret i1 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_filter_add_remove_task(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %1, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %9 = load i32, ptr %8, align 8
  %10 = tail call zeroext i1 @trace_pid_list_is_set(ptr noundef nonnull %0, i32 noundef %9) #34
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 52
  %13 = load i32, ptr %12, align 8
  %14 = tail call i32 @trace_pid_list_set(ptr noundef nonnull %0, i32 noundef %13) #34
  br label %19

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 52
  %17 = load i32, ptr %16, align 8
  %18 = tail call i32 @trace_pid_list_clear(ptr noundef nonnull %0, i32 noundef %17) #34
  br label %19

19:                                               ; preds = %15, %11, %7, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_pid_list_set(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_pid_list_clear(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @trace_pid_next(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #5 {
  %4 = alloca i32, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #34
  store i32 0, ptr %4, align 4, !annotation !26
  %6 = load i64, ptr %2, align 8
  %7 = add i64 %6, 1
  store i64 %7, ptr %2, align 8
  %8 = call i32 @trace_pid_list_next(ptr noundef %0, i32 noundef %5, ptr noundef nonnull %4) #34
  %9 = icmp slt i32 %8, 0
  %10 = load i32, ptr %4, align 4
  %11 = add i32 %10, 1
  %12 = inttoptr i32 %11 to ptr
  %13 = select i1 %9, ptr null, ptr %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #34
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_pid_list_next(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @trace_pid_start(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #34
  store i32 0, ptr %4, align 4, !annotation !26
  %5 = call i32 @trace_pid_list_first(ptr noundef %0, ptr noundef nonnull %4) #34
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %4, align 4
  %9 = add i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %16, %7
  %12 = phi i32 [ %21, %16 ], [ %9, %7 ]
  %13 = phi i64 [ %17, %16 ], [ 0, %7 ]
  %14 = load i64, ptr %1, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #34
  store i32 0, ptr %3, align 4, !annotation !26
  %17 = add nuw nsw i64 %13, 1
  %18 = call i32 @trace_pid_list_next(ptr noundef %0, i32 noundef %12, ptr noundef nonnull %3) #34
  %19 = icmp slt i32 %18, 0
  %20 = load i32, ptr %3, align 4
  %21 = add i32 %20, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #34
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %19, i1 true, i1 %22
  br i1 %23, label %24, label %11

24:                                               ; preds = %16, %11, %7
  %25 = phi i32 [ 0, %7 ], [ 0, %16 ], [ %12, %11 ]
  %26 = inttoptr i32 %25 to ptr
  br label %27

27:                                               ; preds = %24, %2
  %28 = phi ptr [ %26, %24 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #34
  ret ptr %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_pid_list_first(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_pid_show(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = ptrtoint ptr %1 to i32
  %4 = add i32 %3, -1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %4) #34
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_pid_write(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = alloca %struct.trace_parser, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #34
  store i32 0, ptr %6, align 4, !annotation !26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #34
  store i32 0, ptr %8, align 4, !annotation !26
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 12, i1 false) #34
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 128) #36
  %11 = getelementptr inbounds %struct.trace_parser, ptr %5, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %80, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.trace_parser, ptr %5, i32 0, i32 3
  store i32 128, ptr %14, align 4
  %15 = tail call ptr @trace_pid_list_alloc() #34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void @kfree(ptr noundef nonnull %10) #34
  br label %80

18:                                               ; preds = %13
  %19 = icmp eq ptr %0, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %18
  %21 = call i32 @trace_pid_list_first(ptr noundef nonnull %0, ptr noundef nonnull %8) #34
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %23, %20
  %24 = phi i32 [ %30, %23 ], [ 0, %20 ]
  %25 = load i32, ptr %8, align 4
  %26 = call i32 @trace_pid_list_set(ptr noundef nonnull %15, i32 noundef %25) #34
  %27 = load i32, ptr %8, align 4
  %28 = add i32 %27, 1
  %29 = call i32 @trace_pid_list_next(ptr noundef nonnull %0, i32 noundef %28, ptr noundef nonnull %8) #34
  %30 = add i32 %24, 1
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %23, label %32

32:                                               ; preds = %23, %20, %18
  %33 = phi i32 [ 0, %18 ], [ 0, %20 ], [ %30, %23 ]
  %34 = getelementptr inbounds %struct.trace_parser, ptr %5, i32 0, i32 2
  %35 = icmp eq i32 %3, 0
  br i1 %35, label %62, label %36

36:                                               ; preds = %57, %32
  %37 = phi i32 [ %47, %57 ], [ 0, %32 ]
  %38 = phi i32 [ %58, %57 ], [ %33, %32 ]
  %39 = phi i32 [ %49, %57 ], [ %3, %32 ]
  %40 = phi ptr [ %48, %57 ], [ %2, %32 ]
  store i64 0, ptr %7, align 8
  %41 = call i32 @trace_get_user(ptr noundef nonnull %5, ptr noundef %40, i32 noundef %39, ptr noundef nonnull %7)
  %42 = icmp slt i32 %41, 0
  %43 = load i32, ptr %34, align 4
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %42, i1 true, i1 %44
  br i1 %45, label %66, label %46

46:                                               ; preds = %36
  %47 = add i32 %41, %37
  %48 = getelementptr i8, ptr %40, i32 %41
  %49 = sub i32 %39, %41
  %50 = load ptr, ptr %11, align 4
  %51 = call i32 @_kstrtoul(ptr noundef %50, i32 noundef 0, ptr noundef nonnull %6) #34
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load i32, ptr %6, align 4
  store i32 %54, ptr %8, align 4
  %55 = call i32 @trace_pid_list_set(ptr noundef nonnull %15, i32 noundef %54) #34
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = add i32 %38, 1
  store i8 0, ptr %5, align 4
  store i32 0, ptr %34, align 4
  %59 = icmp eq i32 %49, 0
  br i1 %59, label %62, label %36

60:                                               ; preds = %53, %46
  %61 = phi i32 [ -22, %46 ], [ -1, %53 ]
  call void @kfree(ptr noundef %50) #34
  br label %69

62:                                               ; preds = %57, %32
  %63 = phi ptr [ %10, %32 ], [ %50, %57 ]
  %64 = phi i32 [ %33, %32 ], [ %58, %57 ]
  %65 = phi i32 [ 0, %32 ], [ %47, %57 ]
  call void @kfree(ptr noundef %63) #34
  br label %71

66:                                               ; preds = %36
  %67 = load ptr, ptr %11, align 4
  call void @kfree(ptr noundef %67) #34
  %68 = icmp slt i32 %41, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66, %60
  %70 = phi i32 [ %61, %60 ], [ %41, %66 ]
  call void @trace_pid_list_free(ptr noundef nonnull %15) #34
  br label %80

71:                                               ; preds = %66, %62
  %72 = phi i32 [ 0, %62 ], [ %41, %66 ]
  %73 = phi i32 [ %65, %62 ], [ %37, %66 ]
  %74 = phi i32 [ %64, %62 ], [ %38, %66 ]
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  call void @trace_pid_list_free(ptr noundef nonnull %15) #34
  br label %77

77:                                               ; preds = %76, %71
  %78 = phi ptr [ %15, %71 ], [ null, %76 ]
  %79 = phi i32 [ %73, %71 ], [ %72, %76 ]
  store ptr %78, ptr %1, align 4
  br label %80

80:                                               ; preds = %77, %69, %17, %4
  %81 = phi i32 [ %70, %69 ], [ %79, %77 ], [ -12, %17 ], [ -12, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #34
  ret i32 %81
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_parser_get_init(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #5 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %0, i8 0, i32 16, i1 false)
  %3 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %1, i32 noundef 3264) #37
  %4 = getelementptr inbounds %struct.trace_parser, ptr %0, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = icmp eq ptr %3, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.trace_parser, ptr %0, i32 0, i32 3
  store i32 %1, ptr %7, align 4
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ 0, %6 ], [ 1, %2 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_pid_list_alloc() local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_parser_put(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.trace_parser, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #34
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_get_user(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #5 {
  %5 = load i64, ptr %3, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  store i8 0, ptr %0, align 4
  %8 = getelementptr inbounds %struct.trace_parser, ptr %0, i32 0, i32 2
  store i32 0, ptr %8, align 4
  br label %9

9:                                                ; preds = %7, %4
  %10 = tail call ptr @llvm.thread.pointer() #34
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #26, !srcloc !27
  %13 = and i32 %12, -13
  %14 = or i32 %13, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #34, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #34, !srcloc !29
  %15 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %1, i32 -1090519041) #34, !srcloc !30
  %16 = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #34, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #34, !srcloc !29
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %158

18:                                               ; preds = %9
  %19 = extractvalue { i32, i32 } %15, 1
  %20 = trunc i32 %19 to i8
  %21 = getelementptr i8, ptr %1, i32 1
  %22 = add i32 %2, -1
  %23 = load i8, ptr %0, align 4, !range !12
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %71

25:                                               ; preds = %18
  %26 = icmp eq i32 %22, 0
  br i1 %26, label %54, label %27

27:                                               ; preds = %44, %25
  %28 = phi ptr [ %47, %44 ], [ %21, %25 ]
  %29 = phi i32 [ %49, %44 ], [ %22, %25 ]
  %30 = phi i8 [ %46, %44 ], [ %20, %25 ]
  %31 = phi i32 [ %48, %44 ], [ 1, %25 ]
  %32 = zext i8 %30 to i32
  %33 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %32
  %34 = load i8, ptr %33, align 1
  %35 = and i8 %34, 32
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %27
  %38 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #26, !srcloc !27
  %39 = and i32 %38, -13
  %40 = or i32 %39, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #34, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #34, !srcloc !29
  %41 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %28, i32 -1090519041) #34, !srcloc !31
  %42 = extractvalue { i32, i32 } %41, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #34, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #34, !srcloc !29
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %156

44:                                               ; preds = %37
  %45 = extractvalue { i32, i32 } %41, 1
  %46 = trunc i32 %45 to i8
  %47 = getelementptr i8, ptr %28, i32 1
  %48 = add i32 %31, 1
  %49 = add i32 %29, -1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %27

51:                                               ; preds = %44
  %52 = extractvalue { i32, i32 } %41, 1
  %53 = trunc i32 %52 to i8
  br label %54

54:                                               ; preds = %51, %27, %25
  %55 = phi i32 [ 1, %25 ], [ %2, %51 ], [ %31, %27 ]
  %56 = phi i8 [ %20, %25 ], [ %53, %51 ], [ %30, %27 ]
  %57 = phi i32 [ 0, %25 ], [ 0, %51 ], [ %29, %27 ]
  %58 = phi ptr [ %21, %25 ], [ %47, %51 ], [ %28, %27 ]
  %59 = getelementptr inbounds %struct.trace_parser, ptr %0, i32 0, i32 2
  store i32 0, ptr %59, align 4
  %60 = zext i8 %56 to i32
  %61 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %60
  %62 = load i8, ptr %61, align 1
  %63 = and i8 %62, 32
  %64 = icmp eq i8 %63, 0
  %65 = icmp ne i8 %56, 0
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %71, label %67

67:                                               ; preds = %54
  %68 = zext i32 %55 to i64
  %69 = load i64, ptr %3, align 8
  %70 = add i64 %69, %68
  store i64 %70, ptr %3, align 8
  br label %158

71:                                               ; preds = %54, %18
  %72 = phi i32 [ 1, %18 ], [ %55, %54 ]
  %73 = phi i8 [ %20, %18 ], [ %56, %54 ]
  %74 = phi i32 [ %22, %18 ], [ %57, %54 ]
  %75 = phi ptr [ %21, %18 ], [ %58, %54 ]
  %76 = icmp eq i32 %74, 0
  br i1 %76, label %119, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.trace_parser, ptr %0, i32 0, i32 2
  %79 = getelementptr inbounds %struct.trace_parser, ptr %0, i32 0, i32 3
  %80 = getelementptr inbounds %struct.trace_parser, ptr %0, i32 0, i32 1
  %81 = add i32 %74, %72
  br label %82

82:                                               ; preds = %109, %77
  %83 = phi ptr [ %75, %77 ], [ %112, %109 ]
  %84 = phi i32 [ %74, %77 ], [ %114, %109 ]
  %85 = phi i8 [ %73, %77 ], [ %111, %109 ]
  %86 = phi i32 [ %72, %77 ], [ %113, %109 ]
  %87 = zext i8 %85 to i32
  %88 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %87
  %89 = load i8, ptr %88, align 1
  %90 = and i8 %89, 32
  %91 = icmp eq i8 %90, 0
  %92 = icmp ne i8 %85, 0
  %93 = select i1 %91, i1 %92, i1 false
  br i1 %93, label %94, label %119

94:                                               ; preds = %82
  %95 = load i32, ptr %78, align 4
  %96 = load i32, ptr %79, align 4
  %97 = add i32 %96, -1
  %98 = icmp ult i32 %95, %97
  br i1 %98, label %99, label %158

99:                                               ; preds = %94
  %100 = load ptr, ptr %80, align 4
  %101 = add nuw i32 %95, 1
  store i32 %101, ptr %78, align 4
  %102 = getelementptr i8, ptr %100, i32 %95
  store i8 %85, ptr %102, align 1
  %103 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #26, !srcloc !27
  %104 = and i32 %103, -13
  %105 = or i32 %104, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %105) #34, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #34, !srcloc !29
  %106 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %83, i32 -1090519041) #34, !srcloc !32
  %107 = extractvalue { i32, i32 } %106, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %103) #34, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #34, !srcloc !29
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %154

109:                                              ; preds = %99
  %110 = extractvalue { i32, i32 } %106, 1
  %111 = trunc i32 %110 to i8
  %112 = getelementptr i8, ptr %83, i32 1
  %113 = add i32 %86, 1
  %114 = add i32 %84, -1
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %82

116:                                              ; preds = %109
  %117 = extractvalue { i32, i32 } %106, 1
  %118 = trunc i32 %117 to i8
  br label %119

119:                                              ; preds = %116, %82, %71
  %120 = phi i32 [ %72, %71 ], [ %81, %116 ], [ %86, %82 ]
  %121 = phi i8 [ %73, %71 ], [ %118, %116 ], [ %85, %82 ]
  %122 = zext i8 %121 to i32
  %123 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %122
  %124 = load i8, ptr %123, align 1
  %125 = and i8 %124, 32
  %126 = icmp eq i8 %125, 0
  %127 = icmp ne i8 %121, 0
  %128 = select i1 %126, i1 %127, i1 false
  br i1 %128, label %135, label %129

129:                                              ; preds = %119
  %130 = getelementptr inbounds %struct.trace_parser, ptr %0, i32 0, i32 1
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.trace_parser, ptr %0, i32 0, i32 2
  %133 = load i32, ptr %132, align 4
  %134 = getelementptr i8, ptr %131, i32 %133
  store i8 0, ptr %134, align 1
  store i8 0, ptr %0, align 4
  br label %150

135:                                              ; preds = %119
  %136 = getelementptr inbounds %struct.trace_parser, ptr %0, i32 0, i32 2
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr inbounds %struct.trace_parser, ptr %0, i32 0, i32 3
  %139 = load i32, ptr %138, align 4
  %140 = add i32 %139, -1
  %141 = icmp ult i32 %137, %140
  br i1 %141, label %142, label %158

142:                                              ; preds = %135
  store i8 1, ptr %0, align 4
  %143 = getelementptr inbounds %struct.trace_parser, ptr %0, i32 0, i32 1
  %144 = load ptr, ptr %143, align 4
  %145 = add nuw i32 %137, 1
  store i32 %145, ptr %136, align 4
  %146 = getelementptr i8, ptr %144, i32 %137
  store i8 %121, ptr %146, align 1
  %147 = load ptr, ptr %143, align 4
  %148 = load i32, ptr %136, align 4
  %149 = getelementptr i8, ptr %147, i32 %148
  store i8 0, ptr %149, align 1
  br label %150

150:                                              ; preds = %142, %129
  %151 = zext i32 %120 to i64
  %152 = load i64, ptr %3, align 8
  %153 = add i64 %152, %151
  store i64 %153, ptr %3, align 8
  br label %158

154:                                              ; preds = %99
  %155 = extractvalue { i32, i32 } %106, 0
  br label %158

156:                                              ; preds = %37
  %157 = extractvalue { i32, i32 } %41, 0
  br label %158

158:                                              ; preds = %156, %154, %150, %135, %94, %67, %9
  %159 = phi i32 [ %16, %9 ], [ %120, %150 ], [ %55, %67 ], [ -22, %135 ], [ %157, %156 ], [ %155, %154 ], [ -22, %94 ]
  ret i32 %159
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_pid_list_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ftrace_now(i32 noundef %0) local_unnamed_addr #5 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #34
  %3 = load ptr, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 2, i32 1), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i64 @trace_clock_local() #34
  br label %11

7:                                                ; preds = %1
  %8 = tail call i64 @ring_buffer_time_stamp(ptr noundef nonnull %3) #34
  store i64 %8, ptr %2, align 8
  %9 = load ptr, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 2, i32 1), align 4
  call void @ring_buffer_normalize_time_stamp(ptr noundef %9, i32 noundef %0, ptr noundef nonnull %2) #34
  %10 = load i64, ptr %2, align 8
  br label %11

11:                                               ; preds = %7, %5
  %12 = phi i64 [ %10, %7 ], [ %6, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #34
  ret i64 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tracing_is_enabled() local_unnamed_addr #5 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !33
  %1 = load i32, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 6), align 4
  %2 = icmp eq i32 %1, 0
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tracer_tracing_on(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @ring_buffer_record_on(ptr noundef nonnull %3) #34
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 6
  store i32 0, ptr %7, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #34, !srcloc !34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_buffer_record_on(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tracing_on() #5 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 2, i32 1), align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @ring_buffer_record_on(ptr noundef nonnull %1) #34
  br label %4

4:                                                ; preds = %3, %0
  store i32 0, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 6), align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #34, !srcloc !34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__trace_puts(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #5 {
  %4 = load i32, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 14), align 4
  %5 = and i32 %4, 256
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %110, label %7

7:                                                ; preds = %3
  %8 = load i1, ptr @tracing_selftest_running, align 1
  %9 = load i1, ptr @tracing_disabled, align 4
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 true, i1 %10, !prof !11
  br i1 %11, label %110, label %12, !prof !11

12:                                               ; preds = %7
  %13 = add i32 %2, 14
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #34, !srcloc !35
  %15 = lshr i32 %14, 7
  %16 = and i32 %15, 1
  %17 = tail call ptr @llvm.thread.pointer() #34
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 15728640
  %21 = icmp eq i32 %20, 0
  %22 = or i32 %16, 64
  %23 = select i1 %21, i32 %16, i32 %22
  %24 = and i32 %19, 983040
  %25 = icmp eq i32 %24, 0
  %26 = or i32 %23, 8
  %27 = select i1 %25, i32 %23, i32 %26
  %28 = load volatile i32, ptr %18, align 4
  %29 = lshr i32 %28, 4
  %30 = and i32 %29, 16
  %31 = or i32 %27, %30
  %32 = load volatile i32, ptr %18, align 4
  %33 = and i32 %32, 65024
  %34 = icmp eq i32 %33, 0
  %35 = or i32 %31, 128
  %36 = select i1 %34, i32 %31, i32 %35
  %37 = load volatile i32, ptr %17, align 4
  %38 = shl i32 %37, 1
  %39 = and i32 %38, 4
  %40 = or i32 %36, %39
  %41 = shl i32 %40, 16
  %42 = and i32 %19, 255
  %43 = tail call i32 @llvm.umin.i32(i32 %42, i32 15) #34
  %44 = or i32 %41, %43
  %45 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 31
  %46 = load i16, ptr %45, align 8
  %47 = tail call i16 @llvm.umin.i16(i16 %46, i16 15) #34
  %48 = shl nuw nsw i16 %47, 4
  %49 = zext i16 %48 to i32
  %50 = or i32 %44, %49
  %51 = load ptr, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 2, i32 1), align 4
  tail call void @ring_buffer_nest_start(ptr noundef %51) #34
  %52 = tail call ptr @ring_buffer_lock_reserve(ptr noundef %51, i32 noundef %13) #34
  %53 = icmp eq ptr %52, null
  br i1 %53, label %108, label %54

54:                                               ; preds = %12
  %55 = tail call ptr @ring_buffer_event_data(ptr noundef nonnull %52) #34
  %56 = trunc i32 %50 to i8
  %57 = getelementptr inbounds %struct.trace_entry, ptr %55, i32 0, i32 2
  store i8 %56, ptr %57, align 1
  %58 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 52
  %59 = load i32, ptr %58, align 8
  %60 = getelementptr inbounds %struct.trace_entry, ptr %55, i32 0, i32 3
  store i32 %59, ptr %60, align 4
  store i16 5, ptr %55, align 4
  %61 = trunc i32 %40 to i8
  %62 = getelementptr inbounds %struct.trace_entry, ptr %55, i32 0, i32 1
  store i8 %61, ptr %62, align 2
  %63 = tail call ptr @ring_buffer_event_data(ptr noundef nonnull %52) #34
  %64 = getelementptr inbounds %struct.print_entry, ptr %63, i32 0, i32 1
  store i32 %0, ptr %64, align 4
  %65 = getelementptr inbounds %struct.print_entry, ptr %63, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %65, ptr align 1 %1, i32 %2, i1 false)
  %66 = add i32 %2, -1
  %67 = getelementptr %struct.print_entry, ptr %63, i32 0, i32 2, i32 %66
  %68 = load i8, ptr %67, align 1
  %69 = icmp eq i8 %68, 10
  br i1 %69, label %73, label %70

70:                                               ; preds = %54
  %71 = add i32 %2, 1
  %72 = getelementptr %struct.print_entry, ptr %63, i32 0, i32 2, i32 %71
  store i8 0, ptr %72, align 1
  br label %73

73:                                               ; preds = %70, %54
  %74 = phi i8 [ 10, %70 ], [ 0, %54 ]
  %75 = getelementptr %struct.print_entry, ptr %63, i32 0, i32 2, i32 %2
  store i8 %74, ptr %75, align 1
  %76 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %77 = inttoptr i32 %76 to ptr
  %78 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %77) #26, !srcloc !21
  %79 = add i32 %78, ptrtoint (ptr @trace_taskinfo_save to i32)
  %80 = inttoptr i32 %79 to ptr
  store i8 1, ptr %80, align 1
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !36
  %81 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %82 = inttoptr i32 %81 to ptr
  %83 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %82) #26, !srcloc !21
  %84 = add i32 %83, ptrtoint (ptr @trace_buffered_event to i32)
  %85 = inttoptr i32 %84 to ptr
  %86 = load volatile ptr, ptr %85, align 4
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !37
  %87 = icmp eq ptr %86, %52
  br i1 %87, label %88, label %101

88:                                               ; preds = %73
  %89 = getelementptr inbounds %struct.ring_buffer_event, ptr %52, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr %struct.ring_buffer_event, ptr %52, i32 2
  %92 = tail call i32 @ring_buffer_write(ptr noundef %51, i32 noundef %90, ptr noundef %91) #34
  %93 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #34, !srcloc !23
  %94 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %95 = inttoptr i32 %94 to ptr
  %96 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %95) #26, !srcloc !21
  %97 = add i32 %96, ptrtoint (ptr @trace_buffered_event_cnt to i32)
  %98 = inttoptr i32 %97 to ptr
  %99 = load i32, ptr %98, align 4
  %100 = add i32 %99, -1
  store i32 %100, ptr %98, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %93) #34, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !38
  br label %103

101:                                              ; preds = %73
  %102 = tail call i32 @ring_buffer_unlock_commit(ptr noundef %51, ptr noundef nonnull %52) #34
  br label %103

103:                                              ; preds = %101, %88
  %104 = load i32, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 14), align 4
  %105 = and i32 %104, 16777216
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  tail call fastcc void @__ftrace_trace_stack(ptr noundef %51, i32 noundef %50, i32 noundef 4, ptr noundef null) #34
  br label %108

108:                                              ; preds = %107, %103, %12
  %109 = phi i32 [ %2, %103 ], [ %2, %107 ], [ 0, %12 ]
  tail call void @ring_buffer_nest_end(ptr noundef %51) #34
  br label %110

110:                                              ; preds = %108, %7, %3
  %111 = phi i32 [ %109, %108 ], [ 0, %3 ], [ 0, %7 ]
  ret i32 %111
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_buffer_nest_start(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ring_buffer_event_data(ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_buffer_nest_end(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__trace_bputs(i32 noundef %0, ptr noundef %1) #5 {
  %3 = load i32, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 14), align 4
  %4 = and i32 %3, 256
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %98, label %6

6:                                                ; preds = %2
  %7 = load i1, ptr @tracing_selftest_running, align 1
  %8 = load i1, ptr @tracing_disabled, align 4
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 true, i1 %9, !prof !11
  br i1 %10, label %98, label %11, !prof !11

11:                                               ; preds = %6
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #34, !srcloc !35
  %13 = lshr i32 %12, 7
  %14 = and i32 %13, 1
  %15 = tail call ptr @llvm.thread.pointer() #34
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 15728640
  %19 = icmp eq i32 %18, 0
  %20 = or i32 %14, 64
  %21 = select i1 %19, i32 %14, i32 %20
  %22 = and i32 %17, 983040
  %23 = icmp eq i32 %22, 0
  %24 = or i32 %21, 8
  %25 = select i1 %23, i32 %21, i32 %24
  %26 = load volatile i32, ptr %16, align 4
  %27 = lshr i32 %26, 4
  %28 = and i32 %27, 16
  %29 = or i32 %25, %28
  %30 = load volatile i32, ptr %16, align 4
  %31 = and i32 %30, 65024
  %32 = icmp eq i32 %31, 0
  %33 = or i32 %29, 128
  %34 = select i1 %32, i32 %29, i32 %33
  %35 = load volatile i32, ptr %15, align 4
  %36 = shl i32 %35, 1
  %37 = and i32 %36, 4
  %38 = or i32 %34, %37
  %39 = shl i32 %38, 16
  %40 = and i32 %17, 255
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 15) #34
  %42 = or i32 %39, %41
  %43 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 31
  %44 = load i16, ptr %43, align 8
  %45 = tail call i16 @llvm.umin.i16(i16 %44, i16 15) #34
  %46 = shl nuw nsw i16 %45, 4
  %47 = zext i16 %46 to i32
  %48 = or i32 %42, %47
  %49 = load ptr, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 2, i32 1), align 4
  tail call void @ring_buffer_nest_start(ptr noundef %49) #34
  %50 = tail call ptr @ring_buffer_lock_reserve(ptr noundef %49, i32 noundef 16) #34
  %51 = icmp eq ptr %50, null
  br i1 %51, label %96, label %52

52:                                               ; preds = %11
  %53 = tail call ptr @ring_buffer_event_data(ptr noundef nonnull %50) #34
  %54 = trunc i32 %48 to i8
  %55 = getelementptr inbounds %struct.trace_entry, ptr %53, i32 0, i32 2
  store i8 %54, ptr %55, align 1
  %56 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 52
  %57 = load i32, ptr %56, align 8
  %58 = getelementptr inbounds %struct.trace_entry, ptr %53, i32 0, i32 3
  store i32 %57, ptr %58, align 4
  store i16 14, ptr %53, align 4
  %59 = trunc i32 %38 to i8
  %60 = getelementptr inbounds %struct.trace_entry, ptr %53, i32 0, i32 1
  store i8 %59, ptr %60, align 2
  %61 = tail call ptr @ring_buffer_event_data(ptr noundef nonnull %50) #34
  %62 = getelementptr inbounds %struct.bputs_entry, ptr %61, i32 0, i32 1
  store i32 %0, ptr %62, align 4
  %63 = getelementptr inbounds %struct.bputs_entry, ptr %61, i32 0, i32 2
  store ptr %1, ptr %63, align 4
  %64 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %65 = inttoptr i32 %64 to ptr
  %66 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %65) #26, !srcloc !21
  %67 = add i32 %66, ptrtoint (ptr @trace_taskinfo_save to i32)
  %68 = inttoptr i32 %67 to ptr
  store i8 1, ptr %68, align 1
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !36
  %69 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %70 = inttoptr i32 %69 to ptr
  %71 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %70) #26, !srcloc !21
  %72 = add i32 %71, ptrtoint (ptr @trace_buffered_event to i32)
  %73 = inttoptr i32 %72 to ptr
  %74 = load volatile ptr, ptr %73, align 4
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !37
  %75 = icmp eq ptr %74, %50
  br i1 %75, label %76, label %89

76:                                               ; preds = %52
  %77 = getelementptr inbounds %struct.ring_buffer_event, ptr %50, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr %struct.ring_buffer_event, ptr %50, i32 2
  %80 = tail call i32 @ring_buffer_write(ptr noundef %49, i32 noundef %78, ptr noundef %79) #34
  %81 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #34, !srcloc !23
  %82 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %83 = inttoptr i32 %82 to ptr
  %84 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %83) #26, !srcloc !21
  %85 = add i32 %84, ptrtoint (ptr @trace_buffered_event_cnt to i32)
  %86 = inttoptr i32 %85 to ptr
  %87 = load i32, ptr %86, align 4
  %88 = add i32 %87, -1
  store i32 %88, ptr %86, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %81) #34, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !38
  br label %91

89:                                               ; preds = %52
  %90 = tail call i32 @ring_buffer_unlock_commit(ptr noundef %49, ptr noundef nonnull %50) #34
  br label %91

91:                                               ; preds = %89, %76
  %92 = load i32, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 14), align 4
  %93 = and i32 %92, 16777216
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  tail call fastcc void @__ftrace_trace_stack(ptr noundef %49, i32 noundef %48, i32 noundef 4, ptr noundef null) #34
  br label %96

96:                                               ; preds = %95, %91, %11
  %97 = phi i32 [ 1, %91 ], [ 1, %95 ], [ 0, %11 ]
  tail call void @ring_buffer_nest_end(ptr noundef %49) #34
  br label %98

98:                                               ; preds = %96, %6, %2
  %99 = phi i32 [ %97, %96 ], [ 0, %2 ], [ 0, %6 ]
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tracing_snapshot() #5 {
  %1 = load i1, ptr @tracing_snapshot.__already_done, align 1
  br i1 %1, label %3, label %2, !prof !19

2:                                                ; preds = %0
  store i1 true, ptr @tracing_snapshot.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1371, i32 noundef 9, ptr noundef nonnull @.str.2) #34
  br label %3

3:                                                ; preds = %2, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tracing_snapshot_cond(ptr nocapture readnone %0, ptr nocapture readnone %1) #5 {
  %3 = load i1, ptr @tracing_snapshot_cond.__already_done, align 1
  br i1 %3, label %5, label %4, !prof !19

4:                                                ; preds = %2
  store i1 true, ptr @tracing_snapshot_cond.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1376, i32 noundef 9, ptr noundef nonnull @.str.3) #34
  br label %5

5:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tracing_alloc_snapshot() #5 {
  %1 = load i1, ptr @tracing_alloc_snapshot.__already_done, align 1
  br i1 %1, label %3, label %2, !prof !19

2:                                                ; preds = %0
  store i1 true, ptr @tracing_alloc_snapshot.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1381, i32 noundef 9, ptr noundef nonnull @.str.4) #34
  br label %3

3:                                                ; preds = %2, %0
  ret i32 -19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tracing_snapshot_alloc() #5 {
  %1 = load i1, ptr @tracing_snapshot.__already_done, align 1
  br i1 %1, label %3, label %2, !prof !19

2:                                                ; preds = %0
  store i1 true, ptr @tracing_snapshot.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1371, i32 noundef 9, ptr noundef nonnull @.str.2) #34
  br label %3

3:                                                ; preds = %2, %0
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local noalias ptr @tracing_cond_snapshot_data(ptr nocapture readnone %0) #10 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @tracing_snapshot_cond_enable(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #10 {
  ret i32 -19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @tracing_snapshot_cond_disable(ptr nocapture readnone %0) #10 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tracer_tracing_off(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @ring_buffer_record_off(ptr noundef nonnull %3) #34
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 6
  store i32 1, ptr %7, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #34, !srcloc !39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_buffer_record_off(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tracing_off() #5 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 2, i32 1), align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @ring_buffer_record_off(ptr noundef nonnull %1) #34
  br label %4

4:                                                ; preds = %3, %0
  store i32 1, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 6), align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #34, !srcloc !39
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @disable_trace_on_warning() #5 {
  %1 = load i32, ptr @__disable_trace_on_warning, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %10, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 2, i32 1), align 4
  %5 = tail call i32 (ptr, i32, ptr, ...) @trace_array_printk_buf(ptr noundef %4, i32 noundef ptrtoint (ptr blockaddress(@disable_trace_on_warning, %3) to i32), ptr noundef nonnull @.str.5)
  %6 = load ptr, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 2, i32 1), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @ring_buffer_record_off(ptr noundef nonnull %6) #34
  br label %9

9:                                                ; preds = %8, %3
  store i32 1, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 6), align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #34, !srcloc !39
  br label %10

10:                                               ; preds = %9, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_array_printk_buf(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #5 {
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #34
  store i32 0, ptr %4, align 4, !annotation !26
  %5 = load i32, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 14), align 4
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  call void @llvm.va_start(ptr nonnull %4)
  %9 = load i32, ptr %4, align 4
  %10 = insertvalue [1 x i32] poison, i32 %9, 0
  %11 = call fastcc i32 @__trace_array_vprintk(ptr noundef %0, i32 noundef %1, ptr noundef %2, [1 x i32] %10)
  call void @llvm.va_end(ptr nonnull %4)
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i32 [ %11, %8 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #34
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @tracer_tracing_is_on(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call zeroext i1 @ring_buffer_record_is_on(ptr noundef nonnull %3) #34
  br label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br label %11

11:                                               ; preds = %7, %5
  %12 = phi i1 [ %6, %5 ], [ %10, %7 ]
  ret i1 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ring_buffer_record_is_on(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tracing_is_on() #5 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 2, i32 1), align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call zeroext i1 @ring_buffer_record_is_on(ptr noundef nonnull %1) #34
  br label %8

5:                                                ; preds = %0
  %6 = load i32, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 6), align 4
  %7 = icmp eq i32 %6, 0
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i1 [ %4, %3 ], [ %7, %5 ]
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @set_buf_size(ptr noundef %0) #11 section ".init.text" {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = call i64 @memparse(ptr noundef nonnull %0, ptr noundef nonnull %2) #34
  %6 = trunc i64 %5 to i32
  %7 = call i32 @llvm.umax.i32(i32 %6, i32 4096)
  store i32 %7, ptr @trace_buf_size, align 4
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ 1, %4 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @set_tracing_thresh(ptr noundef %0) #11 section ".init.text" {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #34
  store i32 0, ptr %2, align 4, !annotation !26
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = call i32 @_kstrtoul(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %2) #34
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr %2, align 4
  %9 = mul i32 %8, 1000
  store i32 %9, ptr @tracing_thresh, align 4
  br label %10

10:                                               ; preds = %7, %4, %1
  %11 = phi i32 [ 1, %7 ], [ 0, %1 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #34
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @nsecs_to_usecs(i32 noundef %0) local_unnamed_addr #10 {
  %2 = udiv i32 %0, 1000
  ret i32 %2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @trace_clock_in_ns(ptr nocapture noundef readonly %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1073741822
  %5 = icmp ne i32 %4, 2
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @register_tracer(ptr noundef %0) local_unnamed_addr #11 section ".init.text" {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #38
  br label %68

6:                                                ; preds = %1
  %7 = tail call i32 @strlen(ptr noundef nonnull %2)
  %8 = icmp ugt i32 %7, 99
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef 100) #38
  br label %68

11:                                               ; preds = %6
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  store i1 true, ptr @tracing_selftest_running, align 1
  %12 = load ptr, ptr @trace_types, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %0, align 4
  br label %20

16:                                               ; preds = %20
  %17 = getelementptr inbounds %struct.tracer, ptr %21, i32 0, i32 16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16, %14
  %21 = phi ptr [ %12, %14 ], [ %18, %16 ]
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @strcmp(ptr noundef %15, ptr noundef %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %16

25:                                               ; preds = %20
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %15) #38
  br label %54

27:                                               ; preds = %16, %11
  %28 = getelementptr inbounds %struct.tracer, ptr %0, i32 0, i32 14
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store ptr @dummy_set_flag, ptr %28, align 4
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr inbounds %struct.tracer, ptr %0, i32 0, i32 17
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %38 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3264, i32 noundef 12) #36
  store ptr %38, ptr %33, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %54, label %40

40:                                               ; preds = %36
  store i32 0, ptr %38, align 8
  %41 = getelementptr inbounds %struct.tracer_flags, ptr %38, i32 0, i32 1
  store ptr @dummy_tracer_opt, ptr %41, align 4
  %42 = load ptr, ptr @trace_types, align 4
  br label %49

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.tracer_flags, ptr %34, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  store ptr @dummy_tracer_opt, ptr %44, align 4
  %48 = load ptr, ptr %33, align 4
  br label %49

49:                                               ; preds = %47, %43, %40
  %50 = phi ptr [ %12, %43 ], [ %12, %47 ], [ %42, %40 ]
  %51 = phi ptr [ %34, %43 ], [ %48, %47 ], [ %38, %40 ]
  %52 = getelementptr inbounds %struct.tracer_flags, ptr %51, i32 0, i32 2
  store ptr %0, ptr %52, align 4
  %53 = getelementptr inbounds %struct.tracer, ptr %0, i32 0, i32 16
  store ptr %50, ptr %53, align 4
  store ptr %0, ptr @trace_types, align 4
  tail call fastcc void @add_tracer_options(ptr noundef nonnull @global_trace, ptr noundef %0)
  br label %54

54:                                               ; preds = %49, %36, %25
  %55 = phi i1 [ true, %49 ], [ false, %25 ], [ false, %36 ]
  %56 = phi i32 [ 0, %49 ], [ -1, %25 ], [ -12, %36 ]
  store i1 false, ptr @tracing_selftest_running, align 1
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  %57 = load ptr, ptr @default_bootup_tracer, align 4
  %58 = icmp ne ptr %57, null
  %59 = select i1 %55, i1 %58, i1 false
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load ptr, ptr %0, align 4
  %62 = tail call i32 @strncmp(ptr noundef nonnull %57, ptr noundef %61, i32 noundef 100)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %61) #38
  %66 = load ptr, ptr %0, align 4
  %67 = tail call i32 @tracing_set_tracer(ptr noundef nonnull @global_trace, ptr noundef %66)
  store ptr null, ptr @default_bootup_tracer, align 4
  tail call fastcc void @apply_trace_boot_options() #39
  br label %68

68:                                               ; preds = %64, %60, %54, %9, %4
  %69 = phi i32 [ -1, %9 ], [ -1, %4 ], [ %56, %60 ], [ %56, %54 ], [ %56, %64 ]
  ret i32 %69
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dummy_set_flag(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #10 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @add_tracer_options(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %6, %5
  br i1 %7, label %137, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tracer, ptr %1, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %137, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tracer_flags, ptr %10, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %137, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 16
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.tracer, ptr %1, i32 0, i32 20
  %23 = load i8, ptr %22, align 1, !range !12
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %137, label %25

25:                                               ; preds = %21, %16
  %26 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 9
  %27 = load i32, ptr %26, align 8
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 23
  %31 = load i1, ptr @create_trace_option_files.__already_done, align 1
  br label %38

32:                                               ; preds = %52
  %33 = add nuw nsw i32 %41, 1
  %34 = load i32, ptr %26, align 8
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load ptr, ptr %9, align 4
  br label %38

38:                                               ; preds = %36, %29
  %39 = phi i1 [ %31, %29 ], [ %53, %36 ]
  %40 = phi ptr [ %10, %29 ], [ %37, %36 ]
  %41 = phi i32 [ 0, %29 ], [ %33, %36 ]
  %42 = load ptr, ptr %30, align 8
  %43 = getelementptr %struct.trace_options, ptr %42, i32 %41
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.tracer, ptr %44, i32 0, i32 17
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %40
  %48 = xor i1 %39, true
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %50, label %52, !prof !11

50:                                               ; preds = %38
  store i1 true, ptr @create_trace_option_files.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 8862, i32 noundef 9, ptr noundef null) #34
  %51 = load i1, ptr @create_trace_option_files.__already_done, align 1
  br label %52

52:                                               ; preds = %50, %38
  %53 = phi i1 [ %51, %50 ], [ %39, %38 ]
  br i1 %47, label %137, label %32

54:                                               ; preds = %32
  %55 = load ptr, ptr %13, align 4
  br label %56

56:                                               ; preds = %54, %25
  %57 = phi ptr [ %55, %54 ], [ %14, %25 ]
  br label %58

58:                                               ; preds = %58, %56
  %59 = phi i32 [ 0, %56 ], [ %63, %58 ]
  %60 = getelementptr %struct.tracer_opt, ptr %57, i32 %59
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  %63 = add i32 %59, 1
  br i1 %62, label %64, label %58

64:                                               ; preds = %58
  %65 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %63, i32 16) #34
  %66 = extractvalue { i32, i1 } %65, 1
  br i1 %66, label %137, label %67, !prof !11

67:                                               ; preds = %64
  %68 = extractvalue { i32, i1 } %65, 0
  %69 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %68, i32 noundef 3520) #37
  %70 = icmp eq ptr %69, null
  br i1 %70, label %137, label %71

71:                                               ; preds = %67
  %72 = load i32, ptr %26, align 8
  %73 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 23
  %74 = load ptr, ptr %73, align 8
  %75 = shl i32 %72, 3
  %76 = add i32 %75, 8
  %77 = tail call noalias ptr @krealloc(ptr noundef %74, i32 noundef %76, i32 noundef 3264) #40
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  tail call void @kfree(ptr noundef nonnull %69) #34
  br label %137

80:                                               ; preds = %71
  store ptr %77, ptr %73, align 8
  %81 = load i32, ptr %26, align 8
  %82 = getelementptr %struct.trace_options, ptr %77, i32 %81
  store ptr %1, ptr %82, align 4
  %83 = getelementptr %struct.trace_options, ptr %77, i32 %81, i32 1
  store ptr %69, ptr %83, align 4
  %84 = add i32 %81, 1
  store i32 %84, ptr %26, align 8
  %85 = load ptr, ptr %57, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %137, label %87

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 20
  br label %89

89:                                               ; preds = %132, %87
  %90 = phi ptr [ %57, %87 ], [ %134, %132 ]
  %91 = phi i32 [ 0, %87 ], [ %133, %132 ]
  %92 = getelementptr %struct.trace_option_dentry, ptr %69, i32 %91
  %93 = load ptr, ptr %88, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %111

95:                                               ; preds = %89
  %96 = load ptr, ptr %3, align 8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %99, !prof !11

98:                                               ; preds = %95
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 8545, i32 noundef 9, ptr noundef null) #34
  br label %122

99:                                               ; preds = %95
  %100 = load i32, ptr %17, align 8
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = icmp ugt ptr %96, inttoptr (i32 -4096 to ptr)
  br i1 %104, label %122, label %105

105:                                              ; preds = %103, %99
  %106 = phi ptr [ %96, %103 ], [ null, %99 ]
  %107 = tail call ptr @tracefs_create_dir(ptr noundef nonnull @.str.134, ptr noundef %106) #34
  store ptr %107, ptr %88, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135) #38
  br label %122

111:                                              ; preds = %105, %89
  %112 = phi ptr [ %93, %89 ], [ %107, %105 ]
  %113 = getelementptr %struct.trace_option_dentry, ptr %69, i32 %91, i32 1
  store ptr %10, ptr %113, align 4
  store ptr %90, ptr %92, align 16
  %114 = getelementptr %struct.trace_option_dentry, ptr %69, i32 %91, i32 2
  store ptr %0, ptr %114, align 8
  %115 = load ptr, ptr %90, align 4
  %116 = tail call ptr @tracefs_create_file(ptr noundef %115, i16 noundef zeroext 416, ptr noundef nonnull %112, ptr noundef %92, ptr noundef nonnull @trace_options_fops) #34
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %115) #38
  br label %120

120:                                              ; preds = %118, %111
  %121 = getelementptr %struct.trace_option_dentry, ptr %69, i32 %91, i32 3
  store ptr %116, ptr %121, align 4
  br label %122

122:                                              ; preds = %120, %109, %103, %98
  %123 = getelementptr %struct.trace_option_dentry, ptr %69, i32 %91, i32 3
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  %126 = load i1, ptr @create_trace_option_files.__already_done.132, align 1
  %127 = xor i1 %126, true
  %128 = select i1 %125, i1 %127, i1 false
  br i1 %128, label %129, label %132, !prof !11

129:                                              ; preds = %122
  store i1 true, ptr @create_trace_option_files.__already_done.132, align 1
  %130 = load ptr, ptr %90, align 4
  %131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef %130) #38
  br label %132

132:                                              ; preds = %129, %122
  %133 = add i32 %91, 1
  %134 = getelementptr %struct.tracer_opt, ptr %57, i32 %133
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %89

137:                                              ; preds = %132, %80, %79, %67, %64, %52, %21, %12, %8, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tracing_set_tracer(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %3 = load i8, ptr @ring_buffer_expanded, align 1, !range !12
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %30

5:                                                ; preds = %2
  %6 = load i32, ptr @trace_buf_size, align 4
  store i8 1, ptr @ring_buffer_expanded, align 1
  %7 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %5
  %11 = tail call i32 @ring_buffer_resize(ptr noundef nonnull %8, i32 noundef %6, i32 noundef -1) #34
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %90, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %15 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @tracing_buffer_mask) #41
  %16 = icmp ult i32 %15, %14
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2, i32 2
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i32 [ %15, %17 ], [ %28, %19 ]
  %21 = load ptr, ptr %18, align 8
  %22 = ptrtoint ptr %21 to i32
  %23 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %22
  %26 = inttoptr i32 %25 to ptr
  %27 = getelementptr inbounds %struct.trace_array_cpu, ptr %26, i32 0, i32 2
  store i32 %6, ptr %27, align 8
  %28 = tail call i32 @cpumask_next(i32 noundef %20, ptr noundef nonnull @tracing_buffer_mask) #41
  %29 = icmp ult i32 %28, %14
  br i1 %29, label %19, label %30

30:                                               ; preds = %19, %13, %5, %2
  %31 = load ptr, ptr @trace_types, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %90, label %33

33:                                               ; preds = %38, %30
  %34 = phi ptr [ %40, %38 ], [ %31, %30 ]
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @strcmp(ptr noundef %35, ptr noundef %1)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.tracer, ptr %34, i32 0, i32 16
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %90, label %33

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 13
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %34, %44
  br i1 %45, label %90, label %46

46:                                               ; preds = %42
  %47 = load i32, ptr @system_state, align 4
  %48 = icmp ult i32 %47, 3
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.tracer, ptr %34, i32 0, i32 21
  %51 = load i8, ptr %50, align 2, !range !12
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %35) #38
  br label %90

55:                                               ; preds = %49, %46
  %56 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 16
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.tracer, ptr %34, i32 0, i32 20
  %62 = load i8, ptr %61, align 1, !range !12
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %90, label %64

64:                                               ; preds = %60, %55
  %65 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 29
  %66 = load i32, ptr %65, align 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.tracer, ptr %44, i32 0, i32 18
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, -1
  store i32 %71, ptr %69, align 4
  %72 = load ptr, ptr %43, align 8
  %73 = getelementptr inbounds %struct.tracer, ptr %72, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %68
  tail call void %74(ptr noundef %0) #34
  br label %77

77:                                               ; preds = %76, %68
  store ptr @nop_trace, ptr %43, align 8
  %78 = getelementptr inbounds %struct.tracer, ptr %34, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2
  tail call void @tracing_reset_online_cpus(ptr noundef %82) #34
  %83 = load ptr, ptr %78, align 4
  %84 = tail call i32 %83(ptr noundef %0) #34
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81, %77
  store ptr %34, ptr %43, align 8
  %87 = getelementptr inbounds %struct.tracer, ptr %34, i32 0, i32 18
  %88 = load i32, ptr %87, align 4
  %89 = add i32 %88, 1
  store i32 %89, ptr %87, align 4
  br label %90

90:                                               ; preds = %86, %81, %64, %60, %53, %42, %38, %30, %10
  %91 = phi i32 [ 0, %42 ], [ 0, %53 ], [ %84, %81 ], [ 0, %86 ], [ -22, %60 ], [ -16, %64 ], [ %11, %10 ], [ -22, %30 ], [ -22, %38 ]
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  ret i32 %91
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @apply_trace_boot_options() unnamed_addr #11 section ".init.text" {
  %1 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #34
  store ptr @trace_boot_options_buf, ptr %1, align 4
  %2 = call ptr @strsep(ptr noundef nonnull %1, ptr noundef nonnull @.str.131) #34
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %15, %0
  %5 = phi ptr [ %16, %15 ], [ %2, %0 ]
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = call i32 @trace_set_options(ptr noundef nonnull @global_trace, ptr noundef nonnull %5)
  br label %10

10:                                               ; preds = %8, %4
  %11 = load ptr, ptr %1, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = getelementptr i8, ptr %11, i32 -1
  store i8 44, ptr %14, align 1
  br label %15

15:                                               ; preds = %13, %10
  %16 = call ptr @strsep(ptr noundef nonnull %1, ptr noundef nonnull @.str.131) #34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %4

18:                                               ; preds = %15, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tracing_reset_online_cpus(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.array_buffer, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  tail call void @ring_buffer_record_disable(ptr noundef nonnull %4) #34
  tail call void @synchronize_rcu() #34
  %7 = getelementptr inbounds %struct.array_buffer, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #34
  %9 = load ptr, ptr %3, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call i64 @trace_clock_local() #34
  br label %17

13:                                               ; preds = %6
  %14 = tail call i64 @ring_buffer_time_stamp(ptr noundef nonnull %9) #34
  store i64 %14, ptr %2, align 8
  %15 = load ptr, ptr %3, align 4
  call void @ring_buffer_normalize_time_stamp(ptr noundef %15, i32 noundef %8, ptr noundef nonnull %2) #34
  %16 = load i64, ptr %2, align 8
  br label %17

17:                                               ; preds = %13, %11
  %18 = phi i64 [ %16, %13 ], [ %12, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #34
  %19 = getelementptr inbounds %struct.array_buffer, ptr %0, i32 0, i32 3
  store i64 %18, ptr %19, align 8
  call void @ring_buffer_reset_online_cpus(ptr noundef nonnull %4) #34
  call void @ring_buffer_record_enable(ptr noundef nonnull %4) #34
  br label %20

20:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_buffer_record_disable(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_buffer_reset_online_cpus(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_buffer_record_enable(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tracing_reset_all_online_cpus() local_unnamed_addr #5 {
  %1 = load ptr, ptr @ftrace_trace_arrays, align 4
  %2 = icmp eq ptr %1, @ftrace_trace_arrays
  br i1 %2, label %13, label %3

3:                                                ; preds = %10, %0
  %4 = phi ptr [ %11, %10 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 10
  %6 = load i8, ptr %5, align 4, !range !12
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  store i8 0, ptr %5, align 4
  %9 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 2
  tail call void @tracing_reset_online_cpus(ptr noundef %9)
  br label %10

10:                                               ; preds = %8, %3
  %11 = load ptr, ptr %4, align 4
  %12 = icmp eq ptr %11, @ftrace_trace_arrays
  br i1 %12, label %13, label %3

13:                                               ; preds = %10, %0
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @is_tracing_stopped() local_unnamed_addr #15 {
  %1 = load i32, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 7), align 8
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tracing_start() local_unnamed_addr #5 {
  %1 = load i1, ptr @tracing_disabled, align 4
  br i1 %1, label %2, label %31

2:                                                ; preds = %0
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 17)) #34
  %4 = load i32, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 7), align 8
  %5 = add i32 %4, -1
  store i32 %5, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 7), align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = icmp slt i32 %5, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %7
  %10 = load i1, ptr @tracing_start.__already_done, align 1
  br i1 %10, label %12, label %11, !prof !19

11:                                               ; preds = %9
  store i1 true, ptr @tracing_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2276, i32 noundef 9, ptr noundef null) #34
  br label %12

12:                                               ; preds = %11, %9
  store i32 0, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 7), align 8
  br label %30

13:                                               ; preds = %2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 5)) #34, !srcloc !13
  %14 = tail call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 5), i32 65536) #34, !srcloc !40
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = lshr i32 %15, 16
  %17 = and i32 %15, 65535
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %19, %13
  tail call void asm sideeffect "wfe", "~{memory}"() #34, !srcloc !41
  %20 = load volatile i16, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 5), align 8
  %21 = zext i16 %20 to i32
  %22 = icmp eq i32 %16, %21
  br i1 %22, label %23, label %19

23:                                               ; preds = %19, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !42
  %24 = load ptr, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 2, i32 1), align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @ring_buffer_record_enable(ptr noundef nonnull %24) #34
  br label %27

27:                                               ; preds = %26, %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !43
  %28 = load i16, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 5), align 8
  %29 = add i16 %28, 1
  store i16 %29, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 5), align 8
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #34, !srcloc !44
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #34, !srcloc !45
  br label %30

30:                                               ; preds = %27, %12, %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 17), i32 noundef %3) #34
  br label %31

31:                                               ; preds = %30, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tracing_stop() local_unnamed_addr #5 {
  %1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 17)) #34
  %2 = load i32, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 7), align 8
  %3 = add i32 %2, 1
  store i32 %3, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 7), align 8
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %0
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 5)) #34, !srcloc !13
  %6 = tail call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 5), i32 65536) #34, !srcloc !40
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = lshr i32 %7, 16
  %9 = and i32 %7, 65535
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %11, %5
  tail call void asm sideeffect "wfe", "~{memory}"() #34, !srcloc !41
  %12 = load volatile i16, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 5), align 8
  %13 = zext i16 %12 to i32
  %14 = icmp eq i32 %8, %13
  br i1 %14, label %15, label %11

15:                                               ; preds = %11, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !42
  %16 = load ptr, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 2, i32 1), align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @ring_buffer_record_disable(ptr noundef nonnull %16) #34
  br label %19

19:                                               ; preds = %18, %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !43
  %20 = load i16, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 5), align 8
  %21 = add i16 %20, 1
  store i16 %21, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 5), align 8
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #34, !srcloc !44
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #34, !srcloc !45
  br label %22

22:                                               ; preds = %19, %0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 17), i32 noundef %1) #34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_find_cmdline(i32 noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !46
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @trace_cmdline_lock) #34, !srcloc !13
  %3 = tail call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr nonnull @trace_cmdline_lock, i32 65536) #34, !srcloc !40
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = lshr i32 %4, 16
  %6 = and i32 %4, 65535
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %8, %2
  tail call void asm sideeffect "wfe", "~{memory}"() #34, !srcloc !41
  %9 = load volatile i16, ptr @trace_cmdline_lock, align 4
  %10 = zext i16 %9 to i32
  %11 = icmp eq i32 %5, %10
  br i1 %11, label %12, label %8

12:                                               ; preds = %8, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !42
  %13 = icmp eq i32 %0, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(7) %1, ptr noundef nonnull align 1 dereferenceable(7) @.str.78, i32 7, i1 false) #34
  br label %42

15:                                               ; preds = %12
  %16 = icmp slt i32 %0, 0
  %17 = load i1, ptr @__trace_find_cmdline.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !11

20:                                               ; preds = %15
  store i1 true, ptr @__trace_find_cmdline.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2432, i32 noundef 9, ptr noundef null) #34
  br label %21

21:                                               ; preds = %20, %15
  br i1 %16, label %22, label %23

22:                                               ; preds = %21
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(6) @.str.79, i32 6, i1 false) #34
  br label %42

23:                                               ; preds = %21
  %24 = and i32 %0, 32767
  %25 = load ptr, ptr @savedcmd, align 4
  %26 = getelementptr [32769 x i32], ptr %25, i32 0, i32 %24
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %25, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i32, ptr %31, i32 %27
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, %0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %25, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = shl i32 %27, 4
  %39 = getelementptr i8, ptr %37, i32 %38
  %40 = tail call i32 @strlcpy(ptr noundef %1, ptr noundef %39, i32 noundef 16) #34
  br label %42

41:                                               ; preds = %29, %23
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(6) @.str.80, i32 6, i1 false) #34
  br label %42

42:                                               ; preds = %41, %35, %22, %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !43
  %43 = load i16, ptr @trace_cmdline_lock, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr @trace_cmdline_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #34, !srcloc !44
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #34, !srcloc !45
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_find_tgid(i32 noundef %0) local_unnamed_addr #5 {
  %2 = load volatile ptr, ptr @tgid_map, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !48
  %3 = icmp eq ptr %2, null
  %4 = load i32, ptr @tgid_map_max, align 4
  %5 = icmp ult i32 %4, %0
  %6 = select i1 %3, i1 true, i1 %5, !prof !11
  %7 = getelementptr i32, ptr %2, i32 %0
  %8 = icmp eq ptr %7, null
  %9 = or i1 %8, %6
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, ptr %7, align 4
  br label %12

12:                                               ; preds = %10, %1
  %13 = phi i32 [ %11, %10 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tracing_record_taskinfo(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = and i32 %1, 3
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %85, label %5, !prof !11

5:                                                ; preds = %2
  %6 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %7 = inttoptr i32 %6 to ptr
  %8 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %7) #26, !srcloc !21
  %9 = add i32 %8, ptrtoint (ptr @trace_taskinfo_save to i32)
  %10 = inttoptr i32 %9 to ptr
  %11 = load i8, ptr %10, align 1, !range !12
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %85, label %13

13:                                               ; preds = %5
  %14 = and i32 %1, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %55, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 52
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %55, label %20

20:                                               ; preds = %16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @trace_cmdline_lock) #34, !srcloc !13
  br label %21

21:                                               ; preds = %21, %20
  %22 = tail call { i32, i32, i32 } asm sideeffect "\09ldrex\09$0, [$3]\0A\09mov\09$2, #0\0A\09subs\09$1, $0, $0, ror #16\0A\09addeq\09$0, $0, $4\0A\09strexeq\09$2, $0, [$3]", "=&r,=&r,=&r,r,I,~{cc}"(ptr nonnull @trace_cmdline_lock, i32 65536) #34, !srcloc !49
  %23 = extractvalue { i32, i32, i32 } %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %21

25:                                               ; preds = %21
  %26 = extractvalue { i32, i32, i32 } %22, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !50
  %29 = and i32 %18, 32767
  %30 = load ptr, ptr @savedcmd, align 4
  %31 = getelementptr [32769 x i32], ptr %30, i32 0, i32 %29
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %30, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 1
  %38 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %30, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = urem i32 %37, %39
  store i32 %40, ptr %31, align 4
  store i32 %40, ptr %35, align 4
  br label %41

41:                                               ; preds = %34, %28
  %42 = phi i32 [ %40, %34 ], [ %32, %28 ]
  %43 = load i32, ptr %17, align 8
  %44 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %30, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i32, ptr %45, i32 %42
  store i32 %43, ptr %46, align 4
  %47 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 85
  %48 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %30, i32 0, i32 4
  %49 = load ptr, ptr %48, align 4
  %50 = shl i32 %42, 4
  %51 = getelementptr i8, ptr %49, i32 %50
  %52 = tail call ptr @strncpy(ptr noundef %51, ptr noundef %47, i32 noundef 16) #34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !43
  %53 = load i16, ptr @trace_cmdline_lock, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr @trace_cmdline_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #34, !srcloc !44
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #34, !srcloc !45
  br label %55

55:                                               ; preds = %41, %25, %16, %13
  %56 = phi i32 [ 1, %13 ], [ 1, %16 ], [ 0, %25 ], [ 1, %41 ]
  %57 = and i32 %1, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 52
  %61 = load i32, ptr %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %59
  %64 = load volatile ptr, ptr @tgid_map, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !48
  %65 = icmp eq ptr %64, null
  %66 = load i32, ptr @tgid_map_max, align 4
  %67 = icmp ult i32 %66, %61
  %68 = select i1 %65, i1 true, i1 %67, !prof !11
  %69 = getelementptr i32, ptr %64, i32 %61
  %70 = icmp eq ptr %69, null
  %71 = select i1 %68, i1 true, i1 %70
  br i1 %71, label %75, label %72

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 53
  %74 = load i32, ptr %73, align 4
  store i32 %74, ptr %69, align 4
  br label %75

75:                                               ; preds = %72, %63, %59, %55
  %76 = phi i32 [ 1, %55 ], [ 1, %59 ], [ 0, %63 ], [ 1, %72 ]
  %77 = and i32 %76, %56
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %75
  %80 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %81 = inttoptr i32 %80 to ptr
  %82 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %81) #26, !srcloc !21
  %83 = add i32 %82, ptrtoint (ptr @trace_taskinfo_save to i32)
  %84 = inttoptr i32 %83 to ptr
  store i8 0, ptr %84, align 1
  br label %85

85:                                               ; preds = %79, %75, %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tracing_record_taskinfo_sched_switch(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = and i32 %2, 3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %149, label %6, !prof !11

6:                                                ; preds = %3
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #26, !srcloc !21
  %10 = add i32 %9, ptrtoint (ptr @trace_taskinfo_save to i32)
  %11 = inttoptr i32 %10 to ptr
  %12 = load i8, ptr %11, align 1, !range !12
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %149, label %14

14:                                               ; preds = %6
  %15 = and i32 %2, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %98, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 52
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %58, label %21

21:                                               ; preds = %17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @trace_cmdline_lock) #34, !srcloc !13
  br label %22

22:                                               ; preds = %22, %21
  %23 = tail call { i32, i32, i32 } asm sideeffect "\09ldrex\09$0, [$3]\0A\09mov\09$2, #0\0A\09subs\09$1, $0, $0, ror #16\0A\09addeq\09$0, $0, $4\0A\09strexeq\09$2, $0, [$3]", "=&r,=&r,=&r,r,I,~{cc}"(ptr nonnull @trace_cmdline_lock, i32 65536) #34, !srcloc !49
  %24 = extractvalue { i32, i32, i32 } %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %22

26:                                               ; preds = %22
  %27 = extractvalue { i32, i32, i32 } %23, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !50
  %30 = and i32 %19, 32767
  %31 = load ptr, ptr @savedcmd, align 4
  %32 = getelementptr [32769 x i32], ptr %31, i32 0, i32 %30
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %31, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 1
  %39 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %31, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = urem i32 %38, %40
  store i32 %41, ptr %32, align 4
  store i32 %41, ptr %36, align 4
  br label %42

42:                                               ; preds = %35, %29
  %43 = phi i32 [ %41, %35 ], [ %33, %29 ]
  %44 = load i32, ptr %18, align 8
  %45 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %31, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i32, ptr %46, i32 %43
  store i32 %44, ptr %47, align 4
  %48 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 85
  %49 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %31, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  %51 = shl i32 %43, 4
  %52 = getelementptr i8, ptr %50, i32 %51
  %53 = tail call ptr @strncpy(ptr noundef %52, ptr noundef %48, i32 noundef 16) #34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !43
  %54 = load i16, ptr @trace_cmdline_lock, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr @trace_cmdline_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #34, !srcloc !44
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #34, !srcloc !45
  br label %56

56:                                               ; preds = %42, %26
  %57 = zext i1 %28 to i32
  br label %58

58:                                               ; preds = %56, %17
  %59 = phi i32 [ %57, %56 ], [ 1, %17 ]
  %60 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %61 = load i32, ptr %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %98, label %63

63:                                               ; preds = %58
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @trace_cmdline_lock) #34, !srcloc !13
  br label %64

64:                                               ; preds = %64, %63
  %65 = tail call { i32, i32, i32 } asm sideeffect "\09ldrex\09$0, [$3]\0A\09mov\09$2, #0\0A\09subs\09$1, $0, $0, ror #16\0A\09addeq\09$0, $0, $4\0A\09strexeq\09$2, $0, [$3]", "=&r,=&r,=&r,r,I,~{cc}"(ptr nonnull @trace_cmdline_lock, i32 65536) #34, !srcloc !49
  %66 = extractvalue { i32, i32, i32 } %65, 2
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %64

68:                                               ; preds = %64
  %69 = extractvalue { i32, i32, i32 } %65, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %68
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !50
  %72 = and i32 %61, 32767
  %73 = load ptr, ptr @savedcmd, align 4
  %74 = getelementptr [32769 x i32], ptr %73, i32 0, i32 %72
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %73, i32 0, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, 1
  %81 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %73, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = urem i32 %80, %82
  store i32 %83, ptr %74, align 4
  store i32 %83, ptr %78, align 4
  br label %84

84:                                               ; preds = %77, %71
  %85 = phi i32 [ %83, %77 ], [ %75, %71 ]
  %86 = load i32, ptr %60, align 8
  %87 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %73, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr i32, ptr %88, i32 %85
  store i32 %86, ptr %89, align 4
  %90 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 85
  %91 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %73, i32 0, i32 4
  %92 = load ptr, ptr %91, align 4
  %93 = shl i32 %85, 4
  %94 = getelementptr i8, ptr %92, i32 %93
  %95 = tail call ptr @strncpy(ptr noundef %94, ptr noundef %90, i32 noundef 16) #34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !43
  %96 = load i16, ptr @trace_cmdline_lock, align 4
  %97 = add i16 %96, 1
  store i16 %97, ptr @trace_cmdline_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #34, !srcloc !44
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #34, !srcloc !45
  br label %98

98:                                               ; preds = %84, %68, %58, %14
  %99 = phi i32 [ 1, %14 ], [ %59, %58 ], [ %59, %68 ], [ %59, %84 ]
  %100 = phi i32 [ 1, %14 ], [ 1, %58 ], [ 0, %68 ], [ 1, %84 ]
  %101 = and i32 %100, %99
  %102 = and i32 %2, 2
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %138, label %104

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 52
  %106 = load i32, ptr %105, align 8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %120, label %108

108:                                              ; preds = %104
  %109 = load volatile ptr, ptr @tgid_map, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !48
  %110 = icmp eq ptr %109, null
  %111 = load i32, ptr @tgid_map_max, align 4
  %112 = icmp ult i32 %111, %106
  %113 = select i1 %110, i1 true, i1 %112, !prof !11
  %114 = getelementptr i32, ptr %109, i32 %106
  %115 = icmp eq ptr %114, null
  %116 = select i1 %113, i1 true, i1 %115
  br i1 %116, label %120, label %117

117:                                              ; preds = %108
  %118 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 53
  %119 = load i32, ptr %118, align 4
  store i32 %119, ptr %114, align 4
  br label %120

120:                                              ; preds = %117, %108, %104
  %121 = phi i32 [ 1, %104 ], [ 0, %108 ], [ 1, %117 ]
  %122 = and i32 %121, %101
  %123 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %124 = load i32, ptr %123, align 8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %138, label %126

126:                                              ; preds = %120
  %127 = load volatile ptr, ptr @tgid_map, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !48
  %128 = icmp eq ptr %127, null
  %129 = load i32, ptr @tgid_map_max, align 4
  %130 = icmp ult i32 %129, %124
  %131 = select i1 %128, i1 true, i1 %130, !prof !11
  %132 = getelementptr i32, ptr %127, i32 %124
  %133 = icmp eq ptr %132, null
  %134 = select i1 %131, i1 true, i1 %133
  br i1 %134, label %138, label %135

135:                                              ; preds = %126
  %136 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 53
  %137 = load i32, ptr %136, align 4
  store i32 %137, ptr %132, align 4
  br label %138

138:                                              ; preds = %135, %126, %120, %98
  %139 = phi i32 [ %101, %98 ], [ %122, %120 ], [ %122, %126 ], [ %122, %135 ]
  %140 = phi i32 [ 1, %98 ], [ 1, %120 ], [ 0, %126 ], [ 1, %135 ]
  %141 = and i32 %140, %139
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %138
  %144 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %145 = inttoptr i32 %144 to ptr
  %146 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %145) #26, !srcloc !21
  %147 = add i32 %146, ptrtoint (ptr @trace_taskinfo_save to i32)
  %148 = inttoptr i32 %147 to ptr
  store i8 0, ptr %148, align 1
  br label %149

149:                                              ; preds = %143, %138, %6, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tracing_record_cmdline(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  tail call void @tracing_record_taskinfo(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tracing_record_tgid(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #26, !srcloc !21
  %5 = add i32 %4, ptrtoint (ptr @trace_taskinfo_save to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load i8, ptr %6, align 1, !range !12
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 52
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = load volatile ptr, ptr @tgid_map, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !48
  %15 = icmp eq ptr %14, null
  %16 = load i32, ptr @tgid_map_max, align 4
  %17 = icmp ult i32 %16, %11
  %18 = select i1 %15, i1 true, i1 %17, !prof !11
  %19 = getelementptr i32, ptr %14, i32 %11
  %20 = icmp eq ptr %19, null
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %31, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 53
  %24 = load i32, ptr %23, align 4
  store i32 %24, ptr %19, align 4
  br label %25

25:                                               ; preds = %22, %9
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %27 = inttoptr i32 %26 to ptr
  %28 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %27) #26, !srcloc !21
  %29 = add i32 %28, ptrtoint (ptr @trace_taskinfo_save to i32)
  %30 = inttoptr i32 %29 to ptr
  store i8 0, ptr %30, align 1
  br label %31

31:                                               ; preds = %25, %13, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @trace_handle_return(ptr nocapture noundef readonly %0) #12 {
  %2 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp ule i32 %7, %9
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi i32 [ 0, %1 ], [ %11, %5 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @tracing_gen_ctx_irq_test(i32 noundef %0) local_unnamed_addr #16 {
  %2 = tail call ptr @llvm.thread.pointer() #34
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 15728640
  %6 = icmp eq i32 %5, 0
  %7 = or i32 %0, 64
  %8 = select i1 %6, i32 %0, i32 %7
  %9 = and i32 %4, 983040
  %10 = icmp eq i32 %9, 0
  %11 = or i32 %8, 8
  %12 = select i1 %10, i32 %8, i32 %11
  %13 = load volatile i32, ptr %3, align 4
  %14 = lshr i32 %13, 4
  %15 = and i32 %14, 16
  %16 = or i32 %12, %15
  %17 = load volatile i32, ptr %3, align 4
  %18 = and i32 %17, 65024
  %19 = icmp eq i32 %18, 0
  %20 = or i32 %16, 128
  %21 = select i1 %19, i32 %16, i32 %20
  %22 = load volatile i32, ptr %2, align 4
  %23 = shl i32 %22, 1
  %24 = and i32 %23, 4
  %25 = or i32 %21, %24
  %26 = shl i32 %25, 16
  %27 = and i32 %4, 255
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 15)
  %29 = or i32 %26, %28
  %30 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 31
  %31 = load i16, ptr %30, align 8
  %32 = tail call i16 @llvm.umin.i16(i16 %31, i16 15)
  %33 = shl nuw nsw i16 %32, 4
  %34 = zext i16 %33 to i32
  %35 = or i32 %29, %34
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @trace_buffer_lock_reserve(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = tail call ptr @ring_buffer_lock_reserve(ptr noundef %0, i32 noundef %2) #34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @ring_buffer_event_data(ptr noundef nonnull %5) #34
  %9 = trunc i32 %1 to i16
  %10 = trunc i32 %3 to i8
  %11 = getelementptr inbounds %struct.trace_entry, ptr %8, i32 0, i32 2
  store i8 %10, ptr %11, align 1
  %12 = tail call ptr @llvm.thread.pointer() #34
  %13 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 52
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.trace_entry, ptr %8, i32 0, i32 3
  store i32 %14, ptr %15, align 4
  store i16 %9, ptr %8, align 4
  %16 = lshr i32 %3, 16
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds %struct.trace_entry, ptr %8, i32 0, i32 1
  store i8 %17, ptr %18, align 2
  br label %19

19:                                               ; preds = %7, %4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_buffered_event_enable() local_unnamed_addr #5 {
  %1 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @event_mutex) #34
  %2 = load i1, ptr @trace_buffered_event_enable.__already_done, align 1
  %3 = select i1 %1, i1 true, i1 %2
  br i1 %3, label %5, label %4, !prof !19

4:                                                ; preds = %0
  store i1 true, ptr @trace_buffered_event_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2656, i32 noundef 9, ptr noundef null) #34
  br label %5

5:                                                ; preds = %4, %0
  %6 = load i32, ptr @trace_buffered_event_ref, align 4
  %7 = add i32 %6, 1
  store i32 %7, ptr @trace_buffered_event_ref, align 4
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %9, label %47

9:                                                ; preds = %5
  %10 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @tracing_buffer_mask) #41
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %47

13:                                               ; preds = %42, %9
  %14 = phi i32 [ %43, %42 ], [ %10, %9 ]
  %15 = tail call ptr @__alloc_pages(i32 noundef 68800, i32 noundef 0, i32 noundef 0, ptr noundef null) #34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %46, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @page_address(ptr noundef nonnull %15) #34
  store i32 0, ptr %18, align 4
  %19 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, ptrtoint (ptr @trace_buffered_event to i32)
  %22 = inttoptr i32 %21 to ptr
  store ptr %18, ptr %22, align 4
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !51
  %23 = tail call ptr @llvm.thread.pointer() #34
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %14, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %17
  %28 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %29 = inttoptr i32 %28 to ptr
  %30 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %29) #26, !srcloc !21
  %31 = add i32 %30, ptrtoint (ptr @trace_buffered_event to i32)
  %32 = inttoptr i32 %31 to ptr
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %19, align 4
  %35 = add i32 %34, ptrtoint (ptr @trace_buffered_event to i32)
  %36 = inttoptr i32 %35 to ptr
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %33, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %27
  %40 = load i1, ptr @trace_buffered_event_enable.__already_done.14, align 1
  br i1 %40, label %42, label %41, !prof !19

41:                                               ; preds = %39
  store i1 true, ptr @trace_buffered_event_enable.__already_done.14, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2676, i32 noundef 9, ptr noundef null) #34
  br label %42

42:                                               ; preds = %41, %39, %27, %17
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !52
  %43 = tail call i32 @cpumask_next(i32 noundef %14, ptr noundef nonnull @tracing_buffer_mask) #41
  %44 = load i32, ptr @nr_cpu_ids, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %13, label %47

46:                                               ; preds = %13
  tail call void @trace_buffered_event_disable()
  br label %47

47:                                               ; preds = %46, %42, %9, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_buffered_event_disable() local_unnamed_addr #5 {
  %1 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @event_mutex) #34
  %2 = load i1, ptr @trace_buffered_event_disable.__already_done, align 1
  %3 = select i1 %1, i1 true, i1 %2
  br i1 %3, label %5, label %4, !prof !19

4:                                                ; preds = %0
  store i1 true, ptr @trace_buffered_event_disable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2709, i32 noundef 9, ptr noundef null) #34
  br label %5

5:                                                ; preds = %4, %0
  %6 = load i32, ptr @trace_buffered_event_ref, align 4
  %7 = icmp eq i32 %6, 0
  %8 = load i1, ptr @trace_buffered_event_disable.__already_done.15, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !11

11:                                               ; preds = %5
  store i1 true, ptr @trace_buffered_event_disable.__already_done.15, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2711, i32 noundef 9, ptr noundef null) #34
  br label %12

12:                                               ; preds = %11, %5
  br i1 %7, label %36, label %13

13:                                               ; preds = %12
  %14 = load i32, ptr @trace_buffered_event_ref, align 4
  %15 = add i32 %14, -1
  store i32 %15, ptr @trace_buffered_event_ref, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !53
  tail call void @smp_call_function_many(ptr noundef nonnull @tracing_buffer_mask, ptr noundef nonnull @disable_trace_buffered_event, ptr noundef null, i1 noundef zeroext true) #34
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !54
  tail call void @synchronize_rcu() #34
  %18 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @tracing_buffer_mask) #41
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %21, %17
  %22 = phi i32 [ %32, %21 ], [ %18, %17 ]
  %23 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, ptrtoint (ptr @trace_buffered_event to i32)
  %26 = inttoptr i32 %25 to ptr
  %27 = load ptr, ptr %26, align 4
  %28 = ptrtoint ptr %27 to i32
  tail call void @free_pages(i32 noundef %28, i32 noundef 0) #34
  %29 = load i32, ptr %23, align 4
  %30 = add i32 %29, ptrtoint (ptr @trace_buffered_event to i32)
  %31 = inttoptr i32 %30 to ptr
  store ptr null, ptr %31, align 4
  %32 = tail call i32 @cpumask_next(i32 noundef %22, ptr noundef nonnull @tracing_buffer_mask) #41
  %33 = load i32, ptr @nr_cpu_ids, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %21, label %35

35:                                               ; preds = %21, %17
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #34, !srcloc !55
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !56
  tail call void @smp_call_function_many(ptr noundef nonnull @tracing_buffer_mask, ptr noundef nonnull @enable_trace_buffered_event, ptr noundef null, i1 noundef zeroext true) #34
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !57
  br label %36

36:                                               ; preds = %35, %13, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_call_function_many(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @disable_trace_buffered_event(ptr nocapture noundef readnone %0) #5 {
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #34, !srcloc !23
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #26, !srcloc !21
  %6 = add i32 %5, ptrtoint (ptr @trace_buffered_event_cnt to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #34, !srcloc !24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @enable_trace_buffered_event(ptr nocapture noundef readnone %0) #5 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !58
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #34, !srcloc !23
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #26, !srcloc !21
  %6 = add i32 %5, ptrtoint (ptr @trace_buffered_event_cnt to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  store i32 %9, ptr %7, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #34, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @trace_event_buffer_lock_reserve(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #5 {
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %1, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.trace_array, ptr %7, i32 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 4
  store ptr %9, ptr %0, align 4
  %10 = getelementptr inbounds %struct.trace_array, ptr %7, i32 0, i32 30
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %62

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.trace_event_file, ptr %1, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 72
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %62, label %18

18:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !59
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %20 = inttoptr i32 %19 to ptr
  %21 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %20) #26, !srcloc !21
  %22 = add i32 %21, ptrtoint (ptr @trace_buffered_event to i32)
  %23 = inttoptr i32 %22 to ptr
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %60, label %26

26:                                               ; preds = %18
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #34, !srcloc !23
  %28 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %29 = inttoptr i32 %28 to ptr
  %30 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %29) #26, !srcloc !21
  %31 = add i32 %30, ptrtoint (ptr @trace_buffered_event_cnt to i32)
  %32 = inttoptr i32 %31 to ptr
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %27) #34, !srcloc !24
  %35 = icmp ne i32 %33, 0
  %36 = icmp ugt i32 %3, 4088
  %37 = or i1 %36, %35
  br i1 %37, label %51, label %38, !prof !60

38:                                               ; preds = %26
  %39 = tail call ptr @ring_buffer_event_data(ptr noundef nonnull %24) #34
  %40 = trunc i32 %2 to i16
  %41 = trunc i32 %4 to i8
  %42 = getelementptr inbounds %struct.trace_entry, ptr %39, i32 0, i32 2
  store i8 %41, ptr %42, align 1
  %43 = tail call ptr @llvm.thread.pointer() #34
  %44 = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 52
  %45 = load i32, ptr %44, align 8
  %46 = getelementptr inbounds %struct.trace_entry, ptr %39, i32 0, i32 3
  store i32 %45, ptr %46, align 4
  store i16 %40, ptr %39, align 4
  %47 = lshr i32 %4, 16
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds %struct.trace_entry, ptr %39, i32 0, i32 1
  store i8 %48, ptr %49, align 2
  %50 = getelementptr inbounds %struct.ring_buffer_event, ptr %24, i32 0, i32 1
  store i32 %3, ptr %50, align 4
  br label %99

51:                                               ; preds = %26
  %52 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #34, !srcloc !23
  %53 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %54 = inttoptr i32 %53 to ptr
  %55 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %54) #26, !srcloc !21
  %56 = add i32 %55, ptrtoint (ptr @trace_buffered_event_cnt to i32)
  %57 = inttoptr i32 %56 to ptr
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, -1
  store i32 %59, ptr %57, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %52) #34, !srcloc !24
  br label %60

60:                                               ; preds = %51, %18
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !61
  %61 = load ptr, ptr %0, align 4
  br label %62

62:                                               ; preds = %60, %13, %5
  %63 = phi ptr [ %61, %60 ], [ %9, %13 ], [ %9, %5 ]
  %64 = tail call ptr @ring_buffer_lock_reserve(ptr noundef %63, i32 noundef %3) #34
  %65 = icmp eq ptr %64, null
  br i1 %65, label %78, label %66

66:                                               ; preds = %62
  %67 = tail call ptr @ring_buffer_event_data(ptr noundef nonnull %64) #34
  %68 = trunc i32 %2 to i16
  %69 = trunc i32 %4 to i8
  %70 = getelementptr inbounds %struct.trace_entry, ptr %67, i32 0, i32 2
  store i8 %69, ptr %70, align 1
  %71 = tail call ptr @llvm.thread.pointer() #34
  %72 = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 52
  %73 = load i32, ptr %72, align 8
  %74 = getelementptr inbounds %struct.trace_entry, ptr %67, i32 0, i32 3
  store i32 %73, ptr %74, align 4
  store i16 %68, ptr %67, align 4
  %75 = lshr i32 %4, 16
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds %struct.trace_entry, ptr %67, i32 0, i32 1
  store i8 %76, ptr %77, align 2
  br label %99

78:                                               ; preds = %62
  %79 = getelementptr inbounds %struct.trace_event_file, ptr %1, i32 0, i32 7
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, 256
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %99, label %83

83:                                               ; preds = %78
  %84 = load ptr, ptr @temp_buffer, align 4
  store ptr %84, ptr %0, align 4
  %85 = tail call ptr @ring_buffer_lock_reserve(ptr noundef %84, i32 noundef %3) #34
  %86 = icmp eq ptr %85, null
  br i1 %86, label %99, label %87

87:                                               ; preds = %83
  %88 = tail call ptr @ring_buffer_event_data(ptr noundef nonnull %85) #34
  %89 = trunc i32 %2 to i16
  %90 = trunc i32 %4 to i8
  %91 = getelementptr inbounds %struct.trace_entry, ptr %88, i32 0, i32 2
  store i8 %90, ptr %91, align 1
  %92 = tail call ptr @llvm.thread.pointer() #34
  %93 = getelementptr inbounds %struct.task_struct, ptr %92, i32 0, i32 52
  %94 = load i32, ptr %93, align 8
  %95 = getelementptr inbounds %struct.trace_entry, ptr %88, i32 0, i32 3
  store i32 %94, ptr %95, align 4
  store i16 %89, ptr %88, align 4
  %96 = lshr i32 %4, 16
  %97 = trunc i32 %96 to i8
  %98 = getelementptr inbounds %struct.trace_entry, ptr %88, i32 0, i32 1
  store i8 %97, ptr %98, align 2
  br label %99

99:                                               ; preds = %87, %83, %78, %66, %38
  %100 = phi ptr [ %24, %38 ], [ %64, %66 ], [ null, %78 ], [ null, %83 ], [ %85, %87 ]
  ret ptr %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tracepoint_printk_sysctl(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #5 {
  tail call void @mutex_lock(ptr noundef nonnull @tracepoint_printk_mutex) #34
  %6 = load i32, ptr @tracepoint_printk, align 4
  %7 = tail call i32 @proc_dointvec(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #34
  %8 = load ptr, ptr @tracepoint_print_iter, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = load i32, ptr @tracepoint_printk, align 4
  %12 = icmp eq i32 %6, %11
  br i1 %12, label %47, label %15

13:                                               ; preds = %5
  store i32 0, ptr @tracepoint_printk, align 4
  %14 = icmp eq i32 %6, 0
  br i1 %14, label %47, label %32

15:                                               ; preds = %10
  %16 = icmp eq i32 %11, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %15
  %18 = load i8, ptr @static_key_initialized, align 1, !range !12
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21, !prof !11

20:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 318, i32 noundef 9, ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.static_key_enable, ptr noundef nonnull @tracepoint_printk_key) #34
  br label %21

21:                                               ; preds = %20, %17
  %22 = load volatile i32, ptr @tracepoint_printk_key, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load volatile i32, ptr @tracepoint_printk_key, align 4
  %26 = icmp ne i32 %25, 1
  %27 = load i1, ptr @static_key_enable.__already_done, align 1
  %28 = xor i1 %27, true
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %47, !prof !11

30:                                               ; preds = %24
  store i1 true, ptr @static_key_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 321, i32 noundef 9, ptr noundef null) #34
  br label %47

31:                                               ; preds = %21
  store volatile i32 1, ptr @tracepoint_printk_key, align 4
  br label %47

32:                                               ; preds = %15, %13
  %33 = load i8, ptr @static_key_initialized, align 1, !range !12
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %36, !prof !11

35:                                               ; preds = %32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 329, i32 noundef 9, ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.static_key_disable, ptr noundef nonnull @tracepoint_printk_key) #34
  br label %36

36:                                               ; preds = %35, %32
  %37 = load volatile i32, ptr @tracepoint_printk_key, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = load volatile i32, ptr @tracepoint_printk_key, align 4
  %41 = icmp ne i32 %40, 0
  %42 = load i1, ptr @static_key_disable.__already_done, align 1
  %43 = xor i1 %42, true
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %47, !prof !11

45:                                               ; preds = %39
  store i1 true, ptr @static_key_disable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 332, i32 noundef 9, ptr noundef null) #34
  br label %47

46:                                               ; preds = %36
  store volatile i32 0, ptr @tracepoint_printk_key, align 4
  br label %47

47:                                               ; preds = %46, %45, %39, %31, %30, %24, %13, %10
  tail call void @mutex_unlock(ptr noundef nonnull @tracepoint_printk_mutex) #34
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_event_buffer_commit(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.trace_event_buffer, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.trace_event_buffer, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.trace_event_buffer, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.trace_event_file, ptr %3, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = tail call i32 @event_triggers_call(ptr noundef %3, ptr noundef %4, ptr noundef %8, ptr noundef %6) #34
  %15 = load i32, ptr %9, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = phi i32 [ 0, %1 ], [ %14, %13 ]
  %18 = phi i32 [ %10, %1 ], [ %15, %13 ]
  %19 = and i32 %18, 584
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %41, label %21, !prof !19

21:                                               ; preds = %16
  %22 = and i32 %18, 64
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = and i32 %18, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.trace_event_file, ptr %3, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @filter_match_preds(ptr noundef %29, ptr noundef %8) #34
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %27
  %33 = load i32, ptr %9, align 4
  br label %34

34:                                               ; preds = %32, %24
  %35 = phi i32 [ %33, %32 ], [ %18, %24 ]
  %36 = and i32 %35, 512
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = tail call zeroext i1 @trace_event_ignore_this_pid(ptr noundef %3) #34
  br i1 %39, label %40, label %41

40:                                               ; preds = %38, %27, %21
  tail call fastcc void @__trace_event_discard_commit(ptr noundef %4, ptr noundef %6) #34
  br label %112

41:                                               ; preds = %38, %34, %16
  %42 = load volatile i32, ptr @tracepoint_printk_key, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %98

44:                                               ; preds = %41
  %45 = load ptr, ptr @tracepoint_print_iter, align 4
  %46 = icmp eq ptr %45, null
  %47 = load i1, ptr @output_printk.__already_done, align 1
  %48 = xor i1 %47, true
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %51, !prof !11

50:                                               ; preds = %44
  store i1 true, ptr @output_printk.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2840, i32 noundef 9, ptr noundef null) #34
  br label %51

51:                                               ; preds = %50, %44
  br i1 %46, label %98, label %52

52:                                               ; preds = %51
  %53 = load ptr, ptr %2, align 4
  %54 = getelementptr inbounds %struct.trace_event_file, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %98, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.trace_event_call, ptr %55, i32 0, i32 3, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %98, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %59, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %98, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.trace_event_file, ptr %53, i32 0, i32 7
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %66, 64
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %98

69:                                               ; preds = %64
  %70 = and i32 %66, 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %82, label %72, !prof !19

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.trace_event_file, ptr %53, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = load ptr, ptr %7, align 4
  %76 = tail call i32 @filter_match_preds(ptr noundef %74, ptr noundef %75) #34
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %98, label %78

78:                                               ; preds = %72
  %79 = load ptr, ptr %2, align 4
  %80 = getelementptr inbounds %struct.trace_event_file, ptr %79, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  br label %82

82:                                               ; preds = %78, %69
  %83 = phi ptr [ %81, %78 ], [ %55, %69 ]
  %84 = getelementptr inbounds %struct.trace_event_call, ptr %83, i32 0, i32 3
  %85 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @tracepoint_iter_lock) #34
  %86 = getelementptr inbounds %struct.trace_iterator, ptr %45, i32 0, i32 15
  %87 = getelementptr inbounds %struct.trace_iterator, ptr %45, i32 0, i32 15, i32 1
  store ptr %86, ptr %87, align 8
  %88 = getelementptr inbounds %struct.trace_iterator, ptr %45, i32 0, i32 15, i32 1, i32 1
  store i32 4096, ptr %88, align 4
  %89 = getelementptr inbounds %struct.trace_iterator, ptr %45, i32 0, i32 15, i32 1, i32 2
  store i32 0, ptr %89, align 8
  %90 = getelementptr inbounds %struct.trace_iterator, ptr %45, i32 0, i32 15, i32 1, i32 3
  store i64 0, ptr %90, align 8
  %91 = getelementptr inbounds %struct.trace_iterator, ptr %45, i32 0, i32 15, i32 2
  store i32 0, ptr %91, align 8
  %92 = load ptr, ptr %7, align 4
  %93 = getelementptr inbounds %struct.trace_iterator, ptr %45, i32 0, i32 16
  store ptr %92, ptr %93, align 8
  %94 = load ptr, ptr %58, align 4
  %95 = load ptr, ptr %94, align 4
  %96 = tail call i32 %95(ptr noundef nonnull %45, i32 noundef 0, ptr noundef %84) #34
  tail call void @trace_seq_putc(ptr noundef %86, i8 noundef zeroext 0) #34
  %97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %86) #38
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @tracepoint_iter_lock, i32 noundef %85) #34
  br label %98

98:                                               ; preds = %82, %72, %64, %61, %57, %52, %51, %41
  %99 = load volatile i32, ptr @trace_event_exports_enabled, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %103, !prof !11

101:                                              ; preds = %98
  %102 = load ptr, ptr %5, align 4
  tail call fastcc void @ftrace_exports(ptr noundef %102, i32 noundef 2)
  br label %103

103:                                              ; preds = %101, %98
  %104 = getelementptr inbounds %struct.trace_event_file, ptr %3, i32 0, i32 4
  %105 = load ptr, ptr %104, align 4
  %106 = load ptr, ptr %0, align 4
  %107 = load ptr, ptr %5, align 4
  %108 = getelementptr inbounds %struct.trace_event_buffer, ptr %0, i32 0, i32 4
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr inbounds %struct.trace_event_buffer, ptr %0, i32 0, i32 5
  %111 = load ptr, ptr %110, align 4
  tail call void @trace_buffer_unlock_commit_regs(ptr noundef %105, ptr noundef %106, ptr noundef %107, i32 noundef %109, ptr noundef %111)
  br label %112

112:                                              ; preds = %103, %40
  %113 = icmp eq i32 %17, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %112
  tail call void @event_triggers_post_call(ptr noundef %3, i32 noundef %17) #34
  br label %115

115:                                              ; preds = %114, %112
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ftrace_exports(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !62
  %3 = load volatile ptr, ptr @ftrace_exports_list, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %16, %2
  %6 = phi ptr [ %17, %16 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.trace_export, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, %1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = tail call ptr @ring_buffer_event_data(ptr noundef %0) #34
  %13 = tail call i32 @ring_buffer_event_length(ptr noundef %0) #34
  %14 = getelementptr inbounds %struct.trace_export, ptr %6, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef nonnull %6, ptr noundef %12, i32 noundef %13) #34
  br label %16

16:                                               ; preds = %11, %5
  %17 = load volatile ptr, ptr %6, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %5

19:                                               ; preds = %16, %2
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !63
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_buffer_unlock_commit_regs(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #5 {
  %6 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %7 = inttoptr i32 %6 to ptr
  %8 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %7) #26, !srcloc !21
  %9 = add i32 %8, ptrtoint (ptr @trace_taskinfo_save to i32)
  %10 = inttoptr i32 %9 to ptr
  store i8 1, ptr %10, align 1
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !36
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #26, !srcloc !21
  %14 = add i32 %13, ptrtoint (ptr @trace_buffered_event to i32)
  %15 = inttoptr i32 %14 to ptr
  %16 = load volatile ptr, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !37
  %17 = icmp eq ptr %16, %2
  br i1 %17, label %18, label %31

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.ring_buffer_event, ptr %2, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr %struct.ring_buffer_event, ptr %2, i32 2
  %22 = tail call i32 @ring_buffer_write(ptr noundef %1, i32 noundef %20, ptr noundef %21) #34
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #34, !srcloc !23
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #26, !srcloc !21
  %27 = add i32 %26, ptrtoint (ptr @trace_buffered_event_cnt to i32)
  %28 = inttoptr i32 %27 to ptr
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, -1
  store i32 %30, ptr %28, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %23) #34, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !38
  br label %33

31:                                               ; preds = %5
  %32 = tail call i32 @ring_buffer_unlock_commit(ptr noundef %1, ptr noundef %2) #34
  br label %33

33:                                               ; preds = %31, %18
  %34 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 14
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 16777216
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = icmp eq ptr %4, null
  %40 = select i1 %39, i32 3, i32 0
  tail call fastcc void @__ftrace_trace_stack(ptr noundef %1, i32 noundef %3, i32 noundef %40, ptr noundef %4) #34
  br label %41

41:                                               ; preds = %38, %33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @event_triggers_post_call(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_buffer_unlock_commit_nostack(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #26, !srcloc !21
  %6 = add i32 %5, ptrtoint (ptr @trace_taskinfo_save to i32)
  %7 = inttoptr i32 %6 to ptr
  store i8 1, ptr %7, align 1
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !36
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #26, !srcloc !21
  %11 = add i32 %10, ptrtoint (ptr @trace_buffered_event to i32)
  %12 = inttoptr i32 %11 to ptr
  %13 = load volatile ptr, ptr %12, align 4
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !37
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.ring_buffer_event, ptr %1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr %struct.ring_buffer_event, ptr %1, i32 2
  %19 = tail call i32 @ring_buffer_write(ptr noundef %0, i32 noundef %17, ptr noundef %18) #34
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #34, !srcloc !23
  %21 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %22 = inttoptr i32 %21 to ptr
  %23 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %22) #26, !srcloc !21
  %24 = add i32 %23, ptrtoint (ptr @trace_buffered_event_cnt to i32)
  %25 = inttoptr i32 %24 to ptr
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, -1
  store i32 %27, ptr %25, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #34, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !38
  br label %30

28:                                               ; preds = %2
  %29 = tail call i32 @ring_buffer_unlock_commit(ptr noundef %0, ptr noundef %1) #34
  br label %30

30:                                               ; preds = %28, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_function(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @ring_buffer_lock_reserve(ptr noundef %6, i32 noundef 16) #34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %63, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @ring_buffer_event_data(ptr noundef nonnull %7) #34
  %11 = trunc i32 %3 to i8
  %12 = getelementptr inbounds %struct.trace_entry, ptr %10, i32 0, i32 2
  store i8 %11, ptr %12, align 1
  %13 = tail call ptr @llvm.thread.pointer() #34
  %14 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 52
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.trace_entry, ptr %10, i32 0, i32 3
  store i32 %15, ptr %16, align 4
  store i16 1, ptr %10, align 4
  %17 = lshr i32 %3, 16
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.trace_entry, ptr %10, i32 0, i32 1
  store i8 %18, ptr %19, align 2
  %20 = tail call ptr @ring_buffer_event_data(ptr noundef nonnull %7) #34
  %21 = getelementptr inbounds %struct.ftrace_entry, ptr %20, i32 0, i32 1
  store i32 %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ftrace_entry, ptr %20, i32 0, i32 2
  store i32 %2, ptr %22, align 4
  %23 = load i32, ptr getelementptr inbounds (%struct.trace_event_call, ptr @event_function, i32 0, i32 8), align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26, !prof !19

26:                                               ; preds = %9
  %27 = load ptr, ptr getelementptr inbounds (%struct.trace_event_call, ptr @event_function, i32 0, i32 5), align 4
  %28 = tail call i32 @filter_match_preds(ptr noundef %27, ptr noundef %20) #34
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call fastcc void @__trace_event_discard_commit(ptr noundef %6, ptr noundef nonnull %7) #34
  br label %63

31:                                               ; preds = %26, %9
  %32 = load volatile i32, ptr @trace_function_exports_enabled, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %35, !prof !11

34:                                               ; preds = %31
  tail call fastcc void @ftrace_exports(ptr noundef nonnull %7, i32 noundef 1)
  br label %35

35:                                               ; preds = %34, %31
  %36 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %37 = inttoptr i32 %36 to ptr
  %38 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %37) #26, !srcloc !21
  %39 = add i32 %38, ptrtoint (ptr @trace_taskinfo_save to i32)
  %40 = inttoptr i32 %39 to ptr
  store i8 1, ptr %40, align 1
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !36
  %41 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %42 = inttoptr i32 %41 to ptr
  %43 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %42) #26, !srcloc !21
  %44 = add i32 %43, ptrtoint (ptr @trace_buffered_event to i32)
  %45 = inttoptr i32 %44 to ptr
  %46 = load volatile ptr, ptr %45, align 4
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !37
  %47 = icmp eq ptr %46, %7
  br i1 %47, label %48, label %61

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.ring_buffer_event, ptr %7, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr %struct.ring_buffer_event, ptr %7, i32 2
  %52 = tail call i32 @ring_buffer_write(ptr noundef %6, i32 noundef %50, ptr noundef %51) #34
  %53 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #34, !srcloc !23
  %54 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %55 = inttoptr i32 %54 to ptr
  %56 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %55) #26, !srcloc !21
  %57 = add i32 %56, ptrtoint (ptr @trace_buffered_event_cnt to i32)
  %58 = inttoptr i32 %57 to ptr
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, -1
  store i32 %60, ptr %58, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %53) #34, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !38
  br label %63

61:                                               ; preds = %35
  %62 = tail call i32 @ring_buffer_unlock_commit(ptr noundef %6, ptr noundef nonnull %7) #34
  br label %63

63:                                               ; preds = %61, %48, %30, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__trace_stack(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call zeroext i1 @rcu_is_watching() #34
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call fastcc void @__ftrace_trace_stack(ptr noundef %5, i32 noundef %1, i32 noundef %2, ptr noundef null)
  br label %15

8:                                                ; preds = %3
  %9 = tail call ptr @llvm.thread.pointer() #34
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 15728640
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !19

14:                                               ; preds = %8
  tail call void @rcu_irq_enter_irqson() #34
  tail call fastcc void @__ftrace_trace_stack(ptr noundef %5, i32 noundef %1, i32 noundef %2, ptr noundef null)
  tail call void @rcu_irq_exit_irqson() #34
  br label %15

15:                                               ; preds = %14, %8, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__ftrace_trace_stack(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #5 {
  %5 = icmp eq ptr %3, null
  %6 = zext i1 %5 to i32
  %7 = add i32 %6, %2
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !64
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #26, !srcloc !21
  %11 = add i32 %10, ptrtoint (ptr @ftrace_stack_reserve to i32)
  %12 = inttoptr i32 %11 to ptr
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 4
  %15 = icmp sgt i32 %13, 3
  %16 = load i1, ptr @__ftrace_trace_stack.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !11

19:                                               ; preds = %4
  store i1 true, ptr @__ftrace_trace_stack.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3029, i32 noundef 9, ptr noundef null) #34
  br label %20

20:                                               ; preds = %19, %4
  br i1 %15, label %88, label %21

21:                                               ; preds = %20
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !65
  %22 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %23 = inttoptr i32 %22 to ptr
  %24 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %23) #26, !srcloc !21
  %25 = add i32 %24, ptrtoint (ptr @ftrace_stacks to i32)
  %26 = inttoptr i32 %25 to ptr
  %27 = getelementptr %struct.ftrace_stack, ptr %26, i32 %13
  br i1 %5, label %30, label %28

28:                                               ; preds = %21
  %29 = tail call i32 @stack_trace_save_regs(ptr noundef nonnull %3, ptr noundef %27, i32 noundef 1024, i32 noundef %7) #34
  br label %32

30:                                               ; preds = %21
  %31 = tail call i32 @stack_trace_save(ptr noundef %27, i32 noundef 1024, i32 noundef %7) #34
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = shl i32 %33, 2
  %35 = add i32 %34, 12
  %36 = tail call ptr @ring_buffer_lock_reserve(ptr noundef %0, i32 noundef %35) #34
  %37 = icmp eq ptr %36, null
  br i1 %37, label %88, label %38

38:                                               ; preds = %32
  %39 = tail call ptr @ring_buffer_event_data(ptr noundef nonnull %36) #34
  %40 = trunc i32 %1 to i8
  %41 = getelementptr inbounds %struct.trace_entry, ptr %39, i32 0, i32 2
  store i8 %40, ptr %41, align 1
  %42 = tail call ptr @llvm.thread.pointer() #34
  %43 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 52
  %44 = load i32, ptr %43, align 8
  %45 = getelementptr inbounds %struct.trace_entry, ptr %39, i32 0, i32 3
  store i32 %44, ptr %45, align 4
  store i16 4, ptr %39, align 4
  %46 = lshr i32 %1, 16
  %47 = trunc i32 %46 to i8
  %48 = getelementptr inbounds %struct.trace_entry, ptr %39, i32 0, i32 1
  store i8 %47, ptr %48, align 2
  %49 = tail call ptr @ring_buffer_event_data(ptr noundef nonnull %36) #34
  %50 = getelementptr inbounds %struct.stack_entry, ptr %49, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %50, ptr align 4 %27, i32 %34, i1 false)
  %51 = getelementptr inbounds %struct.stack_entry, ptr %49, i32 0, i32 1
  store i32 %33, ptr %51, align 4
  %52 = load i32, ptr getelementptr inbounds (%struct.trace_event_call, ptr @event_kernel_stack, i32 0, i32 8), align 4
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55, !prof !19

55:                                               ; preds = %38
  %56 = load ptr, ptr getelementptr inbounds (%struct.trace_event_call, ptr @event_kernel_stack, i32 0, i32 5), align 4
  %57 = tail call i32 @filter_match_preds(ptr noundef %56, ptr noundef %49) #34
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  tail call fastcc void @__trace_event_discard_commit(ptr noundef %0, ptr noundef nonnull %36) #34
  br label %88

60:                                               ; preds = %55, %38
  %61 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %62 = inttoptr i32 %61 to ptr
  %63 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %62) #26, !srcloc !21
  %64 = add i32 %63, ptrtoint (ptr @trace_taskinfo_save to i32)
  %65 = inttoptr i32 %64 to ptr
  store i8 1, ptr %65, align 1
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !36
  %66 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %67 = inttoptr i32 %66 to ptr
  %68 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %67) #26, !srcloc !21
  %69 = add i32 %68, ptrtoint (ptr @trace_buffered_event to i32)
  %70 = inttoptr i32 %69 to ptr
  %71 = load volatile ptr, ptr %70, align 4
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !37
  %72 = icmp eq ptr %71, %36
  br i1 %72, label %73, label %86

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.ring_buffer_event, ptr %36, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr %struct.ring_buffer_event, ptr %36, i32 2
  %77 = tail call i32 @ring_buffer_write(ptr noundef %0, i32 noundef %75, ptr noundef %76) #34
  %78 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #34, !srcloc !23
  %79 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %80 = inttoptr i32 %79 to ptr
  %81 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %80) #26, !srcloc !21
  %82 = add i32 %81, ptrtoint (ptr @trace_buffered_event_cnt to i32)
  %83 = inttoptr i32 %82 to ptr
  %84 = load i32, ptr %83, align 4
  %85 = add i32 %84, -1
  store i32 %85, ptr %83, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %78) #34, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !38
  br label %88

86:                                               ; preds = %60
  %87 = tail call i32 @ring_buffer_unlock_commit(ptr noundef %0, ptr noundef nonnull %36) #34
  br label %88

88:                                               ; preds = %86, %73, %59, %32, %20
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !66
  %89 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %90 = inttoptr i32 %89 to ptr
  %91 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %90) #26, !srcloc !21
  %92 = add i32 %91, ptrtoint (ptr @ftrace_stack_reserve to i32)
  %93 = inttoptr i32 %92 to ptr
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %94, -1
  store i32 %95, ptr %93, align 4
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !67
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_enter_irqson() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_exit_irqson() local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_dump_stack(i32 noundef %0) #5 {
  %2 = load i1, ptr @tracing_disabled, align 4
  br i1 %2, label %3, label %45

3:                                                ; preds = %1
  %4 = load i1, ptr @tracing_selftest_running, align 1
  br i1 %4, label %45, label %5

5:                                                ; preds = %3
  %6 = add i32 %0, 1
  %7 = load ptr, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 2, i32 1), align 4
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #34, !srcloc !35
  %9 = lshr i32 %8, 7
  %10 = and i32 %9, 1
  %11 = tail call ptr @llvm.thread.pointer() #34
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 15728640
  %15 = icmp eq i32 %14, 0
  %16 = or i32 %10, 64
  %17 = select i1 %15, i32 %10, i32 %16
  %18 = and i32 %13, 983040
  %19 = icmp eq i32 %18, 0
  %20 = or i32 %17, 8
  %21 = select i1 %19, i32 %17, i32 %20
  %22 = load volatile i32, ptr %12, align 4
  %23 = lshr i32 %22, 4
  %24 = and i32 %23, 16
  %25 = or i32 %21, %24
  %26 = load volatile i32, ptr %12, align 4
  %27 = and i32 %26, 65024
  %28 = icmp eq i32 %27, 0
  %29 = or i32 %25, 128
  %30 = select i1 %28, i32 %25, i32 %29
  %31 = load volatile i32, ptr %11, align 4
  %32 = shl i32 %31, 1
  %33 = and i32 %32, 4
  %34 = or i32 %30, %33
  %35 = shl i32 %34, 16
  %36 = and i32 %13, 255
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 15) #34
  %38 = or i32 %35, %37
  %39 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 31
  %40 = load i16, ptr %39, align 8
  %41 = tail call i16 @llvm.umin.i16(i16 %40, i16 15) #34
  %42 = shl nuw nsw i16 %41, 4
  %43 = zext i16 %42 to i32
  %44 = or i32 %38, %43
  tail call fastcc void @__ftrace_trace_stack(ptr noundef %7, i32 noundef %44, i32 noundef %6, ptr noundef null)
  br label %45

45:                                               ; preds = %5, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_last_func_repeats(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @ring_buffer_lock_reserve(ptr noundef %5, i32 noundef 24) #34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %65, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @ring_buffer_event_data(ptr noundef nonnull %6) #34
  %10 = trunc i32 %2 to i8
  %11 = getelementptr inbounds %struct.trace_entry, ptr %9, i32 0, i32 2
  store i8 %10, ptr %11, align 1
  %12 = tail call ptr @llvm.thread.pointer() #34
  %13 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 52
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.trace_entry, ptr %9, i32 0, i32 3
  store i32 %14, ptr %15, align 4
  store i16 19, ptr %9, align 4
  %16 = lshr i32 %2, 16
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds %struct.trace_entry, ptr %9, i32 0, i32 1
  store i8 %17, ptr %18, align 2
  %19 = tail call i64 @ring_buffer_event_time_stamp(ptr noundef %5, ptr noundef nonnull %6) #34
  %20 = getelementptr inbounds %struct.trace_func_repeats, ptr %1, i32 0, i32 3
  %21 = load i64, ptr %20, align 8
  %22 = sub i64 %19, %21
  %23 = tail call ptr @ring_buffer_event_data(ptr noundef nonnull %6) #34
  %24 = load i32, ptr %1, align 8
  %25 = getelementptr inbounds %struct.func_repeats_entry, ptr %23, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.trace_func_repeats, ptr %1, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.func_repeats_entry, ptr %23, i32 0, i32 2
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_func_repeats, ptr %1, i32 0, i32 2
  %30 = load i32, ptr %29, align 8
  %31 = trunc i32 %30 to i16
  %32 = getelementptr inbounds %struct.func_repeats_entry, ptr %23, i32 0, i32 3
  store i16 %31, ptr %32, align 4
  %33 = trunc i64 %22 to i32
  %34 = getelementptr inbounds %struct.func_repeats_entry, ptr %23, i32 0, i32 5
  store i32 %33, ptr %34, align 4
  %35 = lshr i64 %22, 32
  %36 = trunc i64 %35 to i16
  %37 = getelementptr inbounds %struct.func_repeats_entry, ptr %23, i32 0, i32 4
  store i16 %36, ptr %37, align 2
  %38 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %39 = inttoptr i32 %38 to ptr
  %40 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %39) #26, !srcloc !21
  %41 = add i32 %40, ptrtoint (ptr @trace_taskinfo_save to i32)
  %42 = inttoptr i32 %41 to ptr
  store i8 1, ptr %42, align 1
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !36
  %43 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %44 = inttoptr i32 %43 to ptr
  %45 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %44) #26, !srcloc !21
  %46 = add i32 %45, ptrtoint (ptr @trace_buffered_event to i32)
  %47 = inttoptr i32 %46 to ptr
  %48 = load volatile ptr, ptr %47, align 4
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !37
  %49 = icmp eq ptr %48, %6
  br i1 %49, label %50, label %63

50:                                               ; preds = %8
  %51 = getelementptr inbounds %struct.ring_buffer_event, ptr %6, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr %struct.ring_buffer_event, ptr %6, i32 2
  %54 = tail call i32 @ring_buffer_write(ptr noundef %5, i32 noundef %52, ptr noundef %53) #34
  %55 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #34, !srcloc !23
  %56 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %57 = inttoptr i32 %56 to ptr
  %58 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %57) #26, !srcloc !21
  %59 = add i32 %58, ptrtoint (ptr @trace_buffered_event_cnt to i32)
  %60 = inttoptr i32 %59 to ptr
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, -1
  store i32 %62, ptr %60, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %55) #34, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !38
  br label %65

63:                                               ; preds = %8
  %64 = tail call i32 @ring_buffer_unlock_commit(ptr noundef %5, ptr noundef nonnull %6) #34
  br label %65

65:                                               ; preds = %63, %50, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ring_buffer_event_time_stamp(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_printk_init_buffers() #5 {
  %1 = load i1, ptr @buffers_allocated, align 4
  br i1 %1, label %34, label %2

2:                                                ; preds = %0
  %3 = load ptr, ptr @trace_percpu_buffer, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %15

5:                                                ; preds = %2
  %6 = tail call noalias ptr @__alloc_percpu(i32 noundef 4100, i32 noundef 4) #37
  %7 = icmp eq ptr %6, null
  %8 = load i1, ptr @alloc_percpu_trace_buffer.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %5
  store i1 true, ptr @alloc_percpu_trace_buffer.__already_done, align 1
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #38
  br label %13

13:                                               ; preds = %11, %5
  br i1 %7, label %34, label %14

14:                                               ; preds = %13
  store ptr %6, ptr @trace_percpu_buffer, align 4
  br label %15

15:                                               ; preds = %14, %2
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #38
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #38
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #38
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #38
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #38
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #38
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #38
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #38
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #38
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #38
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #38
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #38
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #38
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #38
  %30 = tail call i32 @tracing_update_buffers()
  store i1 true, ptr @buffers_allocated, align 4
  %31 = load ptr, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 2, i32 1), align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %15
  tail call void @tracing_start_cmdline_record() #34
  br label %34

34:                                               ; preds = %33, %15, %13, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tracing_update_buffers() local_unnamed_addr #5 {
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %1 = load i8, ptr @ring_buffer_expanded, align 1, !range !12
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %25

3:                                                ; preds = %0
  %4 = load i32, ptr @trace_buf_size, align 4
  store i8 1, ptr @ring_buffer_expanded, align 1
  %5 = load ptr, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 2, i32 1), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @ring_buffer_resize(ptr noundef nonnull %5, i32 noundef %4, i32 noundef -1) #34
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %7
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %12 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @tracing_buffer_mask) #41
  %13 = icmp ult i32 %12, %11
  br i1 %13, label %14, label %25

14:                                               ; preds = %14, %10
  %15 = phi i32 [ %23, %14 ], [ %12, %10 ]
  %16 = load ptr, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 2, i32 2), align 8
  %17 = ptrtoint ptr %16 to i32
  %18 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %17
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr inbounds %struct.trace_array_cpu, ptr %21, i32 0, i32 2
  store i32 %4, ptr %22, align 8
  %23 = tail call i32 @cpumask_next(i32 noundef %15, ptr noundef nonnull @tracing_buffer_mask) #41
  %24 = icmp ult i32 %23, %11
  br i1 %24, label %14, label %25

25:                                               ; preds = %14, %10, %7, %3, %0
  %26 = phi i32 [ 0, %0 ], [ 0, %3 ], [ %8, %7 ], [ %8, %10 ], [ %8, %14 ]
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_start_cmdline_record() local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_printk_start_comm() local_unnamed_addr #5 {
  %1 = load i1, ptr @buffers_allocated, align 4
  br i1 %1, label %2, label %3

2:                                                ; preds = %0
  tail call void @tracing_start_cmdline_record() #34
  br label %3

3:                                                ; preds = %2, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_vbprintk(i32 noundef %0, ptr noundef %1, [1 x i32] %2) #5 {
  %4 = load i1, ptr @tracing_selftest_running, align 1
  %5 = load i1, ptr @tracing_disabled, align 4
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 true, i1 %6, !prof !11
  br i1 %7, label %140, label %8, !prof !11

8:                                                ; preds = %3
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #34, !srcloc !35
  %10 = lshr i32 %9, 7
  %11 = and i32 %10, 1
  %12 = tail call ptr @llvm.thread.pointer() #34
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 15728640
  %16 = icmp eq i32 %15, 0
  %17 = or i32 %11, 64
  %18 = select i1 %16, i32 %11, i32 %17
  %19 = and i32 %14, 983040
  %20 = icmp eq i32 %19, 0
  %21 = or i32 %18, 8
  %22 = select i1 %20, i32 %18, i32 %21
  %23 = load volatile i32, ptr %13, align 4
  %24 = lshr i32 %23, 4
  %25 = and i32 %24, 16
  %26 = or i32 %22, %25
  %27 = load volatile i32, ptr %13, align 4
  %28 = and i32 %27, 65024
  %29 = icmp eq i32 %28, 0
  %30 = or i32 %26, 128
  %31 = select i1 %29, i32 %26, i32 %30
  %32 = load volatile i32, ptr %12, align 4
  %33 = shl i32 %32, 1
  %34 = and i32 %33, 4
  %35 = or i32 %31, %34
  %36 = shl i32 %35, 16
  %37 = and i32 %14, 255
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 15) #34
  %39 = or i32 %36, %38
  %40 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 31
  %41 = load i16, ptr %40, align 8
  %42 = tail call i16 @llvm.umin.i16(i16 %41, i16 15) #34
  %43 = shl nuw nsw i16 %42, 4
  %44 = zext i16 %43 to i32
  %45 = or i32 %39, %44
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !68
  %46 = load ptr, ptr @trace_percpu_buffer, align 4
  %47 = ptrtoint ptr %46 to i32
  %48 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %49 = inttoptr i32 %48 to ptr
  %50 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %49) #26, !srcloc !21
  %51 = add i32 %50, %47
  %52 = inttoptr i32 %51 to ptr
  %53 = icmp eq ptr %46, null
  br i1 %53, label %138, label %54

54:                                               ; preds = %8
  %55 = load i32, ptr %52, align 4
  %56 = icmp sgt i32 %55, 3
  br i1 %56, label %138, label %57

57:                                               ; preds = %54
  %58 = add nsw i32 %55, 1
  store i32 %58, ptr %52, align 4
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !69
  %59 = load i32, ptr %52, align 4
  %60 = add i32 %59, -1
  %61 = getelementptr %struct.trace_buffer_struct, ptr %52, i32 0, i32 1, i32 %60
  %62 = icmp eq ptr %61, null
  br i1 %62, label %138, label %63

63:                                               ; preds = %57
  %64 = tail call i32 @vbin_printf(ptr noundef nonnull %61, i32 noundef 256, ptr noundef %1, [1 x i32] %2) #34
  %65 = icmp ugt i32 %64, 256
  br i1 %65, label %127, label %66

66:                                               ; preds = %63
  %67 = shl nuw nsw i32 %64, 2
  %68 = add nuw nsw i32 %67, 16
  %69 = load ptr, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 2, i32 1), align 4
  tail call void @ring_buffer_nest_start(ptr noundef %69) #34
  %70 = tail call ptr @ring_buffer_lock_reserve(ptr noundef %69, i32 noundef %68) #34
  %71 = icmp eq ptr %70, null
  br i1 %71, label %126, label %72

72:                                               ; preds = %66
  %73 = tail call ptr @ring_buffer_event_data(ptr noundef nonnull %70) #34
  %74 = trunc i32 %45 to i8
  %75 = getelementptr inbounds %struct.trace_entry, ptr %73, i32 0, i32 2
  store i8 %74, ptr %75, align 1
  %76 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 52
  %77 = load i32, ptr %76, align 8
  %78 = getelementptr inbounds %struct.trace_entry, ptr %73, i32 0, i32 3
  store i32 %77, ptr %78, align 4
  store i16 6, ptr %73, align 4
  %79 = trunc i32 %35 to i8
  %80 = getelementptr inbounds %struct.trace_entry, ptr %73, i32 0, i32 1
  store i8 %79, ptr %80, align 2
  %81 = tail call ptr @ring_buffer_event_data(ptr noundef nonnull %70) #34
  %82 = getelementptr inbounds %struct.bprint_entry, ptr %81, i32 0, i32 1
  store i32 %0, ptr %82, align 4
  %83 = getelementptr inbounds %struct.bprint_entry, ptr %81, i32 0, i32 2
  store ptr %1, ptr %83, align 4
  %84 = getelementptr inbounds %struct.bprint_entry, ptr %81, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %84, ptr nonnull align 1 %61, i32 %67, i1 false)
  %85 = load i32, ptr getelementptr inbounds (%struct.trace_event_call, ptr @event_bprint, i32 0, i32 8), align 4
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %93, label %88, !prof !19

88:                                               ; preds = %72
  %89 = load ptr, ptr getelementptr inbounds (%struct.trace_event_call, ptr @event_bprint, i32 0, i32 5), align 4
  %90 = tail call i32 @filter_match_preds(ptr noundef %89, ptr noundef %81) #34
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  tail call fastcc void @__trace_event_discard_commit(ptr noundef %69, ptr noundef nonnull %70) #34
  br label %126

93:                                               ; preds = %88, %72
  %94 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %95 = inttoptr i32 %94 to ptr
  %96 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %95) #26, !srcloc !21
  %97 = add i32 %96, ptrtoint (ptr @trace_taskinfo_save to i32)
  %98 = inttoptr i32 %97 to ptr
  store i8 1, ptr %98, align 1
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !36
  %99 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %100 = inttoptr i32 %99 to ptr
  %101 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %100) #26, !srcloc !21
  %102 = add i32 %101, ptrtoint (ptr @trace_buffered_event to i32)
  %103 = inttoptr i32 %102 to ptr
  %104 = load volatile ptr, ptr %103, align 4
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !37
  %105 = icmp eq ptr %104, %70
  br i1 %105, label %106, label %119

106:                                              ; preds = %93
  %107 = getelementptr inbounds %struct.ring_buffer_event, ptr %70, i32 0, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr %struct.ring_buffer_event, ptr %70, i32 2
  %110 = tail call i32 @ring_buffer_write(ptr noundef %69, i32 noundef %108, ptr noundef %109) #34
  %111 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #34, !srcloc !23
  %112 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %113 = inttoptr i32 %112 to ptr
  %114 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %113) #26, !srcloc !21
  %115 = add i32 %114, ptrtoint (ptr @trace_buffered_event_cnt to i32)
  %116 = inttoptr i32 %115 to ptr
  %117 = load i32, ptr %116, align 4
  %118 = add i32 %117, -1
  store i32 %118, ptr %116, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %111) #34, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !38
  br label %121

119:                                              ; preds = %93
  %120 = tail call i32 @ring_buffer_unlock_commit(ptr noundef %69, ptr noundef nonnull %70) #34
  br label %121

121:                                              ; preds = %119, %106
  %122 = load i32, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 14), align 4
  %123 = and i32 %122, 16777216
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %121
  tail call fastcc void @__ftrace_trace_stack(ptr noundef %69, i32 noundef %45, i32 noundef 6, ptr noundef null) #34
  br label %126

126:                                              ; preds = %125, %121, %92, %66
  tail call void @ring_buffer_nest_end(ptr noundef %69) #34
  br label %127

127:                                              ; preds = %126, %63
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !70
  %128 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #34, !srcloc !23
  %129 = load ptr, ptr @trace_percpu_buffer, align 4
  %130 = ptrtoint ptr %129 to i32
  %131 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %132 = inttoptr i32 %131 to ptr
  %133 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %132) #26, !srcloc !21
  %134 = add i32 %133, %130
  %135 = inttoptr i32 %134 to ptr
  %136 = load i32, ptr %135, align 4
  %137 = add i32 %136, -1
  store i32 %137, ptr %135, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %128) #34, !srcloc !24
  br label %138

138:                                              ; preds = %127, %57, %54, %8
  %139 = phi i32 [ %64, %127 ], [ 0, %57 ], [ 0, %54 ], [ 0, %8 ]
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !71
  br label %140

140:                                              ; preds = %138, %3
  %141 = phi i32 [ %139, %138 ], [ 0, %3 ]
  ret i32 %141
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vbin_printf(ptr noundef, i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_array_vprintk(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, [1 x i32] %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call fastcc i32 @__trace_array_vprintk(ptr noundef %6, i32 noundef %1, ptr noundef %2, [1 x i32] %3)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__trace_array_vprintk(ptr noundef %0, i32 noundef %1, ptr noundef %2, [1 x i32] %3) unnamed_addr #5 {
  %5 = load i1, ptr @tracing_disabled, align 4
  br i1 %5, label %6, label %135

6:                                                ; preds = %4
  %7 = load i1, ptr @tracing_selftest_running, align 1
  br i1 %7, label %135, label %8

8:                                                ; preds = %6
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #34, !srcloc !35
  %10 = lshr i32 %9, 7
  %11 = and i32 %10, 1
  %12 = tail call ptr @llvm.thread.pointer() #34
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 15728640
  %16 = icmp eq i32 %15, 0
  %17 = or i32 %11, 64
  %18 = select i1 %16, i32 %11, i32 %17
  %19 = and i32 %14, 983040
  %20 = icmp eq i32 %19, 0
  %21 = or i32 %18, 8
  %22 = select i1 %20, i32 %18, i32 %21
  %23 = load volatile i32, ptr %13, align 4
  %24 = lshr i32 %23, 4
  %25 = and i32 %24, 16
  %26 = or i32 %22, %25
  %27 = load volatile i32, ptr %13, align 4
  %28 = and i32 %27, 65024
  %29 = icmp eq i32 %28, 0
  %30 = or i32 %26, 128
  %31 = select i1 %29, i32 %26, i32 %30
  %32 = load volatile i32, ptr %12, align 4
  %33 = shl i32 %32, 1
  %34 = and i32 %33, 4
  %35 = or i32 %31, %34
  %36 = shl i32 %35, 16
  %37 = and i32 %14, 255
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 15) #34
  %39 = or i32 %36, %38
  %40 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 31
  %41 = load i16, ptr %40, align 8
  %42 = tail call i16 @llvm.umin.i16(i16 %41, i16 15) #34
  %43 = shl nuw nsw i16 %42, 4
  %44 = zext i16 %43 to i32
  %45 = or i32 %39, %44
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !72
  %46 = load ptr, ptr @trace_percpu_buffer, align 4
  %47 = ptrtoint ptr %46 to i32
  %48 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %49 = inttoptr i32 %48 to ptr
  %50 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %49) #26, !srcloc !21
  %51 = add i32 %50, %47
  %52 = inttoptr i32 %51 to ptr
  %53 = icmp eq ptr %46, null
  br i1 %53, label %133, label %54

54:                                               ; preds = %8
  %55 = load i32, ptr %52, align 4
  %56 = icmp sgt i32 %55, 3
  br i1 %56, label %133, label %57

57:                                               ; preds = %54
  %58 = add nsw i32 %55, 1
  store i32 %58, ptr %52, align 4
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !69
  %59 = load i32, ptr %52, align 4
  %60 = add i32 %59, -1
  %61 = getelementptr %struct.trace_buffer_struct, ptr %52, i32 0, i32 1, i32 %60
  %62 = icmp eq ptr %61, null
  br i1 %62, label %133, label %63

63:                                               ; preds = %57
  %64 = tail call i32 @vscnprintf(ptr noundef nonnull %61, i32 noundef 1024, ptr noundef %2, [1 x i32] %3) #34
  %65 = add i32 %64, 13
  tail call void @ring_buffer_nest_start(ptr noundef %0) #34
  %66 = tail call ptr @ring_buffer_lock_reserve(ptr noundef %0, i32 noundef %65) #34
  %67 = icmp eq ptr %66, null
  br i1 %67, label %122, label %68

68:                                               ; preds = %63
  %69 = tail call ptr @ring_buffer_event_data(ptr noundef nonnull %66) #34
  %70 = trunc i32 %45 to i8
  %71 = getelementptr inbounds %struct.trace_entry, ptr %69, i32 0, i32 2
  store i8 %70, ptr %71, align 1
  %72 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 52
  %73 = load i32, ptr %72, align 8
  %74 = getelementptr inbounds %struct.trace_entry, ptr %69, i32 0, i32 3
  store i32 %73, ptr %74, align 4
  store i16 5, ptr %69, align 4
  %75 = trunc i32 %35 to i8
  %76 = getelementptr inbounds %struct.trace_entry, ptr %69, i32 0, i32 1
  store i8 %75, ptr %76, align 2
  %77 = tail call ptr @ring_buffer_event_data(ptr noundef nonnull %66) #34
  %78 = getelementptr inbounds %struct.print_entry, ptr %77, i32 0, i32 1
  store i32 %1, ptr %78, align 4
  %79 = getelementptr inbounds %struct.print_entry, ptr %77, i32 0, i32 2
  %80 = add i32 %64, 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %79, ptr nonnull align 1 %61, i32 %80, i1 false)
  %81 = load i32, ptr getelementptr inbounds (%struct.trace_event_call, ptr @event_print, i32 0, i32 8), align 4
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %89, label %84, !prof !19

84:                                               ; preds = %68
  %85 = load ptr, ptr getelementptr inbounds (%struct.trace_event_call, ptr @event_print, i32 0, i32 5), align 4
  %86 = tail call i32 @filter_match_preds(ptr noundef %85, ptr noundef %77) #34
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  tail call fastcc void @__trace_event_discard_commit(ptr noundef %0, ptr noundef nonnull %66) #34
  br label %122

89:                                               ; preds = %84, %68
  %90 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %91 = inttoptr i32 %90 to ptr
  %92 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %91) #26, !srcloc !21
  %93 = add i32 %92, ptrtoint (ptr @trace_taskinfo_save to i32)
  %94 = inttoptr i32 %93 to ptr
  store i8 1, ptr %94, align 1
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !36
  %95 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %96 = inttoptr i32 %95 to ptr
  %97 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %96) #26, !srcloc !21
  %98 = add i32 %97, ptrtoint (ptr @trace_buffered_event to i32)
  %99 = inttoptr i32 %98 to ptr
  %100 = load volatile ptr, ptr %99, align 4
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !37
  %101 = icmp eq ptr %100, %66
  br i1 %101, label %102, label %115

102:                                              ; preds = %89
  %103 = getelementptr inbounds %struct.ring_buffer_event, ptr %66, i32 0, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = getelementptr %struct.ring_buffer_event, ptr %66, i32 2
  %106 = tail call i32 @ring_buffer_write(ptr noundef %0, i32 noundef %104, ptr noundef %105) #34
  %107 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #34, !srcloc !23
  %108 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %109 = inttoptr i32 %108 to ptr
  %110 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %109) #26, !srcloc !21
  %111 = add i32 %110, ptrtoint (ptr @trace_buffered_event_cnt to i32)
  %112 = inttoptr i32 %111 to ptr
  %113 = load i32, ptr %112, align 4
  %114 = add i32 %113, -1
  store i32 %114, ptr %112, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %107) #34, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !38
  br label %117

115:                                              ; preds = %89
  %116 = tail call i32 @ring_buffer_unlock_commit(ptr noundef %0, ptr noundef nonnull %66) #34
  br label %117

117:                                              ; preds = %115, %102
  %118 = load i32, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 14), align 4
  %119 = and i32 %118, 16777216
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %117
  tail call fastcc void @__ftrace_trace_stack(ptr noundef %0, i32 noundef %45, i32 noundef 6, ptr noundef null) #34
  br label %122

122:                                              ; preds = %121, %117, %88, %63
  tail call void @ring_buffer_nest_end(ptr noundef %0) #34
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !70
  %123 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #34, !srcloc !23
  %124 = load ptr, ptr @trace_percpu_buffer, align 4
  %125 = ptrtoint ptr %124 to i32
  %126 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %127 = inttoptr i32 %126 to ptr
  %128 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %127) #26, !srcloc !21
  %129 = add i32 %128, %125
  %130 = inttoptr i32 %129 to ptr
  %131 = load i32, ptr %130, align 4
  %132 = add i32 %131, -1
  store i32 %132, ptr %130, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %123) #34, !srcloc !24
  br label %133

133:                                              ; preds = %122, %57, %54, %8
  %134 = phi i32 [ %64, %122 ], [ 0, %57 ], [ 0, %54 ], [ 0, %8 ]
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !73
  br label %135

135:                                              ; preds = %133, %6, %4
  %136 = phi i32 [ %134, %133 ], [ 0, %6 ], [ 0, %4 ]
  ret i32 %136
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_array_printk(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2, ...) #5 {
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #34
  store i32 0, ptr %4, align 4, !annotation !26
  %5 = icmp eq ptr %0, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = icmp eq ptr %0, @global_trace
  br i1 %7, label %19, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 14
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %8
  call void @llvm.va_start(ptr nonnull %4)
  %14 = load i32, ptr %4, align 4
  %15 = insertvalue [1 x i32] poison, i32 %14, 0
  %16 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = call fastcc i32 @__trace_array_vprintk(ptr noundef %17, i32 noundef %1, ptr noundef %2, [1 x i32] %15) #34
  call void @llvm.va_end(ptr nonnull %4)
  br label %19

19:                                               ; preds = %13, %8, %6, %3
  %20 = phi i32 [ %18, %13 ], [ -2, %3 ], [ 0, %6 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #34
  ret i32 %20
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #18

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_array_init_printk(ptr noundef readnone %0) #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = icmp eq ptr %0, @global_trace
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr @trace_percpu_buffer, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = tail call noalias ptr @__alloc_percpu(i32 noundef 4100, i32 noundef 4) #37
  %10 = icmp eq ptr %9, null
  %11 = load i1, ptr @alloc_percpu_trace_buffer.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %16, !prof !11

14:                                               ; preds = %8
  store i1 true, ptr @alloc_percpu_trace_buffer.__already_done, align 1
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #38
  br label %16

16:                                               ; preds = %14, %8
  br i1 %10, label %18, label %17

17:                                               ; preds = %16
  store ptr %9, ptr @trace_percpu_buffer, align 4
  br label %18

18:                                               ; preds = %17, %16, %5, %3, %1
  %19 = phi i32 [ -2, %1 ], [ -22, %3 ], [ 0, %17 ], [ 0, %5 ], [ -12, %16 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_vprintk(i32 noundef %0, ptr noundef %1, [1 x i32] %2) #5 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 2, i32 1), align 4
  %5 = tail call fastcc i32 @__trace_array_vprintk(ptr noundef %4, i32 noundef %0, ptr noundef %1, [1 x i32] %2) #34
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_check_vprintf(ptr noundef %0, ptr noundef %1, [1 x i32] %2) local_unnamed_addr #5 {
  %4 = extractvalue [1 x i32] %2, 0
  %5 = inttoptr i32 %4 to ptr
  %6 = icmp eq ptr %1, null
  %7 = load i1, ptr @trace_check_vprintf.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !11

10:                                               ; preds = %3
  store i1 true, ptr @trace_check_vprintf.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3772, i32 noundef 9, ptr noundef null) #34
  br label %11

11:                                               ; preds = %10, %3
  br i1 %6, label %216, label %12

12:                                               ; preds = %11
  %13 = load volatile i32, ptr @trace_no_verify, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %207, label %15, !prof !11

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 10
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, @static_fmt_buf
  br i1 %18, label %207, label %19

19:                                               ; preds = %15
  %20 = load i8, ptr %1, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %216, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 11
  %24 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %25 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 2
  %26 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %27 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 19
  %28 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %29 = ptrtoint ptr %28 to i32
  %30 = add i32 %29, 4096
  br label %31

31:                                               ; preds = %201, %22
  %32 = phi i8 [ %20, %22 ], [ %205, %201 ]
  %33 = phi ptr [ %5, %22 ], [ %110, %201 ]
  %34 = phi ptr [ %1, %22 ], [ %204, %201 ]
  %35 = load i32, ptr %23, align 4
  br label %36

36:                                               ; preds = %86, %31
  %37 = phi i8 [ %89, %86 ], [ %32, %31 ]
  %38 = phi i32 [ %59, %86 ], [ %35, %31 ]
  %39 = phi ptr [ %88, %86 ], [ %34, %31 ]
  %40 = phi i32 [ %87, %86 ], [ 0, %31 ]
  %41 = add i32 %40, 1
  %42 = icmp ult i32 %41, %38
  br i1 %42, label %57, label %43

43:                                               ; preds = %36
  %44 = load ptr, ptr %0, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %207, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %16, align 8
  %48 = icmp eq ptr %47, @static_fmt_buf
  br i1 %48, label %207, label %49

49:                                               ; preds = %46
  %50 = add i32 %38, 128
  %51 = tail call noalias ptr @krealloc(ptr noundef %47, i32 noundef %50, i32 noundef 3264) #40
  %52 = icmp eq ptr %51, null
  br i1 %52, label %207, label %53

53:                                               ; preds = %49
  %54 = load i32, ptr %23, align 4
  %55 = add i32 %54, 128
  store i32 %55, ptr %23, align 4
  store ptr %51, ptr %16, align 8
  %56 = load i8, ptr %39, align 1
  br label %57

57:                                               ; preds = %53, %36
  %58 = phi i8 [ %56, %53 ], [ %37, %36 ]
  %59 = phi i32 [ %55, %53 ], [ %38, %36 ]
  switch i8 %58, label %86 [
    i8 92, label %64
    i8 37, label %60
  ]

60:                                               ; preds = %57
  %61 = getelementptr i8, ptr %34, i32 %41
  %62 = load i8, ptr %61, align 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %86, label %70

64:                                               ; preds = %57
  %65 = getelementptr i8, ptr %34, i32 %41
  %66 = load i8, ptr %65, align 1
  %67 = icmp eq i8 %66, 0
  %68 = select i1 %67, i32 %40, i32 %41
  %69 = add i32 %68, 1
  br label %86

70:                                               ; preds = %79, %60
  %71 = phi i8 [ %84, %79 ], [ %62, %60 ]
  %72 = phi i8 [ %80, %79 ], [ 0, %60 ]
  %73 = phi i32 [ %81, %79 ], [ 1, %60 ]
  %74 = zext i8 %71 to i32
  %75 = add nsw i32 %74, -58
  %76 = icmp ult i32 %75, -10
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  switch i8 %71, label %86 [
    i8 46, label %79
    i8 42, label %78
    i8 115, label %91
  ]

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78, %77, %70
  %80 = phi i8 [ %72, %70 ], [ %72, %77 ], [ 1, %78 ]
  %81 = add i32 %73, 1
  %82 = add i32 %81, %40
  %83 = getelementptr i8, ptr %34, i32 %82
  %84 = load i8, ptr %83, align 1
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %70

86:                                               ; preds = %79, %77, %64, %60, %57
  %87 = phi i32 [ %41, %60 ], [ %69, %64 ], [ %41, %57 ], [ %41, %77 ], [ %41, %79 ]
  %88 = getelementptr i8, ptr %34, i32 %87
  %89 = load i8, ptr %88, align 1
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %207, label %36

91:                                               ; preds = %77
  %92 = and i8 %72, 1
  %93 = icmp eq i8 %92, 0
  %94 = load ptr, ptr %16, align 8
  %95 = tail call ptr @strncpy(ptr noundef %94, ptr noundef %34, i32 noundef %40)
  %96 = load ptr, ptr %16, align 8
  %97 = getelementptr i8, ptr %96, i32 %40
  store i8 0, ptr %97, align 1
  %98 = load ptr, ptr %16, align 8
  %99 = ptrtoint ptr %33 to i32
  %100 = insertvalue [1 x i32] poison, i32 %99, 0
  tail call void @trace_seq_vprintf(ptr noundef %24, ptr noundef %98, [1 x i32] %100) #34
  %101 = load i32, ptr %25, align 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %207

103:                                              ; preds = %91
  br i1 %93, label %107, label %104

104:                                              ; preds = %103
  %105 = getelementptr inbounds i8, ptr %33, i32 4
  %106 = load i32, ptr %33, align 4
  br label %107

107:                                              ; preds = %104, %103
  %108 = phi i32 [ %106, %104 ], [ 0, %103 ]
  %109 = phi ptr [ %105, %104 ], [ %33, %103 ]
  %110 = getelementptr inbounds i8, ptr %109, i32 4
  %111 = load ptr, ptr %109, align 4
  %112 = ptrtoint ptr %111 to i32
  %113 = load ptr, ptr %26, align 8
  %114 = icmp ugt ptr %113, %111
  br i1 %114, label %120, label %115

115:                                              ; preds = %107
  %116 = ptrtoint ptr %113 to i32
  %117 = load i32, ptr %27, align 4
  %118 = add i32 %117, %116
  %119 = icmp ugt i32 %118, %112
  br i1 %119, label %189, label %120

120:                                              ; preds = %115, %107
  %121 = icmp ule ptr %28, %111
  %122 = icmp ugt i32 %30, %112
  %123 = select i1 %121, i1 %122, i1 false
  br i1 %123, label %189, label %124

124:                                              ; preds = %120
  %125 = icmp uge ptr %111, @__start_rodata
  %126 = icmp ult ptr %111, @__end_rodata
  %127 = and i1 %125, %126
  br i1 %127, label %189, label %128

128:                                              ; preds = %124
  %129 = tail call zeroext i1 @trace_is_tracepoint_string(ptr noundef %111) #34
  br i1 %129, label %189, label %130

130:                                              ; preds = %128
  %131 = load ptr, ptr %26, align 8
  %132 = icmp eq ptr %131, null
  br i1 %132, label %157, label %133

133:                                              ; preds = %130
  %134 = load i16, ptr %131, align 4
  %135 = zext i16 %134 to i32
  %136 = tail call ptr @ftrace_find_event(i32 noundef %135) #34
  %137 = icmp eq ptr %136, null
  br i1 %137, label %157, label %138

138:                                              ; preds = %133
  %139 = getelementptr i8, ptr %136, i32 40
  %140 = load i32, ptr %139, align 4
  %141 = and i32 %140, 32
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %157

143:                                              ; preds = %138
  %144 = getelementptr i8, ptr %136, i32 32
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %157, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.module, ptr %145, i32 0, i32 23
  %149 = load ptr, ptr %148, align 64
  %150 = icmp ugt ptr %149, %111
  br i1 %150, label %157, label %151

151:                                              ; preds = %147
  %152 = ptrtoint ptr %149 to i32
  %153 = getelementptr inbounds %struct.module, ptr %145, i32 0, i32 23, i32 1
  %154 = load i32, ptr %153, align 4
  %155 = add i32 %154, %152
  %156 = icmp ugt i32 %155, %112
  br label %157

157:                                              ; preds = %151, %147, %143, %138, %133, %130
  %158 = phi i1 [ false, %130 ], [ false, %133 ], [ false, %143 ], [ false, %138 ], [ false, %147 ], [ %156, %151 ]
  %159 = load i1, ptr @trace_check_vprintf.__already_done.26, align 1
  %160 = select i1 %158, i1 true, i1 %159
  br i1 %160, label %163, label %161, !prof !19

161:                                              ; preds = %157
  store i1 true, ptr @trace_check_vprintf.__already_done.26, align 1
  %162 = tail call fastcc ptr @show_buffer(ptr noundef %24)
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3859, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef nonnull %1, ptr noundef %162) #34
  br label %164

163:                                              ; preds = %157
  br i1 %158, label %189, label %164

164:                                              ; preds = %163, %161
  br i1 %93, label %176, label %165

165:                                              ; preds = %164
  %166 = add i32 %108, 1
  %167 = load i32, ptr %23, align 4
  %168 = icmp ugt i32 %166, %167
  %169 = add i32 %167, -1
  %170 = select i1 %168, i32 %169, i32 %108
  %171 = tail call i32 @llvm.smax.i32(i32 %170, i32 0)
  %172 = load ptr, ptr %16, align 8
  %173 = tail call i32 @copy_from_kernel_nofault(ptr noundef %172, ptr noundef %111, i32 noundef %171) #34
  %174 = load ptr, ptr %16, align 8
  %175 = getelementptr i8, ptr %174, i32 %171
  store i8 0, ptr %175, align 1
  br label %180

176:                                              ; preds = %164
  %177 = load ptr, ptr %16, align 8
  %178 = load i32, ptr %23, align 4
  %179 = tail call i32 @strncpy_from_kernel_nofault(ptr noundef %177, ptr noundef %111, i32 noundef %178) #34
  br label %180

180:                                              ; preds = %176, %165
  %181 = phi i32 [ %173, %165 ], [ %179, %176 ]
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %24, ptr noundef nonnull @.str.28, ptr noundef %111) #34
  br label %186

184:                                              ; preds = %180
  %185 = load ptr, ptr %16, align 8
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %24, ptr noundef nonnull @.str.29, ptr noundef %111, ptr noundef %185) #34
  br label %186

186:                                              ; preds = %184, %183
  %187 = load ptr, ptr %16, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %187, ptr noundef nonnull align 1 dereferenceable(3) @.str.31, i32 3, i1 false)
  %188 = add i32 %73, 1
  br label %197

189:                                              ; preds = %163, %128, %124, %120, %115
  %190 = load ptr, ptr %16, align 8
  %191 = add i32 %73, 1
  %192 = tail call ptr @strncpy(ptr noundef %190, ptr noundef %39, i32 noundef %191)
  %193 = load ptr, ptr %16, align 8
  %194 = getelementptr i8, ptr %193, i32 %191
  store i8 0, ptr %194, align 1
  br i1 %93, label %197, label %195

195:                                              ; preds = %189
  %196 = load ptr, ptr %16, align 8
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %24, ptr noundef %196, i32 noundef %108, ptr noundef %111) #34
  br label %201

197:                                              ; preds = %189, %186
  %198 = phi i32 [ %188, %186 ], [ %191, %189 ]
  %199 = phi ptr [ @.str.30, %186 ], [ %111, %189 ]
  %200 = load ptr, ptr %16, align 8
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %24, ptr noundef %200, ptr noundef %199) #34
  br label %201

201:                                              ; preds = %197, %195
  %202 = phi i32 [ %191, %195 ], [ %198, %197 ]
  %203 = add i32 %202, %40
  %204 = getelementptr i8, ptr %34, i32 %203
  %205 = load i8, ptr %204, align 1
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %216, label %31

207:                                              ; preds = %91, %86, %49, %46, %43, %15, %12
  %208 = phi ptr [ %1, %15 ], [ %1, %12 ], [ %34, %49 ], [ %34, %43 ], [ %34, %46 ], [ %34, %86 ], [ @.str.25, %91 ]
  %209 = phi ptr [ %5, %15 ], [ %5, %12 ], [ %33, %49 ], [ %33, %43 ], [ %33, %46 ], [ %33, %86 ], [ %33, %91 ]
  %210 = load i8, ptr %208, align 1
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %216, label %212

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %214 = ptrtoint ptr %209 to i32
  %215 = insertvalue [1 x i32] poison, i32 %214, 0
  tail call void @trace_seq_vprintf(ptr noundef %213, ptr noundef %208, [1 x i32] %215) #34
  br label %216

216:                                              ; preds = %212, %207, %201, %19, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @trace_iter_expand_format(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, @static_fmt_buf
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 128
  %12 = tail call noalias ptr @krealloc(ptr noundef %6, i32 noundef %11, i32 noundef 3264) #40
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = load i32, ptr %9, align 4
  %16 = add i32 %15, 128
  store i32 %16, ptr %9, align 4
  store ptr %12, ptr %5, align 8
  br label %17

17:                                               ; preds = %14, %8, %4, %1
  %18 = phi ptr [ null, %4 ], [ null, %1 ], [ %12, %14 ], [ null, %8 ]
  ret ptr %18
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #19

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_vprintf(ptr noundef, ptr noundef, [1 x i32]) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @show_buffer(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !11

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.84, i32 noundef 90, i32 noundef 9, ptr noundef null) #34
  br label %17

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = icmp ugt i32 %4, %9
  %11 = load ptr, ptr %2, align 8
  br i1 %10, label %12, label %14

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %11, i32 %9
  store i8 0, ptr %13, align 1
  br label %17

14:                                               ; preds = %7
  %15 = add i32 %4, -1
  %16 = getelementptr i8, ptr %11, i32 %15
  store i8 0, ptr %16, align 1
  br label %17

17:                                               ; preds = %14, %12, %6
  %18 = load ptr, ptr %2, align 8
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_from_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @trace_event_format(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %1, null
  %4 = load i1, ptr @trace_event_format.__already_done, align 1
  %5 = xor i1 %4, true
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %8, !prof !11

7:                                                ; preds = %2
  store i1 true, ptr @trace_event_format.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3903, i32 noundef 9, ptr noundef null) #34
  br label %8

8:                                                ; preds = %7, %2
  br i1 %3, label %80, label %9

9:                                                ; preds = %8
  %10 = load ptr, ptr %0, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %80, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.trace_array, ptr %10, i32 0, i32 14
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 8388608
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %80

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 10
  %19 = load ptr, ptr %18, align 8
  %20 = load i8, ptr %1, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %77, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 11
  br label %24

24:                                               ; preds = %72, %22
  %25 = phi i8 [ %20, %22 ], [ %73, %72 ]
  %26 = phi ptr [ %1, %22 ], [ %75, %72 ]
  %27 = phi ptr [ %19, %22 ], [ %74, %72 ]
  %28 = phi ptr [ %19, %22 ], [ %46, %72 ]
  %29 = ptrtoint ptr %27 to i32
  %30 = ptrtoint ptr %28 to i32
  %31 = sub i32 3, %30
  %32 = add i32 %31, %29
  %33 = load i32, ptr %23, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %35, label %44, !prof !11

35:                                               ; preds = %24
  %36 = tail call fastcc ptr @trace_iter_expand_format(ptr noundef %0)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %80, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %18, align 8
  %40 = ptrtoint ptr %39 to i32
  %41 = sub i32 %40, %30
  %42 = getelementptr i8, ptr %27, i32 %41
  %43 = load i8, ptr %26, align 1
  br label %44

44:                                               ; preds = %38, %24
  %45 = phi i8 [ %43, %38 ], [ %25, %24 ]
  %46 = phi ptr [ %39, %38 ], [ %28, %24 ]
  %47 = phi ptr [ %42, %38 ], [ %27, %24 ]
  %48 = getelementptr i8, ptr %26, i32 1
  %49 = getelementptr i8, ptr %47, i32 1
  store i8 %45, ptr %47, align 1
  %50 = load i8, ptr %26, align 1
  %51 = icmp eq i8 %50, 37
  br i1 %51, label %52, label %68

52:                                               ; preds = %44
  %53 = load i8, ptr %48, align 1
  switch i8 %53, label %72 [
    i8 37, label %54
    i8 112, label %57
  ]

54:                                               ; preds = %52
  %55 = getelementptr i8, ptr %26, i32 2
  %56 = getelementptr i8, ptr %47, i32 2
  store i8 37, ptr %49, align 1
  br label %68

57:                                               ; preds = %52
  %58 = getelementptr i8, ptr %26, i32 2
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %60
  %62 = load i8, ptr %61, align 1
  %63 = and i8 %62, 7
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = getelementptr i8, ptr %47, i32 2
  store i8 112, ptr %49, align 1
  %67 = getelementptr i8, ptr %47, i32 3
  store i8 120, ptr %66, align 1
  br label %68

68:                                               ; preds = %65, %57, %54, %44
  %69 = phi ptr [ %49, %44 ], [ %67, %65 ], [ %49, %57 ], [ %56, %54 ]
  %70 = phi ptr [ %48, %44 ], [ %58, %65 ], [ %48, %57 ], [ %55, %54 ]
  %71 = load i8, ptr %70, align 1
  br label %72

72:                                               ; preds = %68, %52
  %73 = phi i8 [ %71, %68 ], [ %53, %52 ]
  %74 = phi ptr [ %69, %68 ], [ %49, %52 ]
  %75 = phi ptr [ %70, %68 ], [ %48, %52 ]
  %76 = icmp eq i8 %73, 0
  br i1 %76, label %77, label %24

77:                                               ; preds = %72, %17
  %78 = phi ptr [ %19, %17 ], [ %46, %72 ]
  %79 = phi ptr [ %19, %17 ], [ %74, %72 ]
  store i8 0, ptr %79, align 1
  br label %80

80:                                               ; preds = %77, %35, %12, %9, %8
  %81 = phi ptr [ %78, %77 ], [ null, %8 ], [ %1, %12 ], [ %1, %9 ], [ %1, %35 ]
  ret ptr %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @trace_find_next_entry(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 19
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, @static_temp_buf
  %9 = icmp sgt i32 %5, 128
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %47, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  %15 = icmp eq ptr %13, %7
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %45, label %17

17:                                               ; preds = %11
  %18 = icmp eq ptr %7, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %21, %5
  br i1 %22, label %23, label %40

23:                                               ; preds = %19, %17
  %24 = load i1, ptr @trace_find_next_entry.__already_done, align 1
  %25 = xor i1 %24, true
  %26 = select i1 %8, i1 %25, i1 false
  br i1 %26, label %27, label %28, !prof !11

27:                                               ; preds = %23
  store i1 true, ptr @trace_find_next_entry.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3967, i32 noundef 9, ptr noundef null) #34
  br label %28

28:                                               ; preds = %27, %23
  br i1 %8, label %29, label %32

29:                                               ; preds = %28
  %30 = load ptr, ptr %6, align 8
  %31 = load i32, ptr %4, align 4
  br label %40

32:                                               ; preds = %28
  %33 = load i32, ptr %4, align 4
  %34 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %33, i32 noundef 3264) #37
  %35 = icmp eq ptr %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %6, align 8
  tail call void @kfree(ptr noundef %37) #34
  store ptr %34, ptr %6, align 8
  %38 = load i32, ptr %4, align 4
  %39 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 9
  store i32 %38, ptr %39, align 4
  br label %40

40:                                               ; preds = %36, %29, %19
  %41 = phi i32 [ %31, %29 ], [ %38, %36 ], [ %5, %19 ]
  %42 = phi ptr [ %30, %29 ], [ %34, %36 ], [ %7, %19 ]
  %43 = load ptr, ptr %12, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %42, ptr align 4 %43, i32 %41, i1 false)
  %44 = load ptr, ptr %6, align 8
  store ptr %44, ptr %12, align 8
  br label %45

45:                                               ; preds = %40, %11
  %46 = tail call fastcc ptr @__find_next_entry(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef %2)
  store i32 %5, ptr %4, align 4
  br label %47

47:                                               ; preds = %45, %32, %3
  %48 = phi ptr [ %46, %45 ], [ null, %3 ], [ null, %32 ]
  ret ptr %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__find_next_entry(ptr nocapture noundef %0, ptr noundef writeonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #5 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.array_buffer, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #34
  store i32 0, ptr %5, align 4
  %11 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #34
  store i64 0, ptr %6, align 8, !annotation !26
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 19
  br label %62

17:                                               ; preds = %4
  %18 = tail call zeroext i1 @ring_buffer_empty_cpu(ptr noundef %10, i32 noundef %12) #34
  br i1 %18, label %80, label %19

19:                                               ; preds = %17
  %20 = tail call fastcc ptr @peek_next_entry(ptr noundef %0, i32 noundef %12, ptr noundef %3, ptr noundef %2)
  %21 = icmp eq ptr %1, null
  br i1 %21, label %80, label %22

22:                                               ; preds = %19
  store i32 %12, ptr %1, align 4
  br label %80

23:                                               ; preds = %69, %28
  %24 = phi i32 [ %25, %28 ], [ %70, %69 ]
  %25 = call i32 @cpumask_next(i32 noundef %24, ptr noundef nonnull @tracing_buffer_mask) #41
  %26 = load i32, ptr @nr_cpu_ids, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %71

28:                                               ; preds = %23
  %29 = call zeroext i1 @ring_buffer_empty_cpu(ptr noundef %10, i32 noundef %25) #34
  br i1 %29, label %23, label %30

30:                                               ; preds = %28
  %31 = load ptr, ptr %15, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = getelementptr ptr, ptr %31, i32 %25
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = call ptr @ring_buffer_iter_peek(ptr noundef nonnull %35, ptr noundef nonnull %6) #34
  %39 = call zeroext i1 @ring_buffer_iter_dropped(ptr noundef nonnull %35) #34
  %40 = sext i1 %39 to i32
  store i32 %40, ptr %5, align 4
  br label %46

41:                                               ; preds = %33, %30
  %42 = load ptr, ptr %7, align 8
  %43 = getelementptr inbounds %struct.array_buffer, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = call ptr @ring_buffer_peek(ptr noundef %44, i32 noundef %25, ptr noundef nonnull %6, ptr noundef nonnull %5) #34
  br label %46

46:                                               ; preds = %41, %37
  %47 = phi ptr [ %38, %37 ], [ %45, %41 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  store i32 0, ptr %16, align 4
  br label %50

50:                                               ; preds = %55, %51, %49
  br label %69

51:                                               ; preds = %46
  %52 = call i32 @ring_buffer_event_length(ptr noundef nonnull %47) #34
  store i32 %52, ptr %16, align 4
  %53 = call ptr @ring_buffer_event_data(ptr noundef nonnull %47) #34
  %54 = icmp eq ptr %53, null
  br i1 %54, label %50, label %55

55:                                               ; preds = %51
  %56 = load i64, ptr %6, align 8
  %57 = icmp ult i64 %56, %65
  %58 = select i1 %68, i1 true, i1 %57
  br i1 %58, label %59, label %50

59:                                               ; preds = %55
  %60 = load i32, ptr %5, align 4
  %61 = load i32, ptr %16, align 4
  br label %62

62:                                               ; preds = %59, %14
  %63 = phi ptr [ %53, %59 ], [ null, %14 ]
  %64 = phi i32 [ %60, %59 ], [ 0, %14 ]
  %65 = phi i64 [ %56, %59 ], [ 0, %14 ]
  %66 = phi i32 [ %61, %59 ], [ 0, %14 ]
  %67 = phi i32 [ %25, %59 ], [ -1, %14 ]
  %68 = icmp eq ptr %63, null
  br label %69

69:                                               ; preds = %62, %50
  %70 = phi i32 [ %67, %62 ], [ %25, %50 ]
  br label %23

71:                                               ; preds = %23
  store i32 %66, ptr %16, align 4
  %72 = icmp eq ptr %1, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %71
  store i32 %67, ptr %1, align 4
  br label %74

74:                                               ; preds = %73, %71
  %75 = icmp eq ptr %3, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %74
  store i64 %65, ptr %3, align 8
  br label %77

77:                                               ; preds = %76, %74
  %78 = icmp eq ptr %2, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %77
  store i32 %64, ptr %2, align 4
  br label %80

80:                                               ; preds = %79, %77, %22, %19, %17
  %81 = phi ptr [ null, %17 ], [ %20, %22 ], [ %20, %19 ], [ %63, %79 ], [ %63, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #34
  ret ptr %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @trace_find_next_entry_inc(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 20
  %3 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 17
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 21
  %5 = tail call fastcc ptr @__find_next_entry(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %6 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  store ptr %5, ptr %6, align 8
  %7 = icmp eq ptr %5, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 23
  %14 = load i32, ptr %13, align 8
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 8
  br label %26

16:                                               ; preds = %8
  %17 = load i32, ptr %2, align 8
  %18 = getelementptr ptr, ptr %10, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 23
  %21 = load i32, ptr %20, align 8
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 8
  %23 = icmp eq ptr %19, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  tail call void @ring_buffer_iter_advance(ptr noundef nonnull %19) #34
  %25 = load ptr, ptr %6, align 8
  br label %26

26:                                               ; preds = %24, %16, %12, %1
  %27 = phi ptr [ %25, %24 ], [ %5, %16 ], [ %5, %12 ], [ null, %1 ]
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, ptr null, ptr %0
  ret ptr %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tracing_iter_reset(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #34
  store i64 0, ptr %3, align 8, !annotation !26
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.array_buffer, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %7 to i32
  %9 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %8
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_array_cpu, ptr %12, i32 0, i32 10
  store i32 0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 6
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %45, label %17

17:                                               ; preds = %2
  %18 = getelementptr ptr, ptr %15, i32 %1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %45, label %21

21:                                               ; preds = %17
  tail call void @ring_buffer_iter_reset(ptr noundef nonnull %19) #34
  %22 = call ptr @ring_buffer_iter_peek(ptr noundef nonnull %19, ptr noundef nonnull %3) #34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %31, %21
  %25 = phi i32 [ %32, %31 ], [ 0, %21 ]
  %26 = load i64, ptr %3, align 8
  %27 = load ptr, ptr %4, align 8
  %28 = getelementptr inbounds %struct.array_buffer, ptr %27, i32 0, i32 3
  %29 = load i64, ptr %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = add i32 %25, 1
  call void @ring_buffer_iter_advance(ptr noundef nonnull %19) #34
  %33 = call ptr @ring_buffer_iter_peek(ptr noundef nonnull %19, ptr noundef nonnull %3) #34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %24

35:                                               ; preds = %31, %24, %21
  %36 = phi i32 [ 0, %21 ], [ %25, %24 ], [ %32, %31 ]
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr inbounds %struct.array_buffer, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8
  %40 = ptrtoint ptr %39 to i32
  %41 = load i32, ptr %9, align 4
  %42 = add i32 %41, %40
  %43 = inttoptr i32 %42 to ptr
  %44 = getelementptr inbounds %struct.trace_array_cpu, ptr %43, i32 0, i32 10
  store i32 %36, ptr %44, align 8
  br label %45

45:                                               ; preds = %35, %17, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_buffer_iter_reset(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ring_buffer_iter_peek(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_buffer_iter_advance(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_total_entries_cpu(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  %4 = select i1 %3, ptr @global_trace, ptr %0
  %5 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @ring_buffer_entries_cpu(ptr noundef %6, i32 noundef %1) #34
  %8 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 2, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = ptrtoint ptr %9 to i32
  %11 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %10
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_array_cpu, ptr %14, i32 0, i32 10
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = sub i32 %7, %16
  br label %23

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 4
  %22 = tail call i32 @ring_buffer_overrun_cpu(ptr noundef %21, i32 noundef %1) #34
  br label %23

23:                                               ; preds = %20, %18
  %24 = phi i32 [ %7, %20 ], [ %19, %18 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_total_entries(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @tracing_buffer_mask) #41
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = icmp ult i32 %2, %3
  br i1 %4, label %5, label %35

5:                                                ; preds = %1
  %6 = icmp eq ptr %0, null
  %7 = select i1 %6, ptr @global_trace, ptr %0
  %8 = getelementptr inbounds %struct.trace_array, ptr %7, i32 0, i32 2, i32 1
  %9 = getelementptr inbounds %struct.trace_array, ptr %7, i32 0, i32 2, i32 2
  br label %10

10:                                               ; preds = %29, %5
  %11 = phi i32 [ 0, %5 ], [ %31, %29 ]
  %12 = phi i32 [ %2, %5 ], [ %32, %29 ]
  %13 = load ptr, ptr %8, align 4
  %14 = tail call i32 @ring_buffer_entries_cpu(ptr noundef %13, i32 noundef %12) #34
  %15 = load ptr, ptr %9, align 8
  %16 = ptrtoint ptr %15 to i32
  %17 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %16
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.trace_array_cpu, ptr %20, i32 0, i32 10
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %10
  %25 = sub i32 %14, %22
  br label %29

26:                                               ; preds = %10
  %27 = load ptr, ptr %8, align 4
  %28 = tail call i32 @ring_buffer_overrun_cpu(ptr noundef %27, i32 noundef %12) #34
  br label %29

29:                                               ; preds = %26, %24
  %30 = phi i32 [ %14, %26 ], [ %25, %24 ]
  %31 = add i32 %30, %11
  %32 = tail call i32 @cpumask_next(i32 noundef %12, ptr noundef nonnull @tracing_buffer_mask) #41
  %33 = load i32, ptr @nr_cpu_ids, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %10, label %35

35:                                               ; preds = %29, %1
  %36 = phi i32 [ 0, %1 ], [ %31, %29 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @print_trace_header(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = load i32, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 14), align 4
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.array_buffer, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %7 to i32
  %9 = getelementptr inbounds %struct.array_buffer, ptr %5, i32 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %8
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_iterator, ptr %1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @tracing_buffer_mask) #41
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %52

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.array_buffer, ptr %5, i32 0, i32 1
  br label %23

23:                                               ; preds = %44, %21
  %24 = phi i32 [ 0, %21 ], [ %48, %44 ]
  %25 = phi i32 [ 0, %21 ], [ %47, %44 ]
  %26 = phi i32 [ %18, %21 ], [ %49, %44 ]
  %27 = load ptr, ptr %22, align 4
  %28 = tail call i32 @ring_buffer_entries_cpu(ptr noundef %27, i32 noundef %26) #34
  %29 = load ptr, ptr %6, align 8
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %30
  %34 = inttoptr i32 %33 to ptr
  %35 = getelementptr inbounds %struct.trace_array_cpu, ptr %34, i32 0, i32 10
  %36 = load i32, ptr %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %23
  %39 = sub i32 %28, %36
  br label %44

40:                                               ; preds = %23
  %41 = load ptr, ptr %22, align 4
  %42 = tail call i32 @ring_buffer_overrun_cpu(ptr noundef %41, i32 noundef %26) #34
  %43 = add i32 %42, %28
  br label %44

44:                                               ; preds = %40, %38
  %45 = phi i32 [ %43, %40 ], [ %39, %38 ]
  %46 = phi i32 [ %28, %40 ], [ %39, %38 ]
  %47 = add i32 %45, %25
  %48 = add i32 %46, %24
  %49 = tail call i32 @cpumask_next(i32 noundef %26, ptr noundef nonnull @tracing_buffer_mask) #41
  %50 = load i32, ptr @nr_cpu_ids, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %23, label %52

52:                                               ; preds = %44, %2
  %53 = phi i32 [ 0, %2 ], [ %48, %44 ]
  %54 = phi i32 [ 0, %2 ], [ %47, %44 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef %17, ptr noundef nonnull @.str.34) #34
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.35) #34
  %55 = getelementptr inbounds %struct.trace_array_cpu, ptr %14, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = udiv i32 %56, 1000
  %58 = load i32, ptr %9, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %57, i32 noundef %53, i32 noundef %54, i32 noundef %58, ptr noundef nonnull @.str.37, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #34
  %59 = load volatile i32, ptr @__num_online_cpus, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.38, i32 noundef %59) #34
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.39) #34
  %60 = getelementptr inbounds %struct.trace_array_cpu, ptr %14, i32 0, i32 14
  %61 = getelementptr inbounds %struct.trace_array_cpu, ptr %14, i32 0, i32 12
  %62 = load i32, ptr %61, align 8
  %63 = getelementptr inbounds %struct.trace_array_cpu, ptr %14, i32 0, i32 13
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, -1
  %66 = load i32, ptr @overflowuid, align 4
  %67 = select i1 %65, i32 %66, i32 %64
  %68 = getelementptr inbounds %struct.trace_array_cpu, ptr %14, i32 0, i32 7
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.trace_array_cpu, ptr %14, i32 0, i32 8
  %71 = load i32, ptr %70, align 8
  %72 = getelementptr inbounds %struct.trace_array_cpu, ptr %14, i32 0, i32 9
  %73 = load i32, ptr %72, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.40, ptr noundef %60, i32 noundef %62, i32 noundef %67, i32 noundef %69, i32 noundef %71, i32 noundef %73) #34
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.39) #34
  %74 = getelementptr inbounds %struct.trace_array_cpu, ptr %14, i32 0, i32 4
  %75 = load i32, ptr %74, align 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %52
  %78 = and i32 %3, 7
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.41) #34
  %79 = getelementptr inbounds %struct.trace_iterator, ptr %1, i32 0, i32 15
  %80 = load i32, ptr %74, align 8
  %81 = tail call i32 @seq_print_ip_sym(ptr noundef %79, i32 noundef %80, i32 noundef %78) #34
  %82 = tail call i32 @trace_print_seq(ptr noundef %0, ptr noundef %79) #34
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.42) #34
  %83 = getelementptr inbounds %struct.trace_array_cpu, ptr %14, i32 0, i32 5
  %84 = load i32, ptr %83, align 4
  %85 = tail call i32 @seq_print_ip_sym(ptr noundef %79, i32 noundef %84, i32 noundef %78) #34
  %86 = tail call i32 @trace_print_seq(ptr noundef %0, ptr noundef %79) #34
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.43) #34
  br label %87

87:                                               ; preds = %77, %52
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.44) #34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_print_ip_sym(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_print_seq(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_empty(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @tracing_buffer_mask) #41
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %50

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 2
  br label %30

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = getelementptr ptr, ptr %14, i32 %3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @ring_buffer_iter_empty(ptr noundef nonnull %18) #34
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %50, label %29

23:                                               ; preds = %16, %12
  %24 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.array_buffer, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = tail call zeroext i1 @ring_buffer_empty_cpu(ptr noundef %27, i32 noundef %3) #34
  br i1 %28, label %29, label %50

29:                                               ; preds = %23, %20
  br label %50

30:                                               ; preds = %46, %9
  %31 = phi i32 [ %6, %9 ], [ %47, %46 ]
  %32 = load ptr, ptr %10, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = getelementptr ptr, ptr %32, i32 %31
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = tail call i32 @ring_buffer_iter_empty(ptr noundef nonnull %36) #34
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %50, label %46

41:                                               ; preds = %34, %30
  %42 = load ptr, ptr %11, align 8
  %43 = getelementptr inbounds %struct.array_buffer, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = tail call zeroext i1 @ring_buffer_empty_cpu(ptr noundef %44, i32 noundef %31) #34
  br i1 %45, label %46, label %50

46:                                               ; preds = %41, %38
  %47 = tail call i32 @cpumask_next(i32 noundef %31, ptr noundef nonnull @tracing_buffer_mask) #41
  %48 = load i32, ptr @nr_cpu_ids, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %30, label %50

50:                                               ; preds = %46, %41, %38, %29, %23, %20, %5
  %51 = phi i32 [ 1, %29 ], [ 0, %20 ], [ 0, %23 ], [ 1, %5 ], [ 0, %38 ], [ 0, %41 ], [ 1, %46 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ring_buffer_iter_empty(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ring_buffer_empty_cpu(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @print_trace_line(ptr noundef %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.trace_array, ptr %2, i32 0, i32 14
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %11 [
    i32 0, label %25
    i32 -1, label %7
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 20
  %10 = load i32, ptr %9, align 8
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %8, ptr noundef nonnull @.str.45, i32 noundef %10) #34
  br label %15

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %13 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 20
  %14 = load i32, ptr %13, align 8
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %12, ptr noundef nonnull @.str.46, i32 noundef %14, i32 noundef %6) #34
  br label %15

15:                                               ; preds = %11, %7
  %16 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %109

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 1, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 1, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp ugt i32 %21, %23
  br i1 %24, label %109, label %25

25:                                               ; preds = %19, %1
  %26 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tracer, ptr %27, i32 0, i32 13
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = tail call i32 %31(ptr noundef %0) #34
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %109

36:                                               ; preds = %33, %29, %25
  %37 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %38 = load ptr, ptr %37, align 8
  %39 = load i16, ptr %38, align 4
  %40 = icmp ne i16 %39, 14
  %41 = and i32 %4, 256
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %40, i1 true, i1 %42
  %44 = and i32 %4, 4096
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %43, i1 true, i1 %45
  br i1 %46, label %49, label %47

47:                                               ; preds = %36
  %48 = tail call i32 @trace_print_bputs_msg_only(ptr noundef %0) #34
  br label %109

49:                                               ; preds = %36
  %50 = icmp ne i16 %39, 6
  %51 = select i1 %50, i1 true, i1 %42
  %52 = select i1 %51, i1 true, i1 %45
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = tail call i32 @trace_print_bprintk_msg_only(ptr noundef %0) #34
  br label %109

55:                                               ; preds = %49
  %56 = icmp ne i16 %39, 5
  %57 = select i1 %56, i1 true, i1 %42
  %58 = select i1 %57, i1 true, i1 %45
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = tail call i32 @trace_print_printk_msg_only(ptr noundef %0) #34
  br label %109

61:                                               ; preds = %55
  %62 = and i32 %4, 64
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %97, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %0, align 8
  %66 = getelementptr inbounds %struct.trace_array, ptr %65, i32 0, i32 14
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 8192
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %86, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %72 = getelementptr inbounds %struct.trace_entry, ptr %38, i32 0, i32 3
  tail call void @trace_seq_putmem(ptr noundef %71, ptr noundef %72, i32 noundef 4) #34
  %73 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 20
  tail call void @trace_seq_putmem(ptr noundef %71, ptr noundef %73, i32 noundef 4) #34
  %74 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 21
  tail call void @trace_seq_putmem(ptr noundef %71, ptr noundef %74, i32 noundef 8) #34
  %75 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 2
  %76 = load i32, ptr %75, align 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %109

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 1, i32 2
  %80 = load i32, ptr %79, align 8
  %81 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 1, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = icmp ugt i32 %80, %82
  br i1 %83, label %109, label %84

84:                                               ; preds = %78
  %85 = load i16, ptr %38, align 4
  br label %86

86:                                               ; preds = %84, %64
  %87 = phi i16 [ %85, %84 ], [ %39, %64 ]
  %88 = zext i16 %87 to i32
  %89 = tail call ptr @ftrace_find_event(i32 noundef %88) #34
  %90 = icmp eq ptr %89, null
  br i1 %90, label %109, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.trace_event, ptr %89, i32 0, i32 3
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.trace_event_functions, ptr %93, i32 0, i32 3
  %95 = load ptr, ptr %94, align 4
  %96 = tail call i32 %95(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %89) #34
  br label %109

97:                                               ; preds = %61
  %98 = and i32 %4, 32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = tail call fastcc i32 @print_hex_fmt(ptr noundef %0)
  br label %109

102:                                              ; preds = %97
  %103 = and i32 %4, 16
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %102
  %106 = tail call fastcc i32 @print_raw_fmt(ptr noundef %0)
  br label %109

107:                                              ; preds = %102
  %108 = tail call fastcc i32 @print_trace_fmt(ptr noundef %0)
  br label %109

109:                                              ; preds = %107, %105, %100, %91, %86, %78, %70, %59, %53, %47, %33, %19, %15
  %110 = phi i32 [ %48, %47 ], [ %54, %53 ], [ %60, %59 ], [ %101, %100 ], [ %106, %105 ], [ %108, %107 ], [ 0, %19 ], [ %34, %33 ], [ 0, %78 ], [ %96, %91 ], [ 1, %86 ], [ 0, %70 ], [ 0, %15 ]
  ret i32 %110
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_print_bputs_msg_only(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_print_bprintk_msg_only(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_print_printk_msg_only(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @print_hex_fmt(ptr noundef %0) unnamed_addr #5 {
  %2 = alloca i8, align 1
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #34
  store i8 10, ptr %2, align 1
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.trace_array, ptr %3, i32 0, i32 14
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 8192
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.trace_entry, ptr %6, i32 0, i32 3
  tail call void @trace_seq_putmem_hex(ptr noundef %4, ptr noundef %12, i32 noundef 4) #34
  %13 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 20
  tail call void @trace_seq_putmem_hex(ptr noundef %4, ptr noundef %13, i32 noundef 4) #34
  %14 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 21
  tail call void @trace_seq_putmem_hex(ptr noundef %4, ptr noundef %14, i32 noundef 8) #34
  %15 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 1, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 1, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %20, %22
  br i1 %23, label %47, label %24

24:                                               ; preds = %18, %1
  %25 = load i16, ptr %6, align 4
  %26 = zext i16 %25 to i32
  %27 = tail call ptr @ftrace_find_event(i32 noundef %26) #34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.trace_event, ptr %27, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.trace_event_functions, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 %33(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %27) #34
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %47

36:                                               ; preds = %29, %24
  call void @trace_seq_putmem(ptr noundef %4, ptr noundef nonnull %2, i32 noundef 1) #34
  %37 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 1, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 1, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp ule i32 %42, %44
  %46 = zext i1 %45 to i32
  br label %47

47:                                               ; preds = %40, %36, %29, %18, %11
  %48 = phi i32 [ %34, %29 ], [ 0, %18 ], [ 0, %36 ], [ %46, %40 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #34
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @print_raw_fmt(ptr noundef %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.trace_array, ptr %2, i32 0, i32 14
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 8192
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.trace_entry, ptr %5, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 20
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 21
  %16 = load i64, ptr %15, align 8
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %3, ptr noundef nonnull @.str.85, i32 noundef %12, i32 noundef %14, i64 noundef %16) #34
  br label %17

17:                                               ; preds = %10, %1
  %18 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 1, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 1, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp ugt i32 %23, %25
  br i1 %26, label %48, label %27

27:                                               ; preds = %21
  %28 = load i16, ptr %5, align 4
  %29 = zext i16 %28 to i32
  %30 = tail call ptr @ftrace_find_event(i32 noundef %29) #34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.trace_event, ptr %30, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.trace_event_functions, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %30) #34
  br label %48

38:                                               ; preds = %27
  %39 = load i16, ptr %5, align 4
  %40 = zext i16 %39 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %3, ptr noundef nonnull @.str.86, i32 noundef %40) #34
  %41 = load i32, ptr %18, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32, ptr %22, align 8
  %45 = load i32, ptr %24, align 4
  %46 = icmp ule i32 %44, %45
  %47 = zext i1 %46 to i32
  br label %48

48:                                               ; preds = %43, %38, %32, %21, %17
  %49 = phi i32 [ %37, %32 ], [ 0, %21 ], [ 0, %38 ], [ %47, %43 ], [ 0, %17 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @print_trace_fmt(ptr noundef %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %4 = getelementptr inbounds %struct.trace_array, ptr %2, i32 0, i32 14
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 7
  %7 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %8 = load ptr, ptr %7, align 8
  %9 = and i32 %5, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %46, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %46, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 13
  %18 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 20
  %19 = load i32, ptr %18, align 8
  %20 = lshr i32 %19, 5
  %21 = getelementptr i32, ptr %17, i32 %20
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %19, 31
  %24 = shl nuw i32 1, %23
  %25 = and i32 %24, %22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.array_buffer, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %32
  %36 = inttoptr i32 %35 to ptr
  %37 = getelementptr inbounds %struct.trace_array_cpu, ptr %36, i32 0, i32 10
  %38 = load i32, ptr %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %27
  tail call void @_set_bit(i32 noundef %19, ptr noundef %17) #34
  %41 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 23
  %42 = load i32, ptr %41, align 8
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, ptr %18, align 8
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %3, ptr noundef nonnull @.str.88, i32 noundef %45) #34
  br label %46

46:                                               ; preds = %44, %40, %27, %16, %11, %1
  %47 = load i16, ptr %8, align 4
  %48 = zext i16 %47 to i32
  %49 = tail call ptr @ftrace_find_event(i32 noundef %48) #34
  %50 = load i32, ptr %4, align 4
  %51 = and i32 %50, 8192
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 7
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = tail call i32 @trace_print_lat_context(ptr noundef %0) #34
  br label %62

60:                                               ; preds = %53
  %61 = tail call i32 @trace_print_context(ptr noundef %0) #34
  br label %62

62:                                               ; preds = %60, %58, %46
  %63 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 2
  %64 = load i32, ptr %63, align 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 1, i32 2
  %68 = load i32, ptr %67, align 8
  %69 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15, i32 1, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = icmp ugt i32 %68, %70
  br i1 %71, label %89, label %72

72:                                               ; preds = %66
  %73 = icmp eq ptr %49, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.trace_event, ptr %49, i32 0, i32 3
  %76 = load ptr, ptr %75, align 4
  %77 = load ptr, ptr %76, align 4
  %78 = tail call i32 %77(ptr noundef %0, i32 noundef %6, ptr noundef nonnull %49) #34
  br label %89

79:                                               ; preds = %72
  %80 = load i16, ptr %8, align 4
  %81 = zext i16 %80 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %3, ptr noundef nonnull @.str.87, i32 noundef %81) #34
  %82 = load i32, ptr %63, align 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i32, ptr %67, align 8
  %86 = load i32, ptr %69, align 4
  %87 = icmp ule i32 %85, %86
  %88 = zext i1 %87 to i32
  br label %89

89:                                               ; preds = %84, %79, %74, %66, %62
  %90 = phi i32 [ %78, %74 ], [ 0, %66 ], [ 0, %79 ], [ %88, %84 ], [ 0, %62 ]
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_latency_header(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @trace_empty(ptr noundef %3)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.trace_iterator, ptr %3, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @print_trace_header(ptr noundef %0, ptr noundef %3)
  br label %13

13:                                               ; preds = %12, %7
  %14 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 14
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.89) #34
  br label %19

19:                                               ; preds = %18, %13, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_default_header(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 8192
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %3, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  %15 = tail call i32 @trace_empty(ptr noundef %3)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %14
  tail call void @print_trace_header(ptr noundef %0, ptr noundef %3)
  %18 = and i32 %6, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.89) #34
  br label %36

21:                                               ; preds = %9
  %22 = and i32 %6, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = and i32 %6, 524288
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.trace_iterator, ptr %3, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = and i32 %6, 65536
  %30 = icmp eq i32 %29, 0
  br i1 %26, label %33, label %31

31:                                               ; preds = %24
  %32 = select i1 %30, i32 2, i32 12
  tail call fastcc void @print_event_info(ptr noundef %28, ptr noundef %0) #34
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.91, i32 noundef %32, ptr noundef nonnull @.str.90) #34
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.92, i32 noundef %32, ptr noundef nonnull @.str.90) #34
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.93, i32 noundef %32, ptr noundef nonnull @.str.90) #34
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.94, i32 noundef %32, ptr noundef nonnull @.str.90) #34
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.95, i32 noundef %32, ptr noundef nonnull @.str.90) #34
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.96, i32 noundef %32, ptr noundef nonnull @.str.90) #34
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.97, i32 noundef %32, ptr noundef nonnull @.str.98) #34
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.99, i32 noundef %32, ptr noundef nonnull @.str.100) #34
  br label %36

33:                                               ; preds = %24
  tail call fastcc void @print_event_info(ptr noundef %28, ptr noundef %0) #34
  %34 = select i1 %30, ptr @.str.25, ptr @.str.103
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.102, ptr noundef nonnull %34) #34
  %35 = select i1 %30, ptr @.str.25, ptr @.str.105
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.104, ptr noundef nonnull %35) #34
  br label %36

36:                                               ; preds = %33, %31, %21, %20, %17, %14, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @tracing_open_generic(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #20 {
  %3 = load i1, ptr @tracing_disabled, align 4
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %6, ptr %7, align 8
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi i32 [ 0, %4 ], [ -19, %2 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tracing_is_disabled() local_unnamed_addr #15 {
  %1 = load i1, ptr @tracing_disabled, align 4
  %2 = xor i1 %1, true
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tracing_open_generic_tr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = load i1, ptr @tracing_disabled, align 4
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = icmp eq ptr %4, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %6
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  br label %9

9:                                                ; preds = %13, %8
  %10 = phi ptr [ @ftrace_trace_arrays, %8 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @ftrace_trace_arrays
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = icmp eq ptr %11, %4
  br i1 %14, label %15, label %9

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 28
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  %19 = load ptr, ptr %3, align 4
  br label %21

20:                                               ; preds = %9
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %24

21:                                               ; preds = %15, %6
  %22 = phi ptr [ null, %6 ], [ %19, %15 ]
  %23 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %22, ptr %23, align 8
  br label %24

24:                                               ; preds = %21, %20, %2
  %25 = phi i32 [ 0, %21 ], [ -19, %20 ], [ -19, %2 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @tracing_lseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #5 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = tail call i64 @seq_lseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #34
  %10 = trunc i64 %9 to i32
  br label %13

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  store i64 0, ptr %12, align 8
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i32 [ %10, %8 ], [ 0, %11 ]
  %15 = sext i32 %14 to i64
  ret i64 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tracing_set_cpumask(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %73, label %4

4:                                                ; preds = %2
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #34, !srcloc !74
  %5 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #34, !srcloc !13
  %6 = tail call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr %5, i32 65536) #34, !srcloc !40
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = lshr i32 %7, 16
  %9 = and i32 %7, 65535
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %11, %4
  tail call void asm sideeffect "wfe", "~{memory}"() #34, !srcloc !41
  %12 = load volatile i16, ptr %5, align 4
  %13 = zext i16 %12 to i32
  %14 = icmp eq i32 %8, %13
  br i1 %14, label %15, label %11

15:                                               ; preds = %11, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !42
  %16 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @tracing_buffer_mask) #41
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %68

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 27
  %21 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2, i32 2
  %22 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2, i32 1
  br label %23

23:                                               ; preds = %64, %19
  %24 = phi i32 [ %16, %19 ], [ %65, %64 ]
  %25 = lshr i32 %24, 5
  %26 = getelementptr i32, ptr %20, i32 %25
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %24, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %23
  %33 = getelementptr i32, ptr %1, i32 %25
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, %29
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load ptr, ptr %21, align 8
  %39 = ptrtoint ptr %38 to i32
  %40 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, %39
  %43 = inttoptr i32 %42 to ptr
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #34, !srcloc !13
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #34, !srcloc !14
  %45 = load ptr, ptr %22, align 4
  tail call void @ring_buffer_record_disable_cpu(ptr noundef %45, i32 noundef %24) #34
  br label %46

46:                                               ; preds = %37, %32, %23
  %47 = load volatile i32, ptr %26, align 4
  %48 = and i32 %47, %29
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = getelementptr i32, ptr %1, i32 %25
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %52, %29
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %50
  %56 = load ptr, ptr %21, align 8
  %57 = ptrtoint ptr %56 to i32
  %58 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, %57
  %61 = inttoptr i32 %60 to ptr
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %61) #34, !srcloc !13
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %61, ptr %61, i32 1, ptr elementtype(i32) %61) #34, !srcloc !18
  %63 = load ptr, ptr %22, align 4
  tail call void @ring_buffer_record_enable_cpu(ptr noundef %63, i32 noundef %24) #34
  br label %64

64:                                               ; preds = %55, %50, %46
  %65 = tail call i32 @cpumask_next(i32 noundef %24, ptr noundef nonnull @tracing_buffer_mask) #41
  %66 = load i32, ptr @nr_cpu_ids, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %23, label %68

68:                                               ; preds = %64, %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !43
  %69 = load i16, ptr %5, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #34, !srcloc !44
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #34, !srcloc !45
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #34, !srcloc !75
  %71 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 27
  %72 = load i32, ptr %1, align 4
  store i32 %72, ptr %71, align 4
  br label %73

73:                                               ; preds = %68, %2
  %74 = phi i32 [ 0, %68 ], [ -22, %2 ]
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_buffer_record_disable_cpu(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_buffer_record_enable_cpu(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @trace_keep_overwrite(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.tracer, ptr %0, i32 0, i32 18
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = and i32 %1, 131072
  %9 = icmp eq i32 %8, 0
  %10 = icmp ne i32 %2, 0
  %11 = or i1 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %3
  br label %13

13:                                               ; preds = %12, %7
  %14 = phi i32 [ 0, %12 ], [ -1, %7 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @set_tracer_flag(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 14
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, %1
  %7 = icmp eq i32 %6, 0
  %8 = icmp ne i32 %2, 0
  %9 = zext i1 %8 to i32
  %10 = xor i1 %8, %7
  br i1 %10, label %59, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 13
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.tracer, ptr %13, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = tail call i32 %15(ptr noundef %0, i32 noundef %1, i32 noundef %9) #34
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %59

20:                                               ; preds = %17, %11
  br i1 %8, label %21, label %24

21:                                               ; preds = %20
  %22 = load i32, ptr %4, align 4
  %23 = or i32 %22, %1
  br label %28

24:                                               ; preds = %20
  %25 = xor i32 %1, -1
  %26 = load i32, ptr %4, align 4
  %27 = and i32 %26, %25
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i32 [ %27, %24 ], [ %23, %21 ]
  store i32 %29, ptr %4, align 4
  switch i32 %1, label %59 [
    i32 32768, label %30
    i32 65536, label %31
    i32 2097152, label %48
    i32 256, label %52
    i32 131072, label %49
  ]

30:                                               ; preds = %28
  tail call void @trace_event_enable_cmd_record(i1 noundef zeroext %8) #34
  br label %59

31:                                               ; preds = %28
  %32 = load ptr, ptr @tgid_map, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load i32, ptr @pid_max, align 4
  store i32 %35, ptr @tgid_map_max, align 4
  %36 = add i32 %35, 1
  %37 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %36, i32 4) #34
  %38 = extractvalue { i32, i1 } %37, 1
  br i1 %38, label %39, label %40, !prof !11

39:                                               ; preds = %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !76
  store volatile ptr null, ptr @tgid_map, align 4
  br label %44

40:                                               ; preds = %34
  %41 = extractvalue { i32, i1 } %37, 0
  %42 = tail call noalias ptr @kvmalloc_node(i32 noundef %41, i32 noundef 3520, i32 noundef -1) #37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !76
  store volatile ptr %42, ptr @tgid_map, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %39
  %45 = load i32, ptr %4, align 4
  %46 = and i32 %45, -65537
  store i32 %46, ptr %4, align 4
  br label %59

47:                                               ; preds = %40, %31
  tail call void @trace_event_enable_tgid_record(i1 noundef zeroext %8) #34
  br label %59

48:                                               ; preds = %28
  tail call void @trace_event_follow_fork(ptr noundef %0, i1 noundef zeroext %8) #34
  br label %59

49:                                               ; preds = %28
  %50 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2, i32 1
  %51 = load ptr, ptr %50, align 4
  tail call void @ring_buffer_change_overwrite(ptr noundef %51, i32 noundef %2) #34
  br label %59

52:                                               ; preds = %28
  %53 = load i1, ptr @buffers_allocated, align 4
  br i1 %53, label %54, label %58

54:                                               ; preds = %52
  %55 = icmp eq i32 %2, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %54
  tail call void @tracing_start_cmdline_record() #34
  br label %58

57:                                               ; preds = %54
  tail call void @tracing_stop_cmdline_record() #34
  br label %58

58:                                               ; preds = %57, %56, %52
  tail call void @trace_printk_control(i1 noundef zeroext %8) #34
  br label %59

59:                                               ; preds = %58, %49, %48, %47, %44, %30, %28, %17, %3
  %60 = phi i32 [ -12, %44 ], [ 0, %3 ], [ -22, %17 ], [ 0, %30 ], [ 0, %47 ], [ 0, %48 ], [ 0, %58 ], [ 0, %49 ], [ 0, %28 ]
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_enable_cmd_record(i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_enable_tgid_record(i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_follow_fork(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_buffer_change_overwrite(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_printk_control(i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_set_options(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = tail call i32 @strlen(ptr noundef %1)
  %4 = tail call ptr @strim(ptr noundef %1) #34
  %5 = tail call i32 @strncmp(ptr noundef %4, ptr noundef nonnull dereferenceable(3) @.str.47, i32 noundef 2) #34
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 2, i32 0
  %8 = xor i1 %6, true
  %9 = getelementptr i8, ptr %4, i32 %7
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #34
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %10 = tail call i32 @match_string(ptr noundef nonnull @trace_options, i32 noundef -1, ptr noundef %9) #34
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %53

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 13
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.tracer, ptr %14, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.tracer_flags, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %57, label %21

21:                                               ; preds = %48, %12
  %22 = phi ptr [ %51, %48 ], [ %19, %12 ]
  %23 = phi i32 [ %49, %48 ], [ 0, %12 ]
  %24 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull %22) #34
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.tracer_flags, ptr %16, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.tracer, ptr %28, i32 0, i32 14
  %30 = load ptr, ptr %29, align 4
  %31 = load i32, ptr %16, align 4
  %32 = getelementptr %struct.tracer_opt, ptr %18, i32 %23, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = zext i1 %8 to i32
  %35 = tail call i32 %30(ptr noundef %0, i32 noundef %31, i32 noundef %33, i32 noundef %34) #34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %26
  %38 = load i32, ptr %32, align 4
  br i1 %6, label %39, label %43

39:                                               ; preds = %37
  %40 = xor i32 %38, -1
  %41 = load i32, ptr %16, align 4
  %42 = and i32 %41, %40
  br label %46

43:                                               ; preds = %37
  %44 = load i32, ptr %16, align 4
  %45 = or i32 %44, %38
  br label %46

46:                                               ; preds = %43, %39
  %47 = phi i32 [ %45, %43 ], [ %42, %39 ]
  store i32 %47, ptr %16, align 4
  br label %57

48:                                               ; preds = %21
  %49 = add i32 %23, 1
  %50 = getelementptr %struct.tracer_opt, ptr %18, i32 %49
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %21

53:                                               ; preds = %2
  %54 = shl nuw i32 1, %10
  %55 = zext i1 %8 to i32
  %56 = tail call i32 @set_tracer_flag(ptr noundef %0, i32 noundef %54, i32 noundef %55)
  br label %57

57:                                               ; preds = %53, %48, %46, %26, %12
  %58 = phi i32 [ %56, %53 ], [ %35, %26 ], [ 0, %46 ], [ -22, %12 ], [ -22, %48 ]
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #34
  %59 = tail call i32 @strlen(ptr noundef %1)
  %60 = icmp ugt i32 %3, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = getelementptr i8, ptr %1, i32 %59
  store i8 32, ptr %62, align 1
  br label %63

63:                                               ; preds = %61, %57
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tracer_init(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.trace_array, ptr %1, i32 0, i32 2
  tail call void @tracing_reset_online_cpus(ptr noundef %3)
  %4 = getelementptr inbounds %struct.tracer, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %1) #34
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tracing_resize_ring_buffer(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %4 = icmp eq i32 %2, -1
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = lshr i32 %2, 5
  %7 = getelementptr i32, ptr @tracing_buffer_mask, i32 %6
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %2, 31
  %10 = shl nuw i32 1, %9
  %11 = and i32 %8, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %47, label %13

13:                                               ; preds = %5, %3
  store i8 1, ptr @ring_buffer_expanded, align 1
  %14 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %47, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @ring_buffer_resize(ptr noundef nonnull %15, i32 noundef %1, i32 noundef %2) #34
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %47, label %20

20:                                               ; preds = %17
  br i1 %4, label %21, label %38

21:                                               ; preds = %20
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %23 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @tracing_buffer_mask) #41
  %24 = icmp ult i32 %23, %22
  br i1 %24, label %25, label %47

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2, i32 2
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i32 [ %23, %25 ], [ %36, %27 ]
  %29 = load ptr, ptr %26, align 8
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %30
  %34 = inttoptr i32 %33 to ptr
  %35 = getelementptr inbounds %struct.trace_array_cpu, ptr %34, i32 0, i32 2
  store i32 %1, ptr %35, align 8
  %36 = tail call i32 @cpumask_next(i32 noundef %28, ptr noundef nonnull @tracing_buffer_mask) #41
  %37 = icmp ult i32 %36, %22
  br i1 %37, label %27, label %47

38:                                               ; preds = %20
  %39 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = ptrtoint ptr %40 to i32
  %42 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %2
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, %41
  %45 = inttoptr i32 %44 to ptr
  %46 = getelementptr inbounds %struct.trace_array_cpu, ptr %45, i32 0, i32 2
  store i32 %1, ptr %46, align 8
  br label %47

47:                                               ; preds = %38, %27, %21, %17, %13, %5
  %48 = phi i32 [ -22, %5 ], [ %18, %21 ], [ %18, %38 ], [ 0, %13 ], [ -12, %17 ], [ %18, %27 ]
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tracing_set_clock(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.70, ptr noundef %1)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.71, ptr noundef %1)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.72, ptr noundef %1)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.73, ptr noundef %1)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.74, ptr noundef %1)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.75, ptr noundef %1)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.76, ptr noundef %1)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.77, ptr noundef %1)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %23, %20, %17, %14, %11, %8, %5, %2
  %27 = phi i32 [ 0, %2 ], [ 1, %5 ], [ 2, %8 ], [ 3, %11 ], [ 4, %14 ], [ 5, %17 ], [ 6, %20 ], [ 7, %23 ]
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %28 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 8
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2
  %30 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr [8 x %struct.anon.96], ptr @trace_clocks, i32 0, i32 %27
  %33 = load ptr, ptr %32, align 4
  tail call void @ring_buffer_set_clock(ptr noundef %31, ptr noundef %33) #34
  tail call void @tracing_reset_online_cpus(ptr noundef %29)
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %34

34:                                               ; preds = %26, %23
  %35 = phi i32 [ 0, %26 ], [ -22, %23 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_buffer_set_clock(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @tracing_event_time_stamp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !77
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #26, !srcloc !21
  %6 = add i32 %5, ptrtoint (ptr @trace_buffered_event to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = load volatile ptr, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !78
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = tail call i64 @ring_buffer_time_stamp(ptr noundef %0) #34
  br label %14

12:                                               ; preds = %2
  %13 = tail call i64 @ring_buffer_event_time_stamp(ptr noundef %0, ptr noundef %1) #34
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i64 [ %11, %10 ], [ %13, %12 ]
  ret i64 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ring_buffer_time_stamp(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tracing_set_filter_buffering(ptr nocapture noundef %0, i1 noundef zeroext %1) local_unnamed_addr #5 {
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %3 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 30
  %4 = load i32, ptr %3, align 4
  br i1 %1, label %5, label %7

5:                                                ; preds = %2
  %6 = add i32 %4, 1
  br label %17

7:                                                ; preds = %2
  %8 = icmp eq i32 %4, 0
  %9 = load i1, ptr @tracing_set_filter_buffering.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !11

12:                                               ; preds = %7
  store i1 true, ptr @tracing_set_filter_buffering.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 7340, i32 noundef 9, ptr noundef null) #34
  br label %13

13:                                               ; preds = %12, %7
  br i1 %8, label %19, label %14

14:                                               ; preds = %13
  %15 = load i32, ptr %3, align 4
  %16 = add i32 %15, -1
  br label %17

17:                                               ; preds = %14, %5
  %18 = phi i32 [ %6, %5 ], [ %16, %14 ]
  store i32 %18, ptr %3, align 4
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi i32 [ -22, %13 ], [ 0, %17 ]
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_min_max_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #5 {
  %5 = alloca [24 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #34
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !26
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.trace_min_max_param, ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load i64, ptr %11, align 8
  %13 = tail call i32 @llvm.umin.i32(i32 %2, i32 24)
  %14 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 24, ptr noundef nonnull @.str.138, i64 noundef %12)
  %15 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %13, ptr noundef %3, ptr noundef nonnull %5, i32 noundef %14) #34
  br label %16

16:                                               ; preds = %9, %4
  %17 = phi i32 [ %15, %9 ], [ -14, %4 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #34
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_min_max_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #5 {
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #34
  store i64 0, ptr %5, align 8, !annotation !26
  %8 = icmp eq ptr %7, null
  br i1 %8, label %45, label %9

9:                                                ; preds = %4
  %10 = call i32 @kstrtoull_from_user(ptr noundef %1, i32 noundef %2, i32 noundef 10, ptr noundef nonnull %5) #34
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %45

12:                                               ; preds = %9
  %13 = load ptr, ptr %7, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  call void @mutex_lock(ptr noundef nonnull %13) #34
  br label %16

16:                                               ; preds = %15, %12
  %17 = getelementptr inbounds %struct.trace_min_max_param, ptr %7, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load i64, ptr %5, align 8
  %22 = load i64, ptr %18, align 8
  %23 = icmp ult i64 %21, %22
  %24 = select i1 %23, i32 -22, i32 0
  br label %25

25:                                               ; preds = %20, %16
  %26 = phi i32 [ 0, %16 ], [ %24, %20 ]
  %27 = getelementptr inbounds %struct.trace_min_max_param, ptr %7, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load i64, ptr %5, align 8
  %32 = load i64, ptr %28, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %30, %25
  %35 = icmp eq i32 %26, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = load i64, ptr %5, align 8
  %38 = getelementptr inbounds %struct.trace_min_max_param, ptr %7, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  store i64 %37, ptr %39, align 8
  br label %40

40:                                               ; preds = %36, %34, %30
  %41 = phi i32 [ %2, %36 ], [ %26, %34 ], [ -22, %30 ]
  %42 = load ptr, ptr %7, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  call void @mutex_unlock(ptr noundef nonnull %42) #34
  br label %45

45:                                               ; preds = %44, %40, %9, %4
  %46 = phi i32 [ -14, %4 ], [ %10, %9 ], [ %41, %44 ], [ %41, %40 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #34
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @err_pos(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = load i8, ptr %0, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !11

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 7777, i32 noundef 9, ptr noundef null) #34
  br label %13

6:                                                ; preds = %2
  %7 = tail call ptr @strstr(ptr noundef %0, ptr noundef %1)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = ptrtoint ptr %7 to i32
  %11 = ptrtoint ptr %0 to i32
  %12 = sub i32 %10, %11
  br label %13

13:                                               ; preds = %9, %6, %5
  %14 = phi i32 [ 0, %5 ], [ %12, %9 ], [ 0, %6 ]
  ret i32 %14
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tracing_log_err(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #5 {
  %7 = icmp eq ptr %0, null
  %8 = select i1 %7, ptr @global_trace, ptr %0
  tail call void @mutex_lock(ptr noundef nonnull @tracing_err_log_lock) #34
  %9 = getelementptr inbounds %struct.trace_array, ptr %8, i32 0, i32 12
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, 8
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 408) #36
  %15 = icmp eq ptr %14, null
  br i1 %15, label %43, label %16

16:                                               ; preds = %12
  %17 = load i32, ptr %9, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %9, align 4
  br label %26

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.trace_array, ptr %8, i32 0, i32 18
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %21, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store volatile ptr %24, ptr %23, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %22, align 4
  br label %26

26:                                               ; preds = %19, %16
  %27 = phi ptr [ %21, %19 ], [ %14, %16 ]
  %28 = icmp eq ptr %27, inttoptr (i32 -12 to ptr)
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.tracing_log_err, ptr %27, i32 0, i32 2
  %31 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %30, i32 noundef 128, ptr noundef nonnull @.str.49, ptr noundef %1)
  %32 = getelementptr inbounds %struct.tracing_log_err, ptr %27, i32 0, i32 3
  %33 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %32, i32 noundef 256, ptr noundef nonnull @.str.50, ptr noundef %2)
  %34 = getelementptr inbounds %struct.tracing_log_err, ptr %27, i32 0, i32 1
  store ptr %3, ptr %34, align 8
  %35 = getelementptr inbounds %struct.tracing_log_err, ptr %27, i32 0, i32 1, i32 1
  store i8 %4, ptr %35, align 4
  %36 = getelementptr inbounds %struct.tracing_log_err, ptr %27, i32 0, i32 1, i32 2
  store i8 %5, ptr %36, align 1
  %37 = tail call i64 @sched_clock() #34
  %38 = getelementptr inbounds %struct.tracing_log_err, ptr %27, i32 0, i32 1, i32 3
  store i64 %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.trace_array, ptr %8, i32 0, i32 18
  %40 = getelementptr inbounds %struct.trace_array, ptr %8, i32 0, i32 18, i32 1
  %41 = load ptr, ptr %40, align 4
  store ptr %27, ptr %40, align 4
  store ptr %39, ptr %27, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %41, ptr %42, align 4
  store volatile ptr %27, ptr %41, align 4
  br label %43

43:                                               ; preds = %29, %26, %12
  tail call void @mutex_unlock(ptr noundef nonnull @tracing_err_log_lock) #34
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #21

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @trace_create_file(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #5 {
  %6 = tail call ptr @tracefs_create_file(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %0) #38
  br label %10

10:                                               ; preds = %8, %5
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tracefs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @trace_array_find(ptr nocapture noundef readonly %0) local_unnamed_addr #22 {
  %2 = load ptr, ptr @ftrace_trace_arrays, align 4
  %3 = icmp eq ptr %2, @ftrace_trace_arrays
  br i1 %3, label %15, label %4

4:                                                ; preds = %12, %1
  %5 = phi ptr [ %13, %12 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.trace_array, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @strcmp(ptr noundef nonnull %7, ptr noundef %0)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %4
  %13 = load ptr, ptr %5, align 4
  %14 = icmp eq ptr %13, @ftrace_trace_arrays
  br i1 %14, label %15, label %4

15:                                               ; preds = %12, %9, %1
  %16 = phi ptr [ null, %1 ], [ %5, %9 ], [ null, %12 ]
  ret ptr %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @trace_array_find_get(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %2 = load ptr, ptr @ftrace_trace_arrays, align 4
  %3 = icmp eq ptr %2, @ftrace_trace_arrays
  br i1 %3, label %21, label %4

4:                                                ; preds = %12, %1
  %5 = phi ptr [ %13, %12 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.trace_array, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @strcmp(ptr noundef nonnull %7, ptr noundef %0) #34
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %4
  %13 = load ptr, ptr %5, align 4
  %14 = icmp eq ptr %13, @ftrace_trace_arrays
  br i1 %14, label %21, label %4

15:                                               ; preds = %9
  %16 = icmp eq ptr %5, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.trace_array, ptr %5, i32 0, i32 28
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 4
  br label %21

21:                                               ; preds = %17, %15, %12, %1
  %22 = phi ptr [ %5, %17 ], [ null, %15 ], [ null, %1 ], [ null, %12 ]
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @trace_array_get_by_name(ptr noundef %0) #5 {
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #34
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %2 = load ptr, ptr @ftrace_trace_arrays, align 4
  %3 = icmp eq ptr %2, @ftrace_trace_arrays
  br i1 %3, label %15, label %4

4:                                                ; preds = %12, %1
  %5 = phi ptr [ %13, %12 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.trace_array, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @strcmp(ptr noundef nonnull %7, ptr noundef %0)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %9, %4
  %13 = load ptr, ptr %5, align 4
  %14 = icmp eq ptr %13, @ftrace_trace_arrays
  br i1 %14, label %15, label %4

15:                                               ; preds = %12, %1
  %16 = tail call fastcc ptr @trace_array_create(ptr noundef %0)
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %25, label %18

18:                                               ; preds = %15, %9
  %19 = phi ptr [ %16, %15 ], [ %5, %9 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.trace_array, ptr %19, i32 0, i32 28
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4
  br label %25

25:                                               ; preds = %21, %18, %15
  %26 = phi ptr [ %19, %21 ], [ null, %18 ], [ null, %15 ]
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #34
  ret ptr %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @trace_array_create(ptr noundef %0) unnamed_addr #5 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 216) #36
  %4 = icmp eq ptr %3, null
  br i1 %4, label %86, label %5

5:                                                ; preds = %1
  %6 = tail call noalias ptr @kstrdup(ptr noundef %0, i32 noundef 3264) #34
  %7 = getelementptr inbounds %struct.trace_array, ptr %3, i32 0, i32 1
  store ptr %6, ptr %7, align 8
  %8 = icmp eq ptr %6, null
  br i1 %8, label %75, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.trace_array, ptr %3, i32 0, i32 27
  %11 = load i32, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 14), align 4
  %12 = and i32 %11, -2097153
  %13 = getelementptr inbounds %struct.trace_array, ptr %3, i32 0, i32 14
  store i32 %12, ptr %13, align 4
  %14 = load i32, ptr @cpu_all_bits, align 4
  store i32 %14, ptr %10, align 8
  %15 = getelementptr inbounds %struct.trace_array, ptr %3, i32 0, i32 17
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.trace_array, ptr %3, i32 0, i32 5
  store i32 0, ptr %16, align 8
  %17 = getelementptr inbounds %struct.trace_array, ptr %3, i32 0, i32 13
  store ptr @nop_trace, ptr %17, align 8
  %18 = getelementptr inbounds %struct.trace_array, ptr %3, i32 0, i32 24
  store volatile ptr %18, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_array, ptr %3, i32 0, i32 24, i32 1
  store ptr %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.trace_array, ptr %3, i32 0, i32 25
  store volatile ptr %20, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_array, ptr %3, i32 0, i32 25, i32 1
  store ptr %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.trace_array, ptr %3, i32 0, i32 31
  store volatile ptr %22, ptr %22, align 8
  %23 = getelementptr inbounds %struct.trace_array, ptr %3, i32 0, i32 31, i32 1
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_array, ptr %3, i32 0, i32 18
  store volatile ptr %24, ptr %24, align 8
  %25 = getelementptr inbounds %struct.trace_array, ptr %3, i32 0, i32 18, i32 1
  store ptr %24, ptr %25, align 4
  %26 = load i32, ptr @trace_buf_size, align 4
  %27 = tail call fastcc i32 @allocate_trace_buffers(ptr noundef nonnull %3, i32 noundef %26)
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %75, label %29

29:                                               ; preds = %9
  %30 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 0
  store i8 0, ptr %30, align 8
  %31 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 1
  store i8 1, ptr %31, align 1
  %32 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 2
  store i8 2, ptr %32, align 2
  %33 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 3
  store i8 3, ptr %33, align 1
  %34 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 4
  store i8 4, ptr %34, align 4
  %35 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 5
  store i8 5, ptr %35, align 1
  %36 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 6
  store i8 6, ptr %36, align 2
  %37 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 7
  store i8 7, ptr %37, align 1
  %38 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 8
  store i8 8, ptr %38, align 8
  %39 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 9
  store i8 9, ptr %39, align 1
  %40 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 10
  store i8 10, ptr %40, align 2
  %41 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 11
  store i8 11, ptr %41, align 1
  %42 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 12
  store i8 12, ptr %42, align 4
  %43 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 13
  store i8 13, ptr %43, align 1
  %44 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 14
  store i8 14, ptr %44, align 2
  %45 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 15
  store i8 15, ptr %45, align 1
  %46 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 16
  store i8 16, ptr %46, align 8
  %47 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 17
  store i8 17, ptr %47, align 1
  %48 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 18
  store i8 18, ptr %48, align 2
  %49 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 19
  store i8 19, ptr %49, align 1
  %50 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 20
  store i8 20, ptr %50, align 4
  %51 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 21
  store i8 21, ptr %51, align 1
  %52 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 22
  store i8 22, ptr %52, align 2
  %53 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 23
  store i8 23, ptr %53, align 1
  %54 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 24
  store i8 24, ptr %54, align 8
  %55 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 25
  store i8 25, ptr %55, align 1
  %56 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 26
  store i8 26, ptr %56, align 2
  %57 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 27
  store i8 27, ptr %57, align 1
  %58 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 28
  store i8 28, ptr %58, align 4
  %59 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 29
  store i8 29, ptr %59, align 1
  %60 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 30
  store i8 30, ptr %60, align 2
  %61 = getelementptr %struct.trace_array, ptr %3, i32 0, i32 15, i32 31
  store i8 31, ptr %61, align 1
  %62 = load ptr, ptr @trace_instance_dir, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %29
  %65 = tail call fastcc i32 @trace_array_create_dir(ptr noundef nonnull %3)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %75

67:                                               ; preds = %29
  tail call void @__trace_early_add_events(ptr noundef nonnull %3) #34
  br label %68

68:                                               ; preds = %67, %64
  %69 = load ptr, ptr @ftrace_trace_arrays, align 4
  %70 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  store ptr %3, ptr %70, align 4
  store ptr %69, ptr %3, align 8
  %71 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr @ftrace_trace_arrays, ptr %71, align 4
  store volatile ptr %3, ptr @ftrace_trace_arrays, align 4
  %72 = getelementptr inbounds %struct.trace_array, ptr %3, i32 0, i32 28
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %72, align 4
  br label %86

75:                                               ; preds = %64, %9, %5
  %76 = phi i32 [ -12, %9 ], [ %65, %64 ], [ -12, %5 ]
  %77 = getelementptr inbounds %struct.trace_array, ptr %3, i32 0, i32 2, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  tail call void @ring_buffer_free(ptr noundef nonnull %78) #34
  store ptr null, ptr %77, align 4
  %81 = getelementptr inbounds %struct.trace_array, ptr %3, i32 0, i32 2, i32 2
  %82 = load ptr, ptr %81, align 8
  tail call void @free_percpu(ptr noundef %82) #34
  store ptr null, ptr %81, align 8
  br label %83

83:                                               ; preds = %80, %75
  %84 = load ptr, ptr %7, align 8
  tail call void @kfree(ptr noundef %84) #34
  tail call void @kfree(ptr noundef nonnull %3) #34
  %85 = inttoptr i32 %76 to ptr
  br label %86

86:                                               ; preds = %83, %68, %1
  %87 = phi ptr [ %85, %83 ], [ %3, %68 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_array_destroy(ptr noundef readnone %0) #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #34
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  br label %4

4:                                                ; preds = %8, %3
  %5 = phi ptr [ @ftrace_trace_arrays, %3 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @ftrace_trace_arrays
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %6, %0
  br i1 %9, label %10, label %4

10:                                               ; preds = %8
  %11 = tail call fastcc i32 @__remove_instance(ptr noundef nonnull %0)
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i32 [ %11, %10 ], [ -19, %4 ]
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #34
  br label %14

14:                                               ; preds = %12, %1
  %15 = phi i32 [ %13, %12 ], [ -22, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__remove_instance(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 28
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %72, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 13
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 29
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %72

13:                                               ; preds = %9, %5
  %14 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store volatile ptr %16, ptr %15, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  br label %18

18:                                               ; preds = %23, %13
  %19 = phi i32 [ 0, %13 ], [ %24, %23 ]
  %20 = icmp eq i32 %19, 21
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call i32 @set_tracer_flag(ptr noundef %0, i32 noundef 2097152, i32 noundef 0)
  br label %23

23:                                               ; preds = %21, %18
  %24 = add nuw nsw i32 %19, 1
  %25 = icmp eq i32 %24, 32
  br i1 %25, label %26, label %18

26:                                               ; preds = %23
  %27 = load ptr, ptr %6, align 8
  %28 = icmp eq ptr %27, @nop_trace
  br i1 %28, label %39, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.tracer, ptr %27, i32 0, i32 18
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, -1
  store i32 %32, ptr %30, align 4
  %33 = load ptr, ptr %6, align 8
  %34 = getelementptr inbounds %struct.tracer, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  tail call void %35(ptr noundef %0) #34
  br label %38

38:                                               ; preds = %37, %29
  store ptr @nop_trace, ptr %6, align 8
  br label %39

39:                                               ; preds = %38, %26
  %40 = tail call i32 @event_trace_del_tracer(ptr noundef %0) #34
  %41 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 19
  %42 = load ptr, ptr %41, align 8
  tail call void @tracefs_remove(ptr noundef %42) #34
  %43 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 32
  %44 = load ptr, ptr %43, align 8
  tail call void @free_percpu(ptr noundef %44) #34
  %45 = icmp eq ptr %0, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  tail call void @ring_buffer_free(ptr noundef nonnull %48) #34
  store ptr null, ptr %47, align 4
  %51 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2, i32 2
  %52 = load ptr, ptr %51, align 8
  tail call void @free_percpu(ptr noundef %52) #34
  store ptr null, ptr %51, align 8
  br label %53

53:                                               ; preds = %50, %46, %39
  %54 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 9
  %55 = load i32, ptr %54, align 8
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 23
  br label %59

59:                                               ; preds = %59, %57
  %60 = phi i32 [ 0, %57 ], [ %64, %59 ]
  %61 = load ptr, ptr %58, align 8
  %62 = getelementptr %struct.trace_options, ptr %61, i32 %60, i32 1
  %63 = load ptr, ptr %62, align 4
  tail call void @kfree(ptr noundef %63) #34
  %64 = add nuw nsw i32 %60, 1
  %65 = load i32, ptr %54, align 8
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %59, label %67

67:                                               ; preds = %59, %53
  %68 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 23
  %69 = load ptr, ptr %68, align 8
  tail call void @kfree(ptr noundef %69) #34
  %70 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 1
  %71 = load ptr, ptr %70, align 8
  tail call void @kfree(ptr noundef %71) #34
  tail call void @kfree(ptr noundef %0) #34
  br label %72

72:                                               ; preds = %67, %9, %1
  %73 = phi i32 [ 0, %67 ], [ -16, %9 ], [ -16, %1 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tracing_init_dentry() local_unnamed_addr #5 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 19), align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = tail call zeroext i1 @tracefs_initialized() #34
  br i1 %4, label %6, label %5, !prof !19

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 9547, i32 noundef 9, ptr noundef null) #34
  br label %8

6:                                                ; preds = %3
  %7 = tail call ptr @debugfs_create_automount(ptr noundef nonnull @.str.53, ptr noundef null, ptr noundef nonnull @trace_automount, ptr noundef null) #34
  store ptr %7, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 19), align 8
  br label %8

8:                                                ; preds = %6, %5, %0
  %9 = phi i32 [ -19, %5 ], [ 0, %6 ], [ 0, %0 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tracefs_initialized() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_automount(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @trace_automount(ptr noundef %0, ptr nocapture noundef readnone %1) #5 {
  %3 = tail call ptr @get_fs_type(ptr noundef nonnull @.str.195) #34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @vfs_submount(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull @.str.195, ptr noundef null) #34
  tail call void @put_filesystem(ptr noundef nonnull %3) #34
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @mntget(ptr noundef %6) #34
  br label %10

10:                                               ; preds = %8, %5, %2
  %11 = phi ptr [ %6, %8 ], [ null, %2 ], [ null, %5 ]
  ret ptr %11
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @trace_eval_sync() #11 section ".init.text" {
  %1 = load ptr, ptr @eval_map_wq, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @destroy_workqueue(ptr noundef nonnull %1) #34
  br label %4

4:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tracer_init_tracefs() #11 section ".init.text" {
  %1 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #41
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = icmp ult i32 %1, %2
  br i1 %3, label %4, label %13

4:                                                ; preds = %4, %0
  %5 = phi i32 [ %10, %4 ], [ %1, %0 ]
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @cpu_access_lock to i32)
  %9 = inttoptr i32 %8 to ptr
  tail call void @__mutex_init(ptr noundef %9, ptr noundef nonnull @.str.201, ptr noundef nonnull @trace_access_lock_init.__key) #34
  %10 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef nonnull @__cpu_possible_mask) #41
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %4, label %13

13:                                               ; preds = %4, %0
  %14 = tail call i32 @tracing_init_dentry()
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = tail call i32 @event_trace_init() #34
  tail call fastcc void @init_tracer_tracefs(ptr noundef nonnull @global_trace, ptr noundef null)
  %18 = tail call ptr @trace_create_file(ptr noundef nonnull @.str.196, i16 noundef zeroext 416, ptr noundef null, ptr noundef nonnull @global_trace, ptr noundef nonnull @tracing_thresh_fops)
  %19 = tail call ptr @trace_create_file(ptr noundef nonnull @.str.197, i16 noundef zeroext 288, ptr noundef null, ptr noundef null, ptr noundef nonnull @tracing_readme_fops)
  %20 = tail call ptr @trace_create_file(ptr noundef nonnull @.str.198, i16 noundef zeroext 288, ptr noundef null, ptr noundef null, ptr noundef nonnull @tracing_saved_cmdlines_fops)
  %21 = tail call ptr @trace_create_file(ptr noundef nonnull @.str.199, i16 noundef zeroext 416, ptr noundef null, ptr noundef null, ptr noundef nonnull @tracing_saved_cmdlines_size_fops)
  %22 = tail call ptr @trace_create_file(ptr noundef nonnull @.str.200, i16 noundef zeroext 288, ptr noundef null, ptr noundef null, ptr noundef nonnull @tracing_saved_tgids_fops)
  tail call fastcc void @trace_eval_init() #39
  %23 = tail call i32 @register_module_notifier(ptr noundef nonnull @trace_module_nb) #34
  tail call fastcc void @create_trace_instances() #39
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %24 = load ptr, ptr @trace_types, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %26, %16
  %27 = phi ptr [ %29, %26 ], [ %24, %16 ]
  tail call fastcc void @add_tracer_options(ptr noundef nonnull @global_trace, ptr noundef nonnull %27) #34
  %28 = getelementptr inbounds %struct.tracer, ptr %27, i32 0, i32 16
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %26

31:                                               ; preds = %26, %16
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %32

32:                                               ; preds = %31, %13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_printk_seq(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = icmp ugt i32 %3, 999
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1000, ptr %2, align 8
  br label %6

6:                                                ; preds = %5, %1
  %7 = phi i32 [ 1000, %5 ], [ %3, %1 ]
  %8 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp uge i32 %7, %9
  %11 = load i1, ptr @trace_printk_seq.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !11

14:                                               ; preds = %6
  store i1 true, ptr @trace_printk_seq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 9785, i32 noundef 9, ptr noundef null) #34
  br label %15

15:                                               ; preds = %14, %6
  br i1 %10, label %18, label %16

16:                                               ; preds = %15
  %17 = load i32, ptr %2, align 8
  br label %21

18:                                               ; preds = %15
  %19 = load i32, ptr %8, align 4
  %20 = add i32 %19, -1
  store i32 %20, ptr %2, align 8
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi i32 [ %17, %16 ], [ %20, %18 ]
  %23 = getelementptr [4096 x i8], ptr %0, i32 0, i32 %22
  store i8 0, ptr %23, align 1
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %0) #38
  %25 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1
  store ptr %0, ptr %25, align 8
  store i32 4096, ptr %8, align 4
  store i32 0, ptr %2, align 8
  %26 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 1, i32 3
  store i64 0, ptr %26, align 8
  %27 = getelementptr inbounds %struct.trace_seq, ptr %0, i32 0, i32 2
  store i32 0, ptr %27, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_init_global_iter(ptr noundef %0) local_unnamed_addr #5 {
  store ptr @global_trace, ptr %0, align 8
  %2 = load ptr, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 13), align 8
  %3 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 4
  store i32 -1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 2
  store ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 2), ptr %5, align 8
  %6 = icmp eq ptr %2, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tracer, ptr %2, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  tail call void %9(ptr noundef %0) #34
  %12 = load ptr, ptr %5, align 8
  br label %13

13:                                               ; preds = %11, %7, %1
  %14 = phi ptr [ %12, %11 ], [ getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 2), %7 ], [ getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 2), %1 ]
  %15 = getelementptr inbounds %struct.array_buffer, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @ring_buffer_overruns(ptr noundef %16) #34
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %21, 2
  store i32 %22, ptr %20, align 4
  br label %23

23:                                               ; preds = %19, %13
  %24 = load ptr, ptr %0, align 8
  %25 = getelementptr inbounds %struct.trace_array, ptr %24, i32 0, i32 8
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 1073741822
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %31, 4
  store i32 %32, ptr %30, align 4
  br label %33

33:                                               ; preds = %29, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ring_buffer_overruns(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ftrace_dump(i32 noundef %0) #5 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !79
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ftrace_dump.dump_running) #34, !srcloc !13
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ftrace_dump.dump_running, ptr nonnull @ftrace_dump.dump_running, i32 1, ptr nonnull elementtype(i32) @ftrace_dump.dump_running) #34, !srcloc !80
  %3 = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !81
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ftrace_dump.dump_running) #34, !srcloc !13
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ftrace_dump.dump_running, ptr nonnull @ftrace_dump.dump_running, i32 1, ptr nonnull elementtype(i32) @ftrace_dump.dump_running) #34, !srcloc !18
  br label %160

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 2, i32 1), align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @ring_buffer_record_off(ptr noundef nonnull %8) #34
  br label %11

11:                                               ; preds = %10, %7
  store i32 1, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 6), align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #34, !srcloc !39
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #34, !srcloc !23
  store ptr @global_trace, ptr @ftrace_dump.iter, align 8
  %13 = load ptr, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 13), align 8
  store ptr %13, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 1), align 4
  store i32 -1, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 4), align 8
  store ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 2), ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 2), align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tracer, ptr %13, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  tail call void %17(ptr noundef nonnull @ftrace_dump.iter) #34
  %20 = load ptr, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 2), align 8
  br label %21

21:                                               ; preds = %19, %15, %11
  %22 = phi ptr [ %20, %19 ], [ getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 2), %15 ], [ getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 2), %11 ]
  %23 = getelementptr inbounds %struct.array_buffer, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @ring_buffer_overruns(ptr noundef %24) #34
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 7), align 4
  %29 = or i32 %28, 2
  store i32 %29, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 7), align 4
  br label %30

30:                                               ; preds = %27, %21
  %31 = load ptr, ptr @ftrace_dump.iter, align 8
  %32 = getelementptr inbounds %struct.trace_array, ptr %31, i32 0, i32 8
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 1073741822
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 7), align 4
  %38 = or i32 %37, 4
  store i32 %38, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 7), align 4
  br label %39

39:                                               ; preds = %36, %30
  store ptr @static_temp_buf, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 8), align 8
  store i32 128, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 9), align 4
  store ptr @static_fmt_buf, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 10), align 8
  store i32 128, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 11), align 4
  %40 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @tracing_buffer_mask) #41
  %41 = load i32, ptr @nr_cpu_ids, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %43, %39
  %44 = phi i32 [ %54, %43 ], [ %40, %39 ]
  %45 = load ptr, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 2), align 8
  %46 = getelementptr inbounds %struct.array_buffer, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8
  %48 = ptrtoint ptr %47 to i32
  %49 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, %48
  %52 = inttoptr i32 %51 to ptr
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #34, !srcloc !13
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 1, ptr elementtype(i32) %52) #34, !srcloc !14
  %54 = tail call i32 @cpumask_next(i32 noundef %44, ptr noundef nonnull @tracing_buffer_mask) #41
  %55 = load i32, ptr @nr_cpu_ids, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %43, label %57

57:                                               ; preds = %43, %39
  %58 = load i32, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 14), align 4
  %59 = and i32 %58, 2048
  %60 = and i32 %58, -2049
  store i32 %60, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 14), align 4
  switch i32 %0, label %65 [
    i32 1, label %67
    i32 2, label %61
    i32 0, label %138
  ]

61:                                               ; preds = %57
  %62 = tail call ptr @llvm.thread.pointer() #34
  %63 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %64 = load i32, ptr %63, align 8
  br label %67

65:                                               ; preds = %57
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #38
  br label %67

67:                                               ; preds = %65, %61, %57
  %68 = phi i32 [ %64, %61 ], [ -1, %65 ], [ -1, %57 ]
  store i32 %68, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 4), align 8
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #38
  %70 = tail call i32 @trace_empty(ptr noundef nonnull @ftrace_dump.iter)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %135

72:                                               ; preds = %126, %67
  %73 = phi i32 [ %78, %126 ], [ 0, %67 ]
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #38
  br label %77

77:                                               ; preds = %75, %72
  %78 = add i32 %73, 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(4176) getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 15, i32 0, i32 0), i8 0, i32 4176, i1 false) #34
  store i64 -1, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 22), align 8
  %79 = load i32, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 7), align 4
  %80 = or i32 %79, 1
  store i32 %80, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 7), align 4
  %81 = tail call fastcc ptr @__find_next_entry(ptr noundef nonnull @ftrace_dump.iter, ptr noundef getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 20), ptr noundef getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 17), ptr noundef getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 21)) #34
  store ptr %81, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 16), align 8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %108, label %83

83:                                               ; preds = %77
  %84 = load ptr, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 6), align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 23), align 8
  %88 = add i32 %87, 1
  store i32 %88, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 23), align 8
  br label %99

89:                                               ; preds = %83
  %90 = load i32, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 20), align 8
  %91 = getelementptr ptr, ptr %84, i32 %90
  %92 = load ptr, ptr %91, align 4
  %93 = load i32, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 23), align 8
  %94 = add i32 %93, 1
  store i32 %94, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 23), align 8
  %95 = icmp eq ptr %92, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %89
  tail call void @ring_buffer_iter_advance(ptr noundef nonnull %92) #34
  %97 = load ptr, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 16), align 8
  %98 = icmp eq ptr %97, null
  br i1 %98, label %108, label %99

99:                                               ; preds = %96, %89, %86
  %100 = tail call i32 @print_trace_line(ptr noundef nonnull @ftrace_dump.iter)
  %101 = icmp eq i32 %100, 3
  br i1 %101, label %108, label %102

102:                                              ; preds = %99
  %103 = load ptr, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 2), align 8
  %104 = getelementptr inbounds %struct.array_buffer, ptr %103, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = load i32, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 20), align 8
  %107 = tail call ptr @ring_buffer_consume(ptr noundef %105, i32 noundef %106, ptr noundef getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 21), ptr noundef getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 17)) #34
  br label %108

108:                                              ; preds = %102, %99, %96, %77
  %109 = load i32, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 15, i32 1, i32 2), align 8
  %110 = icmp ugt i32 %109, 999
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store i32 1000, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 15, i32 1, i32 2), align 8
  br label %112

112:                                              ; preds = %111, %108
  %113 = phi i32 [ 1000, %111 ], [ %109, %108 ]
  %114 = load i32, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 15, i32 1, i32 1), align 4
  %115 = icmp uge i32 %113, %114
  %116 = load i1, ptr @trace_printk_seq.__already_done, align 1
  %117 = xor i1 %116, true
  %118 = select i1 %115, i1 %117, i1 false
  br i1 %118, label %119, label %120, !prof !11

119:                                              ; preds = %112
  store i1 true, ptr @trace_printk_seq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 9785, i32 noundef 9, ptr noundef null) #34
  br label %120

120:                                              ; preds = %119, %112
  br i1 %115, label %123, label %121

121:                                              ; preds = %120
  %122 = load i32, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 15, i32 1, i32 2), align 8
  br label %126

123:                                              ; preds = %120
  %124 = load i32, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 15, i32 1, i32 1), align 4
  %125 = add i32 %124, -1
  store i32 %125, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 15, i32 1, i32 2), align 8
  br label %126

126:                                              ; preds = %123, %121
  %127 = phi i32 [ %122, %121 ], [ %125, %123 ]
  %128 = getelementptr [4096 x i8], ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 15), i32 0, i32 %127
  store i8 0, ptr %128, align 1
  %129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 15)) #38
  store ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 15), ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 15, i32 1), align 8
  store i32 4096, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 15, i32 1, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 15, i32 1, i32 2), align 8
  store i64 0, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 15, i32 1, i32 3), align 8
  store i32 0, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 15, i32 2), align 8
  %130 = tail call i32 @trace_empty(ptr noundef nonnull @ftrace_dump.iter)
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %72, label %132

132:                                              ; preds = %126
  %133 = icmp eq i32 %78, 0
  %134 = select i1 %133, ptr @.str.60, ptr @.str.59
  br label %135

135:                                              ; preds = %132, %67
  %136 = phi ptr [ @.str.60, %67 ], [ %134, %132 ]
  %137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %136) #38
  br label %138

138:                                              ; preds = %135, %57
  %139 = load i32, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 14), align 4
  %140 = or i32 %139, %59
  store i32 %140, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 14), align 4
  %141 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @tracing_buffer_mask) #41
  %142 = load i32, ptr @nr_cpu_ids, align 4
  %143 = icmp ult i32 %141, %142
  br i1 %143, label %144, label %158

144:                                              ; preds = %144, %138
  %145 = phi i32 [ %155, %144 ], [ %141, %138 ]
  %146 = load ptr, ptr getelementptr inbounds (%struct.trace_iterator, ptr @ftrace_dump.iter, i32 0, i32 2), align 8
  %147 = getelementptr inbounds %struct.array_buffer, ptr %146, i32 0, i32 2
  %148 = load ptr, ptr %147, align 8
  %149 = ptrtoint ptr %148 to i32
  %150 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %145
  %151 = load i32, ptr %150, align 4
  %152 = add i32 %151, %149
  %153 = inttoptr i32 %152 to ptr
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %153) #34, !srcloc !13
  %154 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %153, ptr %153, i32 1, ptr elementtype(i32) %153) #34, !srcloc !18
  %155 = tail call i32 @cpumask_next(i32 noundef %145, ptr noundef nonnull @tracing_buffer_mask) #41
  %156 = load i32, ptr @nr_cpu_ids, align 4
  %157 = icmp ult i32 %155, %156
  br i1 %157, label %144, label %158

158:                                              ; preds = %144, %138
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ftrace_dump.dump_running) #34, !srcloc !13
  %159 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ftrace_dump.dump_running, ptr nonnull @ftrace_dump.dump_running, i32 1, ptr nonnull elementtype(i32) @ftrace_dump.dump_running) #34, !srcloc !18
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #34, !srcloc !24
  br label %160

160:                                              ; preds = %158, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_parse_run_command(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3, ptr nocapture noundef readonly %4) local_unnamed_addr #5 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 4096) #36
  %8 = icmp eq ptr %7, null
  br i1 %8, label %70, label %9

9:                                                ; preds = %5
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %68, label %11

11:                                               ; preds = %65, %9
  %12 = phi i32 [ %66, %65 ], [ 0, %9 ]
  %13 = sub i32 %2, %12
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 4095)
  %15 = getelementptr i8, ptr %1, i32 %12
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %15, i32 %14, i32 -1090519040) #35, !srcloc !82
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26, !prof !19

19:                                               ; preds = %11
  %20 = tail call ptr @llvm.thread.pointer() #34
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %21) #26, !srcloc !27
  %23 = and i32 %22, -13
  %24 = or i32 %23, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #34, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #34, !srcloc !29
  %25 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef %15, i32 noundef %14) #34
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #34, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #34, !srcloc !29
  br label %26

26:                                               ; preds = %19, %11
  %27 = phi i32 [ %25, %19 ], [ %14, %11 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29, !prof !19

29:                                               ; preds = %26
  %30 = sub i32 %14, %27
  %31 = getelementptr i8, ptr %7, i32 %30
  tail call void @llvm.memset.p0.i32(ptr align 1 %31, i8 0, i32 %27, i1 false) #34
  br label %68

32:                                               ; preds = %26
  %33 = getelementptr i8, ptr %7, i32 %14
  store i8 0, ptr %33, align 1
  br label %34

34:                                               ; preds = %62, %32
  %35 = phi ptr [ %7, %32 ], [ %63, %62 ]
  %36 = phi i32 [ %12, %32 ], [ %54, %62 ]
  %37 = tail call ptr @strchr(ptr noundef %35, i32 noundef 10)
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  store i8 0, ptr %37, align 1
  %40 = ptrtoint ptr %37 to i32
  %41 = ptrtoint ptr %35 to i32
  %42 = sub i32 1, %41
  %43 = add i32 %42, %40
  %44 = add i32 %43, %36
  br label %53

45:                                               ; preds = %34
  %46 = tail call i32 @strlen(ptr noundef %35)
  %47 = add i32 %46, %36
  %48 = icmp ult i32 %47, %2
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = icmp eq ptr %35, %7
  br i1 %50, label %51, label %65

51:                                               ; preds = %49
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef 4094) #38
  br label %68

53:                                               ; preds = %45, %39
  %54 = phi i32 [ %47, %45 ], [ %44, %39 ]
  %55 = phi i32 [ %46, %45 ], [ %43, %39 ]
  %56 = tail call ptr @strchr(ptr noundef %35, i32 noundef 35)
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  store i8 0, ptr %56, align 1
  br label %59

59:                                               ; preds = %58, %53
  %60 = tail call i32 %4(ptr noundef %35) #34
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = getelementptr i8, ptr %35, i32 %55
  %64 = icmp ult i32 %54, %2
  br i1 %64, label %34, label %65

65:                                               ; preds = %62, %49
  %66 = phi i32 [ %36, %49 ], [ %54, %62 ]
  %67 = icmp ult i32 %66, %2
  br i1 %67, label %11, label %68

68:                                               ; preds = %65, %59, %51, %29, %9
  %69 = phi i32 [ -22, %51 ], [ -14, %29 ], [ 0, %9 ], [ %60, %59 ], [ %66, %65 ]
  tail call void @kfree(ptr noundef nonnull %7) #34
  br label %70

70:                                               ; preds = %68, %5
  %71 = phi i32 [ %69, %68 ], [ -12, %5 ]
  ret i32 %71
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @early_trace_init() local_unnamed_addr #11 section ".init.text" {
  %1 = load i32, ptr @tracepoint_printk, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %28, label %3

3:                                                ; preds = %0
  %4 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8376, i32 noundef 3520, i32 noundef 2) #37
  store ptr %4, ptr @tracepoint_print_iter, align 4
  %5 = icmp eq ptr %4, null
  %6 = load i1, ptr @early_trace_init.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %11, !prof !11

9:                                                ; preds = %3
  store i1 true, ptr @early_trace_init.__already_done, align 1
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #38
  br label %11

11:                                               ; preds = %9, %3
  br i1 %5, label %12, label %13

12:                                               ; preds = %11
  store i32 0, ptr @tracepoint_printk, align 4
  br label %28

13:                                               ; preds = %11
  %14 = load i8, ptr @static_key_initialized, align 1, !range !12
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %17, !prof !11

16:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 318, i32 noundef 9, ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.static_key_enable, ptr noundef nonnull @tracepoint_printk_key) #34
  br label %17

17:                                               ; preds = %16, %13
  %18 = load volatile i32, ptr @tracepoint_printk_key, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = load volatile i32, ptr @tracepoint_printk_key, align 4
  %22 = icmp ne i32 %21, 1
  %23 = load i1, ptr @static_key_enable.__already_done, align 1
  %24 = xor i1 %23, true
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %28, !prof !11

26:                                               ; preds = %20
  store i1 true, ptr @static_key_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 321, i32 noundef 9, ptr noundef null) #34
  br label %28

27:                                               ; preds = %17
  store volatile i32 1, ptr @tracepoint_printk_key, align 4
  br label %28

28:                                               ; preds = %27, %26, %20, %12, %0
  tail call fastcc void @tracer_alloc_buffers() #39
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @tracer_alloc_buffers() unnamed_addr #11 section ".init.text" {
  br i1 icmp ne (ptr @__stop___trace_bprintk_fmt, ptr @__start___trace_bprintk_fmt), label %1, label %2

1:                                                ; preds = %0
  tail call void @trace_printk_init_buffers()
  br label %2

2:                                                ; preds = %1, %0
  %3 = load i8, ptr @ring_buffer_expanded, align 1, !range !12
  %4 = icmp eq i8 %3, 0
  %5 = load i32, ptr @trace_buf_size, align 4
  %6 = select i1 %4, i32 1, i32 %5
  %7 = load i32, ptr @__cpu_possible_mask, align 4
  store i32 %7, ptr @tracing_buffer_mask, align 4
  %8 = load i32, ptr @cpu_all_bits, align 4
  store i32 %8, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 27), align 8
  store i32 0, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 17), align 4
  %9 = tail call i32 @__cpuhp_setup_state(i32 noundef 62, ptr noundef nonnull @.str.212, i1 noundef zeroext false, ptr noundef nonnull @trace_rb_cpu_prepare, ptr noundef null, i1 noundef zeroext true) #34
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %68, label %11

11:                                               ; preds = %2
  %12 = tail call ptr @__ring_buffer_alloc(i32 noundef 4096, i32 noundef 1, ptr noundef nonnull @tracer_alloc_buffers.__key) #34
  store ptr %12, ptr @temp_buffer, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %67, label %14

14:                                               ; preds = %11
  %15 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 131092, i32 noundef 3264, i32 noundef 6) #37
  store ptr %15, ptr @savedcmd, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %65, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3264, i32 noundef 512) #36
  %20 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %15, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  %21 = icmp eq ptr %19, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3264, i32 noundef 2048) #36
  %25 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %15, i32 0, i32 4
  store ptr %24, ptr %25, align 16
  %26 = icmp eq ptr %24, null
  %27 = load ptr, ptr %20, align 4
  br i1 %26, label %28, label %31

28:                                               ; preds = %22
  tail call void @kfree(ptr noundef %27) #34
  br label %29

29:                                               ; preds = %28, %17
  %30 = load ptr, ptr @savedcmd, align 4
  tail call void @kfree(ptr noundef %30) #34
  store ptr null, ptr @savedcmd, align 4
  br label %65

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %15, i32 0, i32 3
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %15, i32 0, i32 2
  store i32 128, ptr %33, align 8
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4096 dereferenceable(131076) %15, i8 -1, i32 131076, i1 false) #34
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(512) %27, i8 -1, i32 512, i1 false) #34
  %34 = tail call fastcc i32 @allocate_trace_buffers(ptr noundef nonnull @global_trace, i32 noundef %6)
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i1, ptr @tracer_alloc_buffers.__already_done, align 1
  br i1 %37, label %40, label %38, !prof !19

38:                                               ; preds = %36
  store i1 true, ptr @tracer_alloc_buffers.__already_done, align 1
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213) #38
  br label %40

40:                                               ; preds = %38, %36
  %41 = load ptr, ptr @savedcmd, align 4
  tail call fastcc void @free_saved_cmdlines_buffer(ptr noundef %41)
  br label %65

42:                                               ; preds = %31
  %43 = load i32, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 6), align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 2, i32 1), align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void @ring_buffer_record_off(ptr noundef nonnull %46) #34
  br label %49

49:                                               ; preds = %48, %45
  store i32 1, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 6), align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #34, !srcloc !39
  br label %50

50:                                               ; preds = %49, %42
  %51 = load ptr, ptr @trace_boot_clock, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = tail call i32 @tracing_set_clock(ptr noundef nonnull @global_trace, ptr noundef nonnull %51)
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load ptr, ptr @trace_boot_clock, align 4
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.214, ptr noundef %57) #38
  br label %59

59:                                               ; preds = %56, %53, %50
  store ptr @nop_trace, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 13), align 8
  store i32 0, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 5), align 8
  tail call fastcc void @init_trace_flags_index(ptr noundef nonnull @global_trace)
  %60 = tail call i32 @register_tracer(ptr noundef nonnull @nop_trace) #39
  store i1 true, ptr @tracing_disabled, align 4
  %61 = tail call i32 @atomic_notifier_chain_register(ptr noundef nonnull @panic_notifier_list, ptr noundef nonnull @trace_panic_notifier) #34
  %62 = tail call i32 @register_die_notifier(ptr noundef nonnull @trace_die_notifier) #34
  store i32 1, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 16), align 8
  store volatile ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 24), ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 24), align 4
  store ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 24), ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 24, i32 1), align 8
  store volatile ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 25), ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 25), align 4
  store ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 25), ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 25, i32 1), align 8
  store volatile ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 31), ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 31), align 8
  store ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 31), ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 31, i32 1), align 4
  store volatile ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 18), ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 18), align 8
  store ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 18), ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 18, i32 1), align 4
  %63 = load ptr, ptr @ftrace_trace_arrays, align 4
  %64 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  store ptr @global_trace, ptr %64, align 4
  store ptr %63, ptr @global_trace, align 8
  store ptr @ftrace_trace_arrays, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 0, i32 1), align 4
  store volatile ptr @global_trace, ptr @ftrace_trace_arrays, align 4
  tail call fastcc void @apply_trace_boot_options() #39
  tail call fastcc void @test_can_verify()
  br label %68

65:                                               ; preds = %40, %29, %14
  %66 = load ptr, ptr @temp_buffer, align 4
  tail call void @ring_buffer_free(ptr noundef %66) #34
  br label %67

67:                                               ; preds = %65, %11
  tail call void @__cpuhp_remove_state(i32 noundef 62, i1 noundef zeroext false) #34
  br label %68

68:                                               ; preds = %67, %59, %2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @trace_init() local_unnamed_addr #11 section ".init.text" {
  tail call void @trace_event_init() #34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_init() local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @late_trace_init() #11 section ".init.text" {
  %1 = load i32, ptr @tracepoint_printk, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %21, label %3

3:                                                ; preds = %0
  %4 = load i1, ptr @tracepoint_printk_stop_on_boot, align 1
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = load i8, ptr @static_key_initialized, align 1, !range !12
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 329, i32 noundef 9, ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.static_key_disable, ptr noundef nonnull @tracepoint_printk_key) #34
  br label %9

9:                                                ; preds = %8, %5
  %10 = load volatile i32, ptr @tracepoint_printk_key, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = load volatile i32, ptr @tracepoint_printk_key, align 4
  %14 = icmp ne i32 %13, 0
  %15 = load i1, ptr @static_key_disable.__already_done, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %20, !prof !11

18:                                               ; preds = %12
  store i1 true, ptr @static_key_disable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 332, i32 noundef 9, ptr noundef null) #34
  br label %20

19:                                               ; preds = %9
  store volatile i32 0, ptr @tracepoint_printk_key, align 4
  br label %20

20:                                               ; preds = %19, %18, %12
  store i32 0, ptr @tracepoint_printk, align 4
  br label %21

21:                                               ; preds = %20, %3, %0
  %22 = load ptr, ptr @default_bootup_tracer, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218, ptr noundef nonnull %22) #38
  store ptr null, ptr @default_bootup_tracer, align 4
  br label %26

26:                                               ; preds = %24, %21
  ret i32 0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #23

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_buffer_discard_commit(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @trace_clock_local() #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_buffer_normalize_time_stamp(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ring_buffer_lock_reserve(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ring_buffer_write(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ring_buffer_unlock_commit(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @trace_clock_global() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @trace_clock_counter() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @trace_clock_jiffies() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @trace_clock() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_raw_fast_ns() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_boot_fast_ns() #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #24

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #25

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #25

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #26

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #27

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #28

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @event_triggers_call(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @trace_event_ignore_this_pid(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ring_buffer_event_length(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stack_trace_save_regs(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stack_trace_save(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #25

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vscnprintf(ptr noundef, i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #29

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @trace_is_tracepoint_string(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ftrace_find_event(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @peek_next_entry(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = getelementptr ptr, ptr %6, i32 %1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @ring_buffer_iter_peek(ptr noundef nonnull %10, ptr noundef %2) #34
  %14 = icmp eq ptr %3, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %12
  %16 = tail call zeroext i1 @ring_buffer_iter_dropped(ptr noundef nonnull %10) #34
  %17 = sext i1 %16 to i32
  store i32 %17, ptr %3, align 4
  br label %24

18:                                               ; preds = %8, %4
  %19 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.array_buffer, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call ptr @ring_buffer_peek(ptr noundef %22, i32 noundef %1, ptr noundef %2, ptr noundef %3) #34
  br label %24

24:                                               ; preds = %18, %15, %12
  %25 = phi ptr [ %13, %15 ], [ %13, %12 ], [ %23, %18 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @ring_buffer_event_length(ptr noundef nonnull %25) #34
  %29 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 19
  store i32 %28, ptr %29, align 4
  %30 = tail call ptr @ring_buffer_event_data(ptr noundef nonnull %25) #34
  br label %33

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 19
  store i32 0, ptr %32, align 4
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi ptr [ %30, %27 ], [ null, %31 ]
  ret ptr %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ring_buffer_iter_dropped(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ring_buffer_peek(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ring_buffer_entries_cpu(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ring_buffer_overrun_cpu(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_putmem(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_putmem_hex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_print_lat_context(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_print_context(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @print_event_info(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #5 {
  %3 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @tracing_buffer_mask) #41
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %38

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.array_buffer, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.array_buffer, ptr %0, i32 0, i32 2
  br label %9

9:                                                ; preds = %30, %6
  %10 = phi i32 [ 0, %6 ], [ %33, %30 ]
  %11 = phi i32 [ 0, %6 ], [ %34, %30 ]
  %12 = phi i32 [ %3, %6 ], [ %35, %30 ]
  %13 = load ptr, ptr %7, align 4
  %14 = tail call i32 @ring_buffer_entries_cpu(ptr noundef %13, i32 noundef %12) #34
  %15 = load ptr, ptr %8, align 8
  %16 = ptrtoint ptr %15 to i32
  %17 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %16
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.trace_array_cpu, ptr %20, i32 0, i32 10
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %9
  %25 = sub i32 %14, %22
  br label %30

26:                                               ; preds = %9
  %27 = load ptr, ptr %7, align 4
  %28 = tail call i32 @ring_buffer_overrun_cpu(ptr noundef %27, i32 noundef %12) #34
  %29 = add i32 %28, %14
  br label %30

30:                                               ; preds = %26, %24
  %31 = phi i32 [ %29, %26 ], [ %25, %24 ]
  %32 = phi i32 [ %14, %26 ], [ %25, %24 ]
  %33 = add i32 %31, %10
  %34 = add i32 %32, %11
  %35 = tail call i32 @cpumask_next(i32 noundef %12, ptr noundef nonnull @tracing_buffer_mask) #41
  %36 = load i32, ptr @nr_cpu_ids, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %9, label %38

38:                                               ; preds = %30, %2
  %39 = phi i32 [ 0, %2 ], [ %33, %30 ]
  %40 = phi i32 [ 0, %2 ], [ %34, %30 ]
  %41 = load volatile i32, ptr @__num_online_cpus, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.101, i32 noundef %40, i32 noundef %39, i32 noundef %41) #34
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.44) #34
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #25

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_stop_cmdline_record() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ring_buffer_resize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tracefs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_options_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #5 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.trace_option_dentry, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr inbounds %struct.tracer_opt, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, %9
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, ptr @.str.137, ptr @.str.136
  %16 = tail call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %15, i32 noundef 2) #34
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_options_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #5 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #34
  store i32 0, ptr %5, align 4, !annotation !26
  %8 = call i32 @kstrtoul_from_user(ptr noundef %1, i32 noundef %2, i32 noundef 10, ptr noundef nonnull %5) #34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %57

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = icmp ugt i32 %11, 1
  br i1 %12, label %57, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.trace_option_dentry, ptr %7, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr inbounds %struct.tracer_opt, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, %16
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = icmp eq i32 %11, %22
  br i1 %23, label %53, label %24

24:                                               ; preds = %13
  call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %25 = getelementptr inbounds %struct.trace_option_dentry, ptr %7, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %14, align 4
  %28 = load ptr, ptr %7, align 4
  %29 = load i32, ptr %5, align 4
  %30 = icmp ne i32 %29, 0
  %31 = getelementptr inbounds %struct.tracer_flags, ptr %27, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.tracer, ptr %32, i32 0, i32 14
  %34 = load ptr, ptr %33, align 4
  %35 = load i32, ptr %27, align 4
  %36 = getelementptr inbounds %struct.tracer_opt, ptr %28, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = zext i1 %30 to i32
  %39 = call i32 %34(ptr noundef %26, i32 noundef %35, i32 noundef %37, i32 noundef %38) #34
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %24
  %42 = load i32, ptr %36, align 4
  br i1 %30, label %47, label %43

43:                                               ; preds = %41
  %44 = xor i32 %42, -1
  %45 = load i32, ptr %27, align 4
  %46 = and i32 %45, %44
  br label %50

47:                                               ; preds = %41
  %48 = load i32, ptr %27, align 4
  %49 = or i32 %48, %42
  br label %50

50:                                               ; preds = %47, %43
  %51 = phi i32 [ %49, %47 ], [ %46, %43 ]
  store i32 %51, ptr %27, align 4
  call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %53

52:                                               ; preds = %24
  call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %57

53:                                               ; preds = %50, %13
  %54 = zext i32 %2 to i64
  %55 = load i64, ptr %3, align 8
  %56 = add i64 %55, %54
  store i64 %56, ptr %3, align 8
  br label %57

57:                                               ; preds = %53, %52, %10, %4
  %58 = phi i32 [ %2, %53 ], [ %8, %4 ], [ -22, %10 ], [ %39, %52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #34
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoul_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @allocate_trace_buffers(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 14
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %5, 17
  %7 = and i32 %6, 1
  store ptr %0, ptr %3, align 8
  %8 = tail call ptr @__ring_buffer_alloc(i32 noundef %1, i32 noundef %7, ptr noundef nonnull @allocate_trace_buffer.__key) #34
  %9 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2, i32 1
  store ptr %8, ptr %9, align 4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %2
  %12 = tail call noalias ptr @__alloc_percpu(i32 noundef 88, i32 noundef 8) #37
  %13 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2, i32 2
  store ptr %12, ptr %13, align 8
  %14 = icmp eq ptr %12, null
  %15 = load ptr, ptr %9, align 4
  br i1 %14, label %16, label %17

16:                                               ; preds = %11
  tail call void @ring_buffer_free(ptr noundef %15) #34
  store ptr null, ptr %9, align 4
  br label %33

17:                                               ; preds = %11
  %18 = tail call i32 @ring_buffer_size(ptr noundef %15, i32 noundef 0) #34
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %20 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @tracing_buffer_mask) #41
  %21 = icmp ult i32 %20, %19
  br i1 %21, label %22, label %33

22:                                               ; preds = %22, %17
  %23 = phi i32 [ %31, %22 ], [ %20, %17 ]
  %24 = load ptr, ptr %13, align 8
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %25
  %29 = inttoptr i32 %28 to ptr
  %30 = getelementptr inbounds %struct.trace_array_cpu, ptr %29, i32 0, i32 2
  store i32 %18, ptr %30, align 8
  %31 = tail call i32 @cpumask_next(i32 noundef %23, ptr noundef nonnull @tracing_buffer_mask) #41
  %32 = icmp ult i32 %31, %19
  br i1 %32, label %22, label %33

33:                                               ; preds = %22, %17, %16, %2
  %34 = phi i32 [ -12, %16 ], [ -12, %2 ], [ 0, %17 ], [ 0, %22 ]
  ret i32 %34
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync)
define internal fastcc void @init_trace_flags_index(ptr nocapture noundef writeonly %0) unnamed_addr #30 {
  %2 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 0
  store i8 0, ptr %2, align 1
  %3 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 1
  store i8 1, ptr %3, align 1
  %4 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 2
  store i8 2, ptr %4, align 1
  %5 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 3
  store i8 3, ptr %5, align 1
  %6 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 4
  store i8 4, ptr %6, align 1
  %7 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 5
  store i8 5, ptr %7, align 1
  %8 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 6
  store i8 6, ptr %8, align 1
  %9 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 7
  store i8 7, ptr %9, align 1
  %10 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 8
  store i8 8, ptr %10, align 1
  %11 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 9
  store i8 9, ptr %11, align 1
  %12 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 10
  store i8 10, ptr %12, align 1
  %13 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 11
  store i8 11, ptr %13, align 1
  %14 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 12
  store i8 12, ptr %14, align 1
  %15 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 13
  store i8 13, ptr %15, align 1
  %16 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 14
  store i8 14, ptr %16, align 1
  %17 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 15
  store i8 15, ptr %17, align 1
  %18 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 16
  store i8 16, ptr %18, align 1
  %19 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 17
  store i8 17, ptr %19, align 1
  %20 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 18
  store i8 18, ptr %20, align 1
  %21 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 19
  store i8 19, ptr %21, align 1
  %22 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 20
  store i8 20, ptr %22, align 1
  %23 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 21
  store i8 21, ptr %23, align 1
  %24 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 22
  store i8 22, ptr %24, align 1
  %25 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 23
  store i8 23, ptr %25, align 1
  %26 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 24
  store i8 24, ptr %26, align 1
  %27 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 25
  store i8 25, ptr %27, align 1
  %28 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 26
  store i8 26, ptr %28, align 1
  %29 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 27
  store i8 27, ptr %29, align 1
  %30 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 28
  store i8 28, ptr %30, align 1
  %31 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 29
  store i8 29, ptr %31, align 1
  %32 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 30
  store i8 30, ptr %32, align 1
  %33 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 31
  store i8 31, ptr %33, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @trace_array_create_dir(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr @trace_instance_dir, align 4
  %5 = tail call ptr @tracefs_create_dir(ptr noundef %3, ptr noundef %4) #34
  %6 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 19
  store ptr %5, ptr %6, align 8
  %7 = icmp eq ptr %5, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @event_trace_add_tracer(ptr noundef nonnull %5, ptr noundef %0) #34
  %10 = icmp eq i32 %9, 0
  %11 = load ptr, ptr %6, align 8
  br i1 %10, label %13, label %12

12:                                               ; preds = %8
  tail call void @tracefs_remove(ptr noundef %11) #34
  br label %21

13:                                               ; preds = %8
  tail call fastcc void @init_tracer_tracefs(ptr noundef %0, ptr noundef %11)
  %14 = load ptr, ptr @trace_types, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %16, %13
  %17 = phi ptr [ %19, %16 ], [ %14, %13 ]
  tail call fastcc void @add_tracer_options(ptr noundef %0, ptr noundef nonnull %17) #34
  %18 = getelementptr inbounds %struct.tracer, ptr %17, i32 0, i32 16
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %16

21:                                               ; preds = %16, %13, %12, %1
  %22 = phi i32 [ %9, %12 ], [ -22, %1 ], [ 0, %13 ], [ 0, %16 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__trace_early_add_events(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ring_buffer_alloc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_buffer_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ring_buffer_size(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @event_trace_add_tracer(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracefs_remove(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @init_tracer_tracefs(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca [30 x i8], align 1
  %4 = tail call ptr @tracefs_create_file(ptr noundef nonnull @.str.139, i16 noundef zeroext 288, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @show_traces_fops) #34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.139) #38
  br label %8

8:                                                ; preds = %6, %2
  %9 = tail call ptr @tracefs_create_file(ptr noundef nonnull @.str.140, i16 noundef zeroext 416, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @set_tracer_fops) #34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.140) #38
  br label %13

13:                                               ; preds = %11, %8
  %14 = tail call ptr @tracefs_create_file(ptr noundef nonnull @.str.141, i16 noundef zeroext 416, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @tracing_cpumask_fops) #34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.141) #38
  br label %18

18:                                               ; preds = %16, %13
  %19 = tail call ptr @tracefs_create_file(ptr noundef nonnull @.str.142, i16 noundef zeroext 416, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @tracing_iter_fops) #34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.142) #38
  br label %23

23:                                               ; preds = %21, %18
  %24 = tail call ptr @tracefs_create_file(ptr noundef nonnull @.str.143, i16 noundef zeroext 416, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @tracing_fops) #34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.143) #38
  br label %28

28:                                               ; preds = %26, %23
  %29 = tail call ptr @tracefs_create_file(ptr noundef nonnull @.str.144, i16 noundef zeroext 288, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @tracing_pipe_fops) #34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.144) #38
  br label %33

33:                                               ; preds = %31, %28
  %34 = tail call ptr @tracefs_create_file(ptr noundef nonnull @.str.145, i16 noundef zeroext 416, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @tracing_entries_fops) #34
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.145) #38
  br label %38

38:                                               ; preds = %36, %33
  %39 = tail call ptr @tracefs_create_file(ptr noundef nonnull @.str.146, i16 noundef zeroext 288, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @tracing_total_entries_fops) #34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.146) #38
  br label %43

43:                                               ; preds = %41, %38
  %44 = tail call ptr @tracefs_create_file(ptr noundef nonnull @.str.147, i16 noundef zeroext 128, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @tracing_free_buffer_fops) #34
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.147) #38
  br label %48

48:                                               ; preds = %46, %43
  %49 = tail call ptr @tracefs_create_file(ptr noundef nonnull @.str.148, i16 noundef zeroext 144, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @tracing_mark_fops) #34
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.148) #38
  br label %53

53:                                               ; preds = %51, %48
  %54 = tail call ptr @__find_event_file(ptr noundef %0, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.150) #34
  %55 = icmp eq ptr %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.trace_event_file, ptr %54, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = tail call ptr @tracefs_create_file(ptr noundef nonnull @.str.151, i16 noundef zeroext 416, ptr noundef nonnull %58, ptr noundef nonnull %54, ptr noundef nonnull @event_trigger_fops) #34
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.151) #38
  br label %65

65:                                               ; preds = %63, %60, %56, %53
  %66 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 26
  store ptr %54, ptr %66, align 4
  %67 = tail call ptr @tracefs_create_file(ptr noundef nonnull @.str.152, i16 noundef zeroext 144, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @tracing_mark_raw_fops) #34
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.152) #38
  br label %71

71:                                               ; preds = %69, %65
  %72 = tail call ptr @tracefs_create_file(ptr noundef nonnull @.str.153, i16 noundef zeroext 416, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @trace_clock_fops) #34
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.153) #38
  br label %76

76:                                               ; preds = %74, %71
  %77 = tail call ptr @tracefs_create_file(ptr noundef nonnull @.str.154, i16 noundef zeroext 416, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @rb_simple_fops) #34
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.154) #38
  br label %81

81:                                               ; preds = %79, %76
  %82 = tail call ptr @tracefs_create_file(ptr noundef nonnull @.str.155, i16 noundef zeroext 288, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @trace_time_stamp_mode_fops) #34
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.155) #38
  br label %86

86:                                               ; preds = %84, %81
  %87 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 11
  store i32 50, ptr %87, align 8
  %88 = tail call ptr @tracefs_create_file(ptr noundef nonnull @.str.156, i16 noundef zeroext 288, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @buffer_percent_fops) #34
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.156) #38
  br label %92

92:                                               ; preds = %90, %86
  %93 = icmp eq ptr %0, @global_trace
  %94 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 20
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %115

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 19
  %99 = load ptr, ptr %98, align 8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %102, !prof !11

101:                                              ; preds = %97
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 8545, i32 noundef 9, ptr noundef null) #34
  br label %159

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 16
  %104 = load i32, ptr %103, align 8
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = icmp ugt ptr %99, inttoptr (i32 -4096 to ptr)
  br i1 %108, label %159, label %109

109:                                              ; preds = %107, %102
  %110 = phi ptr [ %99, %107 ], [ null, %102 ]
  %111 = tail call ptr @tracefs_create_dir(ptr noundef nonnull @.str.134, ptr noundef %110) #34
  store ptr %111, ptr %94, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135) #38
  br label %159

115:                                              ; preds = %109, %92
  %116 = load ptr, ptr @trace_options, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %159, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 19
  %120 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 16
  br label %121

121:                                              ; preds = %154, %118
  %122 = phi ptr [ %116, %118 ], [ %157, %154 ]
  %123 = phi i32 [ 0, %118 ], [ %155, %154 ]
  br i1 %93, label %128, label %124

124:                                              ; preds = %121
  %125 = shl nuw i32 1, %123
  %126 = and i32 %125, 37120
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %154

128:                                              ; preds = %124, %121
  %129 = load ptr, ptr %94, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %147

131:                                              ; preds = %128
  %132 = load ptr, ptr %119, align 8
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %135, !prof !11

134:                                              ; preds = %131
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 8545, i32 noundef 9, ptr noundef null) #34
  br label %154

135:                                              ; preds = %131
  %136 = load i32, ptr %120, align 8
  %137 = and i32 %136, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = icmp ugt ptr %132, inttoptr (i32 -4096 to ptr)
  br i1 %140, label %154, label %141

141:                                              ; preds = %139, %135
  %142 = phi ptr [ %132, %139 ], [ null, %135 ]
  %143 = tail call ptr @tracefs_create_dir(ptr noundef nonnull @.str.134, ptr noundef %142) #34
  store ptr %143, ptr %94, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135) #38
  br label %154

147:                                              ; preds = %141, %128
  %148 = phi ptr [ %129, %128 ], [ %143, %141 ]
  %149 = getelementptr %struct.trace_array, ptr %0, i32 0, i32 15, i32 %123
  %150 = tail call ptr @tracefs_create_file(ptr noundef nonnull %122, i16 noundef zeroext 416, ptr noundef nonnull %148, ptr noundef %149, ptr noundef nonnull @trace_options_core_fops) #34
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull %122) #38
  br label %154

154:                                              ; preds = %152, %147, %145, %139, %134, %124
  %155 = add i32 %123, 1
  %156 = getelementptr [26 x ptr], ptr @trace_options, i32 0, i32 %155
  %157 = load ptr, ptr %156, align 4
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %121

159:                                              ; preds = %154, %115, %113, %107, %101
  %160 = tail call ptr @tracefs_create_file(ptr noundef nonnull @.str.158, i16 noundef zeroext 416, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @tracing_err_log_fops) #34
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.158) #38
  br label %164

164:                                              ; preds = %162, %159
  %165 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @tracing_buffer_mask) #41
  %166 = load i32, ptr @nr_cpu_ids, align 4
  %167 = icmp ult i32 %165, %166
  br i1 %167, label %168, label %267

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 21
  %170 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 19
  %171 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 16
  br label %172

172:                                              ; preds = %263, %168
  %173 = phi i32 [ %165, %168 ], [ %264, %263 ]
  %174 = load ptr, ptr %169, align 8
  %175 = icmp eq ptr %174, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %172
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %3) #34
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(30) %3, i8 0, i32 30, i1 false) #34, !annotation !26
  br label %201

177:                                              ; preds = %172
  %178 = load ptr, ptr %170, align 8
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %181, !prof !11

180:                                              ; preds = %177
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 8545, i32 noundef 9, ptr noundef null) #34
  br label %197

181:                                              ; preds = %177
  %182 = load i32, ptr %171, align 8
  %183 = and i32 %182, 1
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = icmp ugt ptr %178, inttoptr (i32 -4096 to ptr)
  br i1 %186, label %197, label %187

187:                                              ; preds = %185, %181
  %188 = phi ptr [ %178, %185 ], [ null, %181 ]
  %189 = call ptr @tracefs_create_dir(ptr noundef nonnull @.str.181, ptr noundef %188) #34
  store ptr %189, ptr %169, align 8
  %190 = icmp eq ptr %189, null
  %191 = load i1, ptr @tracing_dentry_percpu.__already_done, align 1
  %192 = xor i1 %191, true
  %193 = select i1 %190, i1 %192, i1 false
  br i1 %193, label %194, label %198, !prof !11

194:                                              ; preds = %187
  store i1 true, ptr @tracing_dentry_percpu.__already_done, align 1
  %195 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, i32 noundef %173) #38
  %196 = load ptr, ptr %169, align 8
  br label %198

197:                                              ; preds = %185, %180
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %3) #34
  br label %263

198:                                              ; preds = %194, %187
  %199 = phi ptr [ %196, %194 ], [ %189, %187 ]
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %3) #34
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(30) %3, i8 0, i32 30, i1 false) #34, !annotation !26
  %200 = icmp eq ptr %199, null
  br i1 %200, label %263, label %201

201:                                              ; preds = %198, %176
  %202 = phi ptr [ %174, %176 ], [ %199, %198 ]
  %203 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 30, ptr noundef nonnull @.str.178, i32 noundef %173) #34
  %204 = call ptr @tracefs_create_dir(ptr noundef nonnull %3, ptr noundef nonnull %202) #34
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull %3) #38
  br label %263

208:                                              ; preds = %201
  %209 = call ptr @tracefs_create_file(ptr noundef nonnull @.str.144, i16 noundef zeroext 288, ptr noundef nonnull %204, ptr noundef %0, ptr noundef nonnull @tracing_pipe_fops) #34
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %213

211:                                              ; preds = %208
  %212 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.144) #38
  br label %219

213:                                              ; preds = %208
  %214 = add nuw i32 %173, 1
  %215 = inttoptr i32 %214 to ptr
  %216 = getelementptr inbounds %struct.dentry, ptr %209, i32 0, i32 5
  %217 = load ptr, ptr %216, align 8
  %218 = getelementptr inbounds %struct.inode, ptr %217, i32 0, i32 43
  store ptr %215, ptr %218, align 4
  br label %219

219:                                              ; preds = %213, %211
  %220 = call ptr @tracefs_create_file(ptr noundef nonnull @.str.143, i16 noundef zeroext 416, ptr noundef nonnull %204, ptr noundef %0, ptr noundef nonnull @tracing_fops) #34
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %224

222:                                              ; preds = %219
  %223 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.143) #38
  br label %230

224:                                              ; preds = %219
  %225 = add nuw i32 %173, 1
  %226 = inttoptr i32 %225 to ptr
  %227 = getelementptr inbounds %struct.dentry, ptr %220, i32 0, i32 5
  %228 = load ptr, ptr %227, align 8
  %229 = getelementptr inbounds %struct.inode, ptr %228, i32 0, i32 43
  store ptr %226, ptr %229, align 4
  br label %230

230:                                              ; preds = %224, %222
  %231 = call ptr @tracefs_create_file(ptr noundef nonnull @.str.179, i16 noundef zeroext 288, ptr noundef nonnull %204, ptr noundef %0, ptr noundef nonnull @tracing_buffers_fops) #34
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %235

233:                                              ; preds = %230
  %234 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.179) #38
  br label %241

235:                                              ; preds = %230
  %236 = add nuw i32 %173, 1
  %237 = inttoptr i32 %236 to ptr
  %238 = getelementptr inbounds %struct.dentry, ptr %231, i32 0, i32 5
  %239 = load ptr, ptr %238, align 8
  %240 = getelementptr inbounds %struct.inode, ptr %239, i32 0, i32 43
  store ptr %237, ptr %240, align 4
  br label %241

241:                                              ; preds = %235, %233
  %242 = call ptr @tracefs_create_file(ptr noundef nonnull @.str.180, i16 noundef zeroext 288, ptr noundef nonnull %204, ptr noundef %0, ptr noundef nonnull @tracing_stats_fops) #34
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %246

244:                                              ; preds = %241
  %245 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.180) #38
  br label %252

246:                                              ; preds = %241
  %247 = add nuw i32 %173, 1
  %248 = inttoptr i32 %247 to ptr
  %249 = getelementptr inbounds %struct.dentry, ptr %242, i32 0, i32 5
  %250 = load ptr, ptr %249, align 8
  %251 = getelementptr inbounds %struct.inode, ptr %250, i32 0, i32 43
  store ptr %248, ptr %251, align 4
  br label %252

252:                                              ; preds = %246, %244
  %253 = call ptr @tracefs_create_file(ptr noundef nonnull @.str.145, i16 noundef zeroext 288, ptr noundef nonnull %204, ptr noundef %0, ptr noundef nonnull @tracing_entries_fops) #34
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %257

255:                                              ; preds = %252
  %256 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.145) #38
  br label %263

257:                                              ; preds = %252
  %258 = add nuw i32 %173, 1
  %259 = inttoptr i32 %258 to ptr
  %260 = getelementptr inbounds %struct.dentry, ptr %253, i32 0, i32 5
  %261 = load ptr, ptr %260, align 8
  %262 = getelementptr inbounds %struct.inode, ptr %261, i32 0, i32 43
  store ptr %259, ptr %262, align 4
  br label %263

263:                                              ; preds = %257, %255, %206, %198, %197
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %3) #34
  %264 = call i32 @cpumask_next(i32 noundef %173, ptr noundef nonnull @tracing_buffer_mask) #41
  %265 = load i32, ptr @nr_cpu_ids, align 4
  %266 = icmp ult i32 %264, %265
  br i1 %266, label %172, label %267

267:                                              ; preds = %263, %164
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__find_event_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_traces_open(ptr nocapture noundef readonly %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = load i1, ptr @tracing_disabled, align 4
  br i1 %5, label %6, label %37

6:                                                ; preds = %2
  %7 = icmp eq ptr %4, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %6
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  br label %9

9:                                                ; preds = %13, %8
  %10 = phi ptr [ @ftrace_trace_arrays, %8 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @ftrace_trace_arrays
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = icmp eq ptr %11, %4
  br i1 %14, label %16, label %9

15:                                               ; preds = %9
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %37

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 28
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  %20 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @show_traces_seq_ops) #34
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %25

22:                                               ; preds = %6
  %23 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @show_traces_seq_ops) #34
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %33, label %37

25:                                               ; preds = %16
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %26 = load i32, ptr %17, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30, !prof !11

28:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 465, i32 noundef 9, ptr noundef null) #34
  %29 = load i32, ptr %17, align 4
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi i32 [ %29, %28 ], [ %26, %25 ]
  %32 = add i32 %31, -1
  store i32 %32, ptr %17, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %37

33:                                               ; preds = %22, %16
  %34 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.seq_file, ptr %35, i32 0, i32 11
  store ptr %4, ptr %36, align 8
  br label %37

37:                                               ; preds = %33, %30, %22, %15, %2
  %38 = phi i32 [ 0, %33 ], [ -19, %15 ], [ %20, %30 ], [ -19, %2 ], [ %23, %22 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_traces_release(ptr noundef %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %7 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 28
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12, !prof !11

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 465, i32 noundef 9, ptr noundef null) #34
  %11 = load i32, ptr %7, align 4
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i32 [ %11, %10 ], [ %8, %6 ]
  %14 = add i32 %13, -1
  store i32 %14, ptr %7, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %15

15:                                               ; preds = %12, %2
  %16 = tail call i32 @seq_release(ptr noundef %0, ptr noundef %1) #34
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @t_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %5 = load ptr, ptr @trace_types, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %50, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 16
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %17, %7
  %13 = phi ptr [ %19, %17 ], [ %5, %7 ]
  %14 = getelementptr inbounds %struct.tracer, ptr %13, i32 0, i32 20
  %15 = load i8, ptr %14, align 1, !range !12
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.tracer, ptr %13, i32 0, i32 16
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %50, label %12

21:                                               ; preds = %12, %7
  %22 = phi ptr [ %5, %7 ], [ %13, %12 ]
  %23 = load i64, ptr %1, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %47, %21
  %26 = phi i64 [ %28, %47 ], [ 0, %21 ]
  %27 = phi ptr [ %48, %47 ], [ %22, %21 ]
  %28 = add nuw nsw i64 %26, 1
  %29 = getelementptr inbounds %struct.tracer, ptr %27, i32 0, i32 16
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %50, label %32

32:                                               ; preds = %25
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds %struct.trace_array, ptr %33, i32 0, i32 16
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %43, %32
  %39 = phi ptr [ %45, %43 ], [ %30, %32 ]
  %40 = getelementptr inbounds %struct.tracer, ptr %39, i32 0, i32 20
  %41 = load i8, ptr %40, align 1, !range !12
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.tracer, ptr %39, i32 0, i32 16
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %38

47:                                               ; preds = %38, %32
  %48 = phi ptr [ %30, %32 ], [ %39, %38 ]
  %49 = icmp slt i64 %28, %23
  br i1 %49, label %25, label %50

50:                                               ; preds = %47, %43, %25, %21, %17, %2
  %51 = phi ptr [ null, %2 ], [ %22, %21 ], [ null, %43 ], [ null, %25 ], [ %48, %47 ], [ null, %17 ]
  ret ptr %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @t_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #5 {
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @t_next(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef %2) #31 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = load i64, ptr %2, align 8
  %7 = add i64 %6, 1
  store i64 %7, ptr %2, align 8
  %8 = icmp eq ptr %1, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tracer, ptr %1, i32 0, i32 16
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.trace_array, ptr %5, i32 0, i32 16
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %23, %13
  %19 = phi ptr [ %25, %23 ], [ %11, %13 ]
  %20 = getelementptr inbounds %struct.tracer, ptr %19, i32 0, i32 20
  %21 = load i8, ptr %20, align 1, !range !12
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tracer, ptr %19, i32 0, i32 16
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %18

27:                                               ; preds = %23, %18, %13, %9, %3
  %28 = phi ptr [ null, %3 ], [ null, %9 ], [ %11, %13 ], [ %19, %18 ], [ null, %23 ]
  ret ptr %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @t_show(ptr noundef %0, ptr noundef readonly %1) #5 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 4
  tail call void @seq_puts(ptr noundef %0, ptr noundef %5) #34
  %6 = getelementptr inbounds %struct.tracer, ptr %1, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, i8 10, i8 32
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext %9) #34
  br label %10

10:                                               ; preds = %4, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_set_trace_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #5 {
  %5 = alloca [102 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 102, ptr nonnull %5) #34
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(102) %5, i8 0, i32 102, i1 false), !annotation !26
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %8 = getelementptr inbounds %struct.trace_array, ptr %7, i32 0, i32 13
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.159, ptr noundef %10)
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  %12 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef %11) #34
  call void @llvm.lifetime.end.p0(i64 102, ptr nonnull %5) #34
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_set_trace_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #5 {
  %5 = alloca [101 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 101, ptr nonnull %5) #34
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(101) %5, i8 0, i32 101, i1 false), !annotation !26
  %8 = tail call i32 @llvm.umin.i32(i32 %2, i32 100)
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %8, i32 -1090519040) #35, !srcloc !82
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19, !prof !19

12:                                               ; preds = %4
  %13 = tail call ptr @llvm.thread.pointer() #34
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #26, !srcloc !27
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #34, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #34, !srcloc !29
  %18 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %8) #34
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #34, !srcloc !28
  call void asm sideeffect "isb ", "~{memory}"() #34, !srcloc !29
  br label %19

19:                                               ; preds = %12, %4
  %20 = phi i32 [ %18, %12 ], [ %8, %4 ]
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22, !prof !19

22:                                               ; preds = %19
  %23 = sub i32 %8, %20
  %24 = getelementptr i8, ptr %5, i32 %23
  call void @llvm.memset.p0.i32(ptr align 1 %24, i8 0, i32 %20, i1 false) #34
  br label %47

25:                                               ; preds = %19
  %26 = getelementptr [101 x i8], ptr %5, i32 0, i32 %8
  store i8 0, ptr %26, align 1
  %27 = icmp ugt i32 %8, 1
  br i1 %27, label %28, label %40

28:                                               ; preds = %38, %25
  %29 = phi i32 [ %30, %38 ], [ %8, %25 ]
  %30 = add nsw i32 %29, -1
  %31 = getelementptr [101 x i8], ptr %5, i32 0, i32 %30
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %33
  %35 = load i8, ptr %34, align 1
  %36 = and i8 %35, 32
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %28
  store i8 0, ptr %31, align 1
  %39 = icmp ugt i32 %29, 2
  br i1 %39, label %28, label %40

40:                                               ; preds = %38, %28, %25
  %41 = call i32 @tracing_set_tracer(ptr noundef %7, ptr noundef nonnull %5)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = zext i32 %2 to i64
  %45 = load i64, ptr %3, align 8
  %46 = add i64 %45, %44
  store i64 %46, ptr %3, align 8
  br label %47

47:                                               ; preds = %43, %40, %22
  %48 = phi i32 [ %2, %43 ], [ %41, %40 ], [ -14, %22 ]
  call void @llvm.lifetime.end.p0(i64 101, ptr nonnull %5) #34
  ret i32 %48
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #21

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_cpumask_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #5 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %10 = getelementptr inbounds %struct.trace_array, ptr %8, i32 0, i32 27
  %11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.160, i32 noundef %9, ptr noundef %10)
  %12 = add i32 %11, 1
  %13 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef 3264) #37
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %4
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %17 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %13, i32 noundef %12, ptr noundef nonnull @.str.160, i32 noundef %16, ptr noundef %10)
  %18 = icmp ult i32 %17, %2
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = tail call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %13, i32 noundef %17) #34
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi i32 [ %20, %19 ], [ -22, %15 ]
  tail call void @kfree(ptr noundef nonnull %13) #34
  br label %23

23:                                               ; preds = %21, %4
  %24 = phi i32 [ %22, %21 ], [ -12, %4 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_cpumask_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #5 {
  %5 = alloca [1 x %struct.cpumask], align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 47
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #34
  store i32 0, ptr %5, align 4
  %10 = call i32 @bitmap_parse_user(ptr noundef %1, i32 noundef %2, ptr noundef nonnull %5, i32 noundef 16) #34
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = call i32 @tracing_set_cpumask(ptr noundef %9, ptr noundef nonnull %5)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12, %4
  %16 = phi i32 [ %10, %4 ], [ %13, %12 ]
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi i32 [ %16, %15 ], [ %2, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #34
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_release_generic_tr(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #5 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %7 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 28
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12, !prof !11

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 465, i32 noundef 9, ptr noundef null) #34
  %11 = load i32, ptr %7, align 4
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i32 [ %11, %10 ], [ %8, %6 ]
  %14 = add i32 %13, -1
  store i32 %14, ptr %7, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %15

15:                                               ; preds = %12, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parse_user(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_trace_options_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #5 {
  %5 = alloca [64 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #34
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !26
  %10 = icmp ugt i32 %2, 63
  br i1 %10, label %36, label %11

11:                                               ; preds = %4
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #35, !srcloc !82
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22, !prof !19

15:                                               ; preds = %11
  %16 = tail call ptr @llvm.thread.pointer() #34
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %17) #26, !srcloc !27
  %19 = and i32 %18, -13
  %20 = or i32 %19, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #34, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #34, !srcloc !29
  %21 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %2) #34
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #34, !srcloc !28
  call void asm sideeffect "isb ", "~{memory}"() #34, !srcloc !29
  br label %22

22:                                               ; preds = %15, %11
  %23 = phi i32 [ %21, %15 ], [ %2, %11 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25, !prof !19

25:                                               ; preds = %22
  %26 = sub i32 %2, %23
  %27 = getelementptr i8, ptr %5, i32 %26
  call void @llvm.memset.p0.i32(ptr align 1 %27, i8 0, i32 %23, i1 false) #34
  br label %36

28:                                               ; preds = %22
  %29 = getelementptr [64 x i8], ptr %5, i32 0, i32 %2
  store i8 0, ptr %29, align 1
  %30 = call i32 @trace_set_options(ptr noundef %9, ptr noundef nonnull %5)
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = zext i32 %2 to i64
  %34 = load i64, ptr %3, align 8
  %35 = add i64 %34, %33
  store i64 %35, ptr %3, align 8
  br label %36

36:                                               ; preds = %32, %28, %25, %4
  %37 = phi i32 [ %2, %32 ], [ -22, %4 ], [ %30, %28 ], [ -14, %25 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #34
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_trace_options_open(ptr nocapture noundef readonly %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = load i1, ptr @tracing_disabled, align 4
  br i1 %5, label %6, label %35

6:                                                ; preds = %2
  %7 = icmp eq ptr %4, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @tracing_trace_options_show, ptr noundef null) #34
  br label %35

10:                                               ; preds = %6
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  br label %11

11:                                               ; preds = %15, %10
  %12 = phi ptr [ @ftrace_trace_arrays, %10 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, @ftrace_trace_arrays
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = icmp eq ptr %13, %4
  br i1 %16, label %18, label %11

17:                                               ; preds = %11
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %35

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 28
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  %22 = load ptr, ptr %3, align 4
  %23 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @tracing_trace_options_show, ptr noundef %22) #34
  %24 = icmp sgt i32 %23, -1
  %25 = select i1 %24, i1 true, i1 %7
  br i1 %25, label %35, label %26

26:                                               ; preds = %18
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %27 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 28
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32, !prof !11

30:                                               ; preds = %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 465, i32 noundef 9, ptr noundef null) #34
  %31 = load i32, ptr %27, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi i32 [ %31, %30 ], [ %28, %26 ]
  %34 = add i32 %33, -1
  store i32 %34, ptr %27, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %35

35:                                               ; preds = %32, %18, %17, %8, %2
  %36 = phi i32 [ -19, %17 ], [ %23, %18 ], [ %23, %32 ], [ -19, %2 ], [ %9, %8 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_single_release_tr(ptr noundef %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %7 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 28
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12, !prof !11

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 465, i32 noundef 9, ptr noundef null) #34
  %11 = load i32, ptr %7, align 4
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i32 [ %11, %10 ], [ %8, %6 ]
  %14 = add i32 %13, -1
  store i32 %14, ptr %7, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %15

15:                                               ; preds = %12, %2
  %16 = tail call i32 @single_release(ptr noundef %0, ptr noundef %1) #34
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_trace_options_show(ptr noundef %0, ptr nocapture noundef readnone %1) #5 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %5 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 13
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.tracer, ptr %6, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracer_flags, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr @trace_options, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 14
  br label %19

16:                                               ; preds = %19, %2
  %17 = load ptr, ptr %11, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %43, label %31

19:                                               ; preds = %19, %14
  %20 = phi ptr [ %12, %14 ], [ %29, %19 ]
  %21 = phi i32 [ 0, %14 ], [ %27, %19 ]
  %22 = load i32, ptr %15, align 4
  %23 = shl nuw i32 1, %21
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, ptr @.str.161, ptr @.str.159
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull %26, ptr noundef nonnull %20) #34
  %27 = add i32 %21, 1
  %28 = getelementptr [26 x ptr], ptr @trace_options, i32 0, i32 %27
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %16, label %19

31:                                               ; preds = %31, %16
  %32 = phi ptr [ %41, %31 ], [ %17, %16 ]
  %33 = phi i32 [ %39, %31 ], [ 0, %16 ]
  %34 = getelementptr %struct.tracer_opt, ptr %11, i32 %33, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, %9
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, ptr @.str.161, ptr @.str.159
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull %38, ptr noundef nonnull %32) #34
  %39 = add i32 %33, 1
  %40 = getelementptr %struct.tracer_opt, ptr %11, i32 %39
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %31

43:                                               ; preds = %31, %16
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @tracing_write_stub(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef returned %2, ptr nocapture noundef readnone %3) #10 {
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_open(ptr noundef %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = load i1, ptr @tracing_disabled, align 4
  br i1 %5, label %6, label %238

6:                                                ; preds = %2
  %7 = icmp eq ptr %4, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %6
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  br label %9

9:                                                ; preds = %13, %8
  %10 = phi ptr [ @ftrace_trace_arrays, %8 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @ftrace_trace_arrays
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = icmp eq ptr %11, %4
  br i1 %14, label %15, label %9

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 28
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %20

19:                                               ; preds = %9
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %238

20:                                               ; preds = %15, %6
  %21 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 512
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %32 = load ptr, ptr %31, align 4
  %33 = ptrtoint ptr %32 to i32
  %34 = add i32 %33, -1
  %35 = icmp eq ptr %32, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 2
  tail call void @tracing_reset_online_cpus(ptr noundef %37)
  br label %43

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 2, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @ring_buffer_record_disable(ptr noundef nonnull %40) #34
  tail call void @synchronize_rcu() #34
  tail call void @ring_buffer_reset_cpu(ptr noundef nonnull %40, i32 noundef %34) #34
  tail call void @ring_buffer_record_enable(ptr noundef nonnull %40) #34
  br label %43

43:                                               ; preds = %42, %38, %36, %25, %20
  %44 = load i32, ptr %21, align 8
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %238, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %3, align 4
  %49 = load i1, ptr @tracing_disabled, align 4
  br i1 %49, label %50, label %224

50:                                               ; preds = %47
  %51 = tail call ptr @__seq_open_private(ptr noundef %1, ptr noundef nonnull @tracer_seq_ops, i32 noundef 8376) #34
  %52 = icmp eq ptr %51, null
  br i1 %52, label %224, label %53

53:                                               ; preds = %50
  %54 = load i32, ptr @nr_cpu_ids, align 4
  %55 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %54, i32 4) #34
  %56 = extractvalue { i32, i1 } %55, 1
  br i1 %56, label %57, label %59, !prof !11

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.trace_iterator, ptr %51, i32 0, i32 6
  store ptr null, ptr %58, align 8
  br label %211

59:                                               ; preds = %53
  %60 = extractvalue { i32, i1 } %55, 0
  %61 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %60, i32 noundef 3520) #37
  %62 = getelementptr inbounds %struct.trace_iterator, ptr %51, i32 0, i32 6
  store ptr %61, ptr %62, align 8
  %63 = icmp eq ptr %61, null
  br i1 %63, label %211, label %64

64:                                               ; preds = %59
  %65 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %66 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 3264, i32 noundef 128) #36
  %67 = getelementptr inbounds %struct.trace_iterator, ptr %51, i32 0, i32 8
  store ptr %66, ptr %67, align 8
  %68 = icmp eq ptr %66, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.trace_iterator, ptr %51, i32 0, i32 9
  store i32 128, ptr %70, align 4
  br label %71

71:                                               ; preds = %69, %64
  %72 = getelementptr inbounds %struct.trace_iterator, ptr %51, i32 0, i32 10
  store ptr null, ptr %72, align 8
  %73 = getelementptr inbounds %struct.trace_iterator, ptr %51, i32 0, i32 11
  store i32 0, ptr %73, align 4
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %74 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %75 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %74, i32 noundef 3520, i32 noundef 80) #36
  %76 = getelementptr inbounds %struct.trace_iterator, ptr %51, i32 0, i32 1
  store ptr %75, ptr %76, align 4
  %77 = icmp eq ptr %75, null
  br i1 %77, label %207, label %78

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.trace_array, ptr %48, i32 0, i32 13
  %80 = load ptr, ptr %79, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %75, ptr noundef align 4 dereferenceable(80) %80, i32 80, i1 false) #34
  %81 = getelementptr inbounds %struct.trace_iterator, ptr %51, i32 0, i32 13
  store i32 0, ptr %81, align 4
  store ptr %48, ptr %51, align 8
  %82 = getelementptr inbounds %struct.trace_array, ptr %48, i32 0, i32 2
  %83 = getelementptr inbounds %struct.trace_iterator, ptr %51, i32 0, i32 2
  store ptr %82, ptr %83, align 8
  %84 = getelementptr inbounds %struct.trace_iterator, ptr %51, i32 0, i32 14
  store i8 0, ptr %84, align 4
  %85 = getelementptr inbounds %struct.trace_iterator, ptr %51, i32 0, i32 22
  store i64 -1, ptr %85, align 8
  %86 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  %89 = ptrtoint ptr %87 to i32
  %90 = add i32 %89, -1
  %91 = select i1 %88, i32 -1, i32 %90
  %92 = getelementptr inbounds %struct.trace_iterator, ptr %51, i32 0, i32 4
  store i32 %91, ptr %92, align 8
  %93 = getelementptr inbounds %struct.trace_iterator, ptr %51, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %93, ptr noundef nonnull @.str.162, ptr noundef nonnull @__tracing_open.__key) #34
  %94 = load ptr, ptr %76, align 4
  %95 = getelementptr inbounds %struct.tracer, ptr %94, i32 0, i32 6
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %78
  tail call void %96(ptr noundef nonnull %51) #34
  br label %99

99:                                               ; preds = %98, %78
  %100 = load ptr, ptr %83, align 8
  %101 = getelementptr inbounds %struct.array_buffer, ptr %100, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = tail call i32 @ring_buffer_overruns(ptr noundef %102) #34
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.trace_iterator, ptr %51, i32 0, i32 7
  %107 = load i32, ptr %106, align 4
  %108 = or i32 %107, 2
  store i32 %108, ptr %106, align 4
  br label %109

109:                                              ; preds = %105, %99
  %110 = getelementptr inbounds %struct.trace_array, ptr %48, i32 0, i32 8
  %111 = load i32, ptr %110, align 4
  %112 = and i32 %111, 1073741822
  %113 = icmp eq i32 %112, 2
  br i1 %113, label %118, label %114

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.trace_iterator, ptr %51, i32 0, i32 7
  %116 = load i32, ptr %115, align 4
  %117 = or i32 %116, 4
  store i32 %117, ptr %115, align 4
  br label %118

118:                                              ; preds = %114, %109
  %119 = load i8, ptr %84, align 4, !range !12
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %167

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.trace_array, ptr %48, i32 0, i32 14
  %123 = load i32, ptr %122, align 4
  %124 = and i32 %123, 4194304
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %167, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.trace_array, ptr %48, i32 0, i32 16
  %128 = load i32, ptr %127, align 8
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %154, label %131

131:                                              ; preds = %126
  %132 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 17)) #34
  %133 = load i32, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 7), align 8
  %134 = add i32 %133, 1
  store i32 %134, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 7), align 8
  %135 = icmp eq i32 %133, 0
  br i1 %135, label %136, label %153

136:                                              ; preds = %131
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 5)) #34, !srcloc !13
  %137 = tail call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 5), i32 65536) #34, !srcloc !40
  %138 = extractvalue { i32, i32, i32 } %137, 0
  %139 = lshr i32 %138, 16
  %140 = and i32 %138, 65535
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %146, label %142

142:                                              ; preds = %142, %136
  tail call void asm sideeffect "wfe", "~{memory}"() #34, !srcloc !41
  %143 = load volatile i16, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 5), align 8
  %144 = zext i16 %143 to i32
  %145 = icmp eq i32 %139, %144
  br i1 %145, label %146, label %142

146:                                              ; preds = %142, %136
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !42
  %147 = load ptr, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 2, i32 1), align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %146
  tail call void @ring_buffer_record_disable(ptr noundef nonnull %147) #34
  br label %150

150:                                              ; preds = %149, %146
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !43
  %151 = load i16, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 5), align 8
  %152 = add i16 %151, 1
  store i16 %152, ptr getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 5), align 8
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #34, !srcloc !44
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #34, !srcloc !45
  br label %153

153:                                              ; preds = %150, %131
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.trace_array, ptr @global_trace, i32 0, i32 17), i32 noundef %132) #34
  br label %167

154:                                              ; preds = %126
  %155 = getelementptr inbounds %struct.trace_array, ptr %48, i32 0, i32 17
  %156 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %155) #34
  %157 = getelementptr inbounds %struct.trace_array, ptr %48, i32 0, i32 7
  %158 = load i32, ptr %157, align 8
  %159 = add i32 %158, 1
  store i32 %159, ptr %157, align 8
  %160 = icmp eq i32 %158, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %154
  %162 = getelementptr inbounds %struct.trace_array, ptr %48, i32 0, i32 2, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %166, label %165

165:                                              ; preds = %161
  tail call void @ring_buffer_record_disable(ptr noundef nonnull %163) #34
  br label %166

166:                                              ; preds = %165, %161, %154
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %155, i32 noundef %156) #34
  br label %167

167:                                              ; preds = %166, %153, %121, %118
  %168 = load i32, ptr %92, align 8
  %169 = icmp eq i32 %168, -1
  br i1 %169, label %170, label %197

170:                                              ; preds = %167
  %171 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @tracing_buffer_mask) #41
  %172 = load i32, ptr @nr_cpu_ids, align 4
  %173 = icmp ult i32 %171, %172
  br i1 %173, label %174, label %185

174:                                              ; preds = %174, %170
  %175 = phi i32 [ %182, %174 ], [ %171, %170 ]
  %176 = load ptr, ptr %83, align 8
  %177 = getelementptr inbounds %struct.array_buffer, ptr %176, i32 0, i32 1
  %178 = load ptr, ptr %177, align 4
  %179 = tail call ptr @ring_buffer_read_prepare(ptr noundef %178, i32 noundef %175, i32 noundef 3264) #34
  %180 = load ptr, ptr %62, align 8
  %181 = getelementptr ptr, ptr %180, i32 %175
  store ptr %179, ptr %181, align 4
  %182 = tail call i32 @cpumask_next(i32 noundef %175, ptr noundef nonnull @tracing_buffer_mask) #41
  %183 = load i32, ptr @nr_cpu_ids, align 4
  %184 = icmp ult i32 %182, %183
  br i1 %184, label %174, label %185

185:                                              ; preds = %174, %170
  tail call void @ring_buffer_read_prepare_sync() #34
  %186 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @tracing_buffer_mask) #41
  %187 = load i32, ptr @nr_cpu_ids, align 4
  %188 = icmp ult i32 %186, %187
  br i1 %188, label %189, label %213

189:                                              ; preds = %189, %185
  %190 = phi i32 [ %194, %189 ], [ %186, %185 ]
  %191 = load ptr, ptr %62, align 8
  %192 = getelementptr ptr, ptr %191, i32 %190
  %193 = load ptr, ptr %192, align 4
  tail call void @ring_buffer_read_start(ptr noundef %193) #34
  tail call void @tracing_iter_reset(ptr noundef nonnull %51, i32 noundef %190) #34
  %194 = tail call i32 @cpumask_next(i32 noundef %190, ptr noundef nonnull @tracing_buffer_mask) #41
  %195 = load i32, ptr @nr_cpu_ids, align 4
  %196 = icmp ult i32 %194, %195
  br i1 %196, label %189, label %213

197:                                              ; preds = %167
  %198 = load ptr, ptr %83, align 8
  %199 = getelementptr inbounds %struct.array_buffer, ptr %198, i32 0, i32 1
  %200 = load ptr, ptr %199, align 4
  %201 = tail call ptr @ring_buffer_read_prepare(ptr noundef %200, i32 noundef %168, i32 noundef 3264) #34
  %202 = load ptr, ptr %62, align 8
  %203 = getelementptr ptr, ptr %202, i32 %168
  store ptr %201, ptr %203, align 4
  tail call void @ring_buffer_read_prepare_sync() #34
  %204 = load ptr, ptr %62, align 8
  %205 = getelementptr ptr, ptr %204, i32 %168
  %206 = load ptr, ptr %205, align 4
  tail call void @ring_buffer_read_start(ptr noundef %206) #34
  tail call void @tracing_iter_reset(ptr noundef nonnull %51, i32 noundef %168) #34
  br label %213

207:                                              ; preds = %71
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  %208 = load ptr, ptr %76, align 4
  tail call void @kfree(ptr noundef %208) #34
  %209 = load ptr, ptr %67, align 8
  tail call void @kfree(ptr noundef %209) #34
  %210 = load ptr, ptr %62, align 8
  tail call void @kfree(ptr noundef %210) #34
  br label %211

211:                                              ; preds = %207, %59, %57
  %212 = tail call i32 @seq_release_private(ptr noundef %0, ptr noundef %1) #34
  br label %224

213:                                              ; preds = %197, %189, %185
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  %214 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %214, label %224, label %215

215:                                              ; preds = %213
  %216 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 14
  %217 = load i32, ptr %216, align 4
  %218 = and i32 %217, 16384
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %238, label %220

220:                                              ; preds = %215
  %221 = getelementptr inbounds %struct.trace_iterator, ptr %51, i32 0, i32 7
  %222 = load i32, ptr %221, align 4
  %223 = or i32 %222, 1
  store i32 %223, ptr %221, align 4
  br label %238

224:                                              ; preds = %213, %211, %50, %47
  %225 = phi ptr [ %51, %213 ], [ inttoptr (i32 -12 to ptr), %50 ], [ inttoptr (i32 -19 to ptr), %47 ], [ inttoptr (i32 -12 to ptr), %211 ]
  %226 = ptrtoint ptr %225 to i32
  %227 = icmp sgt ptr %225, inttoptr (i32 -1 to ptr)
  %228 = select i1 %227, i1 true, i1 %7
  br i1 %228, label %238, label %229

229:                                              ; preds = %224
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %230 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 28
  %231 = load i32, ptr %230, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %235, !prof !11

233:                                              ; preds = %229
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 465, i32 noundef 9, ptr noundef null) #34
  %234 = load i32, ptr %230, align 4
  br label %235

235:                                              ; preds = %233, %229
  %236 = phi i32 [ %234, %233 ], [ %231, %229 ]
  %237 = add i32 %236, -1
  store i32 %237, ptr %230, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %238

238:                                              ; preds = %235, %224, %220, %215, %43, %19, %2
  %239 = phi i32 [ -19, %19 ], [ %226, %224 ], [ %226, %235 ], [ -19, %2 ], [ 0, %220 ], [ 0, %215 ], [ 0, %43 ]
  ret i32 %239
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_release(ptr noundef %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = icmp eq ptr %4, null
  br i1 %10, label %103, label %11

11:                                               ; preds = %9
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %12 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 28
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17, !prof !11

15:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 465, i32 noundef 9, ptr noundef null) #34
  %16 = load i32, ptr %12, align 4
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i32 [ %16, %15 ], [ %13, %11 ]
  %19 = add i32 %18, -1
  store i32 %19, ptr %12, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %103

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.seq_file, ptr %22, i32 0, i32 11
  %24 = load ptr, ptr %23, align 8
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %25 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @tracing_buffer_mask) #41
  %26 = load i32, ptr @nr_cpu_ids, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.trace_iterator, ptr %24, i32 0, i32 6
  br label %30

30:                                               ; preds = %39, %28
  %31 = phi i32 [ %26, %28 ], [ %40, %39 ]
  %32 = phi i32 [ %25, %28 ], [ %41, %39 ]
  %33 = load ptr, ptr %29, align 8
  %34 = getelementptr ptr, ptr %33, i32 %32
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  tail call void @ring_buffer_read_finish(ptr noundef nonnull %35) #34
  %38 = load i32, ptr @nr_cpu_ids, align 4
  br label %39

39:                                               ; preds = %37, %30
  %40 = phi i32 [ %38, %37 ], [ %31, %30 ]
  %41 = tail call i32 @cpumask_next(i32 noundef %32, ptr noundef nonnull @tracing_buffer_mask) #41
  %42 = icmp ult i32 %41, %40
  br i1 %42, label %30, label %43

43:                                               ; preds = %39, %20
  %44 = getelementptr inbounds %struct.trace_iterator, ptr %24, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.tracer, ptr %45, i32 0, i32 8
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  tail call void %49(ptr noundef %24) #34
  br label %52

52:                                               ; preds = %51, %47, %43
  %53 = getelementptr inbounds %struct.trace_iterator, ptr %24, i32 0, i32 14
  %54 = load i8, ptr %53, align 4, !range !12
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %86

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 7
  %58 = load i32, ptr %57, align 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %86, label %60

60:                                               ; preds = %56
  %61 = load i1, ptr @tracing_disabled, align 4
  br i1 %61, label %62, label %86

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 16
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  tail call void @tracing_start() #34
  br label %86

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 17
  %70 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %69) #34
  %71 = load i32, ptr %57, align 8
  %72 = add i32 %71, -1
  store i32 %72, ptr %57, align 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = icmp slt i32 %72, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %74
  %77 = load i1, ptr @tracing_start_tr.__already_done, align 1
  br i1 %77, label %79, label %78, !prof !19

78:                                               ; preds = %76
  store i1 true, ptr @tracing_start_tr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2318, i32 noundef 9, ptr noundef null) #34
  br label %79

79:                                               ; preds = %78, %76
  store i32 0, ptr %57, align 8
  br label %85

80:                                               ; preds = %68
  %81 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 2, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  tail call void @ring_buffer_record_enable(ptr noundef nonnull %82) #34
  br label %85

85:                                               ; preds = %84, %80, %79, %74
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %69, i32 noundef %70) #34
  br label %86

86:                                               ; preds = %85, %67, %60, %56, %52
  %87 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 28
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92, !prof !11

90:                                               ; preds = %86
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 465, i32 noundef 9, ptr noundef null) #34
  %91 = load i32, ptr %87, align 4
  br label %92

92:                                               ; preds = %90, %86
  %93 = phi i32 [ %91, %90 ], [ %88, %86 ]
  %94 = add i32 %93, -1
  store i32 %94, ptr %87, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  %95 = getelementptr inbounds %struct.trace_iterator, ptr %24, i32 0, i32 10
  %96 = load ptr, ptr %95, align 8
  tail call void @kfree(ptr noundef %96) #34
  %97 = getelementptr inbounds %struct.trace_iterator, ptr %24, i32 0, i32 8
  %98 = load ptr, ptr %97, align 8
  tail call void @kfree(ptr noundef %98) #34
  %99 = load ptr, ptr %44, align 4
  tail call void @kfree(ptr noundef %99) #34
  %100 = getelementptr inbounds %struct.trace_iterator, ptr %24, i32 0, i32 6
  %101 = load ptr, ptr %100, align 8
  tail call void @kfree(ptr noundef %101) #34
  %102 = tail call i32 @seq_release_private(ptr noundef %0, ptr noundef %1) #34
  br label %103

103:                                              ; preds = %92, %17, %9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_buffer_reset_cpu(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__seq_open_private(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ring_buffer_read_prepare(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_buffer_read_prepare_sync() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_buffer_read_start(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release_private(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @s_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.trace_iterator, ptr %5, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #34
  store i64 0, ptr %3, align 8
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %9 = getelementptr inbounds %struct.trace_array, ptr %6, i32 0, i32 13
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.trace_iterator, ptr %5, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %10, align 4
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %19, label %18, !prof !19

18:                                               ; preds = %12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(80) %14, ptr noundef nonnull align 4 dereferenceable(80) %10, i32 80, i1 false)
  br label %19

19:                                               ; preds = %18, %12, %2
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  %20 = load i64, ptr %1, align 8
  %21 = getelementptr inbounds %struct.trace_iterator, ptr %5, i32 0, i32 22
  %22 = load i64, ptr %21, align 8
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %53, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.trace_iterator, ptr %5, i32 0, i32 16
  store ptr null, ptr %25, align 8
  %26 = getelementptr inbounds %struct.trace_iterator, ptr %5, i32 0, i32 20
  store i32 0, ptr %26, align 8
  %27 = getelementptr inbounds %struct.trace_iterator, ptr %5, i32 0, i32 23
  store i32 -1, ptr %27, align 8
  %28 = icmp eq i32 %8, -1
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @tracing_buffer_mask) #41
  %31 = load i32, ptr @nr_cpu_ids, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %33, %29
  %34 = phi i32 [ %35, %33 ], [ %30, %29 ]
  tail call void @tracing_iter_reset(ptr noundef %5, i32 noundef %34)
  %35 = tail call i32 @cpumask_next(i32 noundef %34, ptr noundef nonnull @tracing_buffer_mask) #41
  %36 = load i32, ptr @nr_cpu_ids, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %33, label %39

38:                                               ; preds = %24
  tail call void @tracing_iter_reset(ptr noundef %5, i32 noundef %8)
  br label %39

39:                                               ; preds = %38, %33, %29
  %40 = getelementptr inbounds %struct.trace_iterator, ptr %5, i32 0, i32 18
  store i32 0, ptr %40, align 8
  %41 = icmp eq ptr %5, null
  br i1 %41, label %60, label %42

42:                                               ; preds = %39
  %43 = load i64, ptr %1, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %49, %42
  %46 = phi ptr [ %47, %49 ], [ %5, %42 ]
  %47 = call ptr @s_next(ptr noundef %0, ptr noundef nonnull %46, ptr noundef nonnull %3)
  %48 = icmp eq ptr %47, null
  br i1 %48, label %60, label %49

49:                                               ; preds = %45
  %50 = load i64, ptr %3, align 8
  %51 = load i64, ptr %1, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %45, label %60

53:                                               ; preds = %19
  %54 = getelementptr inbounds %struct.trace_iterator, ptr %5, i32 0, i32 18
  %55 = load i32, ptr %54, align 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = add i64 %20, -1
  store i64 %58, ptr %3, align 8
  %59 = call ptr @s_next(ptr noundef %0, ptr noundef null, ptr noundef nonnull %3)
  br label %60

60:                                               ; preds = %57, %53, %49, %45, %42, %39
  %61 = phi ptr [ %59, %57 ], [ %5, %53 ], [ null, %39 ], [ %5, %42 ], [ null, %45 ], [ %47, %49 ]
  tail call void @trace_event_read_lock() #34
  %62 = icmp eq i32 %8, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  tail call void @down_write(ptr noundef nonnull @all_cpu_access_lock) #34
  br label %69

64:                                               ; preds = %60
  tail call void @down_read(ptr noundef nonnull @all_cpu_access_lock) #34
  %65 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, ptrtoint (ptr @cpu_access_lock to i32)
  %68 = inttoptr i32 %67 to ptr
  tail call void @mutex_lock(ptr noundef %68) #34
  br label %69

69:                                               ; preds = %64, %63
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #34
  ret ptr %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #5 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void @up_write(ptr noundef nonnull @all_cpu_access_lock) #34
  br label %14

9:                                                ; preds = %2
  %10 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, ptrtoint (ptr @cpu_access_lock to i32)
  %13 = inttoptr i32 %12 to ptr
  tail call void @mutex_unlock(ptr noundef %13) #34
  tail call void @up_read(ptr noundef nonnull @all_cpu_access_lock) #34
  br label %14

14:                                               ; preds = %9, %8
  tail call void @trace_event_read_unlock() #34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @s_next(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #5 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = load i64, ptr %2, align 8
  %7 = trunc i64 %6 to i32
  %8 = getelementptr inbounds %struct.trace_iterator, ptr %5, i32 0, i32 18
  %9 = load i32, ptr %8, align 8
  %10 = icmp ne i32 %9, 0
  %11 = load i1, ptr @s_next.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %16, !prof !11

14:                                               ; preds = %3
  store i1 true, ptr @s_next.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4010, i32 noundef 9, ptr noundef null) #34
  %15 = load i64, ptr %2, align 8
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi i64 [ %15, %14 ], [ %6, %3 ]
  %18 = add i64 %17, 1
  store i64 %18, ptr %2, align 8
  %19 = getelementptr inbounds %struct.trace_iterator, ptr %5, i32 0, i32 23
  %20 = load i32, ptr %19, align 8
  %21 = icmp sgt i32 %20, %7
  br i1 %21, label %89, label %22

22:                                               ; preds = %16
  %23 = icmp slt i32 %20, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.trace_iterator, ptr %5, i32 0, i32 20
  %26 = getelementptr inbounds %struct.trace_iterator, ptr %5, i32 0, i32 17
  %27 = getelementptr inbounds %struct.trace_iterator, ptr %5, i32 0, i32 21
  %28 = tail call fastcc ptr @__find_next_entry(ptr noundef %5, ptr noundef %25, ptr noundef %26, ptr noundef %27) #34
  %29 = getelementptr inbounds %struct.trace_iterator, ptr %5, i32 0, i32 16
  store ptr %28, ptr %29, align 8
  %30 = icmp eq ptr %28, null
  br i1 %30, label %85, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.trace_iterator, ptr %5, i32 0, i32 6
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, ptr %19, align 8
  %37 = add i32 %36, 1
  store i32 %37, ptr %19, align 8
  br label %50

38:                                               ; preds = %31
  %39 = load i32, ptr %25, align 8
  %40 = getelementptr ptr, ptr %33, i32 %39
  %41 = load ptr, ptr %40, align 4
  %42 = load i32, ptr %19, align 8
  %43 = add i32 %42, 1
  store i32 %43, ptr %19, align 8
  %44 = icmp eq ptr %41, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %38
  tail call void @ring_buffer_iter_advance(ptr noundef nonnull %41) #34
  %46 = load ptr, ptr %29, align 8
  %47 = icmp eq ptr %46, null
  %48 = icmp eq ptr %5, null
  %49 = select i1 %47, i1 true, i1 %48
  br i1 %49, label %85, label %52

50:                                               ; preds = %38, %35, %22
  %51 = icmp eq ptr %5, null
  br i1 %51, label %85, label %52

52:                                               ; preds = %50, %45
  %53 = getelementptr inbounds %struct.trace_iterator, ptr %5, i32 0, i32 20
  %54 = getelementptr inbounds %struct.trace_iterator, ptr %5, i32 0, i32 17
  %55 = getelementptr inbounds %struct.trace_iterator, ptr %5, i32 0, i32 21
  %56 = getelementptr inbounds %struct.trace_iterator, ptr %5, i32 0, i32 16
  %57 = getelementptr inbounds %struct.trace_iterator, ptr %5, i32 0, i32 6
  %58 = icmp eq ptr %5, null
  %59 = load i32, ptr %19, align 8
  %60 = icmp slt i32 %59, %7
  br i1 %60, label %65, label %85

61:                                               ; preds = %74, %71
  br i1 %58, label %85, label %62

62:                                               ; preds = %81, %61
  %63 = load i32, ptr %19, align 8
  %64 = icmp slt i32 %63, %7
  br i1 %64, label %65, label %85

65:                                               ; preds = %62, %52
  %66 = tail call fastcc ptr @__find_next_entry(ptr noundef %5, ptr noundef %53, ptr noundef %54, ptr noundef %55) #34
  store ptr %66, ptr %56, align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %85, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %57, align 8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, ptr %19, align 8
  %73 = add i32 %72, 1
  store i32 %73, ptr %19, align 8
  br label %61

74:                                               ; preds = %68
  %75 = load i32, ptr %53, align 8
  %76 = getelementptr ptr, ptr %69, i32 %75
  %77 = load ptr, ptr %76, align 4
  %78 = load i32, ptr %19, align 8
  %79 = add i32 %78, 1
  store i32 %79, ptr %19, align 8
  %80 = icmp eq ptr %77, null
  br i1 %80, label %61, label %81

81:                                               ; preds = %74
  tail call void @ring_buffer_iter_advance(ptr noundef nonnull %77) #34
  %82 = load ptr, ptr %56, align 8
  %83 = icmp eq ptr %82, null
  %84 = select i1 %83, i1 true, i1 %58
  br i1 %84, label %85, label %62

85:                                               ; preds = %81, %65, %62, %61, %52, %50, %45, %24
  %86 = phi ptr [ null, %50 ], [ null, %45 ], [ null, %24 ], [ %5, %52 ], [ null, %65 ], [ %5, %62 ], [ null, %61 ], [ null, %81 ]
  %87 = load i64, ptr %2, align 8
  %88 = getelementptr inbounds %struct.trace_iterator, ptr %5, i32 0, i32 22
  store i64 %87, ptr %88, align 8
  br label %89

89:                                               ; preds = %85, %16
  %90 = phi ptr [ %86, %85 ], [ null, %16 ]
  ret ptr %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s_show(ptr noundef %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.trace_iterator, ptr %1, i32 0, i32 16
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %30

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.163, ptr noundef %12) #34
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.44) #34
  br label %13

13:                                               ; preds = %9, %6
  %14 = getelementptr inbounds %struct.trace_iterator, ptr %1, i32 0, i32 14
  %15 = load i8, ptr %14, align 4, !range !12
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @trace_empty(ptr noundef %1)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %17, %13
  %21 = getelementptr inbounds %struct.trace_iterator, ptr %1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.tracer, ptr %22, i32 0, i32 12
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void %26(ptr noundef %0) #34
  br label %41

29:                                               ; preds = %24, %20
  tail call void @trace_default_header(ptr noundef %0)
  br label %41

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.trace_iterator, ptr %1, i32 0, i32 18
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.trace_iterator, ptr %1, i32 0, i32 15
  %36 = tail call i32 @trace_print_seq(ptr noundef %0, ptr noundef %35) #34
  store i32 %36, ptr %31, align 8
  br label %41

37:                                               ; preds = %30
  %38 = tail call i32 @print_trace_line(ptr noundef %1)
  %39 = getelementptr inbounds %struct.trace_iterator, ptr %1, i32 0, i32 15
  %40 = tail call i32 @trace_print_seq(ptr noundef %0, ptr noundef %39) #34
  store i32 %40, ptr %31, align 8
  br label %41

41:                                               ; preds = %37, %34, %29, %28, %17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_read_lock() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_read_unlock() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_buffer_read_finish(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_read_pipe(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #5 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.trace_iterator, ptr %6, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %7) #34
  %8 = getelementptr %struct.trace_iterator, ptr %6, i32 0, i32 15
  %9 = tail call i32 @trace_seq_to_user(ptr noundef %8, ptr noundef %1, i32 noundef %2) #34
  %10 = icmp eq i32 %9, -16
  br i1 %10, label %11, label %125

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.trace_iterator, ptr %6, i32 0, i32 15, i32 1
  store ptr %8, ptr %12, align 8
  %13 = getelementptr inbounds %struct.trace_iterator, ptr %6, i32 0, i32 15, i32 1, i32 1
  store i32 4096, ptr %13, align 4
  %14 = getelementptr inbounds %struct.trace_iterator, ptr %6, i32 0, i32 15, i32 1, i32 2
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.trace_iterator, ptr %6, i32 0, i32 15, i32 1, i32 3
  store i64 0, ptr %15, align 8
  %16 = getelementptr inbounds %struct.trace_iterator, ptr %6, i32 0, i32 15, i32 2
  store i32 0, ptr %16, align 8
  %17 = getelementptr inbounds %struct.trace_iterator, ptr %6, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.tracer, ptr %18, i32 0, i32 10
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %11
  %23 = tail call i32 %20(ptr noundef %6, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #34
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %125

25:                                               ; preds = %22, %11
  %26 = getelementptr inbounds %struct.trace_iterator, ptr %6, i32 0, i32 22
  %27 = getelementptr inbounds %struct.trace_iterator, ptr %6, i32 0, i32 13
  %28 = getelementptr inbounds %struct.trace_iterator, ptr %6, i32 0, i32 4
  %29 = getelementptr inbounds %struct.trace_iterator, ptr %6, i32 0, i32 20
  %30 = getelementptr inbounds %struct.trace_iterator, ptr %6, i32 0, i32 17
  %31 = getelementptr inbounds %struct.trace_iterator, ptr %6, i32 0, i32 21
  %32 = getelementptr inbounds %struct.trace_iterator, ptr %6, i32 0, i32 16
  %33 = getelementptr inbounds %struct.trace_iterator, ptr %6, i32 0, i32 6
  %34 = getelementptr inbounds %struct.trace_iterator, ptr %6, i32 0, i32 23
  %35 = icmp eq ptr %6, null
  %36 = getelementptr inbounds %struct.trace_iterator, ptr %6, i32 0, i32 2
  br label %37

37:                                               ; preds = %123, %25
  %38 = phi i32 [ %2, %25 ], [ %45, %123 ]
  %39 = tail call fastcc i32 @tracing_wait_pipe(ptr noundef %0)
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %125, label %41

41:                                               ; preds = %37
  %42 = tail call i32 @trace_empty(ptr noundef %6)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %125

44:                                               ; preds = %41
  %45 = tail call i32 @llvm.umin.i32(i32 %38, i32 4095)
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4176) %8, i8 0, i32 4176, i1 false) #34
  store i64 -1, ptr %26, align 8
  store i32 0, ptr %27, align 4
  store ptr %8, ptr %12, align 8
  store i32 4096, ptr %13, align 4
  store i64 0, ptr %15, align 8
  tail call void @trace_event_read_lock() #34
  %46 = load i32, ptr %28, align 8
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  tail call void @down_write(ptr noundef nonnull @all_cpu_access_lock) #34
  br label %54

49:                                               ; preds = %44
  tail call void @down_read(ptr noundef nonnull @all_cpu_access_lock) #34
  %50 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %46
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, ptrtoint (ptr @cpu_access_lock to i32)
  %53 = inttoptr i32 %52 to ptr
  tail call void @mutex_lock(ptr noundef %53) #34
  br label %54

54:                                               ; preds = %49, %48
  %55 = tail call fastcc ptr @__find_next_entry(ptr noundef %6, ptr noundef %29, ptr noundef %30, ptr noundef %31) #34
  store ptr %55, ptr %32, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %105, label %57

57:                                               ; preds = %102, %54
  %58 = phi ptr [ %103, %102 ], [ %55, %54 ]
  %59 = load ptr, ptr %33, align 8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, ptr %34, align 8
  %63 = add i32 %62, 1
  store i32 %63, ptr %34, align 8
  br label %73

64:                                               ; preds = %57
  %65 = load i32, ptr %29, align 8
  %66 = getelementptr ptr, ptr %59, i32 %65
  %67 = load ptr, ptr %66, align 4
  %68 = load i32, ptr %34, align 8
  %69 = add i32 %68, 1
  store i32 %69, ptr %34, align 8
  %70 = icmp eq ptr %67, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %64
  tail call void @ring_buffer_iter_advance(ptr noundef nonnull %67) #34
  %72 = load ptr, ptr %32, align 8
  br label %73

73:                                               ; preds = %71, %64, %61
  %74 = phi ptr [ %72, %71 ], [ %58, %64 ], [ %58, %61 ]
  %75 = icmp eq ptr %74, null
  %76 = select i1 %75, i1 true, i1 %35
  br i1 %76, label %105, label %77

77:                                               ; preds = %73
  %78 = load i32, ptr %14, align 8
  %79 = tail call i32 @print_trace_line(ptr noundef nonnull %6)
  switch i32 %79, label %81 [
    i32 0, label %80
    i32 3, label %87
  ]

80:                                               ; preds = %77
  store i32 %78, ptr %14, align 8
  br label %105

81:                                               ; preds = %77
  %82 = load ptr, ptr %36, align 8
  %83 = getelementptr inbounds %struct.array_buffer, ptr %82, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = load i32, ptr %29, align 8
  %86 = tail call ptr @ring_buffer_consume(ptr noundef %84, i32 noundef %85, ptr noundef %31, ptr noundef %30) #34
  br label %87

87:                                               ; preds = %81, %77
  %88 = load i32, ptr %14, align 8
  %89 = load i32, ptr %13, align 4
  %90 = tail call i32 @llvm.umin.i32(i32 %88, i32 %89) #34
  %91 = icmp ult i32 %90, %45
  br i1 %91, label %92, label %105

92:                                               ; preds = %87
  %93 = load i32, ptr %16, align 8
  %94 = icmp ne i32 %93, 0
  %95 = load i1, ptr @tracing_read_pipe.__already_done, align 1
  %96 = xor i1 %95, true
  %97 = select i1 %94, i1 %96, i1 false
  br i1 %97, label %98, label %102, !prof !11

98:                                               ; preds = %92
  store i1 true, ptr @tracing_read_pipe.__already_done, align 1
  %99 = load ptr, ptr %32, align 8
  %100 = load i16, ptr %99, align 4
  %101 = zext i16 %100 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 6770, i32 noundef 9, ptr noundef nonnull @.str.165, i32 noundef %101) #34
  br label %102

102:                                              ; preds = %98, %92
  %103 = tail call fastcc ptr @__find_next_entry(ptr noundef %6, ptr noundef %29, ptr noundef %30, ptr noundef %31) #34
  store ptr %103, ptr %32, align 8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %57

105:                                              ; preds = %102, %87, %80, %73, %54
  %106 = load i32, ptr %28, align 8
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  tail call void @up_write(ptr noundef nonnull @all_cpu_access_lock) #34
  br label %114

109:                                              ; preds = %105
  %110 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %106
  %111 = load i32, ptr %110, align 4
  %112 = add i32 %111, ptrtoint (ptr @cpu_access_lock to i32)
  %113 = inttoptr i32 %112 to ptr
  tail call void @mutex_unlock(ptr noundef %113) #34
  tail call void @up_read(ptr noundef nonnull @all_cpu_access_lock) #34
  br label %114

114:                                              ; preds = %109, %108
  tail call void @trace_event_read_unlock() #34
  %115 = tail call i32 @trace_seq_to_user(ptr noundef %8, ptr noundef %1, i32 noundef %45) #34
  %116 = load i64, ptr %15, align 8
  %117 = load i32, ptr %14, align 8
  %118 = load i32, ptr %13, align 4
  %119 = tail call i32 @llvm.umin.i32(i32 %117, i32 %118) #34
  %120 = sext i32 %119 to i64
  %121 = icmp slt i64 %116, %120
  br i1 %121, label %123, label %122

122:                                              ; preds = %114
  store ptr %8, ptr %12, align 8
  store i32 4096, ptr %13, align 4
  store i32 0, ptr %14, align 8
  store i64 0, ptr %15, align 8
  store i32 0, ptr %16, align 8
  br label %123

123:                                              ; preds = %122, %114
  %124 = icmp eq i32 %115, -16
  br i1 %124, label %37, label %125

125:                                              ; preds = %123, %41, %37, %22, %4
  %126 = phi i32 [ %9, %4 ], [ %23, %22 ], [ 0, %41 ], [ %115, %123 ], [ %39, %37 ]
  tail call void @mutex_unlock(ptr noundef %7) #34
  ret i32 %126
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_poll_pipe(ptr noundef %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.trace_iterator, ptr %4, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.trace_iterator, ptr %4, i32 0, i32 6
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = getelementptr ptr, ptr %9, i32 %7
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %11, %2
  %16 = getelementptr inbounds %struct.trace_array, ptr %5, i32 0, i32 14
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 128
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.trace_iterator, ptr %4, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.array_buffer, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @ring_buffer_poll_wait(ptr noundef %24, i32 noundef %7, ptr noundef %0, ptr noundef %1) #34
  br label %26

26:                                               ; preds = %20, %15, %11
  %27 = phi i32 [ %25, %20 ], [ 65, %11 ], [ 65, %15 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_open_pipe(ptr noundef %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = load i1, ptr @tracing_disabled, align 4
  br i1 %5, label %6, label %83

6:                                                ; preds = %2
  %7 = icmp eq ptr %4, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %6
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  br label %9

9:                                                ; preds = %13, %8
  %10 = phi ptr [ @ftrace_trace_arrays, %8 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @ftrace_trace_arrays
  br i1 %12, label %81, label %13

13:                                               ; preds = %9
  %14 = icmp eq ptr %11, %4
  br i1 %14, label %15, label %9

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 28
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %19

19:                                               ; preds = %15, %6
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %20 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8376, i32 noundef 3520, i32 noundef 2) #37
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 28
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28, !prof !11

26:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 465, i32 noundef 9, ptr noundef null) #34
  %27 = load i32, ptr %23, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i32 [ %27, %26 ], [ %24, %22 ]
  %30 = add i32 %29, -1
  store i32 %30, ptr %23, align 4
  br label %81

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.trace_iterator, ptr %20, i32 0, i32 15
  %33 = getelementptr inbounds %struct.trace_iterator, ptr %20, i32 0, i32 15, i32 1
  store ptr %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.trace_iterator, ptr %20, i32 0, i32 15, i32 1, i32 1
  store i32 4096, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_iterator, ptr %20, i32 0, i32 15, i32 1, i32 2
  store i32 0, ptr %35, align 16
  %36 = getelementptr inbounds %struct.trace_iterator, ptr %20, i32 0, i32 15, i32 1, i32 3
  store i64 0, ptr %36, align 8
  %37 = getelementptr inbounds %struct.trace_iterator, ptr %20, i32 0, i32 15, i32 2
  store i32 0, ptr %37, align 128
  %38 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 13
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.trace_iterator, ptr %20, i32 0, i32 1
  store ptr %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_iterator, ptr %20, i32 0, i32 13
  store i32 -1, ptr %41, align 32
  %42 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 14
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 16384
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %31
  %47 = getelementptr inbounds %struct.trace_iterator, ptr %20, i32 0, i32 7
  %48 = load i32, ptr %47, align 4
  %49 = or i32 %48, 1
  store i32 %49, ptr %47, align 4
  br label %50

50:                                               ; preds = %46, %31
  %51 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 8
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 1073741822
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.trace_iterator, ptr %20, i32 0, i32 7
  %57 = load i32, ptr %56, align 4
  %58 = or i32 %57, 4
  store i32 %58, ptr %56, align 4
  br label %59

59:                                               ; preds = %55, %50
  store ptr %4, ptr %20, align 4096
  %60 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 2
  %61 = getelementptr inbounds %struct.trace_iterator, ptr %20, i32 0, i32 2
  store ptr %60, ptr %61, align 8
  %62 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  %65 = ptrtoint ptr %63 to i32
  %66 = add i32 %65, -1
  %67 = select i1 %64, i32 -1, i32 %66
  %68 = getelementptr inbounds %struct.trace_iterator, ptr %20, i32 0, i32 4
  store i32 %67, ptr %68, align 16
  %69 = getelementptr inbounds %struct.trace_iterator, ptr %20, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %69, ptr noundef nonnull @.str.162, ptr noundef nonnull @tracing_open_pipe.__key) #34
  %70 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %20, ptr %70, align 8
  %71 = load ptr, ptr %40, align 4
  %72 = getelementptr inbounds %struct.tracer, ptr %71, i32 0, i32 7
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %59
  tail call void %73(ptr noundef nonnull %20) #34
  br label %76

76:                                               ; preds = %75, %59
  %77 = tail call i32 @nonseekable_open(ptr noundef %0, ptr noundef %1) #34
  %78 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 29
  %79 = load i32, ptr %78, align 8
  %80 = add i32 %79, 1
  store i32 %80, ptr %78, align 8
  br label %81

81:                                               ; preds = %76, %28, %9
  %82 = phi i32 [ 0, %76 ], [ -12, %28 ], [ -19, %9 ]
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %83

83:                                               ; preds = %81, %2
  %84 = phi i32 [ -19, %2 ], [ %82, %81 ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_release_pipe(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %6 = load ptr, ptr %5, align 4
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %7 = getelementptr inbounds %struct.trace_array, ptr %6, i32 0, i32 29
  %8 = load i32, ptr %7, align 8
  %9 = add i32 %8, -1
  store i32 %9, ptr %7, align 8
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %4, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracer, ptr %11, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  tail call void %13(ptr noundef %4) #34
  br label %16

16:                                               ; preds = %15, %2
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  tail call void @kfree(ptr noundef %4) #34
  %17 = icmp eq ptr %6, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %16
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %19 = getelementptr inbounds %struct.trace_array, ptr %6, i32 0, i32 28
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24, !prof !11

22:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 465, i32 noundef 9, ptr noundef null) #34
  %23 = load i32, ptr %19, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi i32 [ %23, %22 ], [ %20, %18 ]
  %26 = add i32 %25, -1
  store i32 %26, ptr %19, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %27

27:                                               ; preds = %24, %16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_splice_read_pipe(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #5 {
  %6 = alloca [16 x ptr], align 4
  %7 = alloca [16 x %struct.partial_page], align 4
  %8 = alloca %struct.splice_pipe_desc, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #34
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %6, i8 0, i32 64, i1 false), !annotation !26
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %7) #34
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(192) %7, i8 0, i32 192, i1 false), !annotation !26
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #34
  store ptr %6, ptr %8, align 4
  %11 = getelementptr inbounds %struct.splice_pipe_desc, ptr %8, i32 0, i32 1
  store ptr %7, ptr %11, align 4
  %12 = getelementptr inbounds %struct.splice_pipe_desc, ptr %8, i32 0, i32 2
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.splice_pipe_desc, ptr %8, i32 0, i32 3
  store i32 16, ptr %13, align 4
  %14 = getelementptr inbounds %struct.splice_pipe_desc, ptr %8, i32 0, i32 4
  store ptr @default_pipe_buf_ops, ptr %14, align 4
  %15 = getelementptr inbounds %struct.splice_pipe_desc, ptr %8, i32 0, i32 5
  store ptr @tracing_spd_release_pipe, ptr %15, align 4
  %16 = call i32 @splice_grow_spd(ptr noundef %2, ptr noundef nonnull %8) #34
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %210

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.trace_iterator, ptr %10, i32 0, i32 5
  call void @mutex_lock(ptr noundef %19) #34
  %20 = getelementptr inbounds %struct.trace_iterator, ptr %10, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.tracer, ptr %21, i32 0, i32 11
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = call i32 %23(ptr noundef %10, ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #34
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %208

28:                                               ; preds = %25, %18
  %29 = call fastcc i32 @tracing_wait_pipe(ptr noundef %0)
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %208, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.trace_iterator, ptr %10, i32 0, i32 16
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %64

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.trace_iterator, ptr %10, i32 0, i32 20
  %37 = getelementptr inbounds %struct.trace_iterator, ptr %10, i32 0, i32 17
  %38 = getelementptr inbounds %struct.trace_iterator, ptr %10, i32 0, i32 21
  %39 = call fastcc ptr @__find_next_entry(ptr noundef %10, ptr noundef %36, ptr noundef %37, ptr noundef %38) #34
  store ptr %39, ptr %32, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %208, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.trace_iterator, ptr %10, i32 0, i32 6
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.trace_iterator, ptr %10, i32 0, i32 23
  %47 = load i32, ptr %46, align 8
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 8
  br label %59

49:                                               ; preds = %41
  %50 = load i32, ptr %36, align 8
  %51 = getelementptr ptr, ptr %43, i32 %50
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.trace_iterator, ptr %10, i32 0, i32 23
  %54 = load i32, ptr %53, align 8
  %55 = add i32 %54, 1
  store i32 %55, ptr %53, align 8
  %56 = icmp eq ptr %52, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %49
  call void @ring_buffer_iter_advance(ptr noundef nonnull %52) #34
  %58 = load ptr, ptr %32, align 8
  br label %59

59:                                               ; preds = %57, %49, %45
  %60 = phi ptr [ %58, %57 ], [ %39, %49 ], [ %39, %45 ]
  %61 = icmp eq ptr %60, null
  %62 = icmp eq ptr %10, null
  %63 = select i1 %61, i1 true, i1 %62
  br i1 %63, label %208, label %64

64:                                               ; preds = %59, %31
  call void @trace_event_read_lock() #34
  %65 = getelementptr inbounds %struct.trace_iterator, ptr %10, i32 0, i32 4
  %66 = load i32, ptr %65, align 8
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  call void @down_write(ptr noundef nonnull @all_cpu_access_lock) #34
  br label %74

69:                                               ; preds = %64
  call void @down_read(ptr noundef nonnull @all_cpu_access_lock) #34
  %70 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %66
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, ptrtoint (ptr @cpu_access_lock to i32)
  %73 = inttoptr i32 %72 to ptr
  call void @mutex_lock(ptr noundef %73) #34
  br label %74

74:                                               ; preds = %69, %68
  %75 = load i32, ptr %13, align 4
  %76 = icmp ne i32 %75, 0
  %77 = icmp ne i32 %3, 0
  %78 = and i1 %76, %77
  br i1 %78, label %79, label %192

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.trace_iterator, ptr %10, i32 0, i32 15, i32 1, i32 2
  %81 = getelementptr inbounds %struct.trace_iterator, ptr %10, i32 0, i32 15, i32 2
  %82 = getelementptr inbounds %struct.trace_iterator, ptr %10, i32 0, i32 15, i32 1, i32 1
  %83 = getelementptr inbounds %struct.trace_iterator, ptr %10, i32 0, i32 2
  %84 = getelementptr inbounds %struct.trace_iterator, ptr %10, i32 0, i32 20
  %85 = getelementptr inbounds %struct.trace_iterator, ptr %10, i32 0, i32 21
  %86 = getelementptr inbounds %struct.trace_iterator, ptr %10, i32 0, i32 17
  %87 = getelementptr inbounds %struct.trace_iterator, ptr %10, i32 0, i32 6
  %88 = getelementptr inbounds %struct.trace_iterator, ptr %10, i32 0, i32 23
  %89 = icmp eq ptr %10, null
  %90 = getelementptr inbounds %struct.trace_iterator, ptr %10, i32 0, i32 15
  %91 = getelementptr inbounds %struct.trace_iterator, ptr %10, i32 0, i32 15, i32 1, i32 3
  %92 = getelementptr inbounds %struct.trace_iterator, ptr %10, i32 0, i32 15, i32 1
  br label %93

93:                                               ; preds = %179, %79
  %94 = phi i32 [ 0, %79 ], [ %187, %179 ]
  %95 = phi i32 [ %3, %79 ], [ %155, %179 ]
  %96 = call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #34
  %97 = load ptr, ptr %8, align 4
  %98 = getelementptr ptr, ptr %97, i32 %94
  store ptr %96, ptr %98, align 4
  %99 = load ptr, ptr %8, align 4
  %100 = getelementptr ptr, ptr %99, i32 %94
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %192, label %103

103:                                              ; preds = %149, %93
  %104 = phi i32 [ %131, %149 ], [ %95, %93 ]
  %105 = load i32, ptr %80, align 8
  %106 = call i32 @print_trace_line(ptr noundef %10) #34
  %107 = load i32, ptr %81, align 8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load i32, ptr %80, align 8
  %111 = load i32, ptr %82, align 4
  %112 = icmp ugt i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109, %103
  store i32 %105, ptr %80, align 8
  br label %154

114:                                              ; preds = %109
  %115 = icmp eq i32 %106, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %114
  store i32 %105, ptr %80, align 8
  br label %154

117:                                              ; preds = %114
  %118 = call i32 @llvm.umin.i32(i32 %110, i32 %111) #34
  %119 = sub i32 %118, %105
  %120 = icmp ult i32 %104, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i32 %105, ptr %80, align 8
  br label %154

122:                                              ; preds = %117
  %123 = icmp eq i32 %106, 3
  br i1 %123, label %130, label %124

124:                                              ; preds = %122
  %125 = load ptr, ptr %83, align 8
  %126 = getelementptr inbounds %struct.array_buffer, ptr %125, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  %128 = load i32, ptr %84, align 8
  %129 = call ptr @ring_buffer_consume(ptr noundef %127, i32 noundef %128, ptr noundef %85, ptr noundef %86) #34
  br label %130

130:                                              ; preds = %124, %122
  %131 = sub i32 %104, %119
  %132 = call fastcc ptr @__find_next_entry(ptr noundef %10, ptr noundef %84, ptr noundef %86, ptr noundef %85) #34
  store ptr %132, ptr %32, align 8
  %133 = icmp eq ptr %132, null
  br i1 %133, label %153, label %134

134:                                              ; preds = %130
  %135 = load ptr, ptr %87, align 8
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, ptr %88, align 8
  %139 = add i32 %138, 1
  store i32 %139, ptr %88, align 8
  br label %149

140:                                              ; preds = %134
  %141 = load i32, ptr %84, align 8
  %142 = getelementptr ptr, ptr %135, i32 %141
  %143 = load ptr, ptr %142, align 4
  %144 = load i32, ptr %88, align 8
  %145 = add i32 %144, 1
  store i32 %145, ptr %88, align 8
  %146 = icmp eq ptr %143, null
  br i1 %146, label %149, label %147

147:                                              ; preds = %140
  call void @ring_buffer_iter_advance(ptr noundef nonnull %143) #34
  %148 = load ptr, ptr %32, align 8
  br label %149

149:                                              ; preds = %147, %140, %137
  %150 = phi ptr [ %148, %147 ], [ %132, %140 ], [ %132, %137 ]
  %151 = icmp eq ptr %150, null
  %152 = or i1 %89, %151
  br i1 %152, label %153, label %103

153:                                              ; preds = %149, %130
  store ptr null, ptr %32, align 8
  br label %154

154:                                              ; preds = %153, %121, %116, %113
  %155 = phi i32 [ %104, %113 ], [ %104, %116 ], [ 0, %121 ], [ 0, %153 ]
  %156 = load ptr, ptr %8, align 4
  %157 = getelementptr ptr, ptr %156, i32 %94
  %158 = load ptr, ptr %157, align 4
  %159 = call ptr @page_address(ptr noundef %158) #34
  %160 = load i32, ptr %80, align 8
  %161 = load i32, ptr %82, align 4
  %162 = call i32 @llvm.umin.i32(i32 %160, i32 %161) #34
  %163 = sext i32 %162 to i64
  %164 = load i64, ptr %91, align 8
  %165 = icmp slt i64 %164, %163
  br i1 %165, label %166, label %175

166:                                              ; preds = %154
  %167 = trunc i64 %164 to i32
  %168 = sub i32 %162, %167
  %169 = call i32 @llvm.umin.i32(i32 %168, i32 %162) #34
  %170 = getelementptr i8, ptr %90, i32 %167
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %159, ptr align 1 %170, i32 %169, i1 false) #34
  %171 = zext i32 %169 to i64
  %172 = load i64, ptr %91, align 8
  %173 = add i64 %172, %171
  store i64 %173, ptr %91, align 8
  %174 = icmp slt i32 %169, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %166, %154
  %176 = load ptr, ptr %8, align 4
  %177 = getelementptr ptr, ptr %176, i32 %94
  %178 = load ptr, ptr %177, align 4
  call void @__free_pages(ptr noundef %178, i32 noundef 0) #34
  br label %192

179:                                              ; preds = %166
  %180 = load ptr, ptr %11, align 4
  %181 = getelementptr %struct.partial_page, ptr %180, i32 %94
  store i32 0, ptr %181, align 4
  %182 = load i32, ptr %80, align 8
  %183 = load i32, ptr %82, align 4
  %184 = call i32 @llvm.umin.i32(i32 %182, i32 %183) #34
  %185 = load ptr, ptr %11, align 4
  %186 = getelementptr %struct.partial_page, ptr %185, i32 %94, i32 1
  store i32 %184, ptr %186, align 4
  store ptr %90, ptr %92, align 8
  store i32 4096, ptr %82, align 4
  store i32 0, ptr %80, align 8
  store i64 0, ptr %91, align 8
  store i32 0, ptr %81, align 8
  %187 = add nuw i32 %94, 1
  %188 = load i32, ptr %13, align 4
  %189 = icmp ult i32 %187, %188
  %190 = icmp ne i32 %155, 0
  %191 = select i1 %189, i1 %190, i1 false
  br i1 %191, label %93, label %192

192:                                              ; preds = %179, %175, %93, %74
  %193 = phi i32 [ %94, %175 ], [ 0, %74 ], [ %187, %179 ], [ %94, %93 ]
  %194 = load i32, ptr %65, align 8
  %195 = icmp eq i32 %194, -1
  br i1 %195, label %196, label %197

196:                                              ; preds = %192
  call void @up_write(ptr noundef nonnull @all_cpu_access_lock) #34
  br label %202

197:                                              ; preds = %192
  %198 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %194
  %199 = load i32, ptr %198, align 4
  %200 = add i32 %199, ptrtoint (ptr @cpu_access_lock to i32)
  %201 = inttoptr i32 %200 to ptr
  call void @mutex_unlock(ptr noundef %201) #34
  call void @up_read(ptr noundef nonnull @all_cpu_access_lock) #34
  br label %202

202:                                              ; preds = %197, %196
  call void @trace_event_read_unlock() #34
  call void @mutex_unlock(ptr noundef %19) #34
  store i32 %193, ptr %12, align 4
  %203 = icmp eq i32 %193, 0
  br i1 %203, label %206, label %204

204:                                              ; preds = %202
  %205 = call i32 @splice_to_pipe(ptr noundef %2, ptr noundef nonnull %8) #34
  br label %206

206:                                              ; preds = %208, %204, %202
  %207 = phi i32 [ %209, %208 ], [ %205, %204 ], [ 0, %202 ]
  call void @splice_shrink_spd(ptr noundef nonnull %8) #34
  br label %210

208:                                              ; preds = %59, %35, %28, %25
  %209 = phi i32 [ %26, %25 ], [ %29, %28 ], [ -14, %59 ], [ -14, %35 ]
  call void @mutex_unlock(ptr noundef %19) #34
  br label %206

210:                                              ; preds = %206, %5
  %211 = phi i32 [ %207, %206 ], [ -12, %5 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #34
  ret i32 %211
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_seq_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tracing_wait_pipe(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %3, i32 0, i32 22
  %6 = getelementptr inbounds %struct.trace_iterator, ptr %3, i32 0, i32 5
  %7 = getelementptr inbounds %struct.trace_iterator, ptr %3, i32 0, i32 4
  %8 = getelementptr inbounds %struct.trace_iterator, ptr %3, i32 0, i32 6
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %3, i32 0, i32 2
  br label %10

10:                                               ; preds = %44, %1
  %11 = tail call i32 @trace_empty(ptr noundef %3)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %47, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %4, align 4
  %15 = and i32 %14, 2048
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %13
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.trace_array, ptr %18, i32 0, i32 2, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = tail call zeroext i1 @ring_buffer_record_is_on(ptr noundef nonnull %20) #34
  br i1 %23, label %31, label %28

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.trace_array, ptr %18, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24, %22
  %29 = load i64, ptr %5, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %28, %24, %22
  tail call void @mutex_unlock(ptr noundef %6) #34
  %32 = load i32, ptr %7, align 8
  %33 = load ptr, ptr %8, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr ptr, ptr %33, i32 %32
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %35, %31
  %40 = load ptr, ptr %9, align 8
  %41 = getelementptr inbounds %struct.array_buffer, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 @ring_buffer_wait(ptr noundef %42, i32 noundef %32, i32 noundef 0) #34
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi i32 [ %43, %39 ], [ 0, %35 ]
  tail call void @mutex_lock(ptr noundef %6) #34
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %10, label %47

47:                                               ; preds = %44, %28, %13, %10
  %48 = phi i32 [ -11, %13 ], [ %45, %44 ], [ 1, %28 ], [ 1, %10 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ring_buffer_wait(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ring_buffer_poll_wait(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tracing_spd_release_pipe(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr ptr, ptr %3, i32 %1
  %5 = load ptr, ptr %4, align 4
  tail call void @__free_pages(ptr noundef %5, i32 noundef 0) #34
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @splice_grow_spd(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @splice_to_pipe(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @splice_shrink_spd(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_entries_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #5 {
  %5 = alloca [64 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 47
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 43
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #34
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !26
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %55

13:                                               ; preds = %4
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %15 = getelementptr inbounds %struct.trace_array, ptr %9, i32 0, i32 2, i32 2
  br label %16

16:                                               ; preds = %38, %13
  %17 = phi i32 [ %40, %38 ], [ 0, %13 ]
  %18 = phi i32 [ %19, %38 ], [ -1, %13 ]
  %19 = tail call i32 @cpumask_next(i32 noundef %18, ptr noundef nonnull @tracing_buffer_mask) #41
  %20 = icmp ult i32 %19, %14
  br i1 %20, label %21, label %44

21:                                               ; preds = %16
  %22 = icmp eq i32 %17, 0
  %23 = load ptr, ptr %15, align 8
  br i1 %22, label %30, label %24

24:                                               ; preds = %21
  %25 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %26 = load i32, ptr %25, align 4
  %27 = ptrtoint ptr %23 to i32
  %28 = add i32 %26, %27
  %29 = inttoptr i32 %28 to ptr
  br label %38

30:                                               ; preds = %21
  %31 = ptrtoint ptr %23 to i32
  %32 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, %31
  %35 = inttoptr i32 %34 to ptr
  %36 = getelementptr inbounds %struct.trace_array_cpu, ptr %35, i32 0, i32 2
  %37 = load i32, ptr %36, align 8
  br label %38

38:                                               ; preds = %30, %24
  %39 = phi ptr [ %29, %24 ], [ %35, %30 ]
  %40 = phi i32 [ %17, %24 ], [ %37, %30 ]
  %41 = getelementptr inbounds %struct.trace_array_cpu, ptr %39, i32 0, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %16, label %54

44:                                               ; preds = %16
  %45 = load i8, ptr @ring_buffer_expanded, align 1, !range !12
  %46 = icmp eq i8 %45, 0
  %47 = lshr i32 %17, 10
  br i1 %46, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, ptr @trace_buf_size, align 4
  %50 = lshr i32 %49, 10
  %51 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.166, i32 noundef %47, i32 noundef %50)
  br label %69

52:                                               ; preds = %44
  %53 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, i32 noundef %47)
  br label %69

54:                                               ; preds = %38
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %5, ptr noundef nonnull align 1 dereferenceable(3) @.str.167, i32 3, i1 false)
  br label %69

55:                                               ; preds = %4
  %56 = ptrtoint ptr %11 to i32
  %57 = add i32 %56, -1
  %58 = getelementptr inbounds %struct.trace_array, ptr %9, i32 0, i32 2, i32 2
  %59 = load ptr, ptr %58, align 8
  %60 = ptrtoint ptr %59 to i32
  %61 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %57
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, %60
  %64 = inttoptr i32 %63 to ptr
  %65 = getelementptr inbounds %struct.trace_array_cpu, ptr %64, i32 0, i32 2
  %66 = load i32, ptr %65, align 8
  %67 = lshr i32 %66, 10
  %68 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, i32 noundef %67)
  br label %69

69:                                               ; preds = %55, %54, %52, %48
  %70 = phi i32 [ %68, %55 ], [ %53, %52 ], [ %51, %48 ], [ 2, %54 ]
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  %71 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef %70) #34
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #34
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_entries_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #5 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 47
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #34
  store i32 0, ptr %5, align 4, !annotation !26
  %10 = call i32 @kstrtoul_from_user(ptr noundef %1, i32 noundef %2, i32 noundef 10, ptr noundef nonnull %5) #34
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %4
  %13 = load i32, ptr %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = shl i32 %13, 10
  store i32 %16, ptr %5, align 4
  %17 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 43
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  %20 = ptrtoint ptr %18 to i32
  %21 = add i32 %20, -1
  %22 = select i1 %19, i32 -1, i32 %21
  %23 = call i32 @tracing_resize_ring_buffer(ptr noundef %9, i32 noundef %16, i32 noundef %22)
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %15
  %26 = zext i32 %2 to i64
  %27 = load i64, ptr %3, align 8
  %28 = add i64 %27, %26
  store i64 %28, ptr %3, align 8
  br label %29

29:                                               ; preds = %25, %15, %12, %4
  %30 = phi i32 [ %2, %25 ], [ %10, %4 ], [ -22, %12 ], [ %23, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #34
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_total_entries_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #5 {
  %5 = alloca [64 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #34
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !26
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %9 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @tracing_buffer_mask) #41
  %10 = icmp ult i32 %9, %8
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = load i8, ptr @ring_buffer_expanded, align 1, !range !12
  br label %37

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.trace_array, ptr %7, i32 0, i32 2, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = ptrtoint ptr %15 to i32
  %17 = load i8, ptr @ring_buffer_expanded, align 1, !range !12
  %18 = icmp eq i8 %17, 0
  %19 = load i32, ptr @trace_buf_size, align 4
  %20 = lshr i32 %19, 10
  %21 = select i1 %18, i32 %20, i32 0
  br label %22

22:                                               ; preds = %22, %13
  %23 = phi i32 [ %9, %13 ], [ %35, %22 ]
  %24 = phi i32 [ 0, %13 ], [ %33, %22 ]
  %25 = phi i32 [ 0, %13 ], [ %34, %22 ]
  %26 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %16
  %29 = inttoptr i32 %28 to ptr
  %30 = getelementptr inbounds %struct.trace_array_cpu, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = lshr i32 %31, 10
  %33 = add i32 %32, %24
  %34 = add i32 %21, %25
  %35 = tail call i32 @cpumask_next(i32 noundef %23, ptr noundef nonnull @tracing_buffer_mask) #41
  %36 = icmp ult i32 %35, %8
  br i1 %36, label %22, label %37

37:                                               ; preds = %22, %11
  %38 = phi i8 [ %12, %11 ], [ %17, %22 ]
  %39 = phi i32 [ 0, %11 ], [ %34, %22 ]
  %40 = phi i32 [ 0, %11 ], [ %33, %22 ]
  %41 = icmp eq i8 %38, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.1, i32 noundef %40)
  br label %46

44:                                               ; preds = %37
  %45 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.166, i32 noundef %40, i32 noundef %39)
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  %48 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef %47) #34
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #34
  ret i32 %48
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tracing_free_buffer_write(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef returned %2, ptr nocapture noundef %3) #32 {
  %5 = zext i32 %2 to i64
  %6 = load i64, ptr %3, align 8
  %7 = add i64 %6, %5
  store i64 %7, ptr %3, align 8
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_free_buffer_release(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #5 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 262144
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 2, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @ring_buffer_record_off(ptr noundef nonnull %11) #34
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 6
  store i32 1, ptr %15, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #34, !srcloc !39
  br label %16

16:                                               ; preds = %14, %2
  %17 = tail call i32 @tracing_resize_ring_buffer(ptr noundef %4, i32 noundef 0, i32 noundef -1)
  %18 = icmp eq ptr %4, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %16
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %20 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 28
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25, !prof !11

23:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 465, i32 noundef 9, ptr noundef null) #34
  %24 = load i32, ptr %20, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi i32 [ %24, %23 ], [ %21, %19 ]
  %27 = add i32 %26, -1
  store i32 %27, ptr %20, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %28

28:                                               ; preds = %25, %16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_mark_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #5 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = load i1, ptr @tracing_disabled, align 4
  br i1 %7, label %8, label %138

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.trace_array, ptr %6, i32 0, i32 14
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1048576
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %138, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @llvm.umin.i32(i32 %2, i32 1024)
  %15 = add nuw nsw i32 %14, 14
  %16 = icmp ult i32 %14, 9
  %17 = select i1 %16, i32 23, i32 %15
  %18 = getelementptr inbounds %struct.trace_array, ptr %6, i32 0, i32 2, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #34, !srcloc !35
  %21 = tail call ptr @llvm.thread.pointer() #34
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %23 = load volatile i32, ptr %22, align 4
  %24 = load volatile i32, ptr %22, align 4
  %25 = load volatile i32, ptr %22, align 4
  %26 = load volatile i32, ptr %21, align 4
  %27 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 31
  %28 = load i16, ptr %27, align 8
  %29 = tail call ptr @ring_buffer_lock_reserve(ptr noundef %19, i32 noundef %17) #34
  %30 = icmp eq ptr %29, null
  br i1 %30, label %138, label %31

31:                                               ; preds = %13
  %32 = and i32 %25, 65024
  %33 = icmp eq i32 %32, 0
  %34 = and i32 %23, 983040
  %35 = icmp eq i32 %34, 0
  %36 = and i32 %23, 15728640
  %37 = icmp eq i32 %36, 0
  %38 = lshr i32 %20, 7
  %39 = and i32 %38, 1
  %40 = or i32 %39, 64
  %41 = select i1 %37, i32 %39, i32 %40
  %42 = or i32 %41, 8
  %43 = select i1 %35, i32 %41, i32 %42
  %44 = lshr i32 %24, 4
  %45 = and i32 %44, 16
  %46 = or i32 %43, %45
  %47 = or i32 %46, 128
  %48 = select i1 %33, i32 %46, i32 %47
  %49 = shl i32 %26, 1
  %50 = and i32 %49, 4
  %51 = or i32 %48, %50
  %52 = and i32 %23, 255
  %53 = tail call i32 @llvm.umin.i32(i32 %52, i32 15) #34
  %54 = tail call i16 @llvm.umin.i16(i16 %28, i16 15) #34
  %55 = shl nuw nsw i16 %54, 4
  %56 = zext i16 %55 to i32
  %57 = or i32 %53, %56
  %58 = tail call ptr @ring_buffer_event_data(ptr noundef nonnull %29) #34
  %59 = trunc i32 %57 to i8
  %60 = getelementptr inbounds %struct.trace_entry, ptr %58, i32 0, i32 2
  store i8 %59, ptr %60, align 1
  %61 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 52
  %62 = load i32, ptr %61, align 8
  %63 = getelementptr inbounds %struct.trace_entry, ptr %58, i32 0, i32 3
  store i32 %62, ptr %63, align 4
  store i16 5, ptr %58, align 4
  %64 = trunc i32 %51 to i8
  %65 = getelementptr inbounds %struct.trace_entry, ptr %58, i32 0, i32 1
  store i8 %64, ptr %65, align 2
  %66 = tail call ptr @ring_buffer_event_data(ptr noundef nonnull %29) #34
  br label %67

67:                                               ; preds = %31
  %68 = getelementptr inbounds %struct.print_entry, ptr %66, i32 0, i32 1
  store i32 ptrtoint (ptr blockaddress(@tracing_mark_write, %67) to i32), ptr %68, align 4
  %69 = getelementptr inbounds %struct.print_entry, ptr %66, i32 0, i32 2
  %70 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %71 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %70) #26, !srcloc !27
  %72 = and i32 %71, -13
  %73 = or i32 %72, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %73) #34, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #34, !srcloc !29
  %74 = tail call i32 @arm_copy_from_user(ptr noundef %69, ptr noundef %1, i32 noundef %14) #34
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %71) #34, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #34, !srcloc !29
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %67
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(9) %69, ptr noundef nonnull align 1 dereferenceable(9) @.str.168, i32 9, i1 false)
  br label %77

77:                                               ; preds = %76, %67
  %78 = phi i32 [ -14, %76 ], [ %14, %67 ]
  %79 = phi i32 [ 9, %76 ], [ %14, %67 ]
  %80 = getelementptr inbounds %struct.trace_array, ptr %6, i32 0, i32 26
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %91, label %83

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.trace_event_file, ptr %81, i32 0, i32 6
  %85 = load volatile ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, %84
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = getelementptr %struct.print_entry, ptr %66, i32 0, i32 2, i32 %79
  store i8 0, ptr %88, align 1
  %89 = load ptr, ptr %80, align 4
  %90 = tail call i32 @event_triggers_call(ptr noundef %89, ptr noundef %19, ptr noundef %66, ptr noundef nonnull %29) #34
  br label %91

91:                                               ; preds = %87, %83, %77
  %92 = phi i32 [ 0, %83 ], [ %90, %87 ], [ 0, %77 ]
  %93 = add nsw i32 %79, -1
  %94 = getelementptr %struct.print_entry, ptr %66, i32 0, i32 2, i32 %93
  %95 = load i8, ptr %94, align 1
  %96 = icmp eq i8 %95, 10
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = add nuw nsw i32 %79, 1
  %99 = getelementptr %struct.print_entry, ptr %66, i32 0, i32 2, i32 %98
  store i8 0, ptr %99, align 1
  br label %100

100:                                              ; preds = %97, %91
  %101 = phi i8 [ 10, %97 ], [ 0, %91 ]
  %102 = getelementptr %struct.print_entry, ptr %66, i32 0, i32 2, i32 %79
  store i8 %101, ptr %102, align 1
  %103 = load volatile i32, ptr @trace_marker_exports_enabled, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %106, !prof !11

105:                                              ; preds = %100
  tail call fastcc void @ftrace_exports(ptr noundef nonnull %29, i32 noundef 4)
  br label %106

106:                                              ; preds = %105, %100
  %107 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %108 = inttoptr i32 %107 to ptr
  %109 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %108) #26, !srcloc !21
  %110 = add i32 %109, ptrtoint (ptr @trace_taskinfo_save to i32)
  %111 = inttoptr i32 %110 to ptr
  store i8 1, ptr %111, align 1
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !36
  %112 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %113 = inttoptr i32 %112 to ptr
  %114 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %113) #26, !srcloc !21
  %115 = add i32 %114, ptrtoint (ptr @trace_buffered_event to i32)
  %116 = inttoptr i32 %115 to ptr
  %117 = load volatile ptr, ptr %116, align 4
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !37
  %118 = icmp eq ptr %117, %29
  br i1 %118, label %119, label %132

119:                                              ; preds = %106
  %120 = getelementptr inbounds %struct.ring_buffer_event, ptr %29, i32 0, i32 1
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr %struct.ring_buffer_event, ptr %29, i32 2
  %123 = tail call i32 @ring_buffer_write(ptr noundef %19, i32 noundef %121, ptr noundef %122) #34
  %124 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #34, !srcloc !23
  %125 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %126 = inttoptr i32 %125 to ptr
  %127 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %126) #26, !srcloc !21
  %128 = add i32 %127, ptrtoint (ptr @trace_buffered_event_cnt to i32)
  %129 = inttoptr i32 %128 to ptr
  %130 = load i32, ptr %129, align 4
  %131 = add i32 %130, -1
  store i32 %131, ptr %129, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %124) #34, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !38
  br label %134

132:                                              ; preds = %106
  %133 = tail call i32 @ring_buffer_unlock_commit(ptr noundef %19, ptr noundef nonnull %29) #34
  br label %134

134:                                              ; preds = %132, %119
  %135 = icmp eq i32 %92, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %134
  %137 = load ptr, ptr %80, align 4
  tail call void @event_triggers_post_call(ptr noundef %137, i32 noundef %92) #34
  br label %138

138:                                              ; preds = %136, %134, %13, %8, %4
  %139 = phi i32 [ -22, %4 ], [ -22, %8 ], [ %78, %136 ], [ %78, %134 ], [ -9, %13 ]
  ret i32 %139
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_mark_open(ptr noundef %0, ptr noundef %1) #5 {
  %3 = tail call i32 @stream_open(ptr noundef %0, ptr noundef %1) #34
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %5 = load ptr, ptr %4, align 4
  %6 = load i1, ptr @tracing_disabled, align 4
  br i1 %6, label %7, label %25

7:                                                ; preds = %2
  %8 = icmp eq ptr %5, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %7
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  br label %10

10:                                               ; preds = %14, %9
  %11 = phi ptr [ @ftrace_trace_arrays, %9 ], [ %12, %14 ]
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, @ftrace_trace_arrays
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = icmp eq ptr %12, %5
  br i1 %15, label %16, label %10

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.trace_array, ptr %5, i32 0, i32 28
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  %20 = load ptr, ptr %4, align 4
  br label %22

21:                                               ; preds = %10
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %25

22:                                               ; preds = %16, %7
  %23 = phi ptr [ null, %7 ], [ %20, %16 ]
  %24 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %23, ptr %24, align 8
  br label %25

25:                                               ; preds = %22, %21, %2
  %26 = phi i32 [ 0, %22 ], [ -19, %21 ], [ -19, %2 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_mark_raw_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #5 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = load i1, ptr @tracing_disabled, align 4
  br i1 %7, label %8, label %108

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.trace_array, ptr %6, i32 0, i32 14
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1048576
  %12 = icmp eq i32 %11, 0
  %13 = add i32 %2, -3073
  %14 = icmp ult i32 %13, -3069
  %15 = or i1 %14, %12
  br i1 %15, label %108, label %16

16:                                               ; preds = %8
  %17 = tail call i32 @llvm.umin.i32(i32 %2, i32 1024)
  %18 = add nuw nsw i32 %17, 12
  %19 = icmp ult i32 %17, 13
  %20 = select i1 %19, i32 25, i32 %18
  %21 = getelementptr inbounds %struct.trace_array, ptr %6, i32 0, i32 2, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #34, !srcloc !35
  %24 = tail call ptr @llvm.thread.pointer() #34
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %26 = load volatile i32, ptr %25, align 4
  %27 = load volatile i32, ptr %25, align 4
  %28 = load volatile i32, ptr %25, align 4
  %29 = load volatile i32, ptr %24, align 4
  %30 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 31
  %31 = load i16, ptr %30, align 8
  %32 = tail call ptr @ring_buffer_lock_reserve(ptr noundef %22, i32 noundef %20) #34
  %33 = icmp eq ptr %32, null
  br i1 %33, label %108, label %34

34:                                               ; preds = %16
  %35 = and i32 %28, 65024
  %36 = icmp eq i32 %35, 0
  %37 = and i32 %26, 983040
  %38 = icmp eq i32 %37, 0
  %39 = and i32 %26, 15728640
  %40 = icmp eq i32 %39, 0
  %41 = lshr i32 %23, 7
  %42 = and i32 %41, 1
  %43 = or i32 %42, 64
  %44 = select i1 %40, i32 %42, i32 %43
  %45 = or i32 %44, 8
  %46 = select i1 %38, i32 %44, i32 %45
  %47 = lshr i32 %27, 4
  %48 = and i32 %47, 16
  %49 = or i32 %46, %48
  %50 = or i32 %49, 128
  %51 = select i1 %36, i32 %49, i32 %50
  %52 = shl i32 %29, 1
  %53 = and i32 %52, 4
  %54 = or i32 %51, %53
  %55 = and i32 %26, 255
  %56 = tail call i32 @llvm.umin.i32(i32 %55, i32 15) #34
  %57 = tail call i16 @llvm.umin.i16(i16 %31, i16 15) #34
  %58 = shl nuw nsw i16 %57, 4
  %59 = zext i16 %58 to i32
  %60 = or i32 %56, %59
  %61 = tail call ptr @ring_buffer_event_data(ptr noundef nonnull %32) #34
  %62 = trunc i32 %60 to i8
  %63 = getelementptr inbounds %struct.trace_entry, ptr %61, i32 0, i32 2
  store i8 %62, ptr %63, align 1
  %64 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 52
  %65 = load i32, ptr %64, align 8
  %66 = getelementptr inbounds %struct.trace_entry, ptr %61, i32 0, i32 3
  store i32 %65, ptr %66, align 4
  store i16 18, ptr %61, align 4
  %67 = trunc i32 %54 to i8
  %68 = getelementptr inbounds %struct.trace_entry, ptr %61, i32 0, i32 1
  store i8 %67, ptr %68, align 2
  %69 = tail call ptr @ring_buffer_event_data(ptr noundef nonnull %32) #34
  %70 = getelementptr inbounds %struct.raw_data_entry, ptr %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %72 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %71) #26, !srcloc !27
  %73 = and i32 %72, -13
  %74 = or i32 %73, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %74) #34, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #34, !srcloc !29
  %75 = tail call i32 @arm_copy_from_user(ptr noundef %70, ptr noundef %1, i32 noundef %17) #34
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %72) #34, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #34, !srcloc !29
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %34
  store i32 -1, ptr %70, align 4
  %78 = getelementptr inbounds %struct.raw_data_entry, ptr %69, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(9) %78, ptr noundef nonnull align 1 dereferenceable(9) @.str.168, i32 9, i1 false)
  br label %79

79:                                               ; preds = %77, %34
  %80 = phi i32 [ -14, %77 ], [ %17, %34 ]
  %81 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %82 = inttoptr i32 %81 to ptr
  %83 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %82) #26, !srcloc !21
  %84 = add i32 %83, ptrtoint (ptr @trace_taskinfo_save to i32)
  %85 = inttoptr i32 %84 to ptr
  store i8 1, ptr %85, align 1
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !36
  %86 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %87 = inttoptr i32 %86 to ptr
  %88 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %87) #26, !srcloc !21
  %89 = add i32 %88, ptrtoint (ptr @trace_buffered_event to i32)
  %90 = inttoptr i32 %89 to ptr
  %91 = load volatile ptr, ptr %90, align 4
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !37
  %92 = icmp eq ptr %91, %32
  br i1 %92, label %93, label %106

93:                                               ; preds = %79
  %94 = getelementptr inbounds %struct.ring_buffer_event, ptr %32, i32 0, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr %struct.ring_buffer_event, ptr %32, i32 2
  %97 = tail call i32 @ring_buffer_write(ptr noundef %22, i32 noundef %95, ptr noundef %96) #34
  %98 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #34, !srcloc !23
  %99 = tail call i32 @llvm.read_register.i32(metadata !0) #34
  %100 = inttoptr i32 %99 to ptr
  %101 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %100) #26, !srcloc !21
  %102 = add i32 %101, ptrtoint (ptr @trace_buffered_event_cnt to i32)
  %103 = inttoptr i32 %102 to ptr
  %104 = load i32, ptr %103, align 4
  %105 = add i32 %104, -1
  store i32 %105, ptr %103, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %98) #34, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !38
  br label %108

106:                                              ; preds = %79
  %107 = tail call i32 @ring_buffer_unlock_commit(ptr noundef %22, ptr noundef nonnull %32) #34
  br label %108

108:                                              ; preds = %106, %93, %16, %8, %4
  %109 = phi i32 [ -22, %4 ], [ -22, %8 ], [ %80, %93 ], [ %80, %106 ], [ -9, %16 ]
  ret i32 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_clock_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #5 {
  %5 = alloca [64 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #34
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !26
  %10 = icmp ugt i32 %2, 63
  br i1 %10, label %37, label %11

11:                                               ; preds = %4
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #35, !srcloc !82
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22, !prof !19

15:                                               ; preds = %11
  %16 = tail call ptr @llvm.thread.pointer() #34
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %17) #26, !srcloc !27
  %19 = and i32 %18, -13
  %20 = or i32 %19, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #34, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #34, !srcloc !29
  %21 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %2) #34
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #34, !srcloc !28
  call void asm sideeffect "isb ", "~{memory}"() #34, !srcloc !29
  br label %22

22:                                               ; preds = %15, %11
  %23 = phi i32 [ %21, %15 ], [ %2, %11 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25, !prof !19

25:                                               ; preds = %22
  %26 = sub i32 %2, %23
  %27 = getelementptr i8, ptr %5, i32 %26
  call void @llvm.memset.p0.i32(ptr align 1 %27, i8 0, i32 %23, i1 false) #34
  br label %37

28:                                               ; preds = %22
  %29 = getelementptr [64 x i8], ptr %5, i32 0, i32 %2
  store i8 0, ptr %29, align 1
  %30 = call ptr @strim(ptr noundef nonnull %5) #34
  %31 = call i32 @tracing_set_clock(ptr noundef %9, ptr noundef %30)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = zext i32 %2 to i64
  %35 = load i64, ptr %3, align 8
  %36 = add i64 %35, %34
  store i64 %36, ptr %3, align 8
  br label %37

37:                                               ; preds = %33, %28, %25, %4
  %38 = phi i32 [ %2, %33 ], [ -22, %4 ], [ %31, %28 ], [ -14, %25 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #34
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_clock_open(ptr nocapture noundef readonly %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = load i1, ptr @tracing_disabled, align 4
  br i1 %5, label %6, label %35

6:                                                ; preds = %2
  %7 = icmp eq ptr %4, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @tracing_clock_show, ptr noundef null) #34
  br label %35

10:                                               ; preds = %6
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  br label %11

11:                                               ; preds = %15, %10
  %12 = phi ptr [ @ftrace_trace_arrays, %10 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, @ftrace_trace_arrays
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = icmp eq ptr %13, %4
  br i1 %16, label %18, label %11

17:                                               ; preds = %11
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %35

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 28
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  %22 = load ptr, ptr %3, align 4
  %23 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @tracing_clock_show, ptr noundef %22) #34
  %24 = icmp sgt i32 %23, -1
  %25 = select i1 %24, i1 true, i1 %7
  br i1 %25, label %35, label %26

26:                                               ; preds = %18
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %27 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 28
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32, !prof !11

30:                                               ; preds = %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 465, i32 noundef 9, ptr noundef null) #34
  %31 = load i32, ptr %27, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi i32 [ %31, %30 ], [ %28, %26 ]
  %34 = add i32 %33, -1
  store i32 %34, ptr %27, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %35

35:                                               ; preds = %32, %18, %17, %8, %2
  %36 = phi i32 [ -19, %17 ], [ %23, %18 ], [ %23, %32 ], [ -19, %2 ], [ %9, %8 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_clock_show(ptr noundef %0, ptr nocapture noundef readnone %1) #5 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, ptr @.str.171, ptr @.str.25
  %9 = select i1 %7, ptr @.str.172, ptr @.str.25
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.25, ptr noundef nonnull %8, ptr noundef nonnull @.str.70, ptr noundef nonnull %9) #34
  %10 = load i32, ptr %5, align 4
  %11 = icmp eq i32 %10, 1
  %12 = select i1 %11, ptr @.str.171, ptr @.str.25
  %13 = select i1 %11, ptr @.str.172, ptr @.str.25
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.170, ptr noundef nonnull %12, ptr noundef nonnull @.str.71, ptr noundef nonnull %13) #34
  %14 = load i32, ptr %5, align 4
  %15 = icmp eq i32 %14, 2
  %16 = select i1 %15, ptr @.str.171, ptr @.str.25
  %17 = select i1 %15, ptr @.str.172, ptr @.str.25
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.170, ptr noundef nonnull %16, ptr noundef nonnull @.str.72, ptr noundef nonnull %17) #34
  %18 = load i32, ptr %5, align 4
  %19 = icmp eq i32 %18, 3
  %20 = select i1 %19, ptr @.str.171, ptr @.str.25
  %21 = select i1 %19, ptr @.str.172, ptr @.str.25
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.170, ptr noundef nonnull %20, ptr noundef nonnull @.str.73, ptr noundef nonnull %21) #34
  %22 = load i32, ptr %5, align 4
  %23 = icmp eq i32 %22, 4
  %24 = select i1 %23, ptr @.str.171, ptr @.str.25
  %25 = select i1 %23, ptr @.str.172, ptr @.str.25
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.170, ptr noundef nonnull %24, ptr noundef nonnull @.str.74, ptr noundef nonnull %25) #34
  %26 = load i32, ptr %5, align 4
  %27 = icmp eq i32 %26, 5
  %28 = select i1 %27, ptr @.str.171, ptr @.str.25
  %29 = select i1 %27, ptr @.str.172, ptr @.str.25
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.170, ptr noundef nonnull %28, ptr noundef nonnull @.str.75, ptr noundef nonnull %29) #34
  %30 = load i32, ptr %5, align 4
  %31 = icmp eq i32 %30, 6
  %32 = select i1 %31, ptr @.str.171, ptr @.str.25
  %33 = select i1 %31, ptr @.str.172, ptr @.str.25
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.170, ptr noundef nonnull %32, ptr noundef nonnull @.str.76, ptr noundef nonnull %33) #34
  %34 = load i32, ptr %5, align 4
  %35 = icmp eq i32 %34, 7
  %36 = select i1 %35, ptr @.str.171, ptr @.str.25
  %37 = select i1 %35, ptr @.str.172, ptr @.str.25
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.170, ptr noundef nonnull %36, ptr noundef nonnull @.str.77, ptr noundef nonnull %37) #34
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #34
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rb_simple_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #5 {
  %5 = alloca [64 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #34
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !26
  %8 = getelementptr inbounds %struct.trace_array, ptr %7, i32 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = tail call zeroext i1 @ring_buffer_record_is_on(ptr noundef nonnull %9) #34
  br label %17

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.trace_array, ptr %7, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br label %17

17:                                               ; preds = %13, %11
  %18 = phi i1 [ %12, %11 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.173, i32 noundef %19)
  %21 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef %20) #34
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #34
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rb_simple_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #5 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.trace_array, ptr %7, i32 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #34
  store i32 0, ptr %5, align 4, !annotation !26
  %10 = call i32 @kstrtoul_from_user(ptr noundef %1, i32 noundef %2, i32 noundef 10, ptr noundef nonnull %5) #34
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %58

12:                                               ; preds = %4
  %13 = icmp eq ptr %9, null
  br i1 %13, label %55, label %14

14:                                               ; preds = %12
  call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %15 = load i32, ptr %5, align 4
  %16 = icmp eq i32 %15, 0
  %17 = load ptr, ptr %8, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = call zeroext i1 @ring_buffer_record_is_on(ptr noundef nonnull %17) #34
  br label %25

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.trace_array, ptr %7, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br label %25

25:                                               ; preds = %21, %19
  %26 = phi i1 [ %20, %19 ], [ %24, %21 ]
  %27 = xor i1 %16, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, ptr %5, align 4
  br label %54

29:                                               ; preds = %25
  %30 = load i32, ptr %5, align 4
  %31 = icmp eq i32 %30, 0
  %32 = load ptr, ptr %8, align 4
  %33 = icmp eq ptr %32, null
  br i1 %31, label %44, label %34

34:                                               ; preds = %29
  br i1 %33, label %36, label %35

35:                                               ; preds = %34
  call void @ring_buffer_record_on(ptr noundef nonnull %32) #34
  br label %36

36:                                               ; preds = %35, %34
  %37 = getelementptr inbounds %struct.trace_array, ptr %7, i32 0, i32 6
  store i32 0, ptr %37, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #34, !srcloc !34
  %38 = getelementptr inbounds %struct.trace_array, ptr %7, i32 0, i32 13
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.tracer, ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %54, label %43

43:                                               ; preds = %36
  call void %41(ptr noundef %7) #34
  br label %54

44:                                               ; preds = %29
  br i1 %33, label %46, label %45

45:                                               ; preds = %44
  call void @ring_buffer_record_off(ptr noundef nonnull %32) #34
  br label %46

46:                                               ; preds = %45, %44
  %47 = getelementptr inbounds %struct.trace_array, ptr %7, i32 0, i32 6
  store i32 1, ptr %47, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #34, !srcloc !39
  %48 = getelementptr inbounds %struct.trace_array, ptr %7, i32 0, i32 13
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.tracer, ptr %49, i32 0, i32 4
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  call void %51(ptr noundef %7) #34
  br label %54

54:                                               ; preds = %53, %46, %43, %36, %28
  call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %55

55:                                               ; preds = %54, %12
  %56 = load i64, ptr %3, align 8
  %57 = add i64 %56, 1
  store i64 %57, ptr %3, align 8
  br label %58

58:                                               ; preds = %55, %4
  %59 = phi i32 [ %2, %55 ], [ %10, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #34
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_time_stamp_mode_open(ptr nocapture noundef readonly %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = load i1, ptr @tracing_disabled, align 4
  br i1 %5, label %6, label %35

6:                                                ; preds = %2
  %7 = icmp eq ptr %4, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @tracing_time_stamp_mode_show, ptr noundef null) #34
  br label %35

10:                                               ; preds = %6
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  br label %11

11:                                               ; preds = %15, %10
  %12 = phi ptr [ @ftrace_trace_arrays, %10 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, @ftrace_trace_arrays
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = icmp eq ptr %13, %4
  br i1 %16, label %18, label %11

17:                                               ; preds = %11
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %35

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 28
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  %22 = load ptr, ptr %3, align 4
  %23 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @tracing_time_stamp_mode_show, ptr noundef %22) #34
  %24 = icmp sgt i32 %23, -1
  %25 = select i1 %24, i1 true, i1 %7
  br i1 %25, label %35, label %26

26:                                               ; preds = %18
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %27 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 28
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32, !prof !11

30:                                               ; preds = %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 465, i32 noundef 9, ptr noundef null) #34
  %31 = load i32, ptr %27, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi i32 [ %31, %30 ], [ %28, %26 ]
  %34 = add i32 %33, -1
  store i32 %34, ptr %27, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %35

35:                                               ; preds = %32, %18, %17, %8, %2
  %36 = phi i32 [ -19, %17 ], [ %23, %18 ], [ %23, %32 ], [ -19, %2 ], [ %9, %8 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_time_stamp_mode_show(ptr noundef %0, ptr nocapture noundef readnone %1) #5 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %5 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call zeroext i1 @ring_buffer_time_stamp_abs(ptr noundef %6) #34
  %8 = select i1 %7, ptr @.str.174, ptr @.str.175
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull %8) #34
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ring_buffer_time_stamp_abs(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @buffer_percent_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #5 {
  %5 = alloca [64 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #34
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !26
  %8 = getelementptr inbounds %struct.trace_array, ptr %7, i32 0, i32 11
  %9 = load i32, ptr %8, align 8
  %10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.173, i32 noundef %9)
  %11 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef %10) #34
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #34
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @buffer_percent_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #5 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #34
  store i32 0, ptr %5, align 4, !annotation !26
  %8 = call i32 @kstrtoul_from_user(ptr noundef %1, i32 noundef %2, i32 noundef 10, ptr noundef nonnull %5) #34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = icmp ugt i32 %11, 100
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = icmp eq i32 %11, 0
  %15 = select i1 %14, i32 1, i32 %11
  %16 = getelementptr inbounds %struct.trace_array, ptr %7, i32 0, i32 11
  store i32 %15, ptr %16, align 8
  %17 = load i64, ptr %3, align 8
  %18 = add i64 %17, 1
  store i64 %18, ptr %3, align 8
  br label %19

19:                                               ; preds = %13, %10, %4
  %20 = phi i32 [ %2, %13 ], [ %8, %4 ], [ -22, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #34
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_options_core_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #5 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = sub nsw i32 0, %8
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = getelementptr i8, ptr %10, i32 -96
  %12 = getelementptr inbounds %struct.trace_array, ptr %11, i32 0, i32 14
  %13 = load i32, ptr %12, align 4
  %14 = shl nuw i32 1, %8
  %15 = and i32 %14, %13
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, ptr @.str.137, ptr @.str.136
  %18 = tail call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %17, i32 noundef 2) #34
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_options_core_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #5 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #34
  store i32 0, ptr %5, align 4, !annotation !26
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = sub nsw i32 0, %9
  %11 = getelementptr i8, ptr %7, i32 %10
  %12 = getelementptr i8, ptr %11, i32 -96
  %13 = call i32 @kstrtoul_from_user(ptr noundef %1, i32 noundef %2, i32 noundef 10, ptr noundef nonnull %5) #34
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %4
  %16 = load i32, ptr %5, align 4
  %17 = icmp ugt i32 %16, 1
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  call void @mutex_lock(ptr noundef nonnull @event_mutex) #34
  call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %19 = shl nuw i32 1, %9
  %20 = load i32, ptr %5, align 4
  %21 = call i32 @set_tracer_flag(ptr noundef %12, i32 noundef %19, i32 noundef %20)
  call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  call void @mutex_unlock(ptr noundef nonnull @event_mutex) #34
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = zext i32 %2 to i64
  %25 = load i64, ptr %3, align 8
  %26 = add i64 %25, %24
  store i64 %26, ptr %3, align 8
  br label %27

27:                                               ; preds = %23, %18, %15, %4
  %28 = phi i32 [ %2, %23 ], [ %13, %4 ], [ -22, %15 ], [ %21, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #34
  ret i32 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @tracing_err_log_write(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef returned %2, ptr nocapture noundef readnone %3) #10 {
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_err_log_open(ptr nocapture noundef readonly %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = load i1, ptr @tracing_disabled, align 4
  br i1 %5, label %6, label %65

6:                                                ; preds = %2
  %7 = icmp eq ptr %4, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %6
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  br label %9

9:                                                ; preds = %13, %8
  %10 = phi ptr [ @ftrace_trace_arrays, %8 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @ftrace_trace_arrays
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = icmp eq ptr %11, %4
  br i1 %14, label %15, label %9

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 28
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %20

19:                                               ; preds = %9
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %65

20:                                               ; preds = %15, %6
  %21 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 512
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %25
  tail call void @mutex_lock(ptr noundef nonnull @tracing_err_log_lock) #34
  %31 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 18
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %41, label %34

34:                                               ; preds = %34, %30
  %35 = phi ptr [ %36, %34 ], [ %32, %30 ]
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  store ptr %38, ptr %39, align 4
  store volatile ptr %36, ptr %38, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %35, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %37, align 4
  tail call void @kfree(ptr noundef %35) #34
  %40 = icmp eq ptr %36, %31
  br i1 %40, label %41, label %34

41:                                               ; preds = %34, %30
  %42 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 12
  store i32 0, ptr %42, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @tracing_err_log_lock) #34
  %43 = load i32, ptr %21, align 8
  br label %44

44:                                               ; preds = %41, %25, %20
  %45 = phi i32 [ %43, %41 ], [ %22, %25 ], [ %22, %20 ]
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %65, label %48

48:                                               ; preds = %44
  %49 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @tracing_err_log_seq_ops) #34
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.seq_file, ptr %53, i32 0, i32 11
  store ptr %4, ptr %54, align 8
  br label %65

55:                                               ; preds = %48
  br i1 %7, label %65, label %56

56:                                               ; preds = %55
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %57 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 28
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62, !prof !11

60:                                               ; preds = %56
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 465, i32 noundef 9, ptr noundef null) #34
  %61 = load i32, ptr %57, align 4
  br label %62

62:                                               ; preds = %60, %56
  %63 = phi i32 [ %61, %60 ], [ %58, %56 ]
  %64 = add i32 %63, -1
  store i32 %64, ptr %57, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %65

65:                                               ; preds = %62, %55, %51, %44, %19, %2
  %66 = phi i32 [ -19, %19 ], [ 0, %51 ], [ 0, %44 ], [ %49, %55 ], [ %49, %62 ], [ -19, %2 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_err_log_release(ptr noundef %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %7 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 28
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12, !prof !11

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 465, i32 noundef 9, ptr noundef null) #34
  %11 = load i32, ptr %7, align 4
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i32 [ %11, %10 ], [ %8, %6 ]
  %14 = add i32 %13, -1
  store i32 %14, ptr %7, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %15

15:                                               ; preds = %12, %2
  %16 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = tail call i32 @seq_release(ptr noundef %0, ptr noundef %1) #34
  br label %22

22:                                               ; preds = %20, %15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tracing_err_log_seq_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @mutex_lock(ptr noundef nonnull @tracing_err_log_lock) #34
  %5 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 18
  %6 = load i64, ptr %1, align 8
  %7 = tail call ptr @seq_list_start(ptr noundef %5, i64 noundef %6) #34
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tracing_err_log_seq_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #5 {
  tail call void @mutex_unlock(ptr noundef nonnull @tracing_err_log_lock) #34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tracing_err_log_seq_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #5 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.trace_array, ptr %5, i32 0, i32 18
  %7 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef %6, ptr noundef %2) #34
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_err_log_seq_show(ptr noundef %0, ptr noundef %1) #5 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %35, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tracing_log_err, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.tracing_log_err, ptr %1, i32 0, i32 1, i32 1
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = getelementptr ptr, ptr %6, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracing_log_err, ptr %1, i32 0, i32 1, i32 3
  %13 = load i64, ptr %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %13, i32 0) #35, !srcloc !9
  %16 = extractvalue { i64, i32 } %15, 0
  %17 = extractvalue { i64, i32 } %15, 1
  %18 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %13, i64 %16, i32 %17) #35, !srcloc !10
  %19 = extractvalue { i64, i32 } %18, 0
  %20 = lshr i64 %19, 29
  %21 = trunc i64 %20 to i32
  %22 = mul i32 %21, -1000000000
  %23 = add i32 %22, %14
  %24 = udiv i32 %23, 1000
  %25 = getelementptr inbounds %struct.tracing_log_err, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.176, i64 noundef %20, i32 noundef %24, ptr noundef %25, ptr noundef %11) #34
  %26 = getelementptr inbounds %struct.tracing_log_err, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef %26) #34
  %27 = getelementptr inbounds %struct.tracing_log_err, ptr %1, i32 0, i32 1, i32 2
  %28 = load i8, ptr %27, align 1
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #34
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #34
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #34
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #34
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #34
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #34
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #34
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #34
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #34
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #34
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #34
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %30, %4
  %31 = phi i8 [ %32, %30 ], [ 0, %4 ]
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 32) #34
  %32 = add nuw i8 %31, 1
  %33 = icmp ult i8 %32, %28
  br i1 %33, label %30, label %34

34:                                               ; preds = %30, %4
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.177) #34
  br label %35

35:                                               ; preds = %34, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_buffers_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #5 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %111, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ftrace_buffer_info, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.trace_iterator, ptr %6, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.array_buffer, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.trace_iterator, ptr %6, i32 0, i32 4
  %18 = load i32, ptr %17, align 8
  %19 = tail call ptr @ring_buffer_alloc_read_page(ptr noundef %16, i32 noundef %18) #34
  store ptr %19, ptr %9, align 8
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = ptrtoint ptr %19 to i32
  store ptr null, ptr %9, align 8
  br label %111

23:                                               ; preds = %12
  %24 = load i32, ptr %17, align 8
  %25 = getelementptr inbounds %struct.ftrace_buffer_info, ptr %6, i32 0, i32 2
  store i32 %24, ptr %25, align 4
  %26 = icmp eq ptr %19, null
  br i1 %26, label %111, label %27

27:                                               ; preds = %23, %8
  %28 = phi ptr [ %10, %8 ], [ %19, %23 ]
  %29 = getelementptr inbounds %struct.ftrace_buffer_info, ptr %6, i32 0, i32 3
  %30 = load i32, ptr %29, align 8
  %31 = icmp ult i32 %30, 4096
  br i1 %31, label %87, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.trace_iterator, ptr %6, i32 0, i32 4
  %34 = getelementptr inbounds %struct.trace_iterator, ptr %6, i32 0, i32 2
  %35 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %36 = getelementptr inbounds %struct.trace_iterator, ptr %6, i32 0, i32 6
  br label %37

37:                                               ; preds = %82, %32
  %38 = load i32, ptr %33, align 8
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  tail call void @down_write(ptr noundef nonnull @all_cpu_access_lock) #34
  br label %46

41:                                               ; preds = %37
  tail call void @down_read(ptr noundef nonnull @all_cpu_access_lock) #34
  %42 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, ptrtoint (ptr @cpu_access_lock to i32)
  %45 = inttoptr i32 %44 to ptr
  tail call void @mutex_lock(ptr noundef %45) #34
  br label %46

46:                                               ; preds = %41, %40
  %47 = load ptr, ptr %34, align 8
  %48 = getelementptr inbounds %struct.array_buffer, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = load i32, ptr %33, align 8
  %51 = tail call i32 @ring_buffer_read_page(ptr noundef %49, ptr noundef %9, i32 noundef %2, i32 noundef %50, i32 noundef 0) #34
  %52 = load i32, ptr %33, align 8
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  tail call void @up_write(ptr noundef nonnull @all_cpu_access_lock) #34
  br label %60

55:                                               ; preds = %46
  %56 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %52
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, ptrtoint (ptr @cpu_access_lock to i32)
  %59 = inttoptr i32 %58 to ptr
  tail call void @mutex_unlock(ptr noundef %59) #34
  tail call void @up_read(ptr noundef nonnull @all_cpu_access_lock) #34
  br label %60

60:                                               ; preds = %55, %54
  %61 = icmp slt i32 %51, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %60
  %63 = tail call i32 @trace_empty(ptr noundef %6)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %111, label %65

65:                                               ; preds = %62
  %66 = load i32, ptr %35, align 4
  %67 = and i32 %66, 2048
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %111

69:                                               ; preds = %65
  %70 = load i32, ptr %33, align 8
  %71 = load ptr, ptr %36, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = getelementptr ptr, ptr %71, i32 %70
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %73, %69
  %78 = load ptr, ptr %34, align 8
  %79 = getelementptr inbounds %struct.array_buffer, ptr %78, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = tail call i32 @ring_buffer_wait(ptr noundef %80, i32 noundef %70, i32 noundef 0) #34
  br label %82

82:                                               ; preds = %77, %73
  %83 = phi i32 [ %81, %77 ], [ 0, %73 ]
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %37, label %111

85:                                               ; preds = %60
  store i32 0, ptr %29, align 8
  %86 = load ptr, ptr %9, align 8
  br label %87

87:                                               ; preds = %85, %27
  %88 = phi ptr [ %28, %27 ], [ %86, %85 ]
  %89 = phi i32 [ %30, %27 ], [ 0, %85 ]
  %90 = sub nuw nsw i32 4096, %89
  %91 = tail call i32 @llvm.umin.i32(i32 %90, i32 %2)
  %92 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %91, i32 -1090519040) #35, !srcloc !83
  %93 = extractvalue { i32, i32 } %92, 0
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %87
  %96 = getelementptr i8, ptr %88, i32 %89
  %97 = tail call ptr @llvm.thread.pointer() #34
  %98 = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 3
  %99 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %98) #26, !srcloc !27
  %100 = and i32 %99, -13
  %101 = or i32 %100, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %101) #34, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #34, !srcloc !29
  %102 = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %96, i32 noundef %91) #34
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %99) #34, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #34, !srcloc !29
  %103 = icmp eq i32 %91, %102
  br i1 %103, label %111, label %104

104:                                              ; preds = %95
  %105 = sub i32 %91, %102
  %106 = sext i32 %105 to i64
  %107 = load i64, ptr %3, align 8
  %108 = add i64 %107, %106
  store i64 %108, ptr %3, align 8
  %109 = load i32, ptr %29, align 8
  %110 = add i32 %109, %105
  store i32 %110, ptr %29, align 8
  br label %111

111:                                              ; preds = %104, %95, %87, %82, %65, %62, %23, %21, %4
  %112 = phi i32 [ %105, %104 ], [ 0, %4 ], [ 0, %23 ], [ -14, %95 ], [ %22, %21 ], [ -14, %87 ], [ 0, %62 ], [ %83, %82 ], [ -11, %65 ]
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_buffers_poll(ptr noundef %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.trace_iterator, ptr %4, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.trace_iterator, ptr %4, i32 0, i32 6
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = getelementptr ptr, ptr %9, i32 %7
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %11, %2
  %16 = getelementptr inbounds %struct.trace_array, ptr %5, i32 0, i32 14
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 128
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.trace_iterator, ptr %4, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.array_buffer, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @ring_buffer_poll_wait(ptr noundef %24, i32 noundef %7, ptr noundef %0, ptr noundef %1) #34
  br label %26

26:                                               ; preds = %20, %15, %11
  %27 = phi i32 [ %25, %20 ], [ 65, %11 ], [ 65, %15 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_buffers_open(ptr noundef %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = load i1, ptr @tracing_disabled, align 4
  br i1 %5, label %6, label %65

6:                                                ; preds = %2
  %7 = icmp eq ptr %4, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %6
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  br label %9

9:                                                ; preds = %13, %8
  %10 = phi ptr [ @ftrace_trace_arrays, %8 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @ftrace_trace_arrays
  br i1 %12, label %63, label %13

13:                                               ; preds = %9
  %14 = icmp eq ptr %11, %4
  br i1 %14, label %15, label %9

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 28
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  %19 = tail call noalias ptr @kvmalloc_node(i32 noundef 8392, i32 noundef 3520, i32 noundef -1) #37
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %27

21:                                               ; preds = %6
  %22 = tail call noalias ptr @kvmalloc_node(i32 noundef 8392, i32 noundef 3520, i32 noundef -1) #37
  %23 = icmp eq ptr %22, null
  br i1 %23, label %65, label %27

24:                                               ; preds = %15
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %25 = load i32, ptr %16, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %54, label %58, !prof !11

27:                                               ; preds = %21, %15
  %28 = phi ptr [ %22, %21 ], [ %19, %15 ]
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  store ptr %4, ptr %28, align 8
  %29 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  %32 = ptrtoint ptr %30 to i32
  %33 = add i32 %32, -1
  %34 = select i1 %31, i32 -1, i32 %33
  %35 = getelementptr inbounds %struct.trace_iterator, ptr %28, i32 0, i32 4
  store i32 %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 13
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.trace_iterator, ptr %28, i32 0, i32 1
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 2
  %40 = getelementptr inbounds %struct.trace_iterator, ptr %28, i32 0, i32 2
  store ptr %39, ptr %40, align 8
  %41 = getelementptr inbounds %struct.ftrace_buffer_info, ptr %28, i32 0, i32 1
  store ptr null, ptr %41, align 8
  %42 = getelementptr inbounds %struct.ftrace_buffer_info, ptr %28, i32 0, i32 3
  store i32 -1, ptr %42, align 8
  %43 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %28, ptr %43, align 8
  %44 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 29
  %45 = load i32, ptr %44, align 8
  %46 = add i32 %45, 1
  store i32 %46, ptr %44, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  %47 = tail call i32 @nonseekable_open(ptr noundef %0, ptr noundef %1) #34
  %48 = icmp sgt i32 %47, -1
  %49 = select i1 %48, i1 true, i1 %7
  br i1 %49, label %65, label %50

50:                                               ; preds = %27
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %51 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 28
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58, !prof !11

54:                                               ; preds = %50, %24
  %55 = phi ptr [ %16, %24 ], [ %51, %50 ]
  %56 = phi i32 [ -12, %24 ], [ %47, %50 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 465, i32 noundef 9, ptr noundef null) #34
  %57 = load i32, ptr %55, align 4
  br label %58

58:                                               ; preds = %54, %50, %24
  %59 = phi i32 [ %25, %24 ], [ %52, %50 ], [ %57, %54 ]
  %60 = phi ptr [ %16, %24 ], [ %51, %50 ], [ %55, %54 ]
  %61 = phi i32 [ -12, %24 ], [ %47, %50 ], [ %56, %54 ]
  %62 = add i32 %59, -1
  store i32 %62, ptr %60, align 4
  br label %63

63:                                               ; preds = %58, %9
  %64 = phi i32 [ %61, %58 ], [ -19, %9 ]
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  br label %65

65:                                               ; preds = %63, %27, %21, %2
  %66 = phi i32 [ %47, %27 ], [ -19, %2 ], [ -12, %21 ], [ %64, %63 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_buffers_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.trace_array, ptr %5, i32 0, i32 29
  %7 = load i32, ptr %6, align 8
  %8 = add i32 %7, -1
  store i32 %8, ptr %6, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct.trace_array, ptr %9, i32 0, i32 28
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 465, i32 noundef 9, ptr noundef null) #34
  %14 = load i32, ptr %10, align 4
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi i32 [ %14, %13 ], [ %11, %2 ]
  %17 = add i32 %16, -1
  store i32 %17, ptr %10, align 4
  %18 = getelementptr inbounds %struct.ftrace_buffer_info, ptr %4, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.trace_iterator, ptr %4, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.array_buffer, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ftrace_buffer_info, ptr %4, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  tail call void @ring_buffer_free_read_page(ptr noundef %25, i32 noundef %27, ptr noundef nonnull %19) #34
  br label %28

28:                                               ; preds = %21, %15
  tail call void @kvfree(ptr noundef %4) #34
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_buffers_splice_read(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #5 {
  %6 = alloca [16 x %struct.partial_page], align 4
  %7 = alloca [16 x ptr], align 4
  %8 = alloca %struct.splice_pipe_desc, align 4
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %6) #34
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(192) %6, i8 0, i32 192, i1 false), !annotation !26
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #34
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %7, i8 0, i32 64, i1 false), !annotation !26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #34
  store ptr %7, ptr %8, align 4
  %11 = getelementptr inbounds %struct.splice_pipe_desc, ptr %8, i32 0, i32 1
  store ptr %6, ptr %11, align 4
  %12 = getelementptr inbounds %struct.splice_pipe_desc, ptr %8, i32 0, i32 2
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.splice_pipe_desc, ptr %8, i32 0, i32 3
  store i32 16, ptr %13, align 4
  %14 = getelementptr inbounds %struct.splice_pipe_desc, ptr %8, i32 0, i32 4
  store ptr @buffer_pipe_buf_ops, ptr %14, align 4
  %15 = getelementptr inbounds %struct.splice_pipe_desc, ptr %8, i32 0, i32 5
  store ptr @buffer_spd_release, ptr %15, align 4
  %16 = load i64, ptr %1, align 8
  %17 = and i64 %16, 4095
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %166

19:                                               ; preds = %5
  %20 = and i32 %3, 4095
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = icmp ult i32 %3, 4096
  br i1 %23, label %166, label %24

24:                                               ; preds = %22
  %25 = and i32 %3, -4096
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi i32 [ %25, %24 ], [ %3, %19 ]
  %28 = call i32 @splice_grow_spd(ptr noundef %2, ptr noundef nonnull %8) #34
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %166

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.trace_iterator, ptr %10, i32 0, i32 4
  %32 = getelementptr inbounds %struct.trace_iterator, ptr %10, i32 0, i32 2
  %33 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %34 = and i32 %4, 2
  %35 = getelementptr inbounds %struct.trace_iterator, ptr %10, i32 0, i32 6
  br label %36

36:                                               ; preds = %159, %30
  %37 = phi i32 [ %123, %159 ], [ %27, %30 ]
  %38 = load i32, ptr %31, align 8
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  call void @down_write(ptr noundef nonnull @all_cpu_access_lock) #34
  br label %46

41:                                               ; preds = %36
  call void @down_read(ptr noundef nonnull @all_cpu_access_lock) #34
  %42 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, ptrtoint (ptr @cpu_access_lock to i32)
  %45 = inttoptr i32 %44 to ptr
  call void @mutex_lock(ptr noundef %45) #34
  br label %46

46:                                               ; preds = %41, %40
  %47 = load ptr, ptr %32, align 8
  %48 = getelementptr inbounds %struct.array_buffer, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = load i32, ptr %31, align 8
  %51 = call i32 @ring_buffer_entries_cpu(ptr noundef %49, i32 noundef %50) #34
  %52 = load i32, ptr %13, align 4
  %53 = icmp ne i32 %52, 0
  %54 = icmp ne i32 %37, 0
  %55 = select i1 %53, i1 %54, i1 false
  %56 = icmp ne i32 %51, 0
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %58, label %122

58:                                               ; preds = %87, %46
  %59 = phi i32 [ %112, %87 ], [ 0, %46 ]
  %60 = phi i32 [ %113, %87 ], [ %37, %46 ]
  %61 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %62 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %61, i32 noundef 3520, i32 noundef 16) #36
  %63 = icmp eq ptr %62, null
  br i1 %63, label %122, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.buffer_ref, ptr %62, i32 0, i32 3
  store volatile i32 1, ptr %65, align 4
  %66 = load ptr, ptr %32, align 8
  %67 = getelementptr inbounds %struct.array_buffer, ptr %66, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  store ptr %68, ptr %62, align 8
  %69 = load i32, ptr %31, align 8
  %70 = call ptr @ring_buffer_alloc_read_page(ptr noundef %68, i32 noundef %69) #34
  %71 = getelementptr inbounds %struct.buffer_ref, ptr %62, i32 0, i32 1
  store ptr %70, ptr %71, align 4
  %72 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = ptrtoint ptr %70 to i32
  store ptr null, ptr %71, align 4
  br label %120

75:                                               ; preds = %64
  %76 = load i32, ptr %31, align 8
  %77 = getelementptr inbounds %struct.buffer_ref, ptr %62, i32 0, i32 2
  store i32 %76, ptr %77, align 8
  %78 = load ptr, ptr %62, align 8
  %79 = load i32, ptr %31, align 8
  %80 = call i32 @ring_buffer_read_page(ptr noundef %78, ptr noundef %71, i32 noundef %60, i32 noundef %79, i32 noundef 1) #34
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.buffer_ref, ptr %62, i32 0, i32 2
  %84 = load ptr, ptr %62, align 8
  %85 = load i32, ptr %83, align 8
  %86 = load ptr, ptr %71, align 4
  call void @ring_buffer_free_read_page(ptr noundef %84, i32 noundef %85, ptr noundef %86) #34
  br label %120

87:                                               ; preds = %75
  %88 = load ptr, ptr @mem_map, align 4
  %89 = load ptr, ptr %71, align 4
  %90 = ptrtoint ptr %89 to i32
  %91 = add i32 %90, 1073741824
  %92 = lshr i32 %91, 12
  %93 = getelementptr %struct.page, ptr %88, i32 %92
  %94 = load ptr, ptr %8, align 4
  %95 = getelementptr ptr, ptr %94, i32 %59
  store ptr %93, ptr %95, align 4
  %96 = load ptr, ptr %11, align 4
  %97 = getelementptr %struct.partial_page, ptr %96, i32 %59, i32 1
  store i32 4096, ptr %97, align 4
  %98 = load ptr, ptr %11, align 4
  %99 = getelementptr %struct.partial_page, ptr %98, i32 %59
  store i32 0, ptr %99, align 4
  %100 = ptrtoint ptr %62 to i32
  %101 = load ptr, ptr %11, align 4
  %102 = getelementptr %struct.partial_page, ptr %101, i32 %59, i32 2
  store i32 %100, ptr %102, align 4
  %103 = load i32, ptr %12, align 4
  %104 = add i32 %103, 1
  store i32 %104, ptr %12, align 4
  %105 = load i64, ptr %1, align 8
  %106 = add i64 %105, 4096
  store i64 %106, ptr %1, align 8
  %107 = load ptr, ptr %32, align 8
  %108 = getelementptr inbounds %struct.array_buffer, ptr %107, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = load i32, ptr %31, align 8
  %111 = call i32 @ring_buffer_entries_cpu(ptr noundef %109, i32 noundef %110) #34
  %112 = add nuw i32 %59, 1
  %113 = add i32 %60, -4096
  %114 = load i32, ptr %13, align 4
  %115 = icmp ult i32 %112, %114
  %116 = icmp ne i32 %113, 0
  %117 = select i1 %115, i1 %116, i1 false
  %118 = icmp ne i32 %111, 0
  %119 = select i1 %117, i1 %118, i1 false
  br i1 %119, label %58, label %122

120:                                              ; preds = %82, %73
  %121 = phi i32 [ %74, %73 ], [ 0, %82 ]
  call void @kfree(ptr noundef nonnull %62) #34
  br label %122

122:                                              ; preds = %120, %87, %58, %46
  %123 = phi i32 [ %37, %46 ], [ %60, %120 ], [ %113, %87 ], [ %60, %58 ]
  %124 = phi i32 [ 0, %46 ], [ %59, %120 ], [ %112, %87 ], [ %59, %58 ]
  %125 = phi i32 [ 0, %46 ], [ %121, %120 ], [ 0, %87 ], [ -12, %58 ]
  %126 = load i32, ptr %31, align 8
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  call void @up_write(ptr noundef nonnull @all_cpu_access_lock) #34
  br label %134

129:                                              ; preds = %122
  %130 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %126
  %131 = load i32, ptr %130, align 4
  %132 = add i32 %131, ptrtoint (ptr @cpu_access_lock to i32)
  %133 = inttoptr i32 %132 to ptr
  call void @mutex_unlock(ptr noundef %133) #34
  call void @up_read(ptr noundef nonnull @all_cpu_access_lock) #34
  br label %134

134:                                              ; preds = %129, %128
  store i32 %124, ptr %12, align 4
  %135 = icmp eq i32 %124, 0
  br i1 %135, label %136, label %162

136:                                              ; preds = %134
  %137 = icmp eq i32 %125, 0
  br i1 %137, label %138, label %164

138:                                              ; preds = %136
  %139 = load i32, ptr %33, align 4
  %140 = and i32 %139, 2048
  %141 = or i32 %140, %34
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %164

143:                                              ; preds = %138
  %144 = load ptr, ptr %10, align 8
  %145 = getelementptr inbounds %struct.trace_array, ptr %144, i32 0, i32 11
  %146 = load i32, ptr %145, align 8
  %147 = load i32, ptr %31, align 8
  %148 = load ptr, ptr %35, align 8
  %149 = icmp eq ptr %148, null
  br i1 %149, label %154, label %150

150:                                              ; preds = %143
  %151 = getelementptr ptr, ptr %148, i32 %147
  %152 = load ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %159

154:                                              ; preds = %150, %143
  %155 = load ptr, ptr %32, align 8
  %156 = getelementptr inbounds %struct.array_buffer, ptr %155, i32 0, i32 1
  %157 = load ptr, ptr %156, align 4
  %158 = call i32 @ring_buffer_wait(ptr noundef %157, i32 noundef %147, i32 noundef %146) #34
  br label %159

159:                                              ; preds = %154, %150
  %160 = phi i32 [ %158, %154 ], [ 0, %150 ]
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %36, label %164

162:                                              ; preds = %134
  %163 = call i32 @splice_to_pipe(ptr noundef %2, ptr noundef nonnull %8) #34
  br label %164

164:                                              ; preds = %162, %159, %138, %136
  %165 = phi i32 [ %163, %162 ], [ %160, %159 ], [ -11, %138 ], [ %125, %136 ]
  call void @splice_shrink_spd(ptr noundef nonnull %8) #34
  br label %166

166:                                              ; preds = %164, %26, %22, %5
  %167 = phi i32 [ %165, %164 ], [ -22, %5 ], [ -22, %22 ], [ -12, %26 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %6) #34
  ret i32 %167
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ring_buffer_alloc_read_page(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ring_buffer_read_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_buffer_free_read_page(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @buffer_spd_release(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.splice_pipe_desc, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.partial_page, ptr %4, i32 %1, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.buffer_ref, ptr %7, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !84
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #34, !srcloc !13
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #34, !srcloc !85
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = icmp sgt i32 %10, 0
  br i1 %13, label %21, label %14, !prof !19

14:                                               ; preds = %12
  tail call void @refcount_warn_saturate(ptr noundef %8, i32 noundef 3) #34
  br label %21

15:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !86
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr inbounds %struct.buffer_ref, ptr %7, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.buffer_ref, ptr %7, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void @ring_buffer_free_read_page(ptr noundef %16, i32 noundef %18, ptr noundef %20) #34
  tail call void @kfree(ptr noundef %7) #34
  br label %21

21:                                               ; preds = %15, %14, %12
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr %struct.partial_page, ptr %22, i32 %1, i32 2
  store i32 0, ptr %23, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @buffer_pipe_buf_release(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #5 {
  %3 = getelementptr inbounds %struct.pipe_buffer, ptr %1, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.buffer_ref, ptr %5, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !84
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #34, !srcloc !13
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #34, !srcloc !85
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %19, label %12, !prof !19

12:                                               ; preds = %10
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 3) #34
  br label %19

13:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !86
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.buffer_ref, ptr %5, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.buffer_ref, ptr %5, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  tail call void @ring_buffer_free_read_page(ptr noundef %14, i32 noundef %16, ptr noundef %18) #34
  tail call void @kfree(ptr noundef %5) #34
  br label %19

19:                                               ; preds = %13, %12, %10
  store i32 0, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @buffer_pipe_buf_get(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.pipe_buffer, ptr %1, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.buffer_ref, ptr %5, i32 0, i32 3
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, 1073741823
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #34, !srcloc !13
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #34, !srcloc !87
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13, !prof !11

13:                                               ; preds = %9
  %14 = add i32 %11, 1
  %15 = or i32 %14, %11
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %19, label %17, !prof !19

17:                                               ; preds = %13, %9
  %18 = phi i32 [ 2, %9 ], [ 1, %13 ]
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef %18) #34
  br label %19

19:                                               ; preds = %17, %13, %2
  %20 = xor i1 %8, true
  ret i1 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_stats_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #5 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 43
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = ptrtoint ptr %10 to i32
  %13 = add i32 %12, -1
  %14 = select i1 %11, i32 -1, i32 %13
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 4128) #36
  %17 = icmp eq ptr %16, null
  br i1 %17, label %84, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.trace_seq, ptr %16, i32 0, i32 1
  store ptr %16, ptr %19, align 8
  %20 = getelementptr inbounds %struct.trace_seq, ptr %16, i32 0, i32 1, i32 1
  store i32 4096, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_seq, ptr %16, i32 0, i32 1, i32 2
  store i32 0, ptr %21, align 8
  %22 = getelementptr inbounds %struct.trace_seq, ptr %16, i32 0, i32 1, i32 3
  store i64 0, ptr %22, align 8
  %23 = getelementptr inbounds %struct.trace_seq, ptr %16, i32 0, i32 2
  store i32 0, ptr %23, align 8
  %24 = getelementptr inbounds %struct.trace_array, ptr %8, i32 0, i32 2, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @ring_buffer_entries_cpu(ptr noundef %25, i32 noundef %14) #34
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef nonnull %16, ptr noundef nonnull @.str.185, i32 noundef %26) #34
  %27 = load ptr, ptr %24, align 4
  %28 = tail call i32 @ring_buffer_overrun_cpu(ptr noundef %27, i32 noundef %14) #34
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef nonnull %16, ptr noundef nonnull @.str.186, i32 noundef %28) #34
  %29 = load ptr, ptr %24, align 4
  %30 = tail call i32 @ring_buffer_commit_overrun_cpu(ptr noundef %29, i32 noundef %14) #34
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef nonnull %16, ptr noundef nonnull @.str.187, i32 noundef %30) #34
  %31 = load ptr, ptr %24, align 4
  %32 = tail call i32 @ring_buffer_bytes_cpu(ptr noundef %31, i32 noundef %14) #34
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef nonnull %16, ptr noundef nonnull @.str.188, i32 noundef %32) #34
  %33 = getelementptr inbounds %struct.trace_array, ptr %8, i32 0, i32 8
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 1073741822
  %36 = icmp eq i32 %35, 2
  %37 = load ptr, ptr %24, align 4
  %38 = tail call i64 @ring_buffer_oldest_event_ts(ptr noundef %37, i32 noundef %14) #34
  br i1 %36, label %72, label %39

39:                                               ; preds = %18
  %40 = add i64 %38, 500
  %41 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %40, i32 0) #35, !srcloc !9
  %42 = extractvalue { i64, i32 } %41, 0
  %43 = extractvalue { i64, i32 } %41, 1
  %44 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %40, i64 %42, i32 %43) #35, !srcloc !10
  %45 = extractvalue { i64, i32 } %44, 0
  %46 = lshr i64 %45, 9
  %47 = trunc i64 %46 to i32
  %48 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %46) #35, !srcloc !88
  %49 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %46, i64 %48, i32 0) #35, !srcloc !10
  %50 = extractvalue { i64, i32 } %49, 0
  %51 = lshr i64 %50, 18
  %52 = trunc i64 %51 to i32
  %53 = mul i32 %52, -1000000
  %54 = add i32 %53, %47
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef nonnull %16, ptr noundef nonnull @.str.189, i64 noundef %51, i32 noundef %54) #34
  %55 = load ptr, ptr %24, align 4
  %56 = tail call i64 @ring_buffer_time_stamp(ptr noundef %55) #34
  %57 = add i64 %56, 500
  %58 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %57, i32 0) #35, !srcloc !9
  %59 = extractvalue { i64, i32 } %58, 0
  %60 = extractvalue { i64, i32 } %58, 1
  %61 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %57, i64 %59, i32 %60) #35, !srcloc !10
  %62 = extractvalue { i64, i32 } %61, 0
  %63 = lshr i64 %62, 9
  %64 = trunc i64 %63 to i32
  %65 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %63) #35, !srcloc !88
  %66 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %63, i64 %65, i32 0) #35, !srcloc !10
  %67 = extractvalue { i64, i32 } %66, 0
  %68 = lshr i64 %67, 18
  %69 = trunc i64 %68 to i32
  %70 = mul i32 %69, -1000000
  %71 = add i32 %70, %64
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef nonnull %16, ptr noundef nonnull @.str.190, i64 noundef %68, i32 noundef %71) #34
  br label %75

72:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef nonnull %16, ptr noundef nonnull @.str.191, i64 noundef %38) #34
  %73 = load ptr, ptr %24, align 4
  %74 = tail call i64 @ring_buffer_time_stamp(ptr noundef %73) #34
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef nonnull %16, ptr noundef nonnull @.str.192, i64 noundef %74) #34
  br label %75

75:                                               ; preds = %72, %39
  %76 = load ptr, ptr %24, align 4
  %77 = tail call i32 @ring_buffer_dropped_events_cpu(ptr noundef %76, i32 noundef %14) #34
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef nonnull %16, ptr noundef nonnull @.str.193, i32 noundef %77) #34
  %78 = load ptr, ptr %24, align 4
  %79 = tail call i32 @ring_buffer_read_events_cpu(ptr noundef %78, i32 noundef %14) #34
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef nonnull %16, ptr noundef nonnull @.str.194, i32 noundef %79) #34
  %80 = load i32, ptr %21, align 8
  %81 = load i32, ptr %20, align 4
  %82 = tail call i32 @llvm.umin.i32(i32 %80, i32 %81) #34
  %83 = tail call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %16, i32 noundef %82) #34
  tail call void @kfree(ptr noundef nonnull %16) #34
  br label %84

84:                                               ; preds = %75, %4
  %85 = phi i32 [ %83, %75 ], [ -12, %4 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ring_buffer_commit_overrun_cpu(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ring_buffer_bytes_cpu(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ring_buffer_oldest_event_ts(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ring_buffer_dropped_events_cpu(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ring_buffer_read_events_cpu(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @event_trace_del_tracer(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_fs_type(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vfs_submount(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_filesystem(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mntget(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @event_trace_init() local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @trace_eval_init() unnamed_addr #11 section ".init.text" {
  store i32 -32, ptr @eval_map_work, align 4
  store volatile ptr getelementptr inbounds (%struct.work_struct, ptr @eval_map_work, i32 0, i32 1), ptr getelementptr inbounds (%struct.work_struct, ptr @eval_map_work, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.work_struct, ptr @eval_map_work, i32 0, i32 1), ptr getelementptr inbounds (%struct.work_struct, ptr @eval_map_work, i32 0, i32 1, i32 1), align 4
  store ptr @eval_map_work_func, ptr getelementptr inbounds (%struct.work_struct, ptr @eval_map_work, i32 0, i32 2), align 4
  %1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.206, i32 noundef 2, i32 noundef 0) #34
  store ptr %1, ptr @eval_map_wq, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207) #38
  br i1 icmp slt (i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop_ftrace_eval_maps to i32), i32 ptrtoint (ptr @__start_ftrace_eval_maps to i32)), i32 4), i32 1), label %8, label %5

5:                                                ; preds = %3
  tail call void @trace_event_eval_update(ptr noundef nonnull @__start_ftrace_eval_maps, i32 noundef sdiv (i32 sub (i32 ptrtoint (ptr @__stop_ftrace_eval_maps to i32), i32 ptrtoint (ptr @__start_ftrace_eval_maps to i32)), i32 4)) #34
  br label %8

6:                                                ; preds = %0
  %7 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef nonnull %1, ptr noundef nonnull @eval_map_work) #34
  br label %8

8:                                                ; preds = %6, %5, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_module_notifier(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @create_trace_instances() unnamed_addr #11 section ".init.text" {
  %1 = tail call ptr @tracefs_create_instance_dir(ptr noundef nonnull @.str.208, ptr noundef null, ptr noundef nonnull @instance_mkdir, ptr noundef nonnull @instance_rmdir) #34
  store ptr %1, ptr @trace_instance_dir, align 4
  %2 = icmp eq ptr %1, null
  %3 = load i1, ptr @create_trace_instances.__already_done, align 1
  %4 = xor i1 %3, true
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %8, !prof !11

6:                                                ; preds = %0
  store i1 true, ptr @create_trace_instances.__already_done, align 1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209) #38
  br label %8

8:                                                ; preds = %6, %0
  br i1 %2, label %30, label %9

9:                                                ; preds = %8
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #34
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %10 = load ptr, ptr @ftrace_trace_arrays, align 4
  %11 = icmp eq ptr %10, @ftrace_trace_arrays
  br i1 %11, label %29, label %12

12:                                               ; preds = %26, %9
  %13 = phi ptr [ %27, %26 ], [ %10, %9 ]
  %14 = getelementptr inbounds %struct.trace_array, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %12
  %18 = tail call fastcc i32 @trace_array_create_dir(ptr noundef %13)
  %19 = icmp slt i32 %18, 0
  %20 = load i1, ptr @create_trace_instances.__already_done.210, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %25, !prof !11

23:                                               ; preds = %17
  store i1 true, ptr @create_trace_instances.__already_done.210, align 1
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211) #38
  br label %25

25:                                               ; preds = %23, %17
  br i1 %19, label %29, label %26

26:                                               ; preds = %25, %12
  %27 = load ptr, ptr %13, align 4
  %28 = icmp eq ptr %27, @ftrace_trace_arrays
  br i1 %28, label %29, label %12

29:                                               ; preds = %26, %25, %9
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #34
  br label %30

30:                                               ; preds = %29, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_thresh_read(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #5 {
  %5 = alloca [64 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #34
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %5, i8 0, i32 64, i1 false) #34, !annotation !26
  %6 = load i32, ptr @tracing_thresh, align 4
  %7 = icmp eq i32 %6, -1
  %8 = udiv i32 %6, 1000
  %9 = select i1 %7, i32 -1, i32 %8
  %10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 64, ptr noundef nonnull @.str.202, i32 noundef %9) #34
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 64) #34
  %12 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef %11) #34
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #34
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_thresh_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #5 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #34
  store i32 0, ptr %5, align 4, !annotation !26
  %8 = call i32 @kstrtoul_from_user(ptr noundef %1, i32 noundef %2, i32 noundef 10, ptr noundef nonnull %5) #34
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = mul i32 %11, 1000
  store i32 %12, ptr @tracing_thresh, align 4
  br label %13

13:                                               ; preds = %10, %4
  %14 = phi i32 [ %2, %10 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #34
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_array, ptr %7, i32 0, i32 13
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.tracer, ptr %18, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = call i32 %20(ptr noundef %7) #34
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22, %16
  br label %26

26:                                               ; preds = %25, %22, %13
  %27 = phi i32 [ %14, %13 ], [ %23, %22 ], [ %2, %25 ]
  call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_readme_read(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #5 {
  %5 = tail call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull @readme_msg, i32 noundef 4394) #34
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_saved_cmdlines_open(ptr nocapture noundef readnone %0, ptr noundef %1) #5 {
  %3 = load i1, ptr @tracing_disabled, align 4
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @tracing_saved_cmdlines_seq_ops) #34
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i32 [ %5, %4 ], [ -19, %2 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @saved_cmdlines_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !89
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @trace_cmdline_lock) #34, !srcloc !13
  %3 = tail call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr nonnull @trace_cmdline_lock, i32 65536) #34, !srcloc !40
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = lshr i32 %4, 16
  %6 = and i32 %4, 65535
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %8, %2
  tail call void asm sideeffect "wfe", "~{memory}"() #34, !srcloc !41
  %9 = load volatile i16, ptr @trace_cmdline_lock, align 4
  %10 = zext i16 %9 to i32
  %11 = icmp eq i32 %5, %10
  br i1 %11, label %12, label %8

12:                                               ; preds = %8, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !42
  %13 = load ptr, ptr @savedcmd, align 4
  %14 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load i64, ptr %1, align 8
  %17 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %18 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %13, i32 0, i32 2
  br label %19

19:                                               ; preds = %43, %12
  %20 = phi i64 [ 0, %12 ], [ %32, %43 ]
  %21 = phi ptr [ %15, %12 ], [ %37, %43 ]
  %22 = icmp sgt i64 %20, %16
  br i1 %22, label %45, label %23

23:                                               ; preds = %19
  %24 = icmp eq i64 %20, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load i32, ptr %17, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25, %23
  %29 = getelementptr i32, ptr %21, i32 1
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi ptr [ %29, %28 ], [ %21, %25 ]
  %32 = add i64 %20, 1
  %33 = load i32, ptr %18, align 4
  %34 = getelementptr i32, ptr %15, i32 %33
  %35 = icmp ult ptr %31, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %40, %30
  %37 = phi ptr [ %41, %40 ], [ %31, %30 ]
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = getelementptr i32, ptr %37, i32 1
  %42 = icmp ult ptr %41, %34
  br i1 %42, label %36, label %45

43:                                               ; preds = %36
  %44 = icmp eq ptr %37, null
  br i1 %44, label %45, label %19

45:                                               ; preds = %43, %40, %30, %19
  %46 = phi ptr [ null, %40 ], [ null, %30 ], [ %21, %19 ], [ null, %43 ]
  ret ptr %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @saved_cmdlines_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #5 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !43
  %3 = load i16, ptr @trace_cmdline_lock, align 4
  %4 = add i16 %3, 1
  store i16 %4, ptr @trace_cmdline_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #34, !srcloc !44
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #34, !srcloc !45
  tail call void asm sideeffect "", "~{memory}"() #34, !srcloc !90
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @saved_cmdlines_next(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef %2) #31 {
  %4 = load i64, ptr %2, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6, %3
  %11 = getelementptr i32, ptr %1, i32 1
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %11, %10 ], [ %1, %6 ]
  %14 = add i64 %4, 1
  store i64 %14, ptr %2, align 8
  %15 = load ptr, ptr @savedcmd, align 4
  %16 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %15, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i32, ptr %17, i32 %19
  %21 = icmp ult ptr %13, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %26, %12
  %23 = phi ptr [ %27, %26 ], [ %13, %12 ]
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr i32, ptr %23, i32 1
  %28 = icmp ult ptr %27, %20
  br i1 %28, label %22, label %29

29:                                               ; preds = %26, %22, %12
  %30 = phi ptr [ null, %12 ], [ null, %26 ], [ %23, %22 ]
  ret ptr %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @saved_cmdlines_show(ptr noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #34
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !26
  %4 = load i32, ptr %1, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %3, ptr noundef nonnull align 1 dereferenceable(7) @.str.78, i32 7, i1 false) #34
  br label %34

7:                                                ; preds = %2
  %8 = icmp slt i32 %4, 0
  %9 = load i1, ptr @__trace_find_cmdline.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !11

12:                                               ; preds = %7
  store i1 true, ptr @__trace_find_cmdline.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2432, i32 noundef 9, ptr noundef null) #34
  br label %13

13:                                               ; preds = %12, %7
  br i1 %8, label %14, label %15

14:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, ptr noundef nonnull align 1 dereferenceable(6) @.str.79, i32 6, i1 false) #34
  br label %34

15:                                               ; preds = %13
  %16 = and i32 %4, 32767
  %17 = load ptr, ptr @savedcmd, align 4
  %18 = getelementptr [32769 x i32], ptr %17, i32 0, i32 %16
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %17, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i32, ptr %23, i32 %19
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %4
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %17, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = shl i32 %19, 4
  %31 = getelementptr i8, ptr %29, i32 %30
  %32 = call i32 @strlcpy(ptr noundef nonnull %3, ptr noundef %31, i32 noundef 16) #34
  br label %34

33:                                               ; preds = %21, %15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, ptr noundef nonnull align 1 dereferenceable(6) @.str.80, i32 6, i1 false) #34
  br label %34

34:                                               ; preds = %33, %27, %14, %6
  %35 = load i32, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.203, i32 noundef %35, ptr noundef nonnull %3) #34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #34
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_saved_cmdlines_size_read(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #5 {
  %5 = alloca [64 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #34
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @trace_cmdline_lock) #34, !srcloc !13
  %6 = tail call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr nonnull @trace_cmdline_lock, i32 65536) #34, !srcloc !40
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = lshr i32 %7, 16
  %9 = and i32 %7, 65535
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %11, %4
  tail call void asm sideeffect "wfe", "~{memory}"() #34, !srcloc !41
  %12 = load volatile i16, ptr @trace_cmdline_lock, align 4
  %13 = zext i16 %12 to i32
  %14 = icmp eq i32 %8, %13
  br i1 %14, label %15, label %11

15:                                               ; preds = %11, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !42
  %16 = load ptr, ptr @savedcmd, align 4
  %17 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %5, i32 noundef 64, ptr noundef nonnull @.str.204, i32 noundef %18) #34
  call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !43
  %20 = load i16, ptr @trace_cmdline_lock, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr @trace_cmdline_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #34, !srcloc !44
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #34, !srcloc !45
  %22 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef %19) #34
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #34
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_saved_cmdlines_size_write(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #5 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #34
  store i32 0, ptr %5, align 4, !annotation !26
  %6 = call i32 @kstrtoul_from_user(ptr noundef %1, i32 noundef %2, i32 noundef 10, ptr noundef nonnull %5) #34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %50

8:                                                ; preds = %4
  %9 = load i32, ptr %5, align 4
  %10 = add i32 %9, -32769
  %11 = icmp ult i32 %10, -32768
  br i1 %11, label %50, label %12

12:                                               ; preds = %8
  %13 = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 131092, i32 noundef 3264, i32 noundef 6) #37
  %14 = icmp eq ptr %13, null
  br i1 %14, label %50, label %15

15:                                               ; preds = %12
  %16 = shl nuw nsw i32 %9, 2
  %17 = call noalias align 64 ptr @__kmalloc(i32 noundef %16, i32 noundef 3264) #37
  %18 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %13, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  %19 = icmp eq ptr %17, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = shl nuw nsw i32 %9, 4
  %22 = call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef 3264) #37
  %23 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %13, i32 0, i32 4
  store ptr %22, ptr %23, align 16
  %24 = icmp eq ptr %22, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  call void @kfree(ptr noundef nonnull %17) #34
  br label %26

26:                                               ; preds = %25, %15
  call void @kfree(ptr noundef nonnull %13) #34
  br label %50

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %13, i32 0, i32 3
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %13, i32 0, i32 2
  store i32 %9, ptr %29, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4096 dereferenceable(131076) %13, i8 -1, i32 131076, i1 false) #34
  call void @llvm.memset.p0.i32(ptr nonnull align 64 %17, i8 -1, i32 %16, i1 false) #34
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @trace_cmdline_lock) #34, !srcloc !13
  %30 = call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr nonnull @trace_cmdline_lock, i32 65536) #34, !srcloc !40
  %31 = extractvalue { i32, i32, i32 } %30, 0
  %32 = lshr i32 %31, 16
  %33 = and i32 %31, 65535
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %35, %27
  call void asm sideeffect "wfe", "~{memory}"() #34, !srcloc !41
  %36 = load volatile i16, ptr @trace_cmdline_lock, align 4
  %37 = zext i16 %36 to i32
  %38 = icmp eq i32 %32, %37
  br i1 %38, label %39, label %35

39:                                               ; preds = %35, %27
  call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !42
  %40 = load ptr, ptr @savedcmd, align 4
  store ptr %13, ptr @savedcmd, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !43
  %41 = load i16, ptr @trace_cmdline_lock, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr @trace_cmdline_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #34, !srcloc !44
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #34, !srcloc !45
  %43 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %40, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  call void @kfree(ptr noundef %44) #34
  %45 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %40, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  call void @kfree(ptr noundef %46) #34
  call void @kfree(ptr noundef %40) #34
  %47 = zext i32 %2 to i64
  %48 = load i64, ptr %3, align 8
  %49 = add i64 %48, %47
  store i64 %49, ptr %3, align 8
  br label %50

50:                                               ; preds = %39, %26, %12, %8, %4
  %51 = phi i32 [ %2, %39 ], [ %6, %4 ], [ -22, %8 ], [ -12, %26 ], [ -12, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #34
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_saved_cmdlines_buffer(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #34
  %4 = getelementptr inbounds %struct.saved_cmdlines_buffer, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #34
  tail call void @kfree(ptr noundef %0) #34
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracing_saved_tgids_open(ptr nocapture noundef readnone %0, ptr noundef %1) #5 {
  %3 = load i1, ptr @tracing_disabled, align 4
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @tracing_saved_tgids_seq_ops) #34
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i32 [ %5, %4 ], [ -19, %2 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @saved_tgids_start(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i32
  %5 = load volatile ptr, ptr @tgid_map, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !48
  %6 = icmp eq ptr %5, null
  %7 = load i32, ptr @tgid_map_max, align 4
  %8 = icmp ult i32 %7, %4
  %9 = select i1 %6, i1 true, i1 %8, !prof !11
  %10 = getelementptr i32, ptr %5, i32 %4
  %11 = select i1 %9, ptr null, ptr %10, !prof !11
  ret ptr %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @saved_tgids_stop(ptr nocapture noundef %0, ptr nocapture noundef %1) #10 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @saved_tgids_next(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #5 {
  %4 = load i64, ptr %2, align 8
  %5 = add i64 %4, 1
  store i64 %5, ptr %2, align 8
  %6 = trunc i64 %5 to i32
  %7 = load volatile ptr, ptr @tgid_map, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #34, !srcloc !48
  %8 = icmp eq ptr %7, null
  %9 = load i32, ptr @tgid_map_max, align 4
  %10 = icmp ult i32 %9, %6
  %11 = select i1 %8, i1 true, i1 %10, !prof !11
  %12 = getelementptr i32, ptr %7, i32 %6
  %13 = select i1 %11, ptr null, ptr %12, !prof !11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @saved_tgids_show(ptr noundef %0, ptr noundef %1) #5 {
  %3 = load i32, ptr %1, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = ptrtoint ptr %1 to i32
  %7 = load ptr, ptr @tgid_map, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = sub i32 %6, %8
  %10 = ashr exact i32 %9, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.205, i32 noundef %10, i32 noundef %3) #34
  br label %11

11:                                               ; preds = %5, %2
  %12 = phi i32 [ 0, %5 ], [ 1, %2 ]
  ret i32 %12
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @eval_map_work_func(ptr nocapture noundef readnone %0) #11 section ".init.text" {
  br i1 icmp slt (i32 sdiv (i32 sub (i32 ptrtoint (ptr @__stop_ftrace_eval_maps to i32), i32 ptrtoint (ptr @__start_ftrace_eval_maps to i32)), i32 4), i32 1), label %3, label %2

2:                                                ; preds = %1
  tail call void @trace_event_eval_update(ptr noundef nonnull @__start_ftrace_eval_maps, i32 noundef sdiv (i32 sub (i32 ptrtoint (ptr @__stop_ftrace_eval_maps to i32), i32 ptrtoint (ptr @__start_ftrace_eval_maps to i32)), i32 4)) #34
  br label %3

3:                                                ; preds = %2, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_eval_update(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_module_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #5 {
  %4 = icmp eq i32 %1, 1
  br i1 %4, label %5, label %17

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.module, ptr %2, i32 0, i32 48
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = tail call zeroext i1 @trace_module_has_bad_taint(ptr noundef %2) #34
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %6, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.module, ptr %2, i32 0, i32 47
  %16 = load ptr, ptr %15, align 8
  tail call void @trace_event_eval_update(ptr noundef %16, i32 noundef %12) #34
  br label %17

17:                                               ; preds = %14, %11, %9, %5, %3
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @trace_module_has_bad_taint(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tracefs_create_instance_dir(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @instance_mkdir(ptr noundef %0) #5 {
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #34
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %2 = load ptr, ptr @ftrace_trace_arrays, align 4
  %3 = icmp eq ptr %2, @ftrace_trace_arrays
  br i1 %3, label %17, label %4

4:                                                ; preds = %12, %1
  %5 = phi ptr [ %13, %12 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.trace_array, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @strcmp(ptr noundef nonnull %7, ptr noundef %0) #34
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %4
  %13 = load ptr, ptr %5, align 4
  %14 = icmp eq ptr %13, @ftrace_trace_arrays
  br i1 %14, label %17, label %4

15:                                               ; preds = %9
  %16 = icmp eq ptr %5, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %15, %12, %1
  %18 = tail call fastcc ptr @trace_array_create(ptr noundef %0)
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  %20 = ptrtoint ptr %18 to i32
  %21 = select i1 %19, i32 %20, i32 0
  br label %22

22:                                               ; preds = %17, %15
  %23 = phi i32 [ -17, %15 ], [ %21, %17 ]
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #34
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @instance_rmdir(ptr nocapture noundef readonly %0) #5 {
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #34
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #34
  %2 = load ptr, ptr @ftrace_trace_arrays, align 4
  %3 = icmp eq ptr %2, @ftrace_trace_arrays
  br i1 %3, label %19, label %4

4:                                                ; preds = %12, %1
  %5 = phi ptr [ %13, %12 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.trace_array, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @strcmp(ptr noundef nonnull %7, ptr noundef %0) #34
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %4
  %13 = load ptr, ptr %5, align 4
  %14 = icmp eq ptr %13, @ftrace_trace_arrays
  br i1 %14, label %19, label %4

15:                                               ; preds = %9
  %16 = icmp eq ptr %5, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = tail call fastcc i32 @__remove_instance(ptr noundef nonnull %5)
  br label %19

19:                                               ; preds = %17, %15, %12, %1
  %20 = phi i32 [ %18, %17 ], [ -19, %15 ], [ -19, %1 ], [ -19, %12 ]
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #34
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #34
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ring_buffer_consume(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_rb_cpu_prepare(i32 noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_die_notifier(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @test_can_verify() unnamed_addr #5 {
  %1 = tail call i32 (ptr, ...) @test_can_verify_check(ptr undef, i32 noundef 0, i32 noundef 1)
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %10

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216) #38
  %5 = load i8, ptr @static_key_initialized, align 1, !range !12
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8, !prof !11

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 290, i32 noundef 9, ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.static_key_slow_inc, ptr noundef nonnull @trace_no_verify) #34
  br label %8

8:                                                ; preds = %7, %3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @trace_no_verify) #34, !srcloc !13
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @trace_no_verify, ptr nonnull @trace_no_verify, i32 1, ptr nonnull elementtype(i32) @trace_no_verify) #34, !srcloc !14
  br label %10

10:                                               ; preds = %8, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_panic_handler(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #5 {
  %4 = load i32, ptr @ftrace_dump_on_oops, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @ftrace_dump(i32 noundef %4)
  br label %7

7:                                                ; preds = %6, %3
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_die_handler(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #5 {
  %4 = icmp eq i32 %1, 1
  %5 = load i32, ptr @ftrace_dump_on_oops, align 4
  %6 = icmp ne i32 %5, 0
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @ftrace_dump(i32 noundef %5)
  br label %9

9:                                                ; preds = %8, %3
  ret i32 1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @test_can_verify_check(ptr nocapture readnone %0, ...) unnamed_addr #33 {
  %2 = alloca [16 x i8], align 1
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #34
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #34
  store i32 0, ptr %3, align 4, !annotation !26
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load i32, ptr %3, align 4
  %5 = insertvalue [1 x i32] poison, i32 %4, 0
  %6 = call i32 @vsnprintf(ptr noundef nonnull %2, i32 noundef 16, ptr noundef nonnull @.str.217, [1 x i32] %5)
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds i8, ptr %7, i32 4
  store ptr %8, ptr %3, align 4
  %9 = load i32, ptr %7, align 4
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #34
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #21

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #28

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #28

attributes #0 = { cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nocallback nofree nosync nounwind willreturn }
attributes #19 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #21 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #22 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #23 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #24 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #25 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #26 = { nounwind readonly }
attributes #27 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #28 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #29 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #30 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #31 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #32 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #33 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #34 = { nounwind }
attributes #35 = { nounwind readnone }
attributes #36 = { nounwind allocsize(2) }
attributes #37 = { nounwind allocsize(0) }
attributes #38 = { cold nounwind }
attributes #39 = { cold }
attributes #40 = { nounwind allocsize(1) }
attributes #41 = { nounwind readonly willreturn }

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
!9 = !{i64 965210, i64 965237, i64 965259, i64 965287}
!10 = !{i64 965618, i64 965645, i64 965678, i64 965699, i64 965726, i64 965752}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i8 0, i8 2}
!13 = !{i64 1099971, i64 2148589942, i64 2148589968, i64 2148590015, i64 2148590037, i64 2148590065, i64 2148590085}
!14 = !{i64 2148601357, i64 2148601383, i64 2148601412, i64 2148601446, i64 2148601477, i64 2148601500}
!15 = !{i64 2154555883}
!16 = !{i64 2154562935}
!17 = !{i64 2154569799}
!18 = !{i64 2148603714, i64 2148603740, i64 2148603769, i64 2148603803, i64 2148603834, i64 2148603857}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2154457070}
!21 = !{i64 1024349}
!22 = !{i64 2154473314}
!23 = !{i64 1005649, i64 1005710}
!24 = !{i64 1008666}
!25 = !{i64 2154502610}
!26 = !{!"auto-init"}
!27 = !{i64 4257312}
!28 = !{i64 4257509}
!29 = !{i64 2151742788}
!30 = !{i64 2154714128, i64 2154714408, i64 2154714742, i64 2154715076}
!31 = !{i64 2154726115, i64 2154726395, i64 2154726729, i64 2154727063}
!32 = !{i64 2154738176, i64 2154738456, i64 2154738790, i64 2154739124}
!33 = !{i64 2154585767}
!34 = !{i64 2154592583}
!35 = !{i64 1008381}
!36 = !{i64 2154637981}
!37 = !{i64 2154654225}
!38 = !{i64 2154683521}
!39 = !{i64 2154699614}
!40 = !{i64 1774990, i64 1775013, i64 1775033, i64 1775057, i64 1775073}
!41 = !{i64 2149263328}
!42 = !{i64 2149266444}
!43 = !{i64 2149267037}
!44 = !{i64 2149262861}
!45 = !{i64 2149262936, i64 2149262963, i64 2149263010, i64 2149263032, i64 2149263060, i64 2149263080}
!46 = !{i64 2154759370}
!47 = !{i64 2154759418}
!48 = !{i64 2154764935}
!49 = !{i64 1775493, i64 1775516, i64 1775534, i64 1775566, i64 1775590}
!50 = !{i64 2149266742}
!51 = !{i64 2154789292}
!52 = !{i64 2154796086}
!53 = !{i64 2154815115}
!54 = !{i64 2154815175}
!55 = !{i64 2154817792}
!56 = !{i64 2154817862}
!57 = !{i64 2154817922}
!58 = !{i64 2154796205}
!59 = !{i64 2154817970}
!60 = !{!"branch_weights", i32 2002, i32 2000}
!61 = !{i64 2154840871}
!62 = !{i64 2154543153}
!63 = !{i64 2154550666}
!64 = !{i64 2154850730}
!65 = !{i64 2154857120}
!66 = !{i64 2154858360}
!67 = !{i64 2154863885}
!68 = !{i64 2154890762}
!69 = !{i64 2154866677}
!70 = !{i64 2154866715}
!71 = !{i64 2154890832}
!72 = !{i64 2154892129}
!73 = !{i64 2154892194}
!74 = !{i64 1006084}
!75 = !{i64 1005894}
!76 = !{i64 2154918820}
!77 = !{i64 2154975257}
!78 = !{i64 2154991501}
!79 = !{i64 2148699203}
!80 = !{i64 2148602041, i64 2148602073, i64 2148602102, i64 2148602136, i64 2148602167, i64 2148602190}
!81 = !{i64 2148699406}
!82 = !{i64 2151761200, i64 2151761225}
!83 = !{i64 2151761778, i64 2151761803}
!84 = !{i64 2148703037}
!85 = !{i64 2148605172, i64 2148605204, i64 2148605233, i64 2148605267, i64 2148605298, i64 2148605321}
!86 = !{i64 2149616389}
!87 = !{i64 2148602815, i64 2148602847, i64 2148602876, i64 2148602910, i64 2148602941, i64 2148602964}
!88 = !{i64 964923, i64 964950}
!89 = !{i64 2154921201}
!90 = !{i64 2154921261}
