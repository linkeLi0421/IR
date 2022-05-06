; ModuleID = '/llk/IR/kernel/printk/printk.c_pt.bc'
source_filename = "../kernel/printk/printk.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_console_printk:\09\09\09\09\09"
module asm "\09.asciz \09\22console_printk\22\09\09\09\09\09"
module asm "__kstrtabns_console_printk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ignore_console_lock_warning:\09\09\09\09\09"
module asm "\09.asciz \09\22ignore_console_lock_warning\22\09\09\09\09\09"
module asm "__kstrtabns_ignore_console_lock_warning:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_oops_in_progress:\09\09\09\09\09"
module asm "\09.asciz \09\22oops_in_progress\22\09\09\09\09\09"
module asm "__kstrtabns_oops_in_progress:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_console_drivers:\09\09\09\09\09"
module asm "\09.asciz \09\22console_drivers\22\09\09\09\09\09"
module asm "__kstrtabns_console_drivers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_console_set_on_cmdline:\09\09\09\09\09"
module asm "\09.asciz \09\22console_set_on_cmdline\22\09\09\09\09\09"
module asm "__kstrtabns_console_set_on_cmdline:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vprintk_emit:\09\09\09\09\09"
module asm "\09.asciz \09\22vprintk_emit\22\09\09\09\09\09"
module asm "__kstrtabns_vprintk_emit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vprintk_default:\09\09\09\09\09"
module asm "\09.asciz \09\22vprintk_default\22\09\09\09\09\09"
module asm "__kstrtabns_vprintk_default:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__printk:\09\09\09\09\09"
module asm "\09.asciz \09\22_printk\22\09\09\09\09\09"
module asm "__kstrtabns__printk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_console_suspend_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22console_suspend_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_console_suspend_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_console_verbose:\09\09\09\09\09"
module asm "\09.asciz \09\22console_verbose\22\09\09\09\09\09"
module asm "__kstrtabns_console_verbose:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_console_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22console_lock\22\09\09\09\09\09"
module asm "__kstrtabns_console_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_console_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22console_trylock\22\09\09\09\09\09"
module asm "__kstrtabns_console_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_is_console_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22is_console_locked\22\09\09\09\09\09"
module asm "__kstrtabns_is_console_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_console_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22console_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_console_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_console_conditional_schedule:\09\09\09\09\09"
module asm "\09.asciz \09\22console_conditional_schedule\22\09\09\09\09\09"
module asm "__kstrtabns_console_conditional_schedule:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_console_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22console_stop\22\09\09\09\09\09"
module asm "__kstrtabns_console_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_console_start:\09\09\09\09\09"
module asm "\09.asciz \09\22console_start\22\09\09\09\09\09"
module asm "__kstrtabns_console_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_console:\09\09\09\09\09"
module asm "\09.asciz \09\22register_console\22\09\09\09\09\09"
module asm "__kstrtabns_register_console:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_console:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_console\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_console:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___printk_ratelimit:\09\09\09\09\09"
module asm "\09.asciz \09\22__printk_ratelimit\22\09\09\09\09\09"
module asm "__kstrtabns___printk_ratelimit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_printk_timed_ratelimit:\09\09\09\09\09"
module asm "\09.asciz \09\22printk_timed_ratelimit\22\09\09\09\09\09"
module asm "__kstrtabns_printk_timed_ratelimit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmsg_dump_register:\09\09\09\09\09"
module asm "\09.asciz \09\22kmsg_dump_register\22\09\09\09\09\09"
module asm "__kstrtabns_kmsg_dump_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmsg_dump_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22kmsg_dump_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_kmsg_dump_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmsg_dump_reason_str:\09\09\09\09\09"
module asm "\09.asciz \09\22kmsg_dump_reason_str\22\09\09\09\09\09"
module asm "__kstrtabns_kmsg_dump_reason_str:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmsg_dump_get_line:\09\09\09\09\09"
module asm "\09.asciz \09\22kmsg_dump_get_line\22\09\09\09\09\09"
module asm "__kstrtabns_kmsg_dump_get_line:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmsg_dump_get_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22kmsg_dump_get_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_kmsg_dump_get_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmsg_dump_rewind:\09\09\09\09\09"
module asm "\09.asciz \09\22kmsg_dump_rewind\22\09\09\09\09\09"
module asm "__kstrtabns_kmsg_dump_rewind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___printk_wait_on_cpu_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22__printk_wait_on_cpu_lock\22\09\09\09\09\09"
module asm "__kstrtabns___printk_wait_on_cpu_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___printk_cpu_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22__printk_cpu_trylock\22\09\09\09\09\09"
module asm "__kstrtabns___printk_cpu_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___printk_cpu_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22__printk_cpu_unlock\22\09\09\09\09\09"
module asm "__kstrtabns___printk_cpu_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.0, %struct.trace_event, ptr, ptr, %union.anon.2, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.0 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.2 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.printk_ringbuffer = type { %struct.prb_desc_ring, %struct.prb_data_ring, %struct.atomic_t }
%struct.prb_desc_ring = type { i32, ptr, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.prb_data_ring = type { i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.latched_seq = type { %struct.seqcount_latch_t, [2 x i64] }
%struct.seqcount_latch_t = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.74 }
%union.anon.74 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.23 }
%struct.llist_node = type { ptr }
%union.anon.23 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type {}
%struct.prb_desc = type { %struct.atomic_t, %struct.prb_data_blk_lpos }
%struct.prb_data_blk_lpos = type { i32, i32 }
%struct.printk_info = type { i64, i64, i16, i8, i8, i32, %struct.dev_printk_info }
%struct.dev_printk_info = type { [16 x i8], [48 x i8] }
%struct.cpumask = type { [1 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.console_cmdline = type { [16 x i8], i32, i8, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.lockdep_map = type {}
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_console = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.devkmsg_user = type { %struct.atomic64_t, %struct.ratelimit_state, %struct.mutex, [8192 x i8], %struct.printk_info, [8192 x i8], %struct.printk_record }
%struct.atomic64_t = type { i64 }
%struct.printk_record = type { ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.66, %union.anon.67 }
%union.anon.66 = type { ptr }
%union.anon.67 = type { i64 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.60, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.60 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.__va_list = type { ptr }
%struct.prb_reserved_entry = type { ptr, i32, i32, i32 }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.kmsg_dumper = type { %struct.list_head, ptr, i32, i8 }
%struct.kmsg_dump_iter = type { i64, i64 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_console = internal constant [8 x i8] c"console\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_console = dso_local global %struct.static_call_key { ptr @__traceiter_console }, align 4
@__tracepoint_console = dso_local global %struct.tracepoint { ptr @__tpstrtab_console, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_console, ptr null, ptr @__traceiter_console, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_console = internal constant ptr @__tracepoint_console, section "__tracepoints_ptrs", align 4
@str__printk__trace_system_name = internal constant [7 x i8] c"printk\00", align 1
@trace_event_fields_console = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.65, %union.anon { %struct.anon { ptr @.str.66, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_console = internal global %struct.trace_event_class { ptr @str__printk__trace_system_name, ptr @trace_event_raw_event_console, ptr @perf_trace_console, ptr @trace_event_reg, ptr @trace_event_fields_console, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_console, i64 24), ptr getelementptr (i8, ptr @event_class_console, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_console = internal global %struct.trace_event_functions { ptr @trace_raw_output_console, ptr null, ptr null, ptr null }, align 4
@print_fmt_console = internal global [21 x i8] c"\22%s\22, __get_str(msg)\00", align 1
@event_console = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_console, %union.anon.0 { ptr @__tracepoint_console }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_console }, ptr @print_fmt_console, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_console = internal global ptr @event_console, section "_ftrace_events", align 4
@console_printk = dso_local global [4 x i32] [i32 7, i32 4, i32 1, i32 7], align 4
@__kstrtab_console_printk = external dso_local constant [0 x i8], align 1
@__kstrtabns_console_printk = external dso_local constant [0 x i8], align 1
@__ksymtab_console_printk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @console_printk to i32), ptr @__kstrtab_console_printk, ptr @__kstrtabns_console_printk }, section "___ksymtab_gpl+console_printk", align 4
@ignore_console_lock_warning = dso_local global %struct.atomic_t zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab_ignore_console_lock_warning = external dso_local constant [0 x i8], align 1
@__kstrtabns_ignore_console_lock_warning = external dso_local constant [0 x i8], align 1
@__ksymtab_ignore_console_lock_warning = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ignore_console_lock_warning to i32), ptr @__kstrtab_ignore_console_lock_warning, ptr @__kstrtabns_ignore_console_lock_warning }, section "___ksymtab+ignore_console_lock_warning", align 4
@oops_in_progress = dso_local global i32 0, align 4
@__kstrtab_oops_in_progress = external dso_local constant [0 x i8], align 1
@__kstrtabns_oops_in_progress = external dso_local constant [0 x i8], align 1
@__ksymtab_oops_in_progress = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @oops_in_progress to i32), ptr @__kstrtab_oops_in_progress, ptr @__kstrtabns_oops_in_progress }, section "___ksymtab+oops_in_progress", align 4
@console_drivers = dso_local global ptr null, align 4
@__kstrtab_console_drivers = external dso_local constant [0 x i8], align 1
@__kstrtabns_console_drivers = external dso_local constant [0 x i8], align 1
@__ksymtab_console_drivers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @console_drivers to i32), ptr @__kstrtab_console_drivers, ptr @__kstrtabns_console_drivers }, section "___ksymtab_gpl+console_drivers", align 4
@__setup_str_control_devkmsg = internal constant [16 x i8] c"printk.devkmsg=\00", section ".init.rodata", align 1
@__setup_control_devkmsg = internal global %struct.obs_kernel_param { ptr @__setup_str_control_devkmsg, ptr @control_devkmsg, i32 0 }, section ".init.setup", align 4
@devkmsg_log_str = dso_local global [10 x i8] c"ratelimit\00", align 4
@devkmsg_log = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@console_set_on_cmdline = dso_local global i32 0, align 4
@__kstrtab_console_set_on_cmdline = external dso_local constant [0 x i8], align 1
@__kstrtabns_console_set_on_cmdline = external dso_local constant [0 x i8], align 1
@__ksymtab_console_set_on_cmdline = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @console_set_on_cmdline to i32), ptr @__kstrtab_console_set_on_cmdline, ptr @__kstrtabns_console_set_on_cmdline }, section "___ksymtab+console_set_on_cmdline", align 4
@log_wait = dso_local global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @log_wait, i64 4), ptr getelementptr (i8, ptr @log_wait, i64 4) } }, align 4
@__printk_percpu_data_ready = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@log_buf = internal unnamed_addr global ptr @__log_buf, align 4
@log_buf_len = internal unnamed_addr global i32 131072, align 4
@dmesg_restrict = dso_local local_unnamed_addr global i32 0, align 4
@kmsg_fops = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @devkmsg_llseek, ptr @devkmsg_read, ptr null, ptr null, ptr @devkmsg_write, ptr null, ptr null, ptr null, ptr @devkmsg_poll, ptr null, ptr null, ptr null, i32 0, ptr @devkmsg_open, ptr null, ptr @devkmsg_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [16 x i8] c"SYMBOL(%s)=%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"prb\00", align 1
@prb = internal global ptr @printk_rb_static, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"printk_rb_static\00", align 1
@printk_rb_static = internal global %struct.printk_ringbuffer { %struct.prb_desc_ring { i32 12, ptr @_printk_rb_static_descs, ptr @_printk_rb_static_infos, %struct.atomic_t { i32 1073737727 }, %struct.atomic_t { i32 1073737727 } }, %struct.prb_data_ring { i32 17, ptr @__log_buf, %struct.atomic_t { i32 -131072 }, %struct.atomic_t { i32 -131072 } }, %struct.atomic_t zeroinitializer }, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"clear_seq\00", align 1
@clear_seq = internal global %struct.latched_seq zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"SIZE(%s)=%lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"printk_ringbuffer\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"OFFSET(%s.%s)=%lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"desc_ring\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"text_data_ring\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"prb_desc_ring\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"count_bits\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"descs\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"infos\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"head_id\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"tail_id\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"prb_desc\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"state_var\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"text_blk_lpos\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"prb_data_blk_lpos\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"printk_info\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"seq\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"ts_nsec\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"text_len\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"caller_id\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"dev_info\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"dev_printk_info\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"subsystem\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"LENGTH(%s)=%lu\0A\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"printk_info_subsystem\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"printk_info_device\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"prb_data_ring\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"size_bits\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"head_lpos\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"tail_lpos\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"atomic_long_t\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"counter\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"latched_seq\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@__setup_str_log_buf_len_setup = internal constant [12 x i8] c"log_buf_len\00", section ".init.rodata", align 1
@__setup_log_buf_len_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_log_buf_len_setup, ptr @log_buf_len_setup, i32 1 }, section ".init.setup", align 4
@__log_buf = internal global [131072 x i8] zeroinitializer, align 4
@new_log_buf_len = internal unnamed_addr global i32 0, section ".init.data", align 4
@.str.43 = private unnamed_addr constant [42 x i8] c"\013printk: new_log_buf_len: %lu too small\0A\00", align 1
@.str.44 = private unnamed_addr constant [53 x i8] c"\013printk: log_buf_len: %lu text bytes not available\0A\00", align 1
@.str.45 = private unnamed_addr constant [53 x i8] c"\013printk: log_buf_len: %zu desc bytes not available\0A\00", align 1
@.str.46 = private unnamed_addr constant [53 x i8] c"\013printk: log_buf_len: %zu info bytes not available\0A\00", align 1
@setup_text_buf = internal global [992 x i8] zeroinitializer, section ".init.data", align 1
@printk_rb_dynamic = internal global %struct.printk_ringbuffer zeroinitializer, align 4
@.str.47 = private unnamed_addr constant [33 x i8] c"\013printk: dropped %llu messages\0A\00", align 1
@.str.48 = private unnamed_addr constant [33 x i8] c"\016printk: log_buf_len: %u bytes\0A\00", align 1
@.str.49 = private unnamed_addr constant [40 x i8] c"\016printk: early log buf free: %u(%u%%)\0A\00", align 1
@__setup_str_ignore_loglevel_setup = internal constant [16 x i8] c"ignore_loglevel\00", section ".init.rodata", align 1
@__setup_ignore_loglevel_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_ignore_loglevel_setup, ptr @ignore_loglevel_setup, i32 1 }, section ".init.setup", align 4
@__param_str_ignore_loglevel = internal constant [23 x i8] c"printk.ignore_loglevel\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@ignore_loglevel = internal global i8 0, section ".data..read_mostly", align 1
@__param_ignore_loglevel = internal constant %struct.kernel_param { ptr @__param_str_ignore_loglevel, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.74 { ptr @ignore_loglevel } }, section "__param", align 4
@__UNIQUE_ID_ignore_logleveltype252 = internal constant [37 x i8] c"printk.parmtype=ignore_loglevel:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_ignore_loglevel253 = internal constant [96 x i8] c"printk.parm=ignore_loglevel:ignore loglevel setting (prints all kernel messages to the console)\00", section ".modinfo", align 1
@__param_str_time = internal constant [12 x i8] c"printk.time\00", align 1
@printk_time = internal global i8 1, align 1
@__param_time = internal constant %struct.kernel_param { ptr @__param_str_time, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.74 { ptr @printk_time } }, section "__param", align 4
@__UNIQUE_ID_timetype254 = internal constant [26 x i8] c"printk.parmtype=time:bool\00", section ".modinfo", align 1
@do_syslog.saved_console_loglevel = internal unnamed_addr global i32 -1, align 4
@syslog_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @syslog_lock, i64 12), ptr getelementptr (i8, ptr @syslog_lock, i64 12) } }, align 4
@syslog_seq = internal unnamed_addr global i64 0, align 8
@syslog_partial = internal unnamed_addr global i32 0, align 4
@syslog_time = internal unnamed_addr global i8 0, align 1
@trunc_msg = internal unnamed_addr constant [12 x i8] c"<truncated>\00", align 1
@suppress_printk = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@__kstrtab_vprintk_emit = external dso_local constant [0 x i8], align 1
@__kstrtabns_vprintk_emit = external dso_local constant [0 x i8], align 1
@__ksymtab_vprintk_emit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vprintk_emit to i32), ptr @__kstrtab_vprintk_emit, ptr @__kstrtabns_vprintk_emit }, section "___ksymtab+vprintk_emit", align 4
@__kstrtab_vprintk_default = external dso_local constant [0 x i8], align 1
@__kstrtabns_vprintk_default = external dso_local constant [0 x i8], align 1
@__ksymtab_vprintk_default = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vprintk_default to i32), ptr @__kstrtab_vprintk_default, ptr @__kstrtabns_vprintk_default }, section "___ksymtab_gpl+vprintk_default", align 4
@__kstrtab__printk = external dso_local constant [0 x i8], align 1
@__kstrtabns__printk = external dso_local constant [0 x i8], align 1
@__ksymtab__printk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_printk to i32), ptr @__kstrtab__printk, ptr @__kstrtabns__printk }, section "___ksymtab+_printk", align 4
@__setup_str_console_msg_format_setup = internal constant [20 x i8] c"console_msg_format=\00", section ".init.rodata", align 1
@__setup_console_msg_format_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_console_msg_format_setup, ptr @console_msg_format_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_console_setup = internal constant [9 x i8] c"console=\00", section ".init.rodata", align 1
@__setup_console_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_console_setup, ptr @console_setup, i32 0 }, section ".init.setup", align 4
@console_suspend_enabled = dso_local global i8 1, align 1
@__kstrtab_console_suspend_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_console_suspend_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_console_suspend_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @console_suspend_enabled to i32), ptr @__kstrtab_console_suspend_enabled, ptr @__kstrtabns_console_suspend_enabled }, section "___ksymtab+console_suspend_enabled", align 4
@__setup_str_console_suspend_disable = internal constant [19 x i8] c"no_console_suspend\00", section ".init.rodata", align 1
@__setup_console_suspend_disable = internal global %struct.obs_kernel_param { ptr @__setup_str_console_suspend_disable, ptr @console_suspend_disable, i32 0 }, section ".init.setup", align 4
@__param_str_console_suspend = internal constant [23 x i8] c"printk.console_suspend\00", align 1
@__param_console_suspend = internal constant %struct.kernel_param { ptr @__param_str_console_suspend, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.74 { ptr @console_suspend_enabled } }, section "__param", align 4
@__UNIQUE_ID_console_suspendtype261 = internal constant [37 x i8] c"printk.parmtype=console_suspend:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_console_suspend262 = internal constant [84 x i8] c"printk.parm=console_suspend:suspend console during suspend and hibernate operations\00", section ".modinfo", align 1
@printk_console_no_auto_verbose = internal global i8 0, align 1
@__kstrtab_console_verbose = external dso_local constant [0 x i8], align 1
@__kstrtabns_console_verbose = external dso_local constant [0 x i8], align 1
@__ksymtab_console_verbose = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @console_verbose to i32), ptr @__kstrtab_console_verbose, ptr @__kstrtabns_console_verbose }, section "___ksymtab_gpl+console_verbose", align 4
@__param_str_console_no_auto_verbose = internal constant [31 x i8] c"printk.console_no_auto_verbose\00", align 1
@__param_console_no_auto_verbose = internal constant %struct.kernel_param { ptr @__param_str_console_no_auto_verbose, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.74 { ptr @printk_console_no_auto_verbose } }, section "__param", align 4
@__UNIQUE_ID_console_no_auto_verbosetype263 = internal constant [45 x i8] c"printk.parmtype=console_no_auto_verbose:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_console_no_auto_verbose264 = internal constant [96 x i8] c"printk.parm=console_no_auto_verbose:Disable console loglevel raise to highest on oops/panic/etc\00", section ".modinfo", align 1
@.str.50 = private unnamed_addr constant [67 x i8] c"\016printk: Suspending console(s) (use no_console_suspend to debug)\0A\00", align 1
@console_suspended = internal unnamed_addr global i1 false, align 4
@console_sem = internal global %struct.semaphore { %struct.raw_spinlock zeroinitializer, i32 1, %struct.list_head { ptr getelementptr (i8, ptr @console_sem, i64 8), ptr getelementptr (i8, ptr @console_sem, i64 8) } }, align 4
@console_locked = internal unnamed_addr global i1 false, align 4
@console_may_schedule = internal unnamed_addr global i1 false, align 4
@__kstrtab_console_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_console_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_console_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @console_lock to i32), ptr @__kstrtab_console_lock, ptr @__kstrtabns_console_lock }, section "___ksymtab+console_lock", align 4
@__kstrtab_console_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns_console_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab_console_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @console_trylock to i32), ptr @__kstrtab_console_trylock, ptr @__kstrtabns_console_trylock }, section "___ksymtab+console_trylock", align 4
@__kstrtab_is_console_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_is_console_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_is_console_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @is_console_locked to i32), ptr @__kstrtab_is_console_locked, ptr @__kstrtabns_is_console_locked }, section "___ksymtab+is_console_locked", align 4
@console_unlock.ext_text = internal global [8192 x i8] zeroinitializer, align 1
@console_unlock.text = internal global [1024 x i8] zeroinitializer, align 1
@console_seq = internal unnamed_addr global i64 0, align 8
@console_dropped = internal unnamed_addr global i32 0, align 4
@exclusive_console = internal unnamed_addr global ptr null, align 4
@exclusive_console_stop_seq = internal unnamed_addr global i64 0, align 8
@nr_ext_console_drivers = internal unnamed_addr global i32 0, align 4
@console_msg_format = internal unnamed_addr global i1 false, align 4
@.str.51 = private unnamed_addr constant [23 x i8] c"kernel/printk/printk.c\00", align 1
@__kstrtab_console_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_console_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_console_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @console_unlock to i32), ptr @__kstrtab_console_unlock, ptr @__kstrtabns_console_unlock }, section "___ksymtab+console_unlock", align 4
@__kstrtab_console_conditional_schedule = external dso_local constant [0 x i8], align 1
@__kstrtabns_console_conditional_schedule = external dso_local constant [0 x i8], align 1
@__ksymtab_console_conditional_schedule = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @console_conditional_schedule to i32), ptr @__kstrtab_console_conditional_schedule, ptr @__kstrtabns_console_conditional_schedule }, section "___ksymtab+console_conditional_schedule", align 4
@__kstrtab_console_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_console_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_console_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @console_stop to i32), ptr @__kstrtab_console_stop, ptr @__kstrtabns_console_stop }, section "___ksymtab+console_stop", align 4
@__kstrtab_console_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_console_start = external dso_local constant [0 x i8], align 1
@__ksymtab_console_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @console_start to i32), ptr @__kstrtab_console_start, ptr @__kstrtabns_console_start }, section "___ksymtab+console_start", align 4
@__setup_str_keep_bootcon_setup = internal constant [13 x i8] c"keep_bootcon\00", section ".init.rodata", align 1
@__setup_keep_bootcon_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_keep_bootcon_setup, ptr @keep_bootcon_setup, i32 1 }, section ".init.setup", align 4
@.str.52 = private unnamed_addr constant [35 x i8] c"console '%s%d' already registered\0A\00", align 1
@.str.53 = private unnamed_addr constant [49 x i8] c"\016printk: Too late to register bootconsole %s%d\0A\00", align 1
@preferred_console = internal unnamed_addr global i32 -1, align 4
@.str.54 = private unnamed_addr constant [36 x i8] c"\016printk: %sconsole [%s%d] enabled\0A\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"boot\00", align 1
@.str.56 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@keep_bootcon = internal unnamed_addr global i1 false, section ".data..read_mostly", align 4
@__kstrtab_register_console = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_console = external dso_local constant [0 x i8], align 1
@__ksymtab_register_console = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_console to i32), ptr @__kstrtab_register_console, ptr @__kstrtabns_register_console }, section "___ksymtab+register_console", align 4
@.str.57 = private unnamed_addr constant [37 x i8] c"\016printk: %sconsole [%s%d] disabled\0A\00", align 1
@__kstrtab_unregister_console = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_console = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_console = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_console to i32), ptr @__kstrtab_unregister_console, ptr @__kstrtabns_unregister_console }, section "___ksymtab+unregister_console", align 4
@__con_initcall_start = external dso_local global [0 x ptr], align 4
@.str.58 = private unnamed_addr constant [8 x i8] c"console\00", align 1
@__con_initcall_end = external dso_local global [0 x ptr], align 4
@__initcall__kmod_printk__266_3218_printk_late_init7 = internal global ptr @printk_late_init, section ".initcall7.init", align 4
@printk_pending = internal global i32 0, section ".data..percpu", align 4
@wake_up_klogd_work = internal global %struct.irq_work { %struct.__call_single_node { %struct.llist_node zeroinitializer, %union.anon.23 { i32 4 } }, ptr @wake_up_klogd_work_func, %struct.rcuwait zeroinitializer }, section ".data..percpu", align 4
@printk_ratelimit_state = dso_local global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__kstrtab___printk_ratelimit = external dso_local constant [0 x i8], align 1
@__kstrtabns___printk_ratelimit = external dso_local constant [0 x i8], align 1
@__ksymtab___printk_ratelimit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__printk_ratelimit to i32), ptr @__kstrtab___printk_ratelimit, ptr @__kstrtabns___printk_ratelimit }, section "___ksymtab+__printk_ratelimit", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_printk_timed_ratelimit = external dso_local constant [0 x i8], align 1
@__kstrtabns_printk_timed_ratelimit = external dso_local constant [0 x i8], align 1
@__ksymtab_printk_timed_ratelimit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @printk_timed_ratelimit to i32), ptr @__kstrtab_printk_timed_ratelimit, ptr @__kstrtabns_printk_timed_ratelimit }, section "___ksymtab+printk_timed_ratelimit", align 4
@dump_list_lock = internal global %struct.spinlock zeroinitializer, align 4
@dump_list = internal global %struct.list_head { ptr @dump_list, ptr @dump_list }, align 4
@__kstrtab_kmsg_dump_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmsg_dump_register = external dso_local constant [0 x i8], align 1
@__ksymtab_kmsg_dump_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmsg_dump_register to i32), ptr @__kstrtab_kmsg_dump_register, ptr @__kstrtabns_kmsg_dump_register }, section "___ksymtab_gpl+kmsg_dump_register", align 4
@__kstrtab_kmsg_dump_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmsg_dump_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_kmsg_dump_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmsg_dump_unregister to i32), ptr @__kstrtab_kmsg_dump_unregister, ptr @__kstrtabns_kmsg_dump_unregister }, section "___ksymtab_gpl+kmsg_dump_unregister", align 4
@__param_str_always_kmsg_dump = internal constant [24 x i8] c"printk.always_kmsg_dump\00", align 1
@always_kmsg_dump = internal global i8 0, align 1
@__param_always_kmsg_dump = internal constant %struct.kernel_param { ptr @__param_str_always_kmsg_dump, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.74 { ptr @always_kmsg_dump } }, section "__param", align 4
@__UNIQUE_ID_always_kmsg_dumptype267 = internal constant [38 x i8] c"printk.parmtype=always_kmsg_dump:bool\00", section ".modinfo", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"Panic\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"Oops\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"Emergency\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"Shutdown\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@__kstrtab_kmsg_dump_reason_str = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmsg_dump_reason_str = external dso_local constant [0 x i8], align 1
@__ksymtab_kmsg_dump_reason_str = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmsg_dump_reason_str to i32), ptr @__kstrtab_kmsg_dump_reason_str, ptr @__kstrtabns_kmsg_dump_reason_str }, section "___ksymtab_gpl+kmsg_dump_reason_str", align 4
@__kstrtab_kmsg_dump_get_line = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmsg_dump_get_line = external dso_local constant [0 x i8], align 1
@__ksymtab_kmsg_dump_get_line = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmsg_dump_get_line to i32), ptr @__kstrtab_kmsg_dump_get_line, ptr @__kstrtabns_kmsg_dump_get_line }, section "___ksymtab_gpl+kmsg_dump_get_line", align 4
@__kstrtab_kmsg_dump_get_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmsg_dump_get_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_kmsg_dump_get_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmsg_dump_get_buffer to i32), ptr @__kstrtab_kmsg_dump_get_buffer, ptr @__kstrtabns_kmsg_dump_get_buffer }, section "___ksymtab_gpl+kmsg_dump_get_buffer", align 4
@__kstrtab_kmsg_dump_rewind = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmsg_dump_rewind = external dso_local constant [0 x i8], align 1
@__ksymtab_kmsg_dump_rewind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmsg_dump_rewind to i32), ptr @__kstrtab_kmsg_dump_rewind, ptr @__kstrtabns_kmsg_dump_rewind }, section "___ksymtab_gpl+kmsg_dump_rewind", align 4
@printk_cpulock_owner = internal global %struct.atomic_t { i32 -1 }, align 4
@__kstrtab___printk_wait_on_cpu_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns___printk_wait_on_cpu_lock = external dso_local constant [0 x i8], align 1
@__ksymtab___printk_wait_on_cpu_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__printk_wait_on_cpu_lock to i32), ptr @__kstrtab___printk_wait_on_cpu_lock, ptr @__kstrtabns___printk_wait_on_cpu_lock }, section "___ksymtab+__printk_wait_on_cpu_lock", align 4
@printk_cpulock_nested = internal global %struct.atomic_t zeroinitializer, align 4
@__kstrtab___printk_cpu_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns___printk_cpu_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab___printk_cpu_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__printk_cpu_trylock to i32), ptr @__kstrtab___printk_cpu_trylock, ptr @__kstrtabns___printk_cpu_trylock }, section "___ksymtab+__printk_cpu_trylock", align 4
@__kstrtab___printk_cpu_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns___printk_cpu_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab___printk_cpu_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__printk_cpu_unlock to i32), ptr @__kstrtab___printk_cpu_unlock, ptr @__kstrtabns___printk_cpu_unlock }, section "___ksymtab+__printk_cpu_unlock", align 4
@printk_delay_msec = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@.str.65 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"ratelimit\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.71 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.72 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@devkmsg_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"&user->lock\00", align 1
@.str.75 = private unnamed_addr constant [62 x i8] c"\014printk: %s: %d output lines suppressed due to ratelimiting\0A\00", align 1
@_printk_rb_static_descs = internal global [4096 x %struct.prb_desc] [%struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc zeroinitializer, %struct.prb_desc { %struct.atomic_t { i32 -4097 }, %struct.prb_data_blk_lpos { i32 1, i32 1 } }], align 4
@_printk_rb_static_infos = internal global <{ %struct.printk_info, [4095 x %struct.printk_info] }> <{ %struct.printk_info { i64 -4096, i64 0, i16 0, i8 0, i8 0, i32 0, %struct.dev_printk_info zeroinitializer }, [4095 x %struct.printk_info] zeroinitializer }>, align 8
@.str.77 = private unnamed_addr constant [45 x i8] c"\013printk: log_buf over 2G is not supported.\0A\00", align 1
@__cpu_possible_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@.str.78 = private unnamed_addr constant [65 x i8] c"\016printk: log_buf_len individual max cpu contribution: %d bytes\0A\00", align 1
@.str.79 = private unnamed_addr constant [63 x i8] c"\016printk: log_buf_len total cpu_extra contributions: %d bytes\0A\00", align 1
@.str.80 = private unnamed_addr constant [42 x i8] c"\016printk: log_buf_len min size: %d bytes\0A\00", align 1
@.str.81 = private unnamed_addr constant [45 x i8] c"\016printk: debug: ignoring loglevel setting.\0A\00", align 1
@check_syslog_permissions.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.82 = private unnamed_addr constant [96 x i8] c"\014printk: %s (%d): Attempt to access syslog with CAP_SYS_ADMIN but no CAP_SYSLOG (deprecated).\0A\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"<%u>\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"[%5lu.%06lu]\00", align 1
@printk_count_nmi = internal global i8 0, section ".data..percpu", align 1
@printk_count_nmi_early = internal unnamed_addr global i8 0, align 1
@printk_count = internal global i8 0, section ".data..percpu", align 1
@printk_count_early = internal unnamed_addr global i8 0, align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@console_owner_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@console_owner = internal global ptr null, align 4
@console_waiter = internal global i8 0, align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"syslog\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"ttynull\00", align 1
@console_cmdline = internal global [8 x %struct.console_cmdline] zeroinitializer, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.90 = private unnamed_addr constant [19 x i8] c"%u,%llu,%llu,%c%s;\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"SUBSYSTEM\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"DEVICE\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1
@call_console_drivers.dropped_text = internal global [64 x i8] zeroinitializer, align 1
@.str.94 = private unnamed_addr constant [35 x i8] c"** %lu printk messages dropped **\0A\00", align 1
@trace_console_rcuidle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.95 = private unnamed_addr constant [30 x i8] c"include/trace/events/printk.h\00", align 1
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 4
@.str.96 = private unnamed_addr constant [53 x i8] c"\016printk: debug: skip boot console de-registration.\0A\00", align 1
@__tracepoint_initcall_level = external dso_local global %struct.tracepoint, align 4
@__tracepoint_initcall_start = external dso_local global %struct.tracepoint, align 4
@__tracepoint_initcall_finish = external dso_local global %struct.tracepoint, align 4
@.str.98 = private unnamed_addr constant [102 x i8] c"\014printk: bootconsole [%s%d] uses init memory and must be disabled even before the real one is ready\0A\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"printk:dead\00", align 1
@.str.100 = private unnamed_addr constant [14 x i8] c"printk:online\00", align 1
@__init_begin = external dso_local global [0 x i8], align 1
@__init_end = external dso_local global [0 x i8], align 1
@cpuhp_tasks_frozen = external dso_local local_unnamed_addr global i8, align 1
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_always_kmsg_dumptype267, ptr @__UNIQUE_ID_console_no_auto_verbose264, ptr @__UNIQUE_ID_console_no_auto_verbosetype263, ptr @__UNIQUE_ID_console_suspend262, ptr @__UNIQUE_ID_console_suspendtype261, ptr @__UNIQUE_ID_ignore_loglevel253, ptr @__UNIQUE_ID_ignore_logleveltype252, ptr @__UNIQUE_ID_timetype254, ptr @__event_console, ptr @__initcall__kmod_printk__266_3218_printk_late_init7, ptr @__ksymtab___printk_cpu_trylock, ptr @__ksymtab___printk_cpu_unlock, ptr @__ksymtab___printk_ratelimit, ptr @__ksymtab___printk_wait_on_cpu_lock, ptr @__ksymtab__printk, ptr @__ksymtab_console_conditional_schedule, ptr @__ksymtab_console_drivers, ptr @__ksymtab_console_lock, ptr @__ksymtab_console_printk, ptr @__ksymtab_console_set_on_cmdline, ptr @__ksymtab_console_start, ptr @__ksymtab_console_stop, ptr @__ksymtab_console_suspend_enabled, ptr @__ksymtab_console_trylock, ptr @__ksymtab_console_unlock, ptr @__ksymtab_console_verbose, ptr @__ksymtab_ignore_console_lock_warning, ptr @__ksymtab_is_console_locked, ptr @__ksymtab_kmsg_dump_get_buffer, ptr @__ksymtab_kmsg_dump_get_line, ptr @__ksymtab_kmsg_dump_reason_str, ptr @__ksymtab_kmsg_dump_register, ptr @__ksymtab_kmsg_dump_rewind, ptr @__ksymtab_kmsg_dump_unregister, ptr @__ksymtab_oops_in_progress, ptr @__ksymtab_printk_timed_ratelimit, ptr @__ksymtab_register_console, ptr @__ksymtab_unregister_console, ptr @__ksymtab_vprintk_default, ptr @__ksymtab_vprintk_emit, ptr @__param_always_kmsg_dump, ptr @__param_console_no_auto_verbose, ptr @__param_console_suspend, ptr @__param_ignore_loglevel, ptr @__param_time, ptr @__setup_console_msg_format_setup, ptr @__setup_console_setup, ptr @__setup_console_suspend_disable, ptr @__setup_control_devkmsg, ptr @__setup_ignore_loglevel_setup, ptr @__setup_keep_bootcon_setup, ptr @__setup_log_buf_len_setup, ptr @__tracepoint_console, ptr @__tracepoint_ptr_console, ptr @event_class_console, ptr @event_console], section "llvm.metadata"
@switch.table.kmsg_dump_reason_str = private unnamed_addr constant [4 x ptr] [ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], align 4

@sys_syslog = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_syslog

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_console(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_console, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #25
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
define internal void @trace_event_raw_event_console(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #25
  br i1 %13, label %34, label %14

14:                                               ; preds = %12, %9, %3
  %15 = add i32 %2, 13
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %15) #25
  %17 = icmp eq ptr %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %14
  %19 = shl i32 %2, 16
  %20 = add i32 %19, 65548
  %21 = getelementptr inbounds %struct.trace_event_raw_console, ptr %16, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = add i32 %2, -1
  %25 = getelementptr i8, ptr %1, i32 %24
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 10
  %28 = select i1 %27, i32 %24, i32 %2
  br label %29

29:                                               ; preds = %23, %18
  %30 = phi i32 [ 0, %18 ], [ %28, %23 ]
  %31 = getelementptr i8, ptr %16, i32 12
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %31, ptr align 1 %1, i32 %30, i1 false)
  %32 = getelementptr i8, ptr %16, i32 12
  %33 = getelementptr i8, ptr %32, i32 %30
  store i8 0, ptr %33, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #25
  br label %34

34:                                               ; preds = %29, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_console(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = shl i32 %2, 16
  %7 = add i32 %6, 65548
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #25
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #18, !srcloc !12
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load volatile ptr, ptr %15, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %54, label %22

22:                                               ; preds = %19, %3
  %23 = add i32 %2, 24
  %24 = and i32 %23, -8
  %25 = add i32 %24, -4
  %26 = call ptr @perf_trace_buf_alloc(i32 noundef %25, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %27 = icmp eq ptr %26, null
  br i1 %27, label %54, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr %4, align 4
  %30 = call ptr @llvm.returnaddress(i32 0) #25
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %29, i32 0, i32 15
  store i32 %31, ptr %32, align 4
  %33 = call ptr @llvm.frameaddress.p0(i32 0) #25
  %34 = ptrtoint ptr %33 to i32
  %35 = getelementptr [18 x i32], ptr %29, i32 0, i32 11
  store i32 %34, ptr %35, align 4
  %36 = call i32 @llvm.read_register.i32(metadata !0) #25
  %37 = getelementptr [18 x i32], ptr %29, i32 0, i32 13
  store i32 %36, ptr %37, align 4
  %38 = getelementptr [18 x i32], ptr %29, i32 0, i32 16
  store i32 19, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_console, ptr %26, i32 0, i32 1
  store i32 %7, ptr %39, align 4
  %40 = icmp eq i32 %2, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %28
  %42 = add i32 %2, -1
  %43 = getelementptr i8, ptr %1, i32 %42
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 10
  %46 = select i1 %45, i32 %42, i32 %2
  br label %47

47:                                               ; preds = %41, %28
  %48 = phi i32 [ 0, %28 ], [ %46, %41 ]
  %49 = getelementptr i8, ptr %26, i32 12
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %49, ptr align 1 %1, i32 %48, i1 false)
  %50 = getelementptr i8, ptr %26, i32 12
  %51 = getelementptr i8, ptr %50, i32 %48
  store i8 0, ptr %51, align 1
  %52 = load i32, ptr %5, align 4
  %53 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %26, i32 noundef %25, i32 noundef %52, ptr noundef %0, i64 noundef 1, ptr noundef %53, ptr noundef %15, ptr noundef null) #25
  br label %54

54:                                               ; preds = %47, %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @control_devkmsg(ptr noundef readonly %0) #3 section ".init.text" {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @strncmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(3) @.str.68, i32 noundef 2) #25
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @strncmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(4) @.str.69, i32 noundef 3) #25
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @strncmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(10) @.str.70, i32 noundef 9) #25
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %16

12:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(3) @devkmsg_log_str, ptr noundef nonnull align 1 dereferenceable(3) @.str.68, i32 3, i1 false)
  br label %14

13:                                               ; preds = %6
  store i32 6710895, ptr @devkmsg_log_str, align 4
  br label %14

14:                                               ; preds = %13, %12, %9
  %15 = phi i32 [ 6, %13 ], [ 5, %12 ], [ 4, %9 ]
  store i32 %15, ptr @devkmsg_log, align 4
  br label %16

16:                                               ; preds = %14, %9, %1
  %17 = phi i32 [ 0, %14 ], [ 1, %1 ], [ 1, %9 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devkmsg_sysctl_set_loglvl(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %6) #25
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = call i32 @proc_dostring(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #25
  br label %35

10:                                               ; preds = %5
  %11 = load i32, ptr @devkmsg_log, align 4
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = call ptr @strncpy(ptr noundef nonnull %6, ptr noundef nonnull @devkmsg_log_str, i32 noundef 10)
  %16 = call i32 @proc_dostring(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #25
  %17 = icmp ne i32 %16, 0
  %18 = or i1 %7, %17
  br i1 %18, label %35, label %19

19:                                               ; preds = %14
  %20 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) @devkmsg_log_str, ptr noundef nonnull dereferenceable(2) @.str.68, i32 2)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) @devkmsg_log_str, ptr noundef nonnull dereferenceable(3) @.str.69, i32 3)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) @devkmsg_log_str, ptr noundef nonnull dereferenceable(9) @.str.70, i32 9)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25, %22, %19
  %29 = phi i32 [ 1, %19 ], [ 2, %22 ], [ 0, %25 ]
  %30 = phi i32 [ 3, %19 ], [ 4, %22 ], [ 10, %25 ]
  store i32 %29, ptr @devkmsg_log, align 4
  %31 = load i32, ptr %3, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %35, label %33

33:                                               ; preds = %28, %25
  store i32 %11, ptr @devkmsg_log, align 4
  %34 = call ptr @strncpy(ptr noundef nonnull @devkmsg_log_str, ptr noundef nonnull %6, i32 noundef 10)
  br label %35

35:                                               ; preds = %33, %28, %14, %10, %8
  %36 = phi i32 [ -22, %33 ], [ -22, %10 ], [ %16, %14 ], [ 0, %28 ], [ %9, %8 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %6) #25
  ret i32 %36
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dostring(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @printk_percpu_data_ready() local_unnamed_addr #6 {
  %1 = load i1, ptr @__printk_percpu_data_ready, align 1
  ret i1 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @log_buf_addr_get() local_unnamed_addr #6 {
  %1 = load ptr, ptr @log_buf, align 4
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @log_buf_len_get() local_unnamed_addr #6 {
  %1 = load i32, ptr @log_buf_len, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @devkmsg_llseek(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %7
  switch i32 %2, label %27 [
    i32 0, label %10
    i32 3, label %14
    i32 2, label %23
  ]

10:                                               ; preds = %9
  %11 = load ptr, ptr @prb, align 4
  %12 = tail call i64 @prb_first_valid_seq(ptr noundef %11) #25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %5) #25, !srcloc !13
  %13 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr nonnull elementtype(i64) %5, ptr nonnull %5, i64 %12) #25, !srcloc !14
  br label %27

14:                                               ; preds = %14, %9
  %15 = load volatile i32, ptr @clear_seq, align 8
  %16 = and i32 %15, 1
  %17 = getelementptr %struct.latched_seq, ptr @clear_seq, i32 0, i32 1, i32 %16
  %18 = load i64, ptr %17, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !15
  %19 = load volatile i32, ptr @clear_seq, align 8
  %20 = icmp eq i32 %19, %15
  br i1 %20, label %21, label %14

21:                                               ; preds = %14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %5) #25, !srcloc !13
  %22 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr nonnull elementtype(i64) %5, ptr nonnull %5, i64 %18) #25, !srcloc !14
  br label %27

23:                                               ; preds = %9
  %24 = load ptr, ptr @prb, align 4
  %25 = tail call i64 @prb_next_seq(ptr noundef %24) #25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %5) #25, !srcloc !13
  %26 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr nonnull elementtype(i64) %5, ptr nonnull %5, i64 %25) #25, !srcloc !14
  br label %27

27:                                               ; preds = %23, %21, %10, %9, %7, %3
  %28 = phi i64 [ -9, %3 ], [ -29, %7 ], [ 0, %23 ], [ 0, %21 ], [ 0, %10 ], [ -22, %9 ]
  ret i64 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devkmsg_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca [20 x i8], align 1
  %6 = alloca %struct.wait_queue_entry, align 4
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.devkmsg_user, ptr %8, i32 0, i32 6
  %10 = icmp eq ptr %8, null
  br i1 %10, label %166, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.devkmsg_user, ptr %8, i32 0, i32 2
  %13 = tail call i32 @mutex_lock_interruptible(ptr noundef %12) #25
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %166

15:                                               ; preds = %11
  %16 = load ptr, ptr @prb, align 4
  %17 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr nonnull %8, ptr nonnull elementtype(i64) %8) #25, !srcloc !16
  %18 = tail call zeroext i1 @prb_read_valid(ptr noundef %16, i64 noundef %17, ptr noundef %9) #25
  br i1 %18, label %43, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 2048
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %164

24:                                               ; preds = %19
  %25 = load ptr, ptr @prb, align 4
  %26 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr nonnull %8, ptr nonnull elementtype(i64) %8) #25, !srcloc !16
  %27 = tail call zeroext i1 @prb_read_valid(ptr noundef %25, i64 noundef %26, ptr noundef %9) #25
  br i1 %27, label %43, label %28

28:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %6, i32 noundef 0) #25
  %29 = call i32 @prepare_to_wait_event(ptr noundef nonnull @log_wait, ptr noundef nonnull %6, i32 noundef 1) #25
  %30 = load ptr, ptr @prb, align 4
  %31 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr nonnull %8, ptr nonnull elementtype(i64) %8) #25, !srcloc !16
  %32 = call zeroext i1 @prb_read_valid(ptr noundef %30, i64 noundef %31, ptr noundef %9) #25
  br i1 %32, label %41, label %33

33:                                               ; preds = %36, %28
  %34 = phi i32 [ %37, %36 ], [ %29, %28 ]
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  call void @schedule() #25
  %37 = call i32 @prepare_to_wait_event(ptr noundef nonnull @log_wait, ptr noundef nonnull %6, i32 noundef 1) #25
  %38 = load ptr, ptr @prb, align 4
  %39 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr nonnull %8, ptr nonnull elementtype(i64) %8) #25, !srcloc !16
  %40 = call zeroext i1 @prb_read_valid(ptr noundef %38, i64 noundef %39, ptr noundef %9) #25
  br i1 %40, label %41, label %33

41:                                               ; preds = %36, %28
  call void @finish_wait(ptr noundef nonnull @log_wait, ptr noundef nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #25
  br label %43

42:                                               ; preds = %33
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #25
  br label %164

43:                                               ; preds = %41, %24, %15
  %44 = load ptr, ptr %9, align 4
  %45 = load i64, ptr %44, align 8
  %46 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr nonnull %8, ptr nonnull elementtype(i64) %8) #25, !srcloc !16
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %9, align 4
  %50 = load i64, ptr %49, align 8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %8) #25, !srcloc !13
  %51 = call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr nonnull elementtype(i64) %8, ptr nonnull %8, i64 %50) #25, !srcloc !14
  br label %164

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.devkmsg_user, ptr %8, i32 0, i32 3
  %54 = load ptr, ptr %9, align 4
  %55 = getelementptr inbounds %struct.printk_info, ptr %54, i32 0, i32 1
  %56 = load i64, ptr %55, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #25
  %57 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %56, i32 0) #26, !srcloc !17
  %58 = extractvalue { i64, i32 } %57, 0
  %59 = extractvalue { i64, i32 } %57, 1
  %60 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %56, i64 %58, i32 %59) #26, !srcloc !18
  %61 = extractvalue { i64, i32 } %60, 0
  %62 = lshr i64 %61, 9
  %63 = getelementptr inbounds %struct.printk_info, ptr %54, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %5, i8 0, i64 20, i1 false) #25
  %64 = load i8, ptr %63, align 2
  %65 = zext i8 %64 to i32
  %66 = shl nuw nsw i32 %65, 3
  %67 = getelementptr inbounds %struct.printk_info, ptr %54, i32 0, i32 4
  %68 = load i8, ptr %67, align 1
  %69 = lshr i8 %68, 5
  %70 = zext i8 %69 to i32
  %71 = or i32 %66, %70
  %72 = load i64, ptr %54, align 8
  %73 = and i8 %68, 8
  %74 = icmp eq i8 %73, 0
  %75 = select i1 %74, i32 45, i32 99
  %76 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %53, i32 noundef 8192, ptr noundef nonnull @.str.90, i32 noundef %71, i64 noundef %72, i64 noundef %62, i32 noundef %75, ptr noundef nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #25
  %77 = getelementptr i8, ptr %53, i32 %76
  %78 = sub i32 8192, %76
  %79 = getelementptr inbounds %struct.devkmsg_user, ptr %8, i32 0, i32 6, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = load ptr, ptr %9, align 4
  %82 = getelementptr inbounds %struct.printk_info, ptr %81, i32 0, i32 2
  %83 = load i16, ptr %82, align 8
  %84 = zext i16 %83 to i32
  %85 = getelementptr inbounds %struct.printk_info, ptr %81, i32 0, i32 6
  %86 = getelementptr %struct.devkmsg_user, ptr %8, i32 0, i32 4
  %87 = icmp eq i16 %83, 0
  br i1 %87, label %113, label %88

88:                                               ; preds = %52
  %89 = ptrtoint ptr %86 to i32
  br label %90

90:                                               ; preds = %109, %88
  %91 = phi i32 [ 0, %88 ], [ %111, %109 ]
  %92 = phi ptr [ %77, %88 ], [ %110, %109 ]
  %93 = getelementptr i8, ptr %80, i32 %91
  %94 = load i8, ptr %93, align 1
  %95 = add i8 %94, -127
  %96 = icmp ult i8 %95, -95
  %97 = icmp eq i8 %94, 92
  %98 = or i1 %97, %96
  br i1 %98, label %99, label %105

99:                                               ; preds = %90
  %100 = zext i8 %94 to i32
  %101 = ptrtoint ptr %92 to i32
  %102 = sub i32 %89, %101
  %103 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %92, i32 noundef %102, ptr noundef nonnull @.str.93, i32 noundef %100) #25
  %104 = getelementptr i8, ptr %92, i32 %103
  br label %109

105:                                              ; preds = %90
  %106 = icmp ult ptr %92, %86
  br i1 %106, label %107, label %109

107:                                              ; preds = %105
  %108 = getelementptr i8, ptr %92, i32 1
  store i8 %94, ptr %92, align 1
  br label %109

109:                                              ; preds = %107, %105, %99
  %110 = phi ptr [ %104, %99 ], [ %108, %107 ], [ %92, %105 ]
  %111 = add nuw nsw i32 %91, 1
  %112 = icmp eq i32 %111, %84
  br i1 %112, label %113, label %90

113:                                              ; preds = %109, %52
  %114 = phi ptr [ %77, %52 ], [ %110, %109 ]
  %115 = icmp ult ptr %114, %86
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = getelementptr i8, ptr %114, i32 1
  store i8 10, ptr %114, align 1
  br label %118

118:                                              ; preds = %116, %113
  %119 = phi ptr [ %117, %116 ], [ %114, %113 ]
  %120 = ptrtoint ptr %119 to i32
  %121 = ptrtoint ptr %77 to i32
  %122 = sub i32 %120, %121
  %123 = icmp eq ptr %85, null
  br i1 %123, label %134, label %124

124:                                              ; preds = %118
  %125 = getelementptr i8, ptr %77, i32 %122
  %126 = sub i32 %78, %122
  %127 = call fastcc i32 @msg_add_dict_text(ptr noundef %125, i32 noundef %126, ptr noundef nonnull @.str.91, ptr noundef nonnull %85) #25
  %128 = add i32 %127, %122
  %129 = getelementptr i8, ptr %77, i32 %128
  %130 = sub i32 %78, %128
  %131 = getelementptr inbounds %struct.printk_info, ptr %81, i32 0, i32 6, i32 1
  %132 = call fastcc i32 @msg_add_dict_text(ptr noundef %129, i32 noundef %130, ptr noundef nonnull @.str.92, ptr noundef %131) #25
  %133 = add i32 %128, %132
  br label %134

134:                                              ; preds = %124, %118
  %135 = phi i32 [ %133, %124 ], [ %122, %118 ]
  %136 = add i32 %135, %76
  %137 = load ptr, ptr %9, align 4
  %138 = load i64, ptr %137, align 8
  %139 = add i64 %138, 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %8) #25, !srcloc !13
  %140 = call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr nonnull elementtype(i64) %8, ptr nonnull %8, i64 %139) #25, !srcloc !14
  %141 = icmp ugt i32 %136, %2
  br i1 %141, label %164, label %142

142:                                              ; preds = %134
  %143 = icmp slt i32 %136, 0
  %144 = load i1, ptr @check_copy_size.__already_done, align 1
  %145 = xor i1 %144, true
  %146 = select i1 %143, i1 %145, i1 false
  br i1 %146, label %147, label %148, !prof !11

147:                                              ; preds = %142
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 230, i32 noundef 9, ptr noundef null) #25
  br label %148

148:                                              ; preds = %147, %142
  br i1 %143, label %164, label %149, !prof !11

149:                                              ; preds = %148
  %150 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %136, i32 -1090519040) #26, !srcloc !19
  %151 = extractvalue { i32, i32 } %150, 0
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %149
  %154 = tail call ptr @llvm.thread.pointer() #25
  %155 = getelementptr inbounds %struct.thread_info, ptr %154, i32 0, i32 3
  %156 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %155) #18, !srcloc !20
  %157 = and i32 %156, -13
  %158 = or i32 %157, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %158) #25, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #25, !srcloc !22
  %159 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %53, i32 noundef %136) #25
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %156) #25, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #25, !srcloc !22
  br label %160

160:                                              ; preds = %153, %149
  %161 = phi i32 [ %159, %153 ], [ %136, %149 ]
  %162 = icmp eq i32 %161, 0
  %163 = select i1 %162, i32 %136, i32 -14
  br label %164

164:                                              ; preds = %160, %148, %134, %48, %42, %19
  %165 = phi i32 [ -32, %48 ], [ %34, %42 ], [ -11, %19 ], [ -22, %134 ], [ -14, %148 ], [ %163, %160 ]
  call void @mutex_unlock(ptr noundef %12) #25
  br label %166

166:                                              ; preds = %164, %11, %4
  %167 = phi i32 [ %165, %164 ], [ -9, %4 ], [ %13, %11 ]
  ret i32 %167
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devkmsg_write(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @console_printk, i32 0, i32 1), align 4
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq ptr %7, null
  %11 = icmp ugt i32 %9, 992
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %61, label %13

13:                                               ; preds = %2
  %14 = load i32, ptr @devkmsg_log, align 4
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %61

17:                                               ; preds = %13
  %18 = and i32 %14, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.devkmsg_user, ptr %7, i32 0, i32 1
  %22 = tail call ptr @llvm.thread.pointer() #25
  %23 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 85
  %24 = tail call i32 @___ratelimit(ptr noundef %21, ptr noundef %23) #25
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %61, label %26

26:                                               ; preds = %20, %17
  %27 = add nuw nsw i32 %9, 1
  %28 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %27, i32 noundef 3264) #27
  %29 = icmp eq ptr %28, null
  br i1 %29, label %61, label %30

30:                                               ; preds = %26
  %31 = getelementptr i8, ptr %28, i32 %9
  store i8 0, ptr %31, align 1
  %32 = tail call i32 @_copy_from_iter(ptr noundef nonnull %28, i32 noundef %9, ptr noundef %1) #25
  %33 = icmp eq i32 %32, %9
  br i1 %33, label %35, label %34, !prof !10

34:                                               ; preds = %30
  tail call void @iov_iter_revert(ptr noundef %1, i32 noundef %32) #25
  tail call void @kfree(ptr noundef nonnull %28) #25
  br label %61

35:                                               ; preds = %30
  %36 = load i8, ptr %28, align 64
  %37 = icmp eq i8 %36, 60
  br i1 %37, label %38, label %57

38:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store ptr null, ptr %3, align 4
  %39 = getelementptr i8, ptr %28, i32 1
  %40 = call i32 @simple_strtoul(ptr noundef %39, ptr noundef nonnull %3, i32 noundef 10) #25
  %41 = load ptr, ptr %3, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %53, label %43

43:                                               ; preds = %38
  %44 = load i8, ptr %41, align 1
  %45 = icmp eq i8 %44, 62
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = and i32 %40, 7
  %48 = lshr i32 %40, 3
  %49 = and i32 %48, 255
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i32 1, i32 %49
  %52 = getelementptr i8, ptr %41, i32 1
  br label %53

53:                                               ; preds = %46, %43, %38
  %54 = phi ptr [ %52, %46 ], [ %28, %43 ], [ %28, %38 ]
  %55 = phi i32 [ %47, %46 ], [ %4, %43 ], [ %4, %38 ]
  %56 = phi i32 [ %51, %46 ], [ 1, %43 ], [ 1, %38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  br label %57

57:                                               ; preds = %53, %35
  %58 = phi ptr [ %54, %53 ], [ %28, %35 ]
  %59 = phi i32 [ %55, %53 ], [ %4, %35 ]
  %60 = phi i32 [ %56, %53 ], [ 1, %35 ]
  call void (i32, i32, ptr, ...) @devkmsg_emit(i32 noundef %60, i32 noundef %59, ptr undef, ptr noundef %58) #28
  call void @kfree(ptr noundef nonnull %28) #25
  br label %61

61:                                               ; preds = %57, %34, %26, %20, %13, %2
  %62 = phi i32 [ %9, %57 ], [ -14, %34 ], [ -22, %2 ], [ %9, %13 ], [ %9, %20 ], [ -12, %26 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devkmsg_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.printk_info, align 8
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %3, i8 0, i32 88, i1 false), !annotation !9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = icmp eq ptr %1, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr %1, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void %10(ptr noundef %0, ptr noundef nonnull @log_wait, ptr noundef nonnull %1) #25
  br label %13

13:                                               ; preds = %12, %9, %7
  %14 = load ptr, ptr @prb, align 4
  %15 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr nonnull %5, ptr nonnull elementtype(i64) %5) #25, !srcloc !16
  %16 = call zeroext i1 @prb_read_valid_info(ptr noundef %14, i64 noundef %15, ptr noundef nonnull %3, ptr noundef null) #25
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i64, ptr %3, align 8
  %19 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr nonnull %5, ptr nonnull elementtype(i64) %5) #25, !srcloc !16
  %20 = icmp eq i64 %18, %19
  %21 = select i1 %20, i32 65, i32 75
  br label %22

22:                                               ; preds = %17, %13, %2
  %23 = phi i32 [ 40, %2 ], [ 0, %13 ], [ %21, %17 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #25
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devkmsg_open(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #0 {
  %3 = load i32, ptr @devkmsg_log, align 4
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %44

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 3
  %10 = icmp ne i32 %9, 1
  %11 = load i32, ptr @dmesg_restrict, align 4
  %12 = icmp ne i32 %11, 0
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %26

14:                                               ; preds = %6
  %15 = tail call zeroext i1 @capable(i32 noundef 34) #25
  br i1 %15, label %26, label %16

16:                                               ; preds = %14
  %17 = tail call zeroext i1 @capable(i32 noundef 21) #25
  br i1 %17, label %18, label %44

18:                                               ; preds = %16
  %19 = load i1, ptr @check_syslog_permissions.__already_done, align 1
  br i1 %19, label %26, label %20, !prof !10

20:                                               ; preds = %18
  store i1 true, ptr @check_syslog_permissions.__already_done, align 1
  %21 = tail call ptr @llvm.thread.pointer() #25
  %22 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 85
  %23 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 52
  %24 = load i32, ptr %23, align 8
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %22, i32 noundef %24) #29
  br label %26

26:                                               ; preds = %20, %18, %14, %6
  %27 = tail call noalias ptr @kvmalloc_node(i32 noundef 16544, i32 noundef 3264, i32 noundef -1) #27
  %28 = icmp eq ptr %27, null
  br i1 %28, label %44, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.devkmsg_user, ptr %27, i32 0, i32 1
  %31 = getelementptr inbounds %struct.devkmsg_user, ptr %27, i32 0, i32 1, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(28) %30, i8 0, i64 24, i1 false) #25
  store i32 500, ptr %31, align 4
  %32 = getelementptr inbounds %struct.devkmsg_user, ptr %27, i32 0, i32 1, i32 2
  store i32 10, ptr %32, align 4
  %33 = getelementptr inbounds %struct.devkmsg_user, ptr %27, i32 0, i32 1, i32 6
  store i32 1, ptr %33, align 4
  %34 = getelementptr inbounds %struct.devkmsg_user, ptr %27, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %34, ptr noundef nonnull @.str.74, ptr noundef nonnull @devkmsg_open.__key) #25
  %35 = getelementptr inbounds %struct.devkmsg_user, ptr %27, i32 0, i32 6
  %36 = getelementptr inbounds %struct.devkmsg_user, ptr %27, i32 0, i32 4
  %37 = getelementptr inbounds %struct.devkmsg_user, ptr %27, i32 0, i32 5
  store ptr %36, ptr %35, align 4
  %38 = getelementptr inbounds %struct.devkmsg_user, ptr %27, i32 0, i32 6, i32 1
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.devkmsg_user, ptr %27, i32 0, i32 6, i32 2
  store i32 8192, ptr %39, align 4
  %40 = load ptr, ptr @prb, align 4
  %41 = tail call i64 @prb_first_valid_seq(ptr noundef %40) #25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %27) #25, !srcloc !13
  %42 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr nonnull elementtype(i64) %27, ptr nonnull %27, i64 %41) #25, !srcloc !14
  %43 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %27, ptr %43, align 8
  br label %44

44:                                               ; preds = %29, %26, %16, %2
  %45 = phi i32 [ 0, %29 ], [ -1, %2 ], [ -12, %26 ], [ -1, %16 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devkmsg_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.devkmsg_user, ptr %4, i32 0, i32 1, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.devkmsg_user, ptr %4, i32 0, i32 1, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @llvm.thread.pointer() #25
  %17 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 85
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %17, i32 noundef %13) #29
  store i32 0, ptr %12, align 4
  br label %19

19:                                               ; preds = %15, %11, %6
  tail call void @kvfree(ptr noundef nonnull %4) #25
  br label %20

20:                                               ; preds = %19, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @log_buf_vmcoreinfo_setup() local_unnamed_addr #0 {
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef ptrtoint (ptr @prb to i32)) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef ptrtoint (ptr @printk_rb_static to i32)) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef ptrtoint (ptr @clear_seq to i32)) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 40) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7, i32 noundef 0) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8, i32 noundef 20) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.9, i32 noundef 36) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.10, i32 noundef 20) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 0) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12, i32 noundef 4) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.13, i32 noundef 8) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.14, i32 noundef 12) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.15, i32 noundef 16) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.16, i32 noundef 12) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 0) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.18, i32 noundef 4) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.19, i32 noundef 8) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 0) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21, i32 noundef 4) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.22, i32 noundef 88) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 0) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.24, i32 noundef 8) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.25, i32 noundef 16) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.26, i32 noundef 20) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.27, i32 noundef 24) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.28, i32 noundef 64) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 0) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 16) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.32, i32 noundef 16) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.33, i32 noundef 48) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.34, i32 noundef 16) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 0) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.36, i32 noundef 4) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.37, i32 noundef 8) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.38, i32 noundef 12) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.39, i32 noundef 4) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef 0) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.41, i32 noundef 24) #25
  tail call void (ptr, ...) @vmcoreinfo_append_str(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef 8) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vmcoreinfo_append_str(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @log_buf_len_setup(ptr noundef %0) #7 section ".init.text" {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = call i64 @memparse(ptr noundef nonnull %0, ptr noundef nonnull %2) #25
  call fastcc void @log_buf_len_update(i64 noundef %5) #28
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ 0, %4 ], [ -22, %1 ]
  ret i32 %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @setup_log_buf(i32 noundef %0) local_unnamed_addr #7 section ".init.text" {
  %2 = alloca %struct.printk_info, align 8
  %3 = alloca %struct.printk_record, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %2) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %2, i8 0, i32 88, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #25
  %4 = icmp ne i32 %0, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  store i1 true, ptr @__printk_percpu_data_ready, align 1
  br label %6

6:                                                ; preds = %5, %1
  %7 = load ptr, ptr @log_buf, align 4
  %8 = icmp eq ptr %7, @__log_buf
  br i1 %8, label %9, label %91

9:                                                ; preds = %6
  %10 = load i32, ptr @new_log_buf_len, align 4
  %11 = icmp ne i32 %10, 0
  %12 = select i1 %4, i1 true, i1 %11
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  tail call fastcc void @log_buf_add_cpu() #28
  %14 = load i32, ptr @new_log_buf_len, align 4
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi i32 [ %14, %13 ], [ %10, %9 ]
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %91, label %18

18:                                               ; preds = %15
  %19 = lshr i32 %16, 5
  %20 = icmp ult i32 %16, 32
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %16) #28
  br label %91

23:                                               ; preds = %18
  %24 = tail call ptr @memblock_alloc_try_nid(i32 noundef %16, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef -1) #25
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29, !prof !11

26:                                               ; preds = %23
  %27 = load i32, ptr @new_log_buf_len, align 4
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %27) #28
  br label %91

29:                                               ; preds = %23
  %30 = mul nuw nsw i32 %19, 12
  %31 = tail call ptr @memblock_alloc_try_nid(i32 noundef %30, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef -1) #25
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35, !prof !11

33:                                               ; preds = %29
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %30) #28
  br label %89

35:                                               ; preds = %29
  %36 = mul i32 %19, 88
  %37 = tail call ptr @memblock_alloc_try_nid(i32 noundef %36, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef -1) #25
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41, !prof !11

39:                                               ; preds = %35
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %36) #28
  tail call void @memblock_free(ptr noundef nonnull %31, i32 noundef %30) #25
  br label %89

41:                                               ; preds = %35
  store ptr %2, ptr %3, align 4
  %42 = getelementptr inbounds %struct.printk_record, ptr %3, i32 0, i32 1
  store ptr @setup_text_buf, ptr %42, align 4
  %43 = getelementptr inbounds %struct.printk_record, ptr %3, i32 0, i32 2
  store i32 992, ptr %43, align 4
  %44 = load i32, ptr @new_log_buf_len, align 4
  %45 = icmp eq i32 %44, 0
  %46 = call i32 @llvm.ctlz.i32(i32 %44, i1 false) #25, !range !23
  %47 = sub nsw i32 31, %46
  %48 = select i1 %45, i32 -1, i32 %47
  %49 = call i32 @llvm.ctlz.i32(i32 %19, i1 false) #25, !range !23
  %50 = sub nsw i32 31, %49
  call void @prb_init(ptr noundef nonnull @printk_rb_dynamic, ptr noundef nonnull %24, i32 noundef %48, ptr noundef nonnull %31, i32 noundef %50, ptr noundef nonnull %37) #25
  %51 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !24
  %52 = load i32, ptr @new_log_buf_len, align 4
  store i32 %52, ptr @log_buf_len, align 4
  store ptr %24, ptr @log_buf, align 4
  store i32 0, ptr @new_log_buf_len, align 4
  %53 = call zeroext i1 @prb_read_valid(ptr noundef nonnull @printk_rb_static, i64 noundef 0, ptr noundef nonnull %3) #25
  br i1 %53, label %54, label %62

54:                                               ; preds = %54, %41
  %55 = phi i32 [ %57, %54 ], [ 131072, %41 ]
  %56 = call fastcc i32 @add_to_rb(ptr noundef nonnull %3) #28
  %57 = call i32 @llvm.usub.sat.i32(i32 %55, i32 %56)
  %58 = load ptr, ptr %3, align 4
  %59 = load i64, ptr %58, align 8
  %60 = add i64 %59, 1
  %61 = call zeroext i1 @prb_read_valid(ptr noundef nonnull @printk_rb_static, i64 noundef %60, ptr noundef nonnull %3) #25
  br i1 %61, label %54, label %62

62:                                               ; preds = %54, %41
  %63 = phi i64 [ 0, %41 ], [ %60, %54 ]
  %64 = phi i32 [ 131072, %41 ], [ %57, %54 ]
  store ptr @printk_rb_dynamic, ptr @prb, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %51) #25, !srcloc !25
  %65 = call zeroext i1 @prb_read_valid(ptr noundef nonnull @printk_rb_static, i64 noundef %63, ptr noundef nonnull %3) #25
  br i1 %65, label %66, label %74

66:                                               ; preds = %66, %62
  %67 = phi i32 [ %69, %66 ], [ %64, %62 ]
  %68 = call fastcc i32 @add_to_rb(ptr noundef nonnull %3) #28
  %69 = call i32 @llvm.usub.sat.i32(i32 %67, i32 %68)
  %70 = load ptr, ptr %3, align 4
  %71 = load i64, ptr %70, align 8
  %72 = add i64 %71, 1
  %73 = call zeroext i1 @prb_read_valid(ptr noundef nonnull @printk_rb_static, i64 noundef %72, ptr noundef nonnull %3) #25
  br i1 %73, label %66, label %74

74:                                               ; preds = %66, %62
  %75 = phi i64 [ %63, %62 ], [ %72, %66 ]
  %76 = phi i32 [ %64, %62 ], [ %69, %66 ]
  %77 = call i64 @prb_next_seq(ptr noundef nonnull @printk_rb_static) #25
  %78 = icmp eq i64 %75, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = call i64 @prb_next_seq(ptr noundef nonnull @printk_rb_static) #25
  %81 = sub i64 %80, %75
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i64 noundef %81) #28
  br label %83

83:                                               ; preds = %79, %74
  %84 = load i32, ptr @log_buf_len, align 4
  %85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %84) #28
  %86 = mul i32 %76, 100
  %87 = lshr i32 %86, 17
  %88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %76, i32 noundef %87) #28
  br label %91

89:                                               ; preds = %39, %33
  %90 = load i32, ptr @new_log_buf_len, align 4
  tail call void @memblock_free(ptr noundef nonnull %24, i32 noundef %90) #25
  br label %91

91:                                               ; preds = %89, %83, %26, %21, %15, %6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %2) #25
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @log_buf_add_cpu() unnamed_addr #7 section ".init.text" {
  %1 = load i32, ptr @__cpu_possible_mask, align 4
  %2 = and i32 %1, 65535
  %3 = tail call i32 @__sw_hweight32(i32 noundef %2) #25
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %18, label %5

5:                                                ; preds = %0
  %6 = load i32, ptr @__cpu_possible_mask, align 4
  %7 = and i32 %6, 65535
  %8 = tail call i32 @__sw_hweight32(i32 noundef %7) #25
  %9 = shl i32 %8, 12
  %10 = add i32 %9, -4096
  %11 = icmp ult i32 %10, 65537
  br i1 %11, label %18, label %12

12:                                               ; preds = %5
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef 4096) #28
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, i32 noundef %10) #28
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef 131072) #28
  %16 = add i32 %9, 126976
  %17 = zext i32 %16 to i64
  tail call fastcc void @log_buf_len_update(i64 noundef %17) #28
  br label %18

18:                                               ; preds = %12, %5, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @_printk(ptr noundef %0, ...) #7 {
  %2 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  store i32 0, ptr %2, align 4, !annotation !9
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load i32, ptr %2, align 4
  %4 = insertvalue [1 x i32] poison, i32 %3, 0
  %5 = call i32 @vprintk(ptr noundef %0, [1 x i32] %4) #25
  call void @llvm.va_end(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @prb_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prb_read_valid(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @add_to_rb(ptr nocapture noundef readonly %0) unnamed_addr #7 section ".init.text" {
  %2 = alloca %struct.prb_reserved_entry, align 4
  %3 = alloca %struct.printk_record, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #25
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.printk_info, ptr %4, i32 0, i32 2
  %6 = load i16, ptr %5, align 8
  %7 = zext i16 %6 to i32
  store ptr null, ptr %3, align 4
  %8 = getelementptr inbounds %struct.printk_record, ptr %3, i32 0, i32 1
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.printk_record, ptr %3, i32 0, i32 2
  store i32 %7, ptr %9, align 4
  %10 = call zeroext i1 @prb_reserve(ptr noundef nonnull %2, ptr noundef nonnull @printk_rb_dynamic, ptr noundef nonnull %3) #25
  br i1 %10, label %11, label %53

11:                                               ; preds = %1
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr inbounds %struct.printk_record, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.printk_info, ptr %15, i32 0, i32 2
  %17 = load i16, ptr %16, align 8
  %18 = zext i16 %17 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %12, ptr align 1 %14, i32 %18, i1 false)
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.printk_info, ptr %19, i32 0, i32 2
  %21 = load i16, ptr %20, align 8
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr inbounds %struct.printk_info, ptr %22, i32 0, i32 2
  store i16 %21, ptr %23, align 8
  %24 = load ptr, ptr %0, align 4
  %25 = getelementptr inbounds %struct.printk_info, ptr %24, i32 0, i32 3
  %26 = load i8, ptr %25, align 2
  %27 = getelementptr inbounds %struct.printk_info, ptr %22, i32 0, i32 3
  store i8 %26, ptr %27, align 2
  %28 = load ptr, ptr %0, align 4
  %29 = getelementptr inbounds %struct.printk_info, ptr %28, i32 0, i32 4
  %30 = load i8, ptr %29, align 1
  %31 = and i8 %30, -32
  %32 = getelementptr inbounds %struct.printk_info, ptr %22, i32 0, i32 4
  %33 = load i8, ptr %32, align 1
  %34 = and i8 %33, 31
  %35 = or i8 %34, %31
  store i8 %35, ptr %32, align 1
  %36 = load ptr, ptr %0, align 4
  %37 = getelementptr inbounds %struct.printk_info, ptr %36, i32 0, i32 4
  %38 = load i8, ptr %37, align 1
  %39 = and i8 %38, 31
  %40 = or i8 %39, %31
  store i8 %40, ptr %32, align 1
  %41 = load ptr, ptr %0, align 4
  %42 = getelementptr inbounds %struct.printk_info, ptr %41, i32 0, i32 1
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds %struct.printk_info, ptr %22, i32 0, i32 1
  store i64 %43, ptr %44, align 8
  %45 = load ptr, ptr %0, align 4
  %46 = getelementptr inbounds %struct.printk_info, ptr %45, i32 0, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.printk_info, ptr %22, i32 0, i32 5
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.printk_info, ptr %22, i32 0, i32 6
  %50 = load ptr, ptr %0, align 4
  %51 = getelementptr inbounds %struct.printk_info, ptr %50, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %49, ptr noundef align 8 dereferenceable(64) %51, i32 64, i1 false)
  call void @prb_final_commit(ptr noundef nonnull %2) #25
  %52 = call i32 @prb_record_text_space(ptr noundef nonnull %2) #25
  br label %53

53:                                               ; preds = %11, %1
  %54 = phi i32 [ %52, %11 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #25
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prb_next_seq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @memblock_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ignore_loglevel_setup(ptr nocapture noundef readnone %0) #7 section ".init.text" {
  store i8 1, ptr @ignore_loglevel, align 1
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #28
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_syslog(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [32 x i8], align 1
  %6 = alloca %struct.printk_info, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %6) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %6, i8 0, i32 88, i1 false), !annotation !9
  %8 = icmp eq i32 %3, 1
  %9 = icmp ne i32 %0, 1
  %10 = and i1 %9, %8
  br i1 %10, label %30, label %11

11:                                               ; preds = %4
  %12 = load i32, ptr @dmesg_restrict, align 4
  %13 = icmp ne i32 %12, 0
  %14 = icmp ne i32 %0, 3
  %15 = icmp ne i32 %0, 10
  %16 = and i1 %14, %15
  %17 = or i1 %16, %13
  br i1 %17, label %18, label %30

18:                                               ; preds = %11
  %19 = tail call zeroext i1 @capable(i32 noundef 34) #25
  br i1 %19, label %30, label %20

20:                                               ; preds = %18
  %21 = tail call zeroext i1 @capable(i32 noundef 21) #25
  br i1 %21, label %22, label %164

22:                                               ; preds = %20
  %23 = load i1, ptr @check_syslog_permissions.__already_done, align 1
  br i1 %23, label %30, label %24, !prof !10

24:                                               ; preds = %22
  store i1 true, ptr @check_syslog_permissions.__already_done, align 1
  %25 = tail call ptr @llvm.thread.pointer() #25
  %26 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 85
  %27 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 52
  %28 = load i32, ptr %27, align 8
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %26, i32 noundef %28) #29
  br label %30

30:                                               ; preds = %24, %22, %18, %11, %4
  switch i32 %0, label %163 [
    i32 0, label %164
    i32 1, label %164
    i32 2, label %31
    i32 4, label %43
    i32 3, label %44
    i32 5, label %57
    i32 6, label %64
    i32 7, label %71
    i32 8, label %75
    i32 9, label %81
    i32 10, label %161
  ]

31:                                               ; preds = %30
  %32 = icmp eq ptr %1, null
  %33 = icmp slt i32 %2, 0
  %34 = or i1 %32, %33
  br i1 %34, label %164, label %35

35:                                               ; preds = %31
  %36 = icmp eq i32 %2, 0
  br i1 %36, label %164, label %37

37:                                               ; preds = %35
  %38 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %1, i32 %2, i32 -1090519040) #26, !srcloc !26
  %39 = extractvalue { i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %164

41:                                               ; preds = %37
  %42 = tail call fastcc i32 @syslog_print(ptr noundef nonnull %1, i32 noundef %2)
  br label %164

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43, %30
  %45 = phi i1 [ false, %30 ], [ true, %43 ]
  %46 = icmp eq ptr %1, null
  %47 = icmp slt i32 %2, 0
  %48 = or i1 %46, %47
  br i1 %48, label %164, label %49

49:                                               ; preds = %44
  %50 = icmp eq i32 %2, 0
  br i1 %50, label %164, label %51

51:                                               ; preds = %49
  %52 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %1, i32 %2, i32 -1090519040) #26, !srcloc !27
  %53 = extractvalue { i32, i32 } %52, 0
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %164

55:                                               ; preds = %51
  %56 = tail call fastcc i32 @syslog_print_all(ptr noundef nonnull %1, i32 noundef %2, i1 noundef zeroext %45)
  br label %164

57:                                               ; preds = %30
  tail call void @mutex_lock(ptr noundef nonnull @syslog_lock) #25
  %58 = load ptr, ptr @prb, align 4
  %59 = tail call i64 @prb_next_seq(ptr noundef %58) #25
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #25, !srcloc !28
  %60 = load i32, ptr @clear_seq, align 8
  %61 = add i32 %60, 1
  store i32 %61, ptr @clear_seq, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #25, !srcloc !29
  store i64 %59, ptr getelementptr inbounds (%struct.latched_seq, ptr @clear_seq, i32 0, i32 1), align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #25, !srcloc !28
  %62 = load i32, ptr @clear_seq, align 8
  %63 = add i32 %62, 1
  store i32 %63, ptr @clear_seq, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #25, !srcloc !29
  store i64 %59, ptr getelementptr inbounds (%struct.latched_seq, ptr @clear_seq, i32 0, i32 1, i32 1), align 8
  tail call void @mutex_unlock(ptr noundef nonnull @syslog_lock) #25
  br label %164

64:                                               ; preds = %30
  %65 = load i32, ptr @do_syslog.saved_console_loglevel, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, ptr @console_printk, align 4
  store i32 %68, ptr @do_syslog.saved_console_loglevel, align 4
  br label %69

69:                                               ; preds = %67, %64
  %70 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @console_printk, i32 0, i32 2), align 4
  store i32 %70, ptr @console_printk, align 4
  br label %164

71:                                               ; preds = %30
  %72 = load i32, ptr @do_syslog.saved_console_loglevel, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %164, label %74

74:                                               ; preds = %71
  store i32 %72, ptr @console_printk, align 4
  store i32 -1, ptr @do_syslog.saved_console_loglevel, align 4
  br label %164

75:                                               ; preds = %30
  %76 = add i32 %2, -9
  %77 = icmp ult i32 %76, -8
  br i1 %77, label %164, label %78

78:                                               ; preds = %75
  %79 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @console_printk, i32 0, i32 2), align 4
  %80 = tail call i32 @llvm.smax.i32(i32 %79, i32 %2)
  store i32 %80, ptr @console_printk, align 4
  store i32 -1, ptr @do_syslog.saved_console_loglevel, align 4
  br label %164

81:                                               ; preds = %30
  tail call void @mutex_lock(ptr noundef nonnull @syslog_lock) #25
  %82 = load ptr, ptr @prb, align 4
  %83 = load i64, ptr @syslog_seq, align 8
  %84 = call zeroext i1 @prb_read_valid_info(ptr noundef %82, i64 noundef %83, ptr noundef nonnull %6, ptr noundef null) #25
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  call void @mutex_unlock(ptr noundef nonnull @syslog_lock) #25
  br label %164

86:                                               ; preds = %81
  %87 = load i64, ptr %6, align 8
  %88 = load i64, ptr @syslog_seq, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  store i64 %87, ptr @syslog_seq, align 8
  store i32 0, ptr @syslog_partial, align 4
  br label %91

91:                                               ; preds = %90, %86
  br i1 %8, label %92, label %98

92:                                               ; preds = %91
  %93 = load ptr, ptr @prb, align 4
  %94 = call i64 @prb_next_seq(ptr noundef %93) #25
  %95 = load i64, ptr @syslog_seq, align 8
  %96 = sub i64 %94, %95
  %97 = trunc i64 %96 to i32
  br label %159

98:                                               ; preds = %91
  %99 = load i32, ptr @syslog_partial, align 4
  %100 = load i8, ptr @syslog_time, align 1
  %101 = load i8, ptr @printk_time, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #25
  store i32 0, ptr %7, align 4, !annotation !9
  %102 = load ptr, ptr @prb, align 4
  %103 = call zeroext i1 @prb_read_valid_info(ptr noundef %102, i64 noundef %87, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  br i1 %103, label %104, label %155

104:                                              ; preds = %98
  %105 = icmp eq i32 %99, 0
  %106 = select i1 %105, i8 %101, i8 %100
  %107 = and i8 %106, 1
  %108 = getelementptr inbounds %struct.printk_info, ptr %6, i32 0, i32 3
  %109 = getelementptr inbounds %struct.printk_info, ptr %6, i32 0, i32 4
  %110 = getelementptr inbounds %struct.printk_info, ptr %6, i32 0, i32 1
  %111 = getelementptr inbounds %struct.printk_info, ptr %6, i32 0, i32 2
  br label %112

112:                                              ; preds = %142, %104
  %113 = phi i8 [ %107, %104 ], [ %150, %142 ]
  %114 = phi i32 [ 0, %104 ], [ %149, %142 ]
  %115 = icmp eq i8 %113, 0
  %116 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #25
  %117 = load i8, ptr %108, align 2
  %118 = zext i8 %117 to i32
  %119 = shl nuw nsw i32 %118, 3
  %120 = load i8, ptr %109, align 1
  %121 = lshr i8 %120, 5
  %122 = zext i8 %121 to i32
  %123 = or i32 %119, %122
  %124 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.83, i32 noundef %123) #25
  br i1 %115, label %142, label %125

125:                                              ; preds = %112
  %126 = load i64, ptr %110, align 8
  %127 = getelementptr i8, ptr %5, i32 %124
  %128 = trunc i64 %126 to i32
  %129 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %126, i32 0) #26, !srcloc !17
  %130 = extractvalue { i64, i32 } %129, 0
  %131 = extractvalue { i64, i32 } %129, 1
  %132 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %126, i64 %130, i32 %131) #26, !srcloc !18
  %133 = extractvalue { i64, i32 } %132, 0
  %134 = lshr i64 %133, 29
  %135 = trunc i64 %134 to i32
  %136 = mul i32 %135, -1000000000
  %137 = add i32 %136, %128
  %138 = udiv i32 %137, 1000
  %139 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %127, ptr noundef nonnull @.str.84, i32 noundef %135, i32 noundef %138) #25
  %140 = add i32 %139, %124
  %141 = add i32 %140, 1
  br label %142

142:                                              ; preds = %125, %112
  %143 = phi i32 [ %141, %125 ], [ %124, %112 ]
  %144 = mul i32 %143, %116
  %145 = load i16, ptr %111, align 8
  %146 = zext i16 %145 to i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #25
  %147 = add i32 %114, 1
  %148 = add i32 %147, %144
  %149 = add i32 %148, %146
  %150 = load i8, ptr @printk_time, align 1, !range !30
  %151 = load i64, ptr %6, align 8
  %152 = add i64 %151, 1
  %153 = load ptr, ptr @prb, align 4
  %154 = call zeroext i1 @prb_read_valid_info(ptr noundef %153, i64 noundef %152, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  br i1 %154, label %112, label %155

155:                                              ; preds = %142, %98
  %156 = phi i32 [ 0, %98 ], [ %149, %142 ]
  %157 = load i32, ptr @syslog_partial, align 4
  %158 = sub i32 %156, %157
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #25
  br label %159

159:                                              ; preds = %155, %92
  %160 = phi i32 [ %97, %92 ], [ %158, %155 ]
  call void @mutex_unlock(ptr noundef nonnull @syslog_lock) #25
  br label %164

161:                                              ; preds = %30
  %162 = load i32, ptr @log_buf_len, align 4
  br label %164

163:                                              ; preds = %30
  br label %164

164:                                              ; preds = %163, %161, %159, %85, %78, %75, %74, %71, %69, %57, %55, %51, %49, %44, %41, %37, %35, %31, %30, %30, %20
  %165 = phi i32 [ 0, %85 ], [ -22, %31 ], [ 0, %35 ], [ -14, %37 ], [ -22, %44 ], [ 0, %49 ], [ -14, %51 ], [ -22, %75 ], [ -22, %163 ], [ %162, %161 ], [ %160, %159 ], [ 0, %78 ], [ 0, %74 ], [ 0, %71 ], [ 0, %69 ], [ 0, %57 ], [ %56, %55 ], [ %42, %41 ], [ 0, %30 ], [ 0, %30 ], [ -1, %20 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #25
  ret i32 %165
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @syslog_print(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.printk_info, align 8
  %4 = alloca %struct.printk_record, align 4
  %5 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %3, i8 0, i32 88, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #25
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 1024) #30
  %8 = icmp eq ptr %7, null
  br i1 %8, label %107, label %9

9:                                                ; preds = %2
  store ptr %3, ptr %4, align 4
  %10 = getelementptr inbounds %struct.printk_record, ptr %4, i32 0, i32 1
  store ptr %7, ptr %10, align 4
  %11 = getelementptr inbounds %struct.printk_record, ptr %4, i32 0, i32 2
  store i32 1024, ptr %11, align 4
  call void @mutex_lock(ptr noundef nonnull @syslog_lock) #25
  %12 = load i64, ptr @syslog_seq, align 8
  br label %13

13:                                               ; preds = %30, %9
  %14 = phi i64 [ %31, %30 ], [ %12, %9 ]
  call void @mutex_unlock(ptr noundef nonnull @syslog_lock) #25
  %15 = load ptr, ptr @prb, align 4
  %16 = call zeroext i1 @prb_read_valid(ptr noundef %15, i64 noundef %14, ptr noundef null) #25
  br i1 %16, label %30, label %17

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #25
  %18 = call i32 @prepare_to_wait_event(ptr noundef nonnull @log_wait, ptr noundef nonnull %5, i32 noundef 1) #25
  %19 = load ptr, ptr @prb, align 4
  %20 = call zeroext i1 @prb_read_valid(ptr noundef %19, i64 noundef %14, ptr noundef null) #25
  br i1 %20, label %28, label %21

21:                                               ; preds = %24, %17
  %22 = phi i32 [ %25, %24 ], [ %18, %17 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  call void @schedule() #25
  %25 = call i32 @prepare_to_wait_event(ptr noundef nonnull @log_wait, ptr noundef nonnull %5, i32 noundef 1) #25
  %26 = load ptr, ptr @prb, align 4
  %27 = call zeroext i1 @prb_read_valid(ptr noundef %26, i64 noundef %14, ptr noundef null) #25
  br i1 %27, label %28, label %21

28:                                               ; preds = %24, %17
  call void @finish_wait(ptr noundef nonnull @log_wait, ptr noundef nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #25
  br label %30

29:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #25
  call void @mutex_lock(ptr noundef nonnull @syslog_lock) #25
  br label %105

30:                                               ; preds = %28, %13
  call void @mutex_lock(ptr noundef nonnull @syslog_lock) #25
  %31 = load i64, ptr @syslog_seq, align 8
  %32 = icmp eq i64 %31, %14
  br i1 %32, label %33, label %13

33:                                               ; preds = %30
  %34 = load ptr, ptr @prb, align 4
  %35 = call zeroext i1 @prb_read_valid(ptr noundef %34, i64 noundef %14, ptr noundef nonnull %4) #25
  br i1 %35, label %36, label %105

36:                                               ; preds = %100, %33
  %37 = phi ptr [ %101, %100 ], [ %0, %33 ]
  %38 = phi i32 [ %97, %100 ], [ 0, %33 ]
  %39 = phi i32 [ %98, %100 ], [ %1, %33 ]
  %40 = load ptr, ptr %4, align 4
  %41 = load i64, ptr %40, align 8
  %42 = load i64, ptr @syslog_seq, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  store i64 %41, ptr @syslog_seq, align 8
  store i32 0, ptr @syslog_partial, align 4
  br label %50

45:                                               ; preds = %36
  %46 = load i32, ptr @syslog_partial, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = load i8, ptr @syslog_time, align 1, !range !30
  br label %52

50:                                               ; preds = %45, %44
  %51 = load i8, ptr @printk_time, align 1, !range !30
  store i8 %51, ptr @syslog_time, align 1
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i8 [ %51, %50 ], [ %49, %48 ]
  %54 = phi i32 [ 0, %50 ], [ %46, %48 ]
  %55 = icmp ne i8 %53, 0
  %56 = call fastcc i32 @record_print_text(ptr noundef nonnull %4, i1 noundef zeroext true, i1 noundef zeroext %55)
  %57 = load i32, ptr @syslog_partial, align 4
  %58 = sub i32 %56, %57
  %59 = icmp ugt i32 %58, %39
  br i1 %59, label %64, label %60

60:                                               ; preds = %52
  %61 = load ptr, ptr %4, align 4
  %62 = load i64, ptr %61, align 8
  %63 = add i64 %62, 1
  store i64 %63, ptr @syslog_seq, align 8
  br label %68

64:                                               ; preds = %52
  %65 = icmp eq i32 %38, 0
  br i1 %65, label %66, label %105

66:                                               ; preds = %64
  %67 = add i32 %57, %39
  br label %68

68:                                               ; preds = %66, %60
  %69 = phi i32 [ 0, %60 ], [ %67, %66 ]
  %70 = phi i32 [ %58, %60 ], [ %39, %66 ]
  store i32 %69, ptr @syslog_partial, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %105, label %72

72:                                               ; preds = %68
  call void @mutex_unlock(ptr noundef nonnull @syslog_lock) #25
  %73 = getelementptr i8, ptr %7, i32 %54
  %74 = icmp slt i32 %70, 0
  %75 = load i1, ptr @check_copy_size.__already_done, align 1
  %76 = xor i1 %75, true
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %78, label %79, !prof !11

78:                                               ; preds = %72
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 230, i32 noundef 9, ptr noundef null) #25
  br label %79

79:                                               ; preds = %78, %72
  br i1 %74, label %84, label %80, !prof !11

80:                                               ; preds = %79
  %81 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %37, i32 %70, i32 -1090519040) #26, !srcloc !19
  %82 = extractvalue { i32, i32 } %81, 0
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80, %79
  call void @mutex_lock(ptr noundef nonnull @syslog_lock) #25
  br label %93

85:                                               ; preds = %80
  %86 = tail call ptr @llvm.thread.pointer() #25
  %87 = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 3
  %88 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %87) #18, !srcloc !20
  %89 = and i32 %88, -13
  %90 = or i32 %89, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %90) #25, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #25, !srcloc !22
  %91 = call i32 @arm_copy_to_user(ptr noundef %37, ptr noundef %73, i32 noundef %70) #25
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %88) #25, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #25, !srcloc !22
  call void @mutex_lock(ptr noundef nonnull @syslog_lock) #25
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %85, %84
  %94 = icmp eq i32 %38, 0
  %95 = select i1 %94, i32 -14, i32 %38
  br label %105

96:                                               ; preds = %85
  %97 = add i32 %70, %38
  %98 = sub i32 %39, %70
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %96
  %101 = getelementptr i8, ptr %37, i32 %70
  %102 = load i64, ptr @syslog_seq, align 8
  %103 = load ptr, ptr @prb, align 4
  %104 = call zeroext i1 @prb_read_valid(ptr noundef %103, i64 noundef %102, ptr noundef nonnull %4) #25
  br i1 %104, label %36, label %105

105:                                              ; preds = %100, %96, %93, %68, %64, %33, %29
  %106 = phi i32 [ %22, %29 ], [ %95, %93 ], [ 0, %33 ], [ %38, %64 ], [ %38, %68 ], [ %97, %100 ], [ %97, %96 ]
  call void @mutex_unlock(ptr noundef nonnull @syslog_lock) #25
  call void @kfree(ptr noundef nonnull %7) #25
  br label %107

107:                                              ; preds = %105, %2
  %108 = phi i32 [ %106, %105 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #25
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @syslog_print_all(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.printk_info, align 8
  %5 = alloca %struct.printk_record, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %4, i8 0, i32 88, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #25
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 1024) #30
  %8 = icmp eq ptr %7, null
  br i1 %8, label %68, label %9

9:                                                ; preds = %3
  %10 = load i8, ptr @printk_time, align 1, !range !30
  br label %11

11:                                               ; preds = %11, %9
  %12 = load volatile i32, ptr @clear_seq, align 8
  %13 = and i32 %12, 1
  %14 = getelementptr %struct.latched_seq, ptr @clear_seq, i32 0, i32 1, i32 %13
  %15 = load i64, ptr %14, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !15
  %16 = load volatile i32, ptr @clear_seq, align 8
  %17 = icmp eq i32 %16, %12
  br i1 %17, label %18, label %11

18:                                               ; preds = %11
  %19 = icmp ne i8 %10, 0
  %20 = tail call fastcc i64 @find_first_fitting_seq(i64 noundef %15, i64 noundef -1, i32 noundef %1, i1 noundef zeroext true, i1 noundef zeroext %19)
  store ptr %4, ptr %5, align 4
  %21 = getelementptr inbounds %struct.printk_record, ptr %5, i32 0, i32 1
  store ptr %7, ptr %21, align 4
  %22 = getelementptr inbounds %struct.printk_record, ptr %5, i32 0, i32 2
  store i32 1024, ptr %22, align 4
  %23 = load ptr, ptr @prb, align 4
  %24 = call zeroext i1 @prb_read_valid(ptr noundef %23, i64 noundef %20, ptr noundef nonnull %5) #25
  br i1 %24, label %25, label %59

25:                                               ; preds = %53, %18
  %26 = phi i64 [ %56, %53 ], [ %20, %18 ]
  %27 = phi i32 [ %29, %53 ], [ 0, %18 ]
  %28 = call fastcc i32 @record_print_text(ptr noundef nonnull %5, i1 noundef zeroext true, i1 noundef zeroext %19)
  %29 = add i32 %28, %27
  %30 = icmp sgt i32 %29, %1
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = add i64 %26, -1
  br label %59

33:                                               ; preds = %25
  %34 = getelementptr i8, ptr %0, i32 %27
  %35 = icmp ugt i32 %28, 1024
  br i1 %35, label %36, label %37, !prof !11

36:                                               ; preds = %33
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.71, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.72, i32 noundef 1024, i32 noundef %28) #25
  br label %59

37:                                               ; preds = %33
  %38 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %34, i32 %28, i32 -1090519040) #26, !srcloc !19
  %39 = extractvalue { i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = tail call ptr @llvm.thread.pointer() #25
  %43 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  %44 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %43) #18, !srcloc !20
  %45 = and i32 %44, -13
  %46 = or i32 %45, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %46) #25, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #25, !srcloc !22
  %47 = call i32 @arm_copy_to_user(ptr noundef %34, ptr noundef nonnull %7, i32 noundef %28) #25
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #25, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #25, !srcloc !22
  br label %48

48:                                               ; preds = %41, %37
  %49 = phi i32 [ %47, %41 ], [ %28, %37 ]
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i32 %29, i32 -14
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = load ptr, ptr %5, align 4
  %55 = load i64, ptr %54, align 8
  %56 = add i64 %55, 1
  %57 = load ptr, ptr @prb, align 4
  %58 = call zeroext i1 @prb_read_valid(ptr noundef %57, i64 noundef %56, ptr noundef nonnull %5) #25
  br i1 %58, label %25, label %59

59:                                               ; preds = %53, %48, %36, %31, %18
  %60 = phi i32 [ %27, %31 ], [ -14, %36 ], [ 0, %18 ], [ %29, %53 ], [ %51, %48 ]
  %61 = phi i64 [ %32, %31 ], [ %26, %36 ], [ %20, %18 ], [ %56, %53 ], [ %26, %48 ]
  br i1 %2, label %62, label %67

62:                                               ; preds = %59
  call void @mutex_lock(ptr noundef nonnull @syslog_lock) #25
  call void asm sideeffect "dmb ishst", "~{memory}"() #25, !srcloc !28
  %63 = load i32, ptr @clear_seq, align 8
  %64 = add i32 %63, 1
  store i32 %64, ptr @clear_seq, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #25, !srcloc !29
  store i64 %61, ptr getelementptr inbounds (%struct.latched_seq, ptr @clear_seq, i32 0, i32 1), align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #25, !srcloc !28
  %65 = load i32, ptr @clear_seq, align 8
  %66 = add i32 %65, 1
  store i32 %66, ptr @clear_seq, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #25, !srcloc !29
  store i64 %61, ptr getelementptr inbounds (%struct.latched_seq, ptr @clear_seq, i32 0, i32 1, i32 1), align 8
  call void @mutex_unlock(ptr noundef nonnull @syslog_lock) #25
  br label %67

67:                                               ; preds = %62, %59
  call void @kfree(ptr noundef nonnull %7) #25
  br label %68

68:                                               ; preds = %67, %3
  %69 = phi i32 [ %60, %67 ], [ -12, %3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #25
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prb_read_valid_info(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_syslog(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %1 to ptr
  %5 = tail call i32 @do_syslog(i32 noundef %0, ptr noundef %4, i32 noundef %2, i32 noundef 0) #25
  ret i32 %5
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @printk_parse_prefix(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 {
  %4 = load i8, ptr %0, align 1
  %5 = icmp eq i8 %4, 1
  br i1 %5, label %6, label %31

6:                                                ; preds = %3
  %7 = icmp eq ptr %1, null
  %8 = icmp eq ptr %2, null
  br label %9

9:                                                ; preds = %26, %6
  %10 = phi i16 [ 0, %6 ], [ %27, %26 ]
  %11 = phi ptr [ %0, %6 ], [ %28, %26 ]
  %12 = getelementptr i8, ptr %11, i32 1
  %13 = load i8, ptr %12, align 1
  switch i8 %13, label %31 [
    i8 55, label %14
    i8 99, label %14
    i8 48, label %14
    i8 49, label %14
    i8 50, label %14
    i8 51, label %14
    i8 52, label %14
    i8 53, label %14
    i8 54, label %14
  ]

14:                                               ; preds = %9, %9, %9, %9, %9, %9, %9, %9, %9
  %15 = zext i8 %13 to i32
  switch i8 %13, label %26 [
    i8 99, label %22
    i8 48, label %16
    i8 49, label %16
    i8 50, label %16
    i8 51, label %16
    i8 52, label %16
    i8 53, label %16
    i8 54, label %16
    i8 55, label %16
  ]

16:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14
  br i1 %7, label %26, label %17

17:                                               ; preds = %16
  %18 = load i32, ptr %1, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = add nsw i32 %15, -48
  store i32 %21, ptr %1, align 4
  br label %26

22:                                               ; preds = %14
  br i1 %8, label %26, label %23

23:                                               ; preds = %22
  %24 = load i32, ptr %2, align 4
  %25 = or i32 %24, 8
  store i32 %25, ptr %2, align 4
  br label %26

26:                                               ; preds = %23, %22, %20, %17, %16, %14
  %27 = add i16 %10, 2
  %28 = getelementptr i8, ptr %11, i32 2
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 1
  br i1 %30, label %9, label %31

31:                                               ; preds = %26, %9, %3
  %32 = phi i16 [ 0, %3 ], [ %27, %26 ], [ %10, %9 ]
  ret i16 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vprintk_store(i32 noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef %3, [1 x i32] %4) local_unnamed_addr #0 {
  %6 = alloca %struct.__va_list, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.prb_reserved_entry, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.printk_record, align 4
  %11 = alloca [8 x i8], align 8
  %12 = alloca %struct.__va_list, align 4
  %13 = extractvalue [1 x i32] %4, 0
  store i32 %13, ptr %6, align 4
  store i32 %1, ptr %7, align 4
  %14 = tail call ptr @llvm.thread.pointer() #25
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 15728640
  %18 = load volatile i32, ptr %15, align 4
  %19 = and i32 %18, 983040
  %20 = or i32 %19, %17
  %21 = load volatile i32, ptr %15, align 4
  %22 = and i32 %21, 256
  %23 = or i32 %20, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 52
  %27 = load i32, ptr %26, align 8
  br label %32

28:                                               ; preds = %5
  %29 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %30 = load i32, ptr %29, align 8
  %31 = xor i32 %30, -2147483648
  br label %32

32:                                               ; preds = %28, %25
  %33 = phi i32 [ %27, %25 ], [ %31, %28 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i32 16, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #25
  store i32 0, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %10, i8 0, i32 12, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #25
  store i64 0, ptr %11, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #25
  store i32 0, ptr %12, align 4, !annotation !9
  %34 = tail call i64 @sched_clock() #25
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !24
  %36 = load volatile i32, ptr %15, align 4
  %37 = and i32 %36, 15728640
  %38 = icmp eq i32 %37, 0
  %39 = load i1, ptr @__printk_percpu_data_ready, align 1
  br i1 %38, label %47, label %40

40:                                               ; preds = %32
  br i1 %39, label %41, label %54

41:                                               ; preds = %40
  %42 = tail call i32 @llvm.read_register.i32(metadata !0) #25
  %43 = inttoptr i32 %42 to ptr
  %44 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %43) #18, !srcloc !12
  %45 = add i32 %44, ptrtoint (ptr @printk_count_nmi to i32)
  %46 = inttoptr i32 %45 to ptr
  br label %54

47:                                               ; preds = %32
  br i1 %39, label %48, label %54

48:                                               ; preds = %47
  %49 = tail call i32 @llvm.read_register.i32(metadata !0) #25
  %50 = inttoptr i32 %49 to ptr
  %51 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %50) #18, !srcloc !12
  %52 = add i32 %51, ptrtoint (ptr @printk_count to i32)
  %53 = inttoptr i32 %52 to ptr
  br label %54

54:                                               ; preds = %48, %47, %41, %40
  %55 = phi ptr [ %46, %41 ], [ %53, %48 ], [ @printk_count_nmi_early, %40 ], [ @printk_count_early, %47 ]
  %56 = load i8, ptr %55, align 1
  %57 = icmp ugt i8 %56, 3
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %35) #25, !srcloc !25
  br label %227

59:                                               ; preds = %54
  %60 = add nuw nsw i8 %56, 1
  store i8 %60, ptr %55, align 1
  call void @llvm.va_copy(ptr nonnull %12, ptr nonnull %6)
  %61 = load i32, ptr %12, align 4
  %62 = insertvalue [1 x i32] poison, i32 %61, 0
  %63 = call i32 @vsnprintf(ptr noundef nonnull %11, i32 noundef 8, ptr noundef %3, [1 x i32] %62)
  %64 = trunc i32 %63 to i16
  %65 = add i16 %64, 1
  call void @llvm.va_end(ptr nonnull %12)
  %66 = call i16 @llvm.umin.i16(i16 %65, i16 992)
  %67 = icmp eq i32 %0, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = call zeroext i16 @printk_parse_prefix(ptr noundef nonnull %11, ptr noundef nonnull %7, ptr noundef nonnull %9)
  br label %70

70:                                               ; preds = %68, %59
  %71 = load i32, ptr %7, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @console_printk, i32 0, i32 1), align 4
  store i32 %74, ptr %7, align 4
  br label %75

75:                                               ; preds = %73, %70
  %76 = icmp eq ptr %2, null
  %77 = load i32, ptr %9, align 4
  br i1 %76, label %80, label %78

78:                                               ; preds = %75
  %79 = or i32 %77, 2
  store i32 %79, ptr %9, align 4
  br label %80

80:                                               ; preds = %78, %75
  %81 = phi i32 [ %79, %78 ], [ %77, %75 ]
  %82 = and i32 %81, 8
  %83 = icmp eq i32 %82, 0
  %84 = zext i16 %66 to i32
  br i1 %83, label %137, label %85

85:                                               ; preds = %80
  store ptr null, ptr %10, align 4
  %86 = getelementptr inbounds %struct.printk_record, ptr %10, i32 0, i32 1
  store ptr null, ptr %86, align 4
  %87 = getelementptr inbounds %struct.printk_record, ptr %10, i32 0, i32 2
  store i32 %84, ptr %87, align 4
  %88 = load ptr, ptr @prb, align 4
  %89 = call zeroext i1 @prb_reserve_in_last(ptr noundef nonnull %8, ptr noundef %88, ptr noundef nonnull %10, i32 noundef %33, i32 noundef 992) #25
  br i1 %89, label %90, label %137

90:                                               ; preds = %85
  %91 = load ptr, ptr %86, align 4
  %92 = load ptr, ptr %10, align 4
  %93 = getelementptr inbounds %struct.printk_info, ptr %92, i32 0, i32 2
  %94 = load i16, ptr %93, align 8
  %95 = zext i16 %94 to i32
  %96 = getelementptr i8, ptr %91, i32 %95
  %97 = load i32, ptr %6, align 4
  %98 = insertvalue [1 x i32] poison, i32 %97, 0
  %99 = call i32 @vscnprintf(ptr noundef %96, i32 noundef %84, ptr noundef %3, [1 x i32] %98) #25
  %100 = trunc i32 %99 to i16
  %101 = and i32 %99, 65535
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %112, label %103

103:                                              ; preds = %90
  %104 = add nsw i32 %101, -1
  %105 = getelementptr i8, ptr %96, i32 %104
  %106 = load i8, ptr %105, align 1
  %107 = icmp eq i8 %106, 10
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = add i16 %100, -1
  %110 = load i32, ptr %9, align 4
  %111 = or i32 %110, 2
  store i32 %111, ptr %9, align 4
  br label %112

112:                                              ; preds = %108, %103, %90
  %113 = phi i16 [ %109, %108 ], [ %100, %103 ], [ %100, %90 ]
  br i1 %67, label %114, label %122

114:                                              ; preds = %112
  %115 = call zeroext i16 @printk_parse_prefix(ptr noundef %96, ptr noundef null, ptr noundef null) #25
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %114
  %118 = zext i16 %115 to i32
  %119 = sub i16 %113, %115
  %120 = getelementptr i8, ptr %96, i32 %118
  %121 = zext i16 %119 to i32
  call void @llvm.memmove.p0.p0.i32(ptr align 1 %96, ptr align 1 %120, i32 %121, i1 false) #25
  br label %122

122:                                              ; preds = %117, %114, %112
  %123 = phi i16 [ %113, %112 ], [ %119, %117 ], [ %113, %114 ]
  %124 = zext i16 %123 to i32
  %125 = load ptr, ptr %10, align 4
  %126 = getelementptr inbounds %struct.printk_info, ptr %125, i32 0, i32 2
  %127 = load i16, ptr %126, align 8
  %128 = add i16 %127, %123
  store i16 %128, ptr %126, align 8
  %129 = load i32, ptr %9, align 4
  %130 = and i32 %129, 2
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %122
  %133 = getelementptr inbounds %struct.printk_info, ptr %125, i32 0, i32 4
  %134 = load i8, ptr %133, align 1
  %135 = or i8 %134, 2
  store i8 %135, ptr %133, align 1
  call void @prb_final_commit(ptr noundef nonnull %8) #25
  br label %223

136:                                              ; preds = %122
  call void @prb_commit(ptr noundef nonnull %8) #25
  br label %223

137:                                              ; preds = %85, %80
  store ptr null, ptr %10, align 4
  %138 = getelementptr inbounds %struct.printk_record, ptr %10, i32 0, i32 1
  store ptr null, ptr %138, align 4
  %139 = getelementptr inbounds %struct.printk_record, ptr %10, i32 0, i32 2
  store i32 %84, ptr %139, align 4
  %140 = load ptr, ptr @prb, align 4
  %141 = call zeroext i1 @prb_reserve(ptr noundef nonnull %8, ptr noundef %140, ptr noundef nonnull %10) #25
  br i1 %141, label %157, label %142

142:                                              ; preds = %137
  %143 = load i32, ptr @log_buf_len, align 4
  %144 = lshr i32 %143, 2
  %145 = icmp ult i32 %144, %84
  %146 = trunc i32 %144 to i16
  %147 = select i1 %145, i16 %146, i16 %66
  %148 = icmp ugt i16 %147, 10
  %149 = add i16 %147, -11
  %150 = select i1 %148, i16 11, i16 0
  %151 = select i1 %148, i16 %149, i16 %147
  %152 = zext i16 %151 to i32
  %153 = zext i16 %150 to i32
  %154 = add nuw nsw i32 %152, %153
  store ptr null, ptr %10, align 4
  store ptr null, ptr %138, align 4
  store i32 %154, ptr %139, align 4
  %155 = load ptr, ptr @prb, align 4
  %156 = call zeroext i1 @prb_reserve(ptr noundef nonnull %8, ptr noundef %155, ptr noundef nonnull %10) #25
  br i1 %156, label %157, label %223

157:                                              ; preds = %142, %137
  %158 = phi i32 [ %152, %142 ], [ %84, %137 ]
  %159 = phi i16 [ %150, %142 ], [ 0, %137 ]
  %160 = load ptr, ptr %138, align 4
  %161 = load i32, ptr %6, align 4
  %162 = insertvalue [1 x i32] poison, i32 %161, 0
  %163 = call i32 @vscnprintf(ptr noundef %160, i32 noundef %158, ptr noundef %3, [1 x i32] %162) #25
  %164 = trunc i32 %163 to i16
  %165 = and i32 %163, 65535
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %176, label %167

167:                                              ; preds = %157
  %168 = add nsw i32 %165, -1
  %169 = getelementptr i8, ptr %160, i32 %168
  %170 = load i8, ptr %169, align 1
  %171 = icmp eq i8 %170, 10
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = add i16 %164, -1
  %174 = load i32, ptr %9, align 4
  %175 = or i32 %174, 2
  store i32 %175, ptr %9, align 4
  br label %176

176:                                              ; preds = %172, %167, %157
  %177 = phi i16 [ %173, %172 ], [ %164, %167 ], [ %164, %157 ]
  br i1 %67, label %178, label %186

178:                                              ; preds = %176
  %179 = call zeroext i16 @printk_parse_prefix(ptr noundef %160, ptr noundef null, ptr noundef null) #25
  %180 = icmp eq i16 %179, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %178
  %182 = zext i16 %179 to i32
  %183 = sub i16 %177, %179
  %184 = getelementptr i8, ptr %160, i32 %182
  %185 = zext i16 %183 to i32
  call void @llvm.memmove.p0.p0.i32(ptr align 1 %160, ptr align 1 %184, i32 %185, i1 false) #25
  br label %186

186:                                              ; preds = %181, %178, %176
  %187 = phi i16 [ %177, %176 ], [ %183, %181 ], [ %177, %178 ]
  %188 = icmp eq i16 %159, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = zext i16 %187 to i32
  br label %196

191:                                              ; preds = %186
  %192 = load ptr, ptr %138, align 4
  %193 = zext i16 %187 to i32
  %194 = getelementptr i8, ptr %192, i32 %193
  %195 = zext i16 %159 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %194, ptr nonnull align 1 @trunc_msg, i32 %195, i1 false)
  br label %196

196:                                              ; preds = %191, %189
  %197 = phi i32 [ %190, %189 ], [ %193, %191 ]
  %198 = add i16 %187, %159
  %199 = load ptr, ptr %10, align 4
  %200 = getelementptr inbounds %struct.printk_info, ptr %199, i32 0, i32 2
  store i16 %198, ptr %200, align 8
  %201 = trunc i32 %0 to i8
  %202 = getelementptr inbounds %struct.printk_info, ptr %199, i32 0, i32 3
  store i8 %201, ptr %202, align 2
  %203 = load i32, ptr %7, align 4
  %204 = trunc i32 %203 to i8
  %205 = getelementptr inbounds %struct.printk_info, ptr %199, i32 0, i32 4
  %206 = shl i8 %204, 5
  %207 = load i32, ptr %9, align 4
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 31
  %210 = or i8 %209, %206
  store i8 %210, ptr %205, align 1
  %211 = getelementptr inbounds %struct.printk_info, ptr %199, i32 0, i32 1
  store i64 %34, ptr %211, align 8
  %212 = getelementptr inbounds %struct.printk_info, ptr %199, i32 0, i32 5
  store i32 %33, ptr %212, align 4
  br i1 %76, label %215, label %213

213:                                              ; preds = %196
  %214 = getelementptr inbounds %struct.printk_info, ptr %199, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %214, ptr noundef nonnull align 1 dereferenceable(64) %2, i32 64, i1 false)
  br label %215

215:                                              ; preds = %213, %196
  %216 = and i32 %207, 2
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %215
  call void @prb_commit(ptr noundef nonnull %8) #25
  br label %220

219:                                              ; preds = %215
  call void @prb_final_commit(ptr noundef nonnull %8) #25
  br label %220

220:                                              ; preds = %219, %218
  %221 = zext i16 %159 to i32
  %222 = add nuw nsw i32 %197, %221
  br label %223

223:                                              ; preds = %220, %142, %136, %132
  %224 = phi i32 [ %222, %220 ], [ 0, %142 ], [ %124, %136 ], [ %124, %132 ]
  %225 = load i8, ptr %55, align 1
  %226 = add i8 %225, -1
  store i8 %226, ptr %55, align 1
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %35) #25, !srcloc !25
  br label %227

227:                                              ; preds = %223, %58
  %228 = phi i32 [ %224, %223 ], [ 0, %58 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #25
  ret i32 %228
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy(ptr, ptr) #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prb_reserve_in_last(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prb_final_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prb_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prb_reserve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vprintk_emit(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, [1 x i32] %4) #0 {
  %6 = load i32, ptr @suppress_printk, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %74, !prof !10

8:                                                ; preds = %5
  %9 = icmp eq i32 %1, -2
  %10 = select i1 %9, i32 -1, i32 %1
  %11 = load i32, ptr @printk_delay_msec, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13, !prof !10

13:                                               ; preds = %13, %8
  %14 = phi i32 [ %15, %13 ], [ %11, %8 ]
  %15 = add i32 %14, -1
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #25
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %18, label %13

18:                                               ; preds = %13, %8
  %19 = tail call i32 @vprintk_store(i32 noundef %0, i32 noundef %10, ptr noundef %2, ptr noundef %3, [1 x i32] %4)
  br i1 %9, label %53, label %20

20:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !31
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !24
  tail call void @__printk_safe_enter() #25
  %22 = tail call i32 @down_trylock(ptr noundef nonnull @console_sem) #25
  tail call void @__printk_safe_exit() #25
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %21) #25, !srcloc !25
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i1, ptr @console_suspended, align 4
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !24
  tail call void @__printk_safe_enter() #25
  tail call void @up(ptr noundef nonnull @console_sem) #25
  tail call void @__printk_safe_exit() #25
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %27) #25, !srcloc !25
  br label %29

28:                                               ; preds = %24
  store i1 true, ptr @console_locked, align 4
  store i1 false, ptr @console_may_schedule, align 4
  br label %51

29:                                               ; preds = %26, %20
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !24
  tail call void @__printk_safe_enter() #25
  tail call void @_raw_spin_lock(ptr noundef nonnull @console_owner_lock) #25
  %31 = load volatile ptr, ptr @console_owner, align 4
  %32 = load volatile i8, ptr @console_waiter, align 1, !range !30
  %33 = icmp eq i8 %32, 0
  %34 = icmp ne ptr %31, null
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %48

36:                                               ; preds = %29
  %37 = tail call ptr @llvm.thread.pointer() #25
  %38 = icmp eq ptr %31, %37
  br i1 %38, label %48, label %39

39:                                               ; preds = %36
  store volatile i8 1, ptr @console_waiter, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !32
  %40 = load i16, ptr @console_owner_lock, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr @console_owner_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #25, !srcloc !33
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #25, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !35
  %42 = load volatile i8, ptr @console_waiter, align 1, !range !30
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %44, %39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !36
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #25, !srcloc !37
  %45 = load volatile i8, ptr @console_waiter, align 1, !range !30
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %44

47:                                               ; preds = %44, %39
  tail call void @__printk_safe_exit() #25
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %30) #25, !srcloc !25
  br label %51

48:                                               ; preds = %36, %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !32
  %49 = load i16, ptr @console_owner_lock, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr @console_owner_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #25, !srcloc !33
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #25, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !35
  tail call void @__printk_safe_exit() #25
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %30) #25, !srcloc !25
  br label %52

51:                                               ; preds = %47, %28
  tail call void @console_unlock()
  br label %52

52:                                               ; preds = %51, %48
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !38
  br label %53

53:                                               ; preds = %52, %18
  %54 = load i1, ptr @__printk_percpu_data_ready, align 1
  br i1 %54, label %55, label %74

55:                                               ; preds = %53
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !39
  %56 = load volatile ptr, ptr getelementptr inbounds (%struct.wait_queue_head, ptr @log_wait, i32 0, i32 1), align 4
  %57 = icmp eq ptr %56, getelementptr inbounds (%struct.wait_queue_head, ptr @log_wait, i32 0, i32 1)
  br i1 %57, label %73, label %58

58:                                               ; preds = %55
  %59 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !24
  %60 = tail call i32 @llvm.read_register.i32(metadata !0) #25
  %61 = inttoptr i32 %60 to ptr
  %62 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %61) #18, !srcloc !12
  %63 = add i32 %62, ptrtoint (ptr @printk_pending to i32)
  %64 = inttoptr i32 %63 to ptr
  %65 = load i32, ptr %64, align 4
  %66 = or i32 %65, 1
  store i32 %66, ptr %64, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %59) #25, !srcloc !25
  %67 = tail call i32 @llvm.read_register.i32(metadata !0) #25
  %68 = inttoptr i32 %67 to ptr
  %69 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %68) #18, !srcloc !12
  %70 = add i32 %69, ptrtoint (ptr @wake_up_klogd_work to i32)
  %71 = inttoptr i32 %70 to ptr
  %72 = tail call zeroext i1 @irq_work_queue(ptr noundef %71) #25
  br label %73

73:                                               ; preds = %58, %55
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !40
  br label %74

74:                                               ; preds = %73, %53, %5
  %75 = phi i32 [ 0, %5 ], [ %19, %53 ], [ %19, %73 ]
  ret i32 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @console_unlock() #0 {
  %1 = alloca [20 x i8], align 1
  %2 = alloca %struct.printk_info, align 8
  %3 = alloca %struct.printk_record, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %2) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %2, i8 0, i32 88, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #25
  %4 = load i1, ptr @console_suspended, align 4
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !24
  tail call void @__printk_safe_enter() #25
  tail call void @up(ptr noundef nonnull @console_sem) #25
  tail call void @__printk_safe_exit() #25
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #25, !srcloc !25
  br label %284

7:                                                ; preds = %0
  store ptr %2, ptr %3, align 4
  %8 = getelementptr inbounds %struct.printk_record, ptr %3, i32 0, i32 1
  store ptr @console_unlock.text, ptr %8, align 4
  %9 = getelementptr inbounds %struct.printk_record, ptr %3, i32 0, i32 2
  store i32 1024, ptr %9, align 4
  %10 = load i1, ptr @console_may_schedule, align 4
  %11 = tail call ptr @llvm.thread.pointer() #25
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  br label %14

14:                                               ; preds = %283, %7
  store i1 false, ptr @console_may_schedule, align 4
  %15 = load i32, ptr %12, align 8
  %16 = lshr i32 %15, 5
  %17 = getelementptr i32, ptr @__cpu_online_mask, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %15, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %31, %14
  br label %39

24:                                               ; preds = %14
  %25 = load ptr, ptr @console_drivers, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %31

27:                                               ; preds = %31
  %28 = getelementptr inbounds %struct.console, ptr %32, i32 0, i32 14
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %27, %24
  %32 = phi ptr [ %29, %27 ], [ %25, %24 ]
  %33 = getelementptr inbounds %struct.console, ptr %32, i32 0, i32 8
  %34 = load i16, ptr %33, align 4
  %35 = and i16 %34, 20
  %36 = icmp eq i16 %35, 20
  br i1 %36, label %23, label %27

37:                                               ; preds = %27, %24
  store i1 false, ptr @console_locked, align 4
  %38 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !24
  call void @__printk_safe_enter() #25
  call void @up(ptr noundef nonnull @console_sem) #25
  call void @__printk_safe_exit() #25
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %38) #25, !srcloc !25
  br label %284

39:                                               ; preds = %267, %23
  %40 = load ptr, ptr @prb, align 4
  %41 = load i64, ptr @console_seq, align 8
  %42 = call zeroext i1 @prb_read_valid(ptr noundef %40, i64 noundef %41, ptr noundef nonnull %3) #25
  br i1 %42, label %43, label %270

43:                                               ; preds = %65, %39
  %44 = load i64, ptr @console_seq, align 8
  %45 = load ptr, ptr %3, align 4
  %46 = load i64, ptr %45, align 8
  %47 = icmp eq i64 %46, %44
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = sub i64 %46, %44
  %50 = load i32, ptr @console_dropped, align 4
  %51 = trunc i64 %49 to i32
  %52 = add i32 %50, %51
  store i32 %52, ptr @console_dropped, align 4
  store i64 %46, ptr @console_seq, align 8
  br label %53

53:                                               ; preds = %48, %43
  %54 = phi i64 [ %46, %48 ], [ %44, %43 ]
  %55 = getelementptr inbounds %struct.printk_info, ptr %45, i32 0, i32 4
  %56 = load i8, ptr %55, align 1
  %57 = lshr i8 %56, 5
  %58 = zext i8 %57 to i32
  %59 = load i32, ptr @console_printk, align 4
  %60 = icmp sle i32 %59, %58
  %61 = load i8, ptr @ignore_loglevel, align 1
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  %64 = select i1 %60, i1 %63, i1 false
  br i1 %64, label %65, label %69

65:                                               ; preds = %53
  %66 = add i64 %54, 1
  store i64 %66, ptr @console_seq, align 8
  %67 = load ptr, ptr @prb, align 4
  %68 = call zeroext i1 @prb_read_valid(ptr noundef %67, i64 noundef %66, ptr noundef nonnull %3) #25
  br i1 %68, label %43, label %270

69:                                               ; preds = %53
  %70 = getelementptr inbounds %struct.printk_info, ptr %45, i32 0, i32 4
  %71 = load ptr, ptr @exclusive_console, align 4
  %72 = icmp ne ptr %71, null
  %73 = load i64, ptr @exclusive_console_stop_seq, align 8
  %74 = icmp uge i64 %54, %73
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %76, label %77, !prof !11

76:                                               ; preds = %69
  store ptr null, ptr @exclusive_console, align 4
  br label %77

77:                                               ; preds = %76, %69
  %78 = load i32, ptr @nr_ext_console_drivers, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %158, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.printk_info, ptr %45, i32 0, i32 1
  %82 = load i64, ptr %81, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %1) #25
  %83 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %82, i32 0) #26, !srcloc !17
  %84 = extractvalue { i64, i32 } %83, 0
  %85 = extractvalue { i64, i32 } %83, 1
  %86 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %82, i64 %84, i32 %85) #26, !srcloc !18
  %87 = extractvalue { i64, i32 } %86, 0
  %88 = lshr i64 %87, 9
  %89 = getelementptr inbounds %struct.printk_info, ptr %45, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %1, i8 0, i64 20, i1 false) #25
  %90 = load i8, ptr %89, align 2
  %91 = zext i8 %90 to i32
  %92 = shl nuw nsw i32 %91, 3
  %93 = load i8, ptr %70, align 1
  %94 = lshr i8 %93, 5
  %95 = zext i8 %94 to i32
  %96 = or i32 %92, %95
  %97 = load i64, ptr %45, align 8
  %98 = and i8 %93, 8
  %99 = icmp eq i8 %98, 0
  %100 = select i1 %99, i32 45, i32 99
  %101 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull @console_unlock.ext_text, i32 noundef 8192, ptr noundef nonnull @.str.90, i32 noundef %96, i64 noundef %97, i64 noundef %88, i32 noundef %100, ptr noundef nonnull %1) #25
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %1) #25
  %102 = getelementptr i8, ptr @console_unlock.ext_text, i32 %101
  %103 = sub i32 8192, %101
  %104 = load ptr, ptr %8, align 4
  %105 = load ptr, ptr %3, align 4
  %106 = getelementptr inbounds %struct.printk_info, ptr %105, i32 0, i32 2
  %107 = load i16, ptr %106, align 8
  %108 = zext i16 %107 to i32
  %109 = getelementptr inbounds %struct.printk_info, ptr %105, i32 0, i32 6
  %110 = icmp eq i16 %107, 0
  br i1 %110, label %134, label %111

111:                                              ; preds = %130, %80
  %112 = phi i32 [ %132, %130 ], [ 0, %80 ]
  %113 = phi ptr [ %131, %130 ], [ %102, %80 ]
  %114 = getelementptr i8, ptr %104, i32 %112
  %115 = load i8, ptr %114, align 1
  %116 = add i8 %115, -127
  %117 = icmp ult i8 %116, -95
  %118 = icmp eq i8 %115, 92
  %119 = or i1 %118, %117
  br i1 %119, label %120, label %126

120:                                              ; preds = %111
  %121 = zext i8 %115 to i32
  %122 = ptrtoint ptr %113 to i32
  %123 = sub i32 ptrtoint (ptr getelementptr inbounds ([8192 x i8], ptr @console_unlock.ext_text, i32 1, i32 0) to i32), %122
  %124 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %113, i32 noundef %123, ptr noundef nonnull @.str.93, i32 noundef %121) #25
  %125 = getelementptr i8, ptr %113, i32 %124
  br label %130

126:                                              ; preds = %111
  %127 = icmp ult ptr %113, getelementptr inbounds ([8192 x i8], ptr @console_unlock.ext_text, i32 1, i32 0)
  br i1 %127, label %128, label %130

128:                                              ; preds = %126
  %129 = getelementptr i8, ptr %113, i32 1
  store i8 %115, ptr %113, align 1
  br label %130

130:                                              ; preds = %128, %126, %120
  %131 = phi ptr [ %125, %120 ], [ %129, %128 ], [ %113, %126 ]
  %132 = add nuw nsw i32 %112, 1
  %133 = icmp eq i32 %132, %108
  br i1 %133, label %134, label %111

134:                                              ; preds = %130, %80
  %135 = phi ptr [ %102, %80 ], [ %131, %130 ]
  %136 = icmp ult ptr %135, getelementptr inbounds ([8192 x i8], ptr @console_unlock.ext_text, i32 1, i32 0)
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = getelementptr i8, ptr %135, i32 1
  store i8 10, ptr %135, align 1
  br label %139

139:                                              ; preds = %137, %134
  %140 = phi ptr [ %138, %137 ], [ %135, %134 ]
  %141 = ptrtoint ptr %140 to i32
  %142 = ptrtoint ptr %102 to i32
  %143 = sub i32 %141, %142
  %144 = icmp eq ptr %109, null
  br i1 %144, label %155, label %145

145:                                              ; preds = %139
  %146 = getelementptr i8, ptr %102, i32 %143
  %147 = sub i32 %103, %143
  %148 = call fastcc i32 @msg_add_dict_text(ptr noundef %146, i32 noundef %147, ptr noundef nonnull @.str.91, ptr noundef nonnull %109) #25
  %149 = add i32 %148, %143
  %150 = getelementptr i8, ptr %102, i32 %149
  %151 = sub i32 %103, %149
  %152 = getelementptr inbounds %struct.printk_info, ptr %105, i32 0, i32 6, i32 1
  %153 = call fastcc i32 @msg_add_dict_text(ptr noundef %150, i32 noundef %151, ptr noundef nonnull @.str.92, ptr noundef %152) #25
  %154 = add i32 %149, %153
  br label %155

155:                                              ; preds = %145, %139
  %156 = phi i32 [ %154, %145 ], [ %143, %139 ]
  %157 = add i32 %156, %101
  br label %158

158:                                              ; preds = %155, %77
  %159 = phi i32 [ %157, %155 ], [ 0, %77 ]
  %160 = load i1, ptr @console_msg_format, align 4
  %161 = load i8, ptr @printk_time, align 1, !range !30
  %162 = icmp ne i8 %161, 0
  %163 = call fastcc i32 @record_print_text(ptr noundef nonnull %3, i1 noundef zeroext %160, i1 noundef zeroext %162)
  %164 = load i64, ptr @console_seq, align 8
  %165 = add i64 %164, 1
  store i64 %165, ptr @console_seq, align 8
  %166 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !24
  call void @__printk_safe_enter() #25
  call void @_raw_spin_lock(ptr noundef nonnull @console_owner_lock) #25
  store ptr %11, ptr @console_owner, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !32
  %167 = load i16, ptr @console_owner_lock, align 4
  %168 = add i16 %167, 1
  store i16 %168, ptr @console_owner_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #25, !srcloc !33
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #25, !srcloc !34
  call void asm sideeffect "", "~{memory}"() #25, !srcloc !35
  %169 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_console, i32 0, i32 1), align 4
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %201

171:                                              ; preds = %158
  %172 = load i32, ptr %12, align 8
  %173 = lshr i32 %172, 5
  %174 = getelementptr i32, ptr @__cpu_online_mask, i32 %173
  %175 = load volatile i32, ptr %174, align 4
  %176 = and i32 %172, 31
  %177 = shl nuw i32 1, %176
  %178 = and i32 %177, %175
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %201, label %180

180:                                              ; preds = %171
  %181 = load volatile i32, ptr %13, align 4
  %182 = and i32 %181, 15728640
  %183 = icmp ne i32 %182, 0
  %184 = load i1, ptr @trace_console_rcuidle.__already_done, align 1
  %185 = xor i1 %184, true
  %186 = select i1 %183, i1 %185, i1 false
  br i1 %186, label %187, label %188, !prof !11

187:                                              ; preds = %180
  store i1 true, ptr @trace_console_rcuidle.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.95, i32 noundef 33, i32 noundef 9, ptr noundef null) #25
  br label %188

188:                                              ; preds = %187, %180
  call void asm sideeffect "", "~{memory}"() #25, !srcloc !41
  %189 = call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #25
  call void @rcu_irq_enter_irqson() #25
  %190 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_console, i32 0, i32 7), align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %200, label %192

192:                                              ; preds = %192, %188
  %193 = phi ptr [ %197, %192 ], [ %190, %188 ]
  %194 = load volatile ptr, ptr %193, align 4
  %195 = getelementptr inbounds %struct.tracepoint_func, ptr %193, i32 0, i32 1
  %196 = load ptr, ptr %195, align 4
  call void %194(ptr noundef %196, ptr noundef nonnull @console_unlock.text, i32 noundef %163) #25
  %197 = getelementptr %struct.tracepoint_func, ptr %193, i32 1
  %198 = load ptr, ptr %197, align 4
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %192

200:                                              ; preds = %192, %188
  call void @rcu_irq_exit_irqson() #25
  call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %189) #25
  call void asm sideeffect "", "~{memory}"() #25, !srcloc !42
  br label %201

201:                                              ; preds = %200, %171, %158
  %202 = load ptr, ptr @console_drivers, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %255, label %204

204:                                              ; preds = %201
  %205 = load i32, ptr @console_dropped, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %204
  %208 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @call_console_drivers.dropped_text, i32 noundef 64, ptr noundef nonnull @.str.94, i32 noundef %205) #25
  store i32 0, ptr @console_dropped, align 4
  %209 = load ptr, ptr @console_drivers, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %255, label %211

211:                                              ; preds = %207, %204
  %212 = phi i32 [ %208, %207 ], [ 0, %204 ]
  %213 = phi ptr [ %209, %207 ], [ %202, %204 ]
  %214 = icmp eq i32 %212, 0
  br label %215

215:                                              ; preds = %251, %211
  %216 = phi ptr [ %213, %211 ], [ %253, %251 ]
  %217 = load ptr, ptr @exclusive_console, align 4
  %218 = icmp eq ptr %217, null
  %219 = icmp eq ptr %216, %217
  %220 = select i1 %218, i1 true, i1 %219
  br i1 %220, label %221, label %251

221:                                              ; preds = %215
  %222 = getelementptr inbounds %struct.console, ptr %216, i32 0, i32 8
  %223 = load i16, ptr %222, align 4
  %224 = and i16 %223, 4
  %225 = icmp eq i16 %224, 0
  br i1 %225, label %251, label %226

226:                                              ; preds = %221
  %227 = getelementptr inbounds %struct.console, ptr %216, i32 0, i32 1
  %228 = load ptr, ptr %227, align 4
  %229 = icmp eq ptr %228, null
  br i1 %229, label %251, label %230

230:                                              ; preds = %226
  %231 = load i32, ptr %12, align 8
  %232 = lshr i32 %231, 5
  %233 = getelementptr i32, ptr @__cpu_online_mask, i32 %232
  %234 = load volatile i32, ptr %233, align 4
  %235 = and i32 %231, 31
  %236 = shl nuw i32 1, %235
  %237 = and i32 %236, %234
  %238 = icmp eq i32 %237, 0
  %239 = and i16 %223, 16
  %240 = icmp eq i16 %239, 0
  %241 = select i1 %238, i1 %240, i1 false
  br i1 %241, label %251, label %242

242:                                              ; preds = %230
  %243 = and i16 %223, 64
  %244 = icmp eq i16 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %242
  call void %228(ptr noundef nonnull %216, ptr noundef nonnull @console_unlock.ext_text, i32 noundef %159) #25
  br label %251

246:                                              ; preds = %242
  br i1 %214, label %249, label %247

247:                                              ; preds = %246
  call void %228(ptr noundef nonnull %216, ptr noundef nonnull @call_console_drivers.dropped_text, i32 noundef %212) #25
  %248 = load ptr, ptr %227, align 4
  br label %249

249:                                              ; preds = %247, %246
  %250 = phi ptr [ %248, %247 ], [ %228, %246 ]
  call void %250(ptr noundef nonnull %216, ptr noundef nonnull @console_unlock.text, i32 noundef %163) #25
  br label %251

251:                                              ; preds = %249, %245, %230, %226, %221, %215
  %252 = getelementptr inbounds %struct.console, ptr %216, i32 0, i32 14
  %253 = load ptr, ptr %252, align 4
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %215

255:                                              ; preds = %251, %207, %201
  call void @_raw_spin_lock(ptr noundef nonnull @console_owner_lock) #25
  %256 = load volatile i8, ptr @console_waiter, align 1, !range !30
  %257 = icmp eq i8 %256, 0
  store ptr null, ptr @console_owner, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !32
  %258 = load i16, ptr @console_owner_lock, align 4
  %259 = add i16 %258, 1
  store i16 %259, ptr @console_owner_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #25, !srcloc !33
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #25, !srcloc !34
  call void asm sideeffect "", "~{memory}"() #25, !srcloc !35
  br i1 %257, label %261, label %260

260:                                              ; preds = %255
  store volatile i8 0, ptr @console_waiter, align 1
  br label %261

261:                                              ; preds = %260, %255
  %262 = phi i1 [ %10, %255 ], [ false, %260 ]
  call void @__printk_safe_exit() #25
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %166) #25, !srcloc !25
  %263 = xor i1 %257, true
  %264 = zext i1 %263 to i32
  br i1 %262, label %265, label %267

265:                                              ; preds = %261
  %266 = call i32 @__cond_resched() #25
  br label %267

267:                                              ; preds = %265, %261
  %268 = phi i32 [ %264, %261 ], [ 0, %265 ]
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %39, label %284

270:                                              ; preds = %65, %39
  %271 = load i64, ptr @console_seq, align 8
  store i1 false, ptr @console_locked, align 4
  %272 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !24
  call void @__printk_safe_enter() #25
  call void @up(ptr noundef nonnull @console_sem) #25
  call void @__printk_safe_exit() #25
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %272) #25, !srcloc !25
  %273 = load ptr, ptr @prb, align 4
  %274 = call zeroext i1 @prb_read_valid(ptr noundef %273, i64 noundef %271, ptr noundef null) #25
  br i1 %274, label %275, label %284

275:                                              ; preds = %270
  %276 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !24
  call void @__printk_safe_enter() #25
  %277 = call i32 @down_trylock(ptr noundef nonnull @console_sem) #25
  call void @__printk_safe_exit() #25
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %276) #25, !srcloc !25
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %275
  %280 = load i1, ptr @console_suspended, align 4
  br i1 %280, label %281, label %283

281:                                              ; preds = %279
  %282 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !24
  call void @__printk_safe_enter() #25
  call void @up(ptr noundef nonnull @console_sem) #25
  call void @__printk_safe_exit() #25
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %282) #25, !srcloc !25
  br label %284

283:                                              ; preds = %279
  store i1 true, ptr @console_locked, align 4
  store i1 false, ptr @console_may_schedule, align 4
  br label %14

284:                                              ; preds = %281, %275, %270, %267, %37, %5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %2) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wake_up_klogd() local_unnamed_addr #0 {
  %1 = load i1, ptr @__printk_percpu_data_ready, align 1
  br i1 %1, label %2, label %21

2:                                                ; preds = %0
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !39
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.wait_queue_head, ptr @log_wait, i32 0, i32 1), align 4
  %4 = icmp eq ptr %3, getelementptr inbounds (%struct.wait_queue_head, ptr @log_wait, i32 0, i32 1)
  br i1 %4, label %20, label %5

5:                                                ; preds = %2
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !24
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #25
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #18, !srcloc !12
  %10 = add i32 %9, ptrtoint (ptr @printk_pending to i32)
  %11 = inttoptr i32 %10 to ptr
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 1
  store i32 %13, ptr %11, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #25, !srcloc !25
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #25
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #18, !srcloc !12
  %17 = add i32 %16, ptrtoint (ptr @wake_up_klogd_work to i32)
  %18 = inttoptr i32 %17 to ptr
  %19 = tail call zeroext i1 @irq_work_queue(ptr noundef %18) #25
  br label %20

20:                                               ; preds = %5, %2
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !40
  br label %21

21:                                               ; preds = %20, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vprintk_default(ptr noundef %0, [1 x i32] %1) #0 {
  %3 = tail call i32 @vprintk_emit(i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef %0, [1 x i32] %1)
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vprintk(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @console_msg_format_setup(ptr nocapture noundef readonly %0) #3 section ".init.text" {
  %2 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(7) @.str.85)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store i1 true, ptr @console_msg_format, align 4
  br label %5

5:                                                ; preds = %4, %1
  %6 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(8) @.str.86)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i1 false, ptr @console_msg_format, align 4
  br label %9

9:                                                ; preds = %8, %5
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @console_setup(ptr noundef %0) #7 section ".init.text" {
  %2 = alloca [20 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 19, i1 false), !annotation !9
  %3 = load i8, ptr %0, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(5) @.str.87)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5, %1
  %9 = tail call fastcc i32 @__add_preferred_console(ptr noundef nonnull @.str.88, i32 noundef 0, ptr noundef null, ptr noundef null, i1 noundef zeroext true)
  br label %44

10:                                               ; preds = %5
  %11 = add i8 %3, -48
  %12 = icmp ult i8 %11, 10
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  store i32 1400468596, ptr %2, align 4
  %14 = getelementptr inbounds i8, ptr %2, i32 4
  %15 = call ptr @strncpy(ptr noundef %14, ptr noundef %0, i32 noundef 15)
  br label %18

16:                                               ; preds = %10
  %17 = call ptr @strncpy(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 19)
  br label %18

18:                                               ; preds = %16, %13
  %19 = getelementptr inbounds [20 x i8], ptr %2, i32 0, i32 19
  store i8 0, ptr %19, align 1
  %20 = call ptr @strchr(ptr noundef %0, i32 noundef 44)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %20, i32 1
  store i8 0, ptr %20, align 1
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi ptr [ %23, %22 ], [ null, %18 ]
  %26 = load i8, ptr %2, align 4
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %36, %24
  %29 = phi i8 [ %38, %36 ], [ %26, %24 ]
  %30 = phi ptr [ %37, %36 ], [ %2, %24 ]
  %31 = zext i8 %29 to i32
  %32 = add nsw i32 %31, -48
  %33 = icmp ult i32 %32, 10
  %34 = icmp eq i8 %29, 44
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = getelementptr i8, ptr %30, i32 1
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %28

40:                                               ; preds = %36, %28, %24
  %41 = phi ptr [ %2, %24 ], [ %30, %28 ], [ %37, %36 ]
  %42 = call i32 @simple_strtoul(ptr noundef %41, ptr noundef null, i32 noundef 10) #25
  store i8 0, ptr %41, align 1
  %43 = call fastcc i32 @__add_preferred_console(ptr noundef nonnull %2, i32 noundef %42, ptr noundef %25, ptr noundef null, i1 noundef zeroext true)
  store i32 1, ptr @console_set_on_cmdline, align 4
  br label %44

44:                                               ; preds = %40, %8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #25
  ret i32 1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @add_preferred_console(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #12 {
  %4 = tail call fastcc i32 @__add_preferred_console(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef null, i1 noundef zeroext false)
  ret i32 %4
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__add_preferred_console(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readnone %3, i1 noundef zeroext %4) unnamed_addr #12 {
  %6 = zext i1 %4 to i8
  %7 = load i8, ptr @console_cmdline, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %86, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @strcmp(ptr noundef nonnull @console_cmdline, ptr noundef %0)
  %11 = icmp eq i32 %10, 0
  %12 = load i32, ptr getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 0, i32 1), align 4
  %13 = icmp eq i32 %12, %1
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %23

15:                                               ; preds = %80, %71, %62, %53, %44, %35, %26, %9
  %16 = phi i32 [ 0, %9 ], [ 1, %26 ], [ 2, %35 ], [ 3, %44 ], [ 4, %53 ], [ 5, %62 ], [ 6, %71 ], [ 7, %80 ]
  %17 = phi ptr [ @console_cmdline, %9 ], [ getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 1), %26 ], [ getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 2), %35 ], [ getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 3), %44 ], [ getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 4), %53 ], [ getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 5), %62 ], [ getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 6), %71 ], [ getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 7), %80 ]
  %18 = icmp eq ptr %3, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 %16, ptr @preferred_console, align 4
  br label %20

20:                                               ; preds = %19, %15
  br i1 %4, label %21, label %96

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.console_cmdline, ptr %17, i32 0, i32 2
  store i8 1, ptr %22, align 4
  br label %96

23:                                               ; preds = %9
  %24 = load i8, ptr getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 1), align 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %86, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @strcmp(ptr noundef getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 1), ptr noundef %0)
  %28 = icmp eq i32 %27, 0
  %29 = load i32, ptr getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 1, i32 1), align 4
  %30 = icmp eq i32 %29, %1
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %15, label %32

32:                                               ; preds = %26
  %33 = load i8, ptr getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 2), align 4
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %86, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @strcmp(ptr noundef getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 2), ptr noundef %0)
  %37 = icmp eq i32 %36, 0
  %38 = load i32, ptr getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 2, i32 1), align 4
  %39 = icmp eq i32 %38, %1
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %15, label %41

41:                                               ; preds = %35
  %42 = load i8, ptr getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 3), align 4
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %86, label %44

44:                                               ; preds = %41
  %45 = tail call i32 @strcmp(ptr noundef getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 3), ptr noundef %0)
  %46 = icmp eq i32 %45, 0
  %47 = load i32, ptr getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 3, i32 1), align 4
  %48 = icmp eq i32 %47, %1
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %15, label %50

50:                                               ; preds = %44
  %51 = load i8, ptr getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 4), align 4
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %86, label %53

53:                                               ; preds = %50
  %54 = tail call i32 @strcmp(ptr noundef getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 4), ptr noundef %0)
  %55 = icmp eq i32 %54, 0
  %56 = load i32, ptr getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 4, i32 1), align 4
  %57 = icmp eq i32 %56, %1
  %58 = select i1 %55, i1 %57, i1 false
  br i1 %58, label %15, label %59

59:                                               ; preds = %53
  %60 = load i8, ptr getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 5), align 4
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %86, label %62

62:                                               ; preds = %59
  %63 = tail call i32 @strcmp(ptr noundef getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 5), ptr noundef %0)
  %64 = icmp eq i32 %63, 0
  %65 = load i32, ptr getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 5, i32 1), align 4
  %66 = icmp eq i32 %65, %1
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %15, label %68

68:                                               ; preds = %62
  %69 = load i8, ptr getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 6), align 4
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %68
  %72 = tail call i32 @strcmp(ptr noundef getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 6), ptr noundef %0)
  %73 = icmp eq i32 %72, 0
  %74 = load i32, ptr getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 6, i32 1), align 4
  %75 = icmp eq i32 %74, %1
  %76 = select i1 %73, i1 %75, i1 false
  br i1 %76, label %15, label %77

77:                                               ; preds = %71
  %78 = load i8, ptr getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 7), align 4
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = tail call i32 @strcmp(ptr noundef getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 7), ptr noundef %0)
  %82 = icmp eq i32 %81, 0
  %83 = load i32, ptr getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 7, i32 1), align 4
  %84 = icmp eq i32 %83, %1
  %85 = select i1 %82, i1 %84, i1 false
  br i1 %85, label %15, label %96

86:                                               ; preds = %77, %68, %59, %50, %41, %32, %23, %5
  %87 = phi i32 [ 0, %5 ], [ 1, %23 ], [ 2, %32 ], [ 3, %41 ], [ 4, %50 ], [ 5, %59 ], [ 6, %68 ], [ 7, %77 ]
  %88 = phi ptr [ @console_cmdline, %5 ], [ getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 1), %23 ], [ getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 2), %32 ], [ getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 3), %41 ], [ getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 4), %50 ], [ getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 5), %59 ], [ getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 6), %68 ], [ getelementptr inbounds ([8 x %struct.console_cmdline], ptr @console_cmdline, i32 0, i32 7), %77 ]
  %89 = icmp eq ptr %3, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 %87, ptr @preferred_console, align 4
  br label %91

91:                                               ; preds = %90, %86
  %92 = tail call i32 @strlcpy(ptr noundef %88, ptr noundef %0, i32 noundef 16) #25
  %93 = getelementptr inbounds %struct.console_cmdline, ptr %88, i32 0, i32 3
  store ptr %2, ptr %93, align 4
  %94 = getelementptr inbounds %struct.console_cmdline, ptr %88, i32 0, i32 2
  store i8 %6, ptr %94, align 4
  %95 = getelementptr inbounds %struct.console_cmdline, ptr %88, i32 0, i32 1
  store i32 %1, ptr %95, align 4
  br label %96

96:                                               ; preds = %91, %80, %21, %20
  %97 = phi i32 [ 0, %91 ], [ 0, %21 ], [ 0, %20 ], [ -7, %80 ]
  ret i32 %97
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @console_suspend_disable(ptr nocapture noundef readnone %0) #13 section ".init.text" {
  store i8 0, ptr @console_suspend_enabled, align 1
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @console_verbose() #14 {
  %1 = load i32, ptr @console_printk, align 4
  %2 = icmp ne i32 %1, 0
  %3 = load i8, ptr @printk_console_no_auto_verbose, align 1
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 15, ptr @console_printk, align 4
  br label %7

7:                                                ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @suspend_console() local_unnamed_addr #0 {
  %1 = load i8, ptr @console_suspend_enabled, align 1, !range !30
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #28
  tail call void @down(ptr noundef nonnull @console_sem) #25
  %5 = load i1, ptr @console_suspended, align 4
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  store i1 true, ptr @console_locked, align 4
  store i1 true, ptr @console_may_schedule, align 4
  br label %7

7:                                                ; preds = %6, %3
  store i1 true, ptr @console_suspended, align 4
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !24
  tail call void @__printk_safe_enter() #25
  tail call void @up(ptr noundef nonnull @console_sem) #25
  tail call void @__printk_safe_exit() #25
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #25, !srcloc !25
  br label %9

9:                                                ; preds = %7, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @console_lock() #0 {
  tail call void @down(ptr noundef nonnull @console_sem) #25
  %1 = load i1, ptr @console_suspended, align 4
  br i1 %1, label %3, label %2

2:                                                ; preds = %0
  store i1 true, ptr @console_locked, align 4
  store i1 true, ptr @console_may_schedule, align 4
  br label %3

3:                                                ; preds = %2, %0
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #15

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @resume_console() local_unnamed_addr #0 {
  %1 = load i8, ptr @console_suspend_enabled, align 1, !range !30
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @down(ptr noundef nonnull @console_sem) #25
  store i1 false, ptr @console_suspended, align 4
  tail call void @console_unlock()
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @console_trylock() #0 {
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !24
  tail call void @__printk_safe_enter() #25
  %2 = tail call i32 @down_trylock(ptr noundef nonnull @console_sem) #25
  tail call void @__printk_safe_exit() #25
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %1) #25, !srcloc !25
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load i1, ptr @console_suspended, align 4
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !24
  tail call void @__printk_safe_enter() #25
  tail call void @up(ptr noundef nonnull @console_sem) #25
  tail call void @__printk_safe_exit() #25
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #25, !srcloc !25
  br label %9

8:                                                ; preds = %4
  store i1 true, ptr @console_locked, align 4
  store i1 false, ptr @console_may_schedule, align 4
  br label %9

9:                                                ; preds = %8, %6, %0
  %10 = phi i32 [ 0, %6 ], [ 1, %8 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @is_console_locked() #6 {
  %1 = load i1, ptr @console_locked, align 4
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @record_print_text(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [32 x i8], align 1
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.printk_info, ptr %5, i32 0, i32 2
  %7 = load i16, ptr %6, align 8
  %8 = zext i16 %7 to i32
  %9 = getelementptr inbounds %struct.printk_record, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.printk_record, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !9
  %13 = tail call i32 @llvm.umin.i32(i32 %10, i32 %8)
  br i1 %1, label %14, label %25

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.printk_info, ptr %5, i32 0, i32 3
  %16 = load i8, ptr %15, align 2
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 3
  %19 = getelementptr inbounds %struct.printk_info, ptr %5, i32 0, i32 4
  %20 = load i8, ptr %19, align 1
  %21 = lshr i8 %20, 5
  %22 = zext i8 %21 to i32
  %23 = or i32 %18, %22
  %24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.83, i32 noundef %23) #25
  br label %25

25:                                               ; preds = %14, %3
  %26 = phi i32 [ %24, %14 ], [ 0, %3 ]
  br i1 %2, label %27, label %47

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.printk_info, ptr %5, i32 0, i32 1
  %29 = load i64, ptr %28, align 8
  %30 = getelementptr i8, ptr %4, i32 %26
  %31 = trunc i64 %29 to i32
  %32 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %29, i32 0) #26, !srcloc !17
  %33 = extractvalue { i64, i32 } %32, 0
  %34 = extractvalue { i64, i32 } %32, 1
  %35 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %29, i64 %33, i32 %34) #26, !srcloc !18
  %36 = extractvalue { i64, i32 } %35, 0
  %37 = lshr i64 %36, 29
  %38 = trunc i64 %37 to i32
  %39 = mul i32 %38, -1000000000
  %40 = add i32 %39, %31
  %41 = udiv i32 %40, 1000
  %42 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %30, ptr noundef nonnull @.str.84, i32 noundef %38, i32 noundef %41) #25
  %43 = add i32 %42, %26
  %44 = add i32 %43, 1
  %45 = getelementptr i8, ptr %4, i32 %43
  store i8 32, ptr %45, align 1
  %46 = getelementptr i8, ptr %4, i32 %44
  store i8 0, ptr %46, align 1
  br label %47

47:                                               ; preds = %27, %25
  %48 = phi i32 [ %44, %27 ], [ %26, %25 ]
  %49 = add i32 %10, -1
  br label %50

50:                                               ; preds = %84, %47
  %51 = phi i32 [ %13, %47 ], [ %87, %84 ]
  %52 = phi ptr [ %12, %47 ], [ %85, %84 ]
  %53 = phi i1 [ false, %47 ], [ %76, %84 ]
  %54 = phi i32 [ 0, %47 ], [ %80, %84 ]
  %55 = tail call ptr @memchr(ptr noundef %52, i32 noundef 10, i32 noundef %51)
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %50
  %58 = ptrtoint ptr %55 to i32
  %59 = ptrtoint ptr %52 to i32
  %60 = sub i32 %58, %59
  br label %62

61:                                               ; preds = %50
  br i1 %53, label %88, label %62

62:                                               ; preds = %61, %57
  %63 = phi i32 [ %60, %57 ], [ %51, %61 ]
  %64 = add i32 %54, %48
  %65 = add i32 %64, 2
  %66 = add i32 %65, %51
  %67 = icmp ugt i32 %66, %10
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = add i32 %65, %63
  %70 = icmp ugt i32 %69, %10
  br i1 %70, label %88, label %71

71:                                               ; preds = %68
  %72 = xor i32 %64, -1
  %73 = add i32 %49, %72
  br label %74

74:                                               ; preds = %71, %62
  %75 = phi i32 [ %73, %71 ], [ %51, %62 ]
  %76 = phi i1 [ true, %71 ], [ %53, %62 ]
  %77 = getelementptr i8, ptr %52, i32 %48
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %77, ptr align 1 %52, i32 %75, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %52, ptr nonnull align 1 %4, i32 %48, i1 false)
  %78 = add i32 %63, %48
  %79 = add i32 %78, 1
  %80 = add i32 %79, %54
  %81 = icmp eq i32 %75, %63
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = getelementptr i8, ptr %52, i32 %78
  store i8 10, ptr %83, align 1
  br label %88

84:                                               ; preds = %74
  %85 = getelementptr i8, ptr %52, i32 %79
  %86 = xor i32 %63, -1
  %87 = add i32 %75, %86
  br label %50

88:                                               ; preds = %82, %68, %61
  %89 = phi i32 [ %80, %82 ], [ %54, %61 ], [ %54, %68 ]
  %90 = icmp eq i32 %10, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %11, align 4
  %93 = getelementptr i8, ptr %92, i32 %89
  store i8 0, ptr %93, align 1
  br label %94

94:                                               ; preds = %91, %88
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  ret i32 %89
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__printk_safe_enter() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__printk_safe_exit() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @console_conditional_schedule() #0 section ".sched.text" {
  %1 = load i1, ptr @console_may_schedule, align 4
  br i1 %1, label %2, label %4

2:                                                ; preds = %0
  %3 = tail call i32 @__cond_resched() #25
  br label %4

4:                                                ; preds = %2, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @console_unblank() local_unnamed_addr #0 {
  %1 = load i32, ptr @oops_in_progress, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !24
  tail call void @__printk_safe_enter() #25
  %5 = tail call i32 @down_trylock(ptr noundef nonnull @console_sem) #25
  tail call void @__printk_safe_exit() #25
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #25, !srcloc !25
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %27

7:                                                ; preds = %0
  tail call void @down(ptr noundef nonnull @console_sem) #25
  br label %8

8:                                                ; preds = %7, %3
  store i1 true, ptr @console_locked, align 4
  store i1 false, ptr @console_may_schedule, align 4
  %9 = load ptr, ptr @console_drivers, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %22, %8
  %12 = phi ptr [ %24, %22 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.console, ptr %12, i32 0, i32 8
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, 4
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.console, ptr %12, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void %19() #25
  br label %22

22:                                               ; preds = %21, %17, %11
  %23 = getelementptr inbounds %struct.console, ptr %12, i32 0, i32 14
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %11

26:                                               ; preds = %22, %8
  tail call void @console_unlock()
  br label %27

27:                                               ; preds = %26, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @console_flush_on_panic(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !24
  tail call void @__printk_safe_enter() #25
  %3 = tail call i32 @down_trylock(ptr noundef nonnull @console_sem) #25
  tail call void @__printk_safe_exit() #25
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #25, !srcloc !25
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load i1, ptr @console_suspended, align 4
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !24
  tail call void @__printk_safe_enter() #25
  tail call void @up(ptr noundef nonnull @console_sem) #25
  tail call void @__printk_safe_exit() #25
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #25, !srcloc !25
  br label %10

9:                                                ; preds = %5
  store i1 true, ptr @console_locked, align 4
  br label %10

10:                                               ; preds = %9, %7, %1
  store i1 false, ptr @console_may_schedule, align 4
  %11 = icmp eq i32 %0, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = load ptr, ptr @prb, align 4
  %14 = tail call i64 @prb_first_valid_seq(ptr noundef %13) #25
  store i64 %14, ptr @console_seq, align 8
  br label %15

15:                                               ; preds = %12, %10
  tail call void @console_unlock()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @prb_first_valid_seq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @console_device(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @down(ptr noundef nonnull @console_sem) #25
  %2 = load i1, ptr @console_suspended, align 4
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  store i1 true, ptr @console_locked, align 4
  store i1 true, ptr @console_may_schedule, align 4
  br label %4

4:                                                ; preds = %3, %1
  %5 = load ptr, ptr @console_drivers, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %15, %4
  %8 = phi ptr [ %17, %15 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.console, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = tail call ptr %10(ptr noundef nonnull %8, ptr noundef %0) #25
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %12, %7
  %16 = getelementptr inbounds %struct.console, ptr %8, i32 0, i32 14
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %7

19:                                               ; preds = %15, %12, %4
  %20 = phi ptr [ null, %4 ], [ %13, %12 ], [ null, %15 ]
  tail call void @console_unlock()
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @console_stop(ptr nocapture noundef %0) #0 {
  tail call void @down(ptr noundef nonnull @console_sem) #25
  %2 = load i1, ptr @console_suspended, align 4
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  store i1 true, ptr @console_locked, align 4
  store i1 true, ptr @console_may_schedule, align 4
  br label %4

4:                                                ; preds = %3, %1
  %5 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 8
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, -5
  store i16 %7, ptr %5, align 4
  tail call void @console_unlock()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @console_start(ptr nocapture noundef %0) #0 {
  tail call void @down(ptr noundef nonnull @console_sem) #25
  %2 = load i1, ptr @console_suspended, align 4
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  store i1 true, ptr @console_locked, align 4
  store i1 true, ptr @console_may_schedule, align 4
  br label %4

4:                                                ; preds = %3, %1
  %5 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 8
  %6 = load i16, ptr %5, align 4
  %7 = or i16 %6, 4
  store i16 %7, ptr %5, align 4
  tail call void @console_unlock()
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @keep_bootcon_setup(ptr nocapture noundef readnone %0) #7 section ".init.text" {
  store i1 true, ptr @keep_bootcon, align 4
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96) #28
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @register_console(ptr noundef %0) #0 {
  %2 = load ptr, ptr @console_drivers, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %45, label %5

4:                                                ; preds = %12
  br i1 %3, label %45, label %16

5:                                                ; preds = %12, %1
  %6 = phi ptr [ %14, %12 ], [ %2, %1 ]
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %8, label %12, !prof !11

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %10 = load i16, ptr %9, align 2
  %11 = sext i16 %10 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 2954, i32 noundef 9, ptr noundef nonnull @.str.52, ptr noundef nonnull %0, i32 noundef %11) #25
  br label %174

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.console, ptr %6, i32 0, i32 14
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %4, label %5

16:                                               ; preds = %16, %4
  %17 = phi ptr [ %28, %16 ], [ %2, %4 ]
  %18 = phi i1 [ %26, %16 ], [ false, %4 ]
  %19 = phi i1 [ %24, %16 ], [ false, %4 ]
  %20 = getelementptr inbounds %struct.console, ptr %17, i32 0, i32 8
  %21 = load i16, ptr %20, align 4
  %22 = and i16 %21, 8
  %23 = icmp eq i16 %22, 0
  %24 = select i1 %23, i1 true, i1 %19
  %25 = xor i1 %23, true
  %26 = select i1 %25, i1 true, i1 %18
  %27 = getelementptr inbounds %struct.console, ptr %17, i32 0, i32 14
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %16

30:                                               ; preds = %16
  %31 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 8
  %32 = load i16, ptr %31, align 4
  %33 = and i16 %32, 8
  %34 = icmp eq i16 %33, 0
  %35 = xor i1 %24, true
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %39 = load i16, ptr %38, align 2
  %40 = sext i16 %39 to i32
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %0, i32 noundef %40) #28
  br label %174

42:                                               ; preds = %30
  %43 = load i32, ptr @preferred_console, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %50, label %85

45:                                               ; preds = %4, %1
  %46 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 8
  %47 = load i16, ptr %46, align 4
  %48 = load i32, ptr @preferred_console, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %60, label %85

50:                                               ; preds = %42
  br i1 %3, label %60, label %51

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.console, ptr %2, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.console, ptr %2, i32 0, i32 8
  %57 = load i16, ptr %56, align 4
  %58 = and i16 %57, 8
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %85, label %60

60:                                               ; preds = %55, %51, %50, %45
  %61 = phi i16 [ %32, %55 ], [ %32, %51 ], [ %32, %50 ], [ %47, %45 ]
  %62 = phi ptr [ %31, %55 ], [ %31, %51 ], [ %31, %50 ], [ %46, %45 ]
  %63 = phi i1 [ %26, %55 ], [ %26, %51 ], [ %26, %50 ], [ false, %45 ]
  %64 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %65 = load i16, ptr %64, align 2
  %66 = icmp slt i16 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i16 0, ptr %64, align 2
  br label %68

68:                                               ; preds = %67, %60
  %69 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 5
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %68
  %73 = tail call i32 %70(ptr noundef %0, ptr noundef null) #25
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load i16, ptr %62, align 4
  br label %77

77:                                               ; preds = %75, %68
  %78 = phi i16 [ %76, %75 ], [ %61, %68 ]
  %79 = or i16 %78, 4
  store i16 %79, ptr %62, align 4
  %80 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %77
  %84 = or i16 %78, 6
  store i16 %84, ptr %62, align 4
  br label %85

85:                                               ; preds = %83, %77, %72, %55, %45, %42
  %86 = phi i1 [ false, %45 ], [ %63, %83 ], [ %63, %77 ], [ %63, %72 ], [ %26, %55 ], [ %26, %42 ]
  %87 = phi ptr [ %46, %45 ], [ %62, %83 ], [ %62, %77 ], [ %62, %72 ], [ %31, %55 ], [ %31, %42 ]
  %88 = tail call fastcc i32 @try_enable_preferred_console(ptr noundef %0, i1 noundef zeroext true)
  %89 = icmp eq i32 %88, -2
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = tail call fastcc i32 @try_enable_preferred_console(ptr noundef %0, i1 noundef zeroext false)
  br label %92

92:                                               ; preds = %90, %85
  %93 = phi i32 [ %91, %90 ], [ %88, %85 ]
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %174

95:                                               ; preds = %92
  %96 = load i16, ptr %87, align 4
  %97 = zext i16 %96 to i32
  %98 = and i32 %97, 32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %174

100:                                              ; preds = %95
  %101 = and i32 %97, 10
  %102 = icmp eq i32 %101, 2
  %103 = select i1 %86, i1 %102, i1 false
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = and i16 %96, -2
  store i16 %105, ptr %87, align 4
  br label %106

106:                                              ; preds = %104, %100
  tail call void @down(ptr noundef nonnull @console_sem) #25
  %107 = load i1, ptr @console_suspended, align 4
  br i1 %107, label %109, label %108

108:                                              ; preds = %106
  store i1 true, ptr @console_locked, align 4
  store i1 true, ptr @console_may_schedule, align 4
  br label %109

109:                                              ; preds = %108, %106
  %110 = load i16, ptr %87, align 4
  %111 = and i16 %110, 2
  %112 = icmp ne i16 %111, 0
  %113 = load ptr, ptr @console_drivers, align 4
  %114 = icmp eq ptr %113, null
  %115 = select i1 %112, i1 true, i1 %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 14
  store ptr %113, ptr %117, align 4
  store ptr %0, ptr @console_drivers, align 4
  br i1 %114, label %123, label %118

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.console, ptr %113, i32 0, i32 8
  %120 = load i16, ptr %119, align 4
  %121 = and i16 %120, -3
  store i16 %121, ptr %119, align 4
  %122 = load i16, ptr %87, align 4
  br label %123

123:                                              ; preds = %118, %116
  %124 = phi i16 [ %122, %118 ], [ %110, %116 ]
  %125 = or i16 %124, 2
  store i16 %125, ptr %87, align 4
  br label %131

126:                                              ; preds = %109
  %127 = getelementptr inbounds %struct.console, ptr %113, i32 0, i32 14
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 14
  store ptr %128, ptr %129, align 4
  store ptr %0, ptr %127, align 4
  %130 = load i16, ptr %87, align 4
  br label %131

131:                                              ; preds = %126, %123
  %132 = phi i16 [ %130, %126 ], [ %125, %123 ]
  %133 = and i16 %132, 64
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %131
  %136 = load i32, ptr @nr_ext_console_drivers, align 4
  %137 = add i32 %136, 1
  store i32 %137, ptr @nr_ext_console_drivers, align 4
  br label %138

138:                                              ; preds = %135, %131
  %139 = and i16 %132, 1
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %138
  store ptr %0, ptr @exclusive_console, align 4
  %142 = load i64, ptr @console_seq, align 8
  store i64 %142, ptr @exclusive_console_stop_seq, align 8
  tail call void @mutex_lock(ptr noundef nonnull @syslog_lock) #25
  %143 = load i64, ptr @syslog_seq, align 8
  store i64 %143, ptr @console_seq, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @syslog_lock) #25
  br label %144

144:                                              ; preds = %141, %138
  tail call void @console_unlock()
  tail call void @console_sysfs_notify() #25
  %145 = load i16, ptr %87, align 4
  %146 = and i16 %145, 8
  %147 = icmp eq i16 %146, 0
  %148 = select i1 %147, ptr @.str.56, ptr @.str.55
  %149 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %150 = load i16, ptr %149, align 2
  %151 = sext i16 %150 to i32
  %152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull %148, ptr noundef %0, i32 noundef %151) #28
  br i1 %86, label %153, label %174

153:                                              ; preds = %144
  %154 = load i16, ptr %87, align 4
  %155 = and i16 %154, 10
  %156 = icmp ne i16 %155, 2
  %157 = load i1, ptr @keep_bootcon, align 4
  %158 = select i1 %156, i1 true, i1 %157
  %159 = load ptr, ptr @console_drivers, align 4
  %160 = icmp eq ptr %159, null
  %161 = select i1 %158, i1 true, i1 %160
  br i1 %161, label %174, label %162

162:                                              ; preds = %170, %153
  %163 = phi ptr [ %172, %170 ], [ %159, %153 ]
  %164 = getelementptr inbounds %struct.console, ptr %163, i32 0, i32 8
  %165 = load i16, ptr %164, align 4
  %166 = and i16 %165, 8
  %167 = icmp eq i16 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %162
  %169 = tail call i32 @unregister_console(ptr noundef nonnull %163)
  br label %170

170:                                              ; preds = %168, %162
  %171 = getelementptr inbounds %struct.console, ptr %163, i32 0, i32 14
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %162

174:                                              ; preds = %170, %153, %144, %95, %92, %37, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @try_enable_preferred_console(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 7
  %5 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  br label %6

6:                                                ; preds = %57, %2
  %7 = phi i32 [ 0, %2 ], [ %58, %57 ]
  %8 = phi ptr [ @console_cmdline, %2 ], [ %59, %57 ]
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %61, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.console_cmdline, ptr %8, i32 0, i32 2
  %13 = load i8, ptr %12, align 4, !range !30
  %14 = icmp eq i8 %13, %3
  br i1 %14, label %15, label %57

15:                                               ; preds = %11
  %16 = load ptr, ptr %4, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.console_cmdline, ptr %8, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.console_cmdline, ptr %8, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %16(ptr noundef %0, ptr noundef %8, i32 noundef %20, ptr noundef %22) #25
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %49, label %25

25:                                               ; preds = %18, %15
  %26 = tail call i32 @strcmp(ptr noundef %8, ptr noundef %0)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %25
  %29 = load i16, ptr %5, align 2
  %30 = icmp sgt i16 %29, -1
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = zext i16 %29 to i32
  %33 = getelementptr inbounds %struct.console_cmdline, ptr %8, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, %32
  br i1 %35, label %40, label %57

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.console_cmdline, ptr %8, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = trunc i32 %38 to i16
  store i16 %39, ptr %5, align 2
  br label %40

40:                                               ; preds = %36, %31
  %41 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.console_cmdline, ptr %8, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 %42(ptr noundef %0, ptr noundef %46) #25
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %44, %40, %18
  %50 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 8
  %51 = load i16, ptr %50, align 4
  %52 = or i16 %51, 4
  store i16 %52, ptr %50, align 4
  %53 = load i32, ptr @preferred_console, align 4
  %54 = icmp eq i32 %7, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %49
  %56 = or i16 %51, 6
  store i16 %56, ptr %50, align 4
  br label %72

57:                                               ; preds = %31, %25, %11
  %58 = add nuw nsw i32 %7, 1
  %59 = getelementptr %struct.console_cmdline, ptr %8, i32 1
  %60 = icmp eq i32 %58, 8
  br i1 %60, label %61, label %6

61:                                               ; preds = %57, %6
  %62 = phi ptr [ %59, %57 ], [ %8, %6 ]
  %63 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 8
  %64 = load i16, ptr %63, align 4
  %65 = and i16 %64, 4
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.console_cmdline, ptr %62, i32 0, i32 2
  %69 = load i8, ptr %68, align 4, !range !30
  %70 = icmp eq i8 %69, %3
  br i1 %70, label %72, label %71

71:                                               ; preds = %67, %61
  br label %72

72:                                               ; preds = %71, %67, %55, %49, %44
  %73 = phi i32 [ -2, %71 ], [ %47, %44 ], [ 0, %55 ], [ 0, %49 ], [ 0, %67 ]
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_sysfs_notify() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unregister_console(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 8
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 8
  %5 = icmp eq i16 %4, 0
  %6 = select i1 %5, ptr @.str.56, ptr @.str.55
  %7 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %8 = load i16, ptr %7, align 2
  %9 = sext i16 %8 to i32
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull %6, ptr noundef %0, i32 noundef %9) #28
  tail call void @down(ptr noundef nonnull @console_sem) #25
  %11 = load i1, ptr @console_suspended, align 4
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i1 true, ptr @console_locked, align 4
  store i1 true, ptr @console_may_schedule, align 4
  br label %13

13:                                               ; preds = %12, %1
  %14 = load ptr, ptr @console_drivers, align 4
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 14
  %18 = load ptr, ptr %17, align 4
  store ptr %18, ptr @console_drivers, align 4
  br label %30

19:                                               ; preds = %22, %13
  %20 = phi ptr [ %24, %22 ], [ %14, %13 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %56, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.console, ptr %20, i32 0, i32 14
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %19

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.console, ptr %20, i32 0, i32 14
  %28 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 14
  %29 = load ptr, ptr %28, align 4
  store ptr %29, ptr %27, align 4
  br label %30

30:                                               ; preds = %26, %16
  %31 = phi ptr [ %14, %26 ], [ %18, %16 ]
  %32 = load i16, ptr %2, align 4
  %33 = and i16 %32, 64
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, ptr @nr_ext_console_drivers, align 4
  %37 = add i32 %36, -1
  store i32 %37, ptr @nr_ext_console_drivers, align 4
  br label %38

38:                                               ; preds = %35, %30
  %39 = icmp eq ptr %31, null
  %40 = and i16 %32, 2
  %41 = icmp eq i16 %40, 0
  %42 = select i1 %39, i1 true, i1 %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.console, ptr %31, i32 0, i32 8
  %45 = load i16, ptr %44, align 4
  %46 = or i16 %45, 2
  store i16 %46, ptr %44, align 4
  %47 = load i16, ptr %2, align 4
  br label %48

48:                                               ; preds = %43, %38
  %49 = phi i16 [ %47, %43 ], [ %32, %38 ]
  %50 = and i16 %49, -5
  store i16 %50, ptr %2, align 4
  tail call void @console_unlock()
  tail call void @console_sysfs_notify() #25
  %51 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 6
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %48
  %55 = tail call i32 %52(ptr noundef %0) #25
  br label %59

56:                                               ; preds = %19
  %57 = load i16, ptr %2, align 4
  %58 = and i16 %57, -5
  store i16 %58, ptr %2, align 4
  tail call void @console_unlock()
  br label %59

59:                                               ; preds = %56, %54, %48
  %60 = phi i32 [ -19, %56 ], [ %55, %54 ], [ 0, %48 ]
  ret i32 %60
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @console_init() local_unnamed_addr #7 section ".init.text" {
  tail call void @n_tty_init() #29
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_initcall_level, i32 0, i32 1), align 4
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %16

3:                                                ; preds = %0
  %4 = tail call ptr @llvm.thread.pointer() #25
  %5 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = lshr i32 %6, 5
  %8 = getelementptr i32, ptr @__cpu_online_mask, i32 %7
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %6, 31
  %11 = shl nuw i32 1, %10
  %12 = and i32 %11, %9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !43
  %15 = tail call i32 @__traceiter_initcall_level(ptr noundef null, ptr noundef nonnull @.str.58) #25
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !44
  br label %16

16:                                               ; preds = %14, %3, %0
  br i1 icmp ult (ptr @__con_initcall_start, ptr @__con_initcall_end), label %17, label %55

17:                                               ; preds = %52, %16
  %18 = phi ptr [ %53, %52 ], [ @__con_initcall_start, %16 ]
  %19 = load ptr, ptr %18, align 4
  %20 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_initcall_start, i32 0, i32 1), align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = tail call ptr @llvm.thread.pointer() #25
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = lshr i32 %25, 5
  %27 = getelementptr i32, ptr @__cpu_online_mask, i32 %26
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %25, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %30, %28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %22
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !45
  %34 = tail call i32 @__traceiter_initcall_start(ptr noundef null, ptr noundef %19) #25
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !46
  br label %35

35:                                               ; preds = %33, %22, %17
  %36 = tail call i32 %19() #25
  %37 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_initcall_finish, i32 0, i32 1), align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = tail call ptr @llvm.thread.pointer() #25
  %41 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = lshr i32 %42, 5
  %44 = getelementptr i32, ptr @__cpu_online_mask, i32 %43
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %42, 31
  %47 = shl nuw i32 1, %46
  %48 = and i32 %47, %45
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %39
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !47
  %51 = tail call i32 @__traceiter_initcall_finish(ptr noundef null, ptr noundef %19, i32 noundef %36) #25
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !48
  br label %52

52:                                               ; preds = %50, %39, %35
  %53 = getelementptr ptr, ptr %18, i32 1
  %54 = icmp ult ptr %53, @__con_initcall_end
  br i1 %54, label %17, label %55

55:                                               ; preds = %52, %16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @n_tty_init() local_unnamed_addr #16 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @printk_late_init() #7 section ".init.text" {
  %1 = load ptr, ptr @console_drivers, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %58, label %3

3:                                                ; preds = %54, %0
  %4 = phi ptr [ %56, %54 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.console, ptr %4, i32 0, i32 8
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 8
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %54, label %9

9:                                                ; preds = %3
  %10 = icmp uge ptr %4, @__init_begin
  %11 = icmp ult ptr %4, @__init_end
  %12 = and i1 %10, %11
  br i1 %12, label %48, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %4, i32 68
  %15 = icmp uge ptr %14, @__init_begin
  %16 = icmp ult ptr %14, @__init_end
  %17 = and i1 %15, %16
  br i1 %17, label %48, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.console, ptr %4, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp uge ptr %20, @__init_begin
  %22 = icmp ule ptr %20, @__init_end
  %23 = and i1 %21, %22
  br i1 %23, label %48, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.console, ptr %4, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp uge ptr %26, @__init_begin
  %28 = icmp ule ptr %26, @__init_end
  %29 = and i1 %27, %28
  br i1 %29, label %48, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.console, ptr %4, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp uge ptr %32, @__init_begin
  %34 = icmp ule ptr %32, @__init_end
  %35 = and i1 %33, %34
  br i1 %35, label %48, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.console, ptr %4, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = icmp uge ptr %38, @__init_begin
  %40 = icmp ule ptr %38, @__init_end
  %41 = and i1 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.console, ptr %4, i32 0, i32 13
  %44 = load ptr, ptr %43, align 4
  %45 = icmp uge ptr %44, @__init_begin
  %46 = icmp ule ptr %44, @__init_end
  %47 = and i1 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42, %36, %30, %24, %18, %13, %9
  %49 = getelementptr inbounds %struct.console, ptr %4, i32 0, i32 9
  %50 = load i16, ptr %49, align 2
  %51 = sext i16 %50 to i32
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull %4, i32 noundef %51) #28
  %53 = tail call i32 @unregister_console(ptr noundef nonnull %4)
  br label %54

54:                                               ; preds = %48, %42, %3
  %55 = getelementptr inbounds %struct.console, ptr %4, i32 0, i32 14
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %3

58:                                               ; preds = %54, %0
  %59 = tail call i32 @__cpuhp_setup_state(i32 noundef 28, ptr noundef nonnull @.str.99, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @console_cpu_notify, i1 noundef zeroext false) #25
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62, !prof !11

61:                                               ; preds = %58
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 3211, i32 noundef 9, ptr noundef null) #25
  br label %62

62:                                               ; preds = %61, %58
  %63 = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.100, i1 noundef zeroext false, ptr noundef nonnull @console_cpu_notify, ptr noundef null, i1 noundef zeroext false) #25
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66, !prof !11

65:                                               ; preds = %62
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 3214, i32 noundef 9, ptr noundef null) #25
  br label %66

66:                                               ; preds = %65, %62
  tail call void @printk_sysctl_init() #29
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_work_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @defer_console_output() local_unnamed_addr #0 {
  %1 = load i1, ptr @__printk_percpu_data_ready, align 1
  br i1 %1, label %2, label %16

2:                                                ; preds = %0
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !49
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #25
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #18, !srcloc !12
  %6 = add i32 %5, ptrtoint (ptr @printk_pending to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, 2
  store i32 %9, ptr %7, align 4
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #25
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #18, !srcloc !12
  %13 = add i32 %12, ptrtoint (ptr @wake_up_klogd_work to i32)
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call zeroext i1 @irq_work_queue(ptr noundef %14) #25
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !50
  br label %16

16:                                               ; preds = %2, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @printk_trigger_flush() local_unnamed_addr #0 {
  %1 = load i1, ptr @__printk_percpu_data_ready, align 1
  br i1 %1, label %2, label %16

2:                                                ; preds = %0
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !49
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #25
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #18, !srcloc !12
  %6 = add i32 %5, ptrtoint (ptr @printk_pending to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, 2
  store i32 %9, ptr %7, align 4
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #25
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #18, !srcloc !12
  %13 = add i32 %12, ptrtoint (ptr @wake_up_klogd_work to i32)
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call zeroext i1 @irq_work_queue(ptr noundef %14) #25
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !50
  br label %16

16:                                               ; preds = %2, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vprintk_deferred(ptr noundef %0, [1 x i32] %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @suppress_printk, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %35, !prof !10

5:                                                ; preds = %2
  %6 = load i32, ptr @printk_delay_msec, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %8, %5
  %9 = phi i32 [ %10, %8 ], [ %6, %5 ]
  %10 = add i32 %9, -1
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #25
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %13, label %8

13:                                               ; preds = %8, %5
  %14 = tail call i32 @vprintk_store(i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef %0, [1 x i32] %1) #25
  %15 = load i1, ptr @__printk_percpu_data_ready, align 1
  br i1 %15, label %16, label %52

16:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !39
  %17 = load volatile ptr, ptr getelementptr inbounds (%struct.wait_queue_head, ptr @log_wait, i32 0, i32 1), align 4
  %18 = icmp eq ptr %17, getelementptr inbounds (%struct.wait_queue_head, ptr @log_wait, i32 0, i32 1)
  br i1 %18, label %34, label %19

19:                                               ; preds = %16
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !24
  %21 = tail call i32 @llvm.read_register.i32(metadata !0) #25
  %22 = inttoptr i32 %21 to ptr
  %23 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %22) #18, !srcloc !12
  %24 = add i32 %23, ptrtoint (ptr @printk_pending to i32)
  %25 = inttoptr i32 %24 to ptr
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, 1
  store i32 %27, ptr %25, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #25, !srcloc !25
  %28 = tail call i32 @llvm.read_register.i32(metadata !0) #25
  %29 = inttoptr i32 %28 to ptr
  %30 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %29) #18, !srcloc !12
  %31 = add i32 %30, ptrtoint (ptr @wake_up_klogd_work to i32)
  %32 = inttoptr i32 %31 to ptr
  %33 = tail call zeroext i1 @irq_work_queue(ptr noundef %32) #25
  br label %34

34:                                               ; preds = %19, %16
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !40
  br label %35

35:                                               ; preds = %34, %2
  %36 = phi i32 [ %14, %34 ], [ 0, %2 ]
  %37 = load i1, ptr @__printk_percpu_data_ready, align 1
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !49
  %39 = tail call i32 @llvm.read_register.i32(metadata !0) #25
  %40 = inttoptr i32 %39 to ptr
  %41 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %40) #18, !srcloc !12
  %42 = add i32 %41, ptrtoint (ptr @printk_pending to i32)
  %43 = inttoptr i32 %42 to ptr
  %44 = load i32, ptr %43, align 4
  %45 = or i32 %44, 2
  store i32 %45, ptr %43, align 4
  %46 = tail call i32 @llvm.read_register.i32(metadata !0) #25
  %47 = inttoptr i32 %46 to ptr
  %48 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %47) #18, !srcloc !12
  %49 = add i32 %48, ptrtoint (ptr @wake_up_klogd_work to i32)
  %50 = inttoptr i32 %49 to ptr
  %51 = tail call zeroext i1 @irq_work_queue(ptr noundef %50) #25
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !50
  br label %52

52:                                               ; preds = %38, %35, %13
  %53 = phi i32 [ %36, %35 ], [ %36, %38 ], [ %14, %13 ]
  ret i32 %53
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @_printk_deferred(ptr noundef %0, ...) local_unnamed_addr #7 {
  %2 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  store i32 0, ptr %2, align 4, !annotation !9
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load i32, ptr %2, align 4
  %4 = insertvalue [1 x i32] poison, i32 %3, 0
  %5 = call i32 @vprintk_deferred(ptr noundef %0, [1 x i32] %4)
  call void @llvm.va_end(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__printk_ratelimit(ptr noundef %0) #0 {
  %2 = tail call i32 @___ratelimit(ptr noundef nonnull @printk_ratelimit_state, ptr noundef %0) #25
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @printk_timed_ratelimit(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = load i32, ptr %0, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = sub i32 %3, %4
  %8 = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #25
  %9 = icmp ugt i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %6, %2
  %11 = load volatile i32, ptr @jiffies, align 64
  store i32 %11, ptr %0, align 4
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i1 [ true, %10 ], [ false, %6 ]
  ret i1 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kmsg_dump_register(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.kmsg_dumper, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dump_list_lock) #25
  %7 = getelementptr inbounds %struct.kmsg_dumper, ptr %0, i32 0, i32 3
  %8 = load i8, ptr %7, align 4, !range !30
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  store i8 1, ptr %7, align 4
  %11 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dump_list, i32 0, i32 1), align 4
  store ptr @dump_list, ptr %0, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !51
  store volatile ptr %0, ptr %11, align 4
  store ptr %0, ptr getelementptr inbounds (%struct.list_head, ptr @dump_list, i32 0, i32 1), align 4
  br label %13

13:                                               ; preds = %10, %5
  %14 = phi i32 [ -16, %5 ], [ 0, %10 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dump_list_lock, i32 noundef %6) #25
  br label %15

15:                                               ; preds = %13, %1
  %16 = phi i32 [ %14, %13 ], [ -22, %1 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kmsg_dump_unregister(ptr nocapture noundef %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dump_list_lock) #25
  %3 = getelementptr inbounds %struct.kmsg_dumper, ptr %0, i32 0, i32 3
  %4 = load i8, ptr %3, align 4, !range !30
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  store i8 0, ptr %3, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i32 [ 0, %6 ], [ -22, %1 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dump_list_lock, i32 noundef %2) #25
  tail call void @synchronize_rcu() #25
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @kmsg_dump_reason_str(i32 noundef %0) #17 {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 4
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds [4 x ptr], ptr @switch.table.kmsg_dump_reason_str, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ @.str.64, %1 ]
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kmsg_dump(i32 noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !52
  %2 = load volatile ptr, ptr @dump_list, align 4
  %3 = icmp eq ptr %2, @dump_list
  br i1 %3, label %24, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr @always_kmsg_dump, align 1
  br label %6

6:                                                ; preds = %20, %4
  %7 = phi i8 [ %21, %20 ], [ %5, %4 ]
  %8 = phi ptr [ %22, %20 ], [ %2, %4 ]
  %9 = getelementptr inbounds %struct.kmsg_dumper, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = icmp eq i8 %7, 0
  %13 = select i1 %12, i32 2, i32 5
  %14 = select i1 %11, i32 %13, i32 %10
  %15 = icmp ult i32 %14, %0
  br i1 %15, label %20, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.kmsg_dumper, ptr %8, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef %8, i32 noundef %0) #25
  %19 = load i8, ptr @always_kmsg_dump, align 1
  br label %20

20:                                               ; preds = %16, %6
  %21 = phi i8 [ %7, %6 ], [ %19, %16 ]
  %22 = load volatile ptr, ptr %8, align 4
  %23 = icmp eq ptr %22, @dump_list
  br i1 %23, label %24, label %6

24:                                               ; preds = %20, %1
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !53
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @kmsg_dump_get_line(ptr nocapture noundef %0, i1 noundef zeroext %1, ptr noundef %2, i32 noundef %3, ptr noundef writeonly %4) #0 {
  %6 = alloca [32 x i8], align 1
  %7 = alloca %struct.printk_info, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.printk_record, align 4
  br label %10

10:                                               ; preds = %10, %5
  %11 = load volatile i32, ptr @clear_seq, align 8
  %12 = and i32 %11, 1
  %13 = getelementptr %struct.latched_seq, ptr @clear_seq, i32 0, i32 1, i32 %12
  %14 = load i64, ptr %13, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !15
  %15 = load volatile i32, ptr @clear_seq, align 8
  %16 = icmp eq i32 %15, %11
  br i1 %16, label %17, label %10

17:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %7) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %7, i8 0, i32 88, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #25
  store i32 0, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #25
  %18 = load i64, ptr %0, align 8
  %19 = icmp ult i64 %18, %14
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i64 %14, ptr %0, align 8
  br label %21

21:                                               ; preds = %20, %17
  %22 = phi i64 [ %14, %20 ], [ %18, %17 ]
  store ptr %7, ptr %9, align 4
  %23 = getelementptr inbounds %struct.printk_record, ptr %9, i32 0, i32 1
  store ptr %2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.printk_record, ptr %9, i32 0, i32 2
  store i32 %3, ptr %24, align 4
  %25 = icmp eq ptr %2, null
  %26 = load ptr, ptr @prb, align 4
  br i1 %25, label %34, label %27

27:                                               ; preds = %21
  %28 = call zeroext i1 @prb_read_valid(ptr noundef %26, i64 noundef %22, ptr noundef nonnull %9) #25
  br i1 %28, label %29, label %86

29:                                               ; preds = %27
  %30 = load i8, ptr @printk_time, align 1, !range !30
  %31 = icmp ne i8 %30, 0
  %32 = call fastcc i32 @record_print_text(ptr noundef nonnull %9, i1 noundef zeroext %1, i1 noundef zeroext %31)
  %33 = load ptr, ptr %9, align 4
  br label %81

34:                                               ; preds = %21
  %35 = call zeroext i1 @prb_read_valid_info(ptr noundef %26, i64 noundef %22, ptr noundef nonnull %7, ptr noundef nonnull %8) #25
  br i1 %35, label %36, label %86

36:                                               ; preds = %34
  %37 = load i32, ptr %8, align 4
  %38 = load i8, ptr @printk_time, align 1, !range !30
  %39 = icmp eq i8 %38, 0
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #25
  br i1 %1, label %40, label %51

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.printk_info, ptr %7, i32 0, i32 3
  %42 = load i8, ptr %41, align 2
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 3
  %45 = getelementptr inbounds %struct.printk_info, ptr %7, i32 0, i32 4
  %46 = load i8, ptr %45, align 1
  %47 = lshr i8 %46, 5
  %48 = zext i8 %47 to i32
  %49 = or i32 %44, %48
  %50 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.83, i32 noundef %49) #25
  br label %51

51:                                               ; preds = %40, %36
  %52 = phi i32 [ %50, %40 ], [ 0, %36 ]
  br i1 %39, label %73, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.printk_info, ptr %7, i32 0, i32 1
  %55 = load i64, ptr %54, align 8
  %56 = getelementptr i8, ptr %6, i32 %52
  %57 = trunc i64 %55 to i32
  %58 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %55, i32 0) #26, !srcloc !17
  %59 = extractvalue { i64, i32 } %58, 0
  %60 = extractvalue { i64, i32 } %58, 1
  %61 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %55, i64 %59, i32 %60) #26, !srcloc !18
  %62 = extractvalue { i64, i32 } %61, 0
  %63 = lshr i64 %62, 29
  %64 = trunc i64 %63 to i32
  %65 = mul i32 %64, -1000000000
  %66 = add i32 %65, %57
  %67 = udiv i32 %66, 1000
  %68 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %56, ptr noundef nonnull @.str.84, i32 noundef %64, i32 noundef %67) #25
  %69 = add i32 %68, %52
  %70 = add i32 %69, 1
  %71 = getelementptr i8, ptr %6, i32 %69
  store i8 32, ptr %71, align 1
  %72 = getelementptr i8, ptr %6, i32 %70
  store i8 0, ptr %72, align 1
  br label %73

73:                                               ; preds = %53, %51
  %74 = phi i32 [ %70, %53 ], [ %52, %51 ]
  %75 = mul i32 %74, %37
  %76 = getelementptr inbounds %struct.printk_info, ptr %7, i32 0, i32 2
  %77 = load i16, ptr %76, align 8
  %78 = zext i16 %77 to i32
  %79 = add i32 %75, 1
  %80 = add i32 %79, %78
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #25
  br label %81

81:                                               ; preds = %73, %29
  %82 = phi ptr [ %33, %29 ], [ %7, %73 ]
  %83 = phi i32 [ %32, %29 ], [ %80, %73 ]
  %84 = load i64, ptr %82, align 8
  %85 = add i64 %84, 1
  store i64 %85, ptr %0, align 8
  br label %86

86:                                               ; preds = %81, %34, %27
  %87 = phi i32 [ %83, %81 ], [ 0, %27 ], [ 0, %34 ]
  %88 = phi i1 [ true, %81 ], [ false, %27 ], [ false, %34 ]
  %89 = icmp eq ptr %4, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  store i32 %87, ptr %4, align 4
  br label %91

91:                                               ; preds = %90, %86
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %7) #25
  ret i1 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @kmsg_dump_get_buffer(ptr nocapture noundef %0, i1 noundef zeroext %1, ptr noundef %2, i32 noundef %3, ptr noundef writeonly %4) #0 {
  %6 = alloca %struct.printk_info, align 8
  %7 = alloca %struct.printk_record, align 4
  br label %8

8:                                                ; preds = %8, %5
  %9 = load volatile i32, ptr @clear_seq, align 8
  %10 = and i32 %9, 1
  %11 = getelementptr %struct.latched_seq, ptr @clear_seq, i32 0, i32 1, i32 %10
  %12 = load i64, ptr %11, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !15
  %13 = load volatile i32, ptr @clear_seq, align 8
  %14 = icmp eq i32 %13, %9
  br i1 %14, label %15, label %8

15:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %6) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %6, i8 0, i32 88, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #25
  %16 = load i8, ptr @printk_time, align 1, !range !30
  %17 = icmp ne i8 %16, 0
  %18 = icmp ne ptr %2, null
  %19 = icmp ne i32 %3, 0
  %20 = and i1 %18, %19
  br i1 %20, label %21, label %65

21:                                               ; preds = %15
  %22 = load i64, ptr %0, align 8
  %23 = icmp ult i64 %22, %12
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i64 %12, ptr %0, align 8
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i64 [ %12, %24 ], [ %22, %21 ]
  %27 = load ptr, ptr @prb, align 4
  %28 = call zeroext i1 @prb_read_valid_info(ptr noundef %27, i64 noundef %26, ptr noundef nonnull %6, ptr noundef null) #25
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load i64, ptr %0, align 8
  br label %36

31:                                               ; preds = %25
  %32 = load i64, ptr %6, align 8
  %33 = load i64, ptr %0, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i64 %32, ptr %0, align 8
  br label %36

36:                                               ; preds = %35, %31, %29
  %37 = phi i64 [ %30, %29 ], [ %32, %31 ], [ %32, %35 ]
  %38 = getelementptr inbounds %struct.kmsg_dump_iter, ptr %0, i32 0, i32 1
  %39 = load i64, ptr %38, align 8
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %36
  %42 = add i32 %3, -1
  %43 = call fastcc i64 @find_first_fitting_seq(i64 noundef %37, i64 noundef %39, i32 noundef %42, i1 noundef zeroext %1, i1 noundef zeroext %17)
  store ptr %6, ptr %7, align 4
  %44 = getelementptr inbounds %struct.printk_record, ptr %7, i32 0, i32 1
  store ptr %2, ptr %44, align 4
  %45 = getelementptr inbounds %struct.printk_record, ptr %7, i32 0, i32 2
  store i32 %3, ptr %45, align 4
  %46 = load ptr, ptr @prb, align 4
  %47 = call zeroext i1 @prb_read_valid(ptr noundef %46, i64 noundef %43, ptr noundef nonnull %7) #25
  br i1 %47, label %48, label %63

48:                                               ; preds = %54, %41
  %49 = phi i32 [ %56, %54 ], [ 0, %41 ]
  %50 = load ptr, ptr %7, align 4
  %51 = load i64, ptr %50, align 8
  %52 = load i64, ptr %38, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = call fastcc i32 @record_print_text(ptr noundef nonnull %7, i1 noundef zeroext %1, i1 noundef zeroext %17)
  %56 = add i32 %55, %49
  %57 = getelementptr i8, ptr %2, i32 %56
  %58 = sub i32 %3, %56
  store ptr %6, ptr %7, align 4
  store ptr %57, ptr %44, align 4
  store i32 %58, ptr %45, align 4
  %59 = load i64, ptr %6, align 8
  %60 = add i64 %59, 1
  %61 = load ptr, ptr @prb, align 4
  %62 = call zeroext i1 @prb_read_valid(ptr noundef %61, i64 noundef %60, ptr noundef nonnull %7) #25
  br i1 %62, label %48, label %63

63:                                               ; preds = %54, %48, %41
  %64 = phi i32 [ 0, %41 ], [ %49, %48 ], [ %56, %54 ]
  store i64 %43, ptr %38, align 8
  br label %65

65:                                               ; preds = %63, %36, %15
  %66 = phi i32 [ 0, %36 ], [ %64, %63 ], [ 0, %15 ]
  %67 = phi i1 [ false, %36 ], [ true, %63 ], [ false, %15 ]
  %68 = icmp eq ptr %4, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  store i32 %66, ptr %4, align 4
  br label %70

70:                                               ; preds = %69, %65
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #25
  ret i1 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i64 @find_first_fitting_seq(i64 noundef %0, i64 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca [32 x i8], align 1
  %7 = alloca [32 x i8], align 1
  %8 = alloca %struct.printk_info, align 8
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %8) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %8, i8 0, i32 88, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #25
  store i32 0, ptr %9, align 4, !annotation !9
  %10 = load ptr, ptr @prb, align 4
  %11 = call zeroext i1 @prb_read_valid_info(ptr noundef %10, i64 noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %9) #25
  %12 = load i64, ptr %8, align 8
  %13 = icmp ult i64 %12, %1
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %66

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.printk_info, ptr %8, i32 0, i32 3
  %17 = getelementptr inbounds %struct.printk_info, ptr %8, i32 0, i32 4
  %18 = getelementptr inbounds %struct.printk_info, ptr %8, i32 0, i32 1
  %19 = getelementptr inbounds %struct.printk_info, ptr %8, i32 0, i32 2
  br label %20

20:                                               ; preds = %51, %15
  %21 = phi i32 [ 0, %15 ], [ %58, %51 ]
  %22 = load i32, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #25
  br i1 %3, label %23, label %32

23:                                               ; preds = %20
  %24 = load i8, ptr %16, align 2
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 3
  %27 = load i8, ptr %17, align 1
  %28 = lshr i8 %27, 5
  %29 = zext i8 %28 to i32
  %30 = or i32 %26, %29
  %31 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.83, i32 noundef %30) #25
  br label %32

32:                                               ; preds = %23, %20
  %33 = phi i32 [ %31, %23 ], [ 0, %20 ]
  br i1 %4, label %34, label %51

34:                                               ; preds = %32
  %35 = load i64, ptr %18, align 8
  %36 = getelementptr i8, ptr %7, i32 %33
  %37 = trunc i64 %35 to i32
  %38 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %35, i32 0) #26, !srcloc !17
  %39 = extractvalue { i64, i32 } %38, 0
  %40 = extractvalue { i64, i32 } %38, 1
  %41 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %35, i64 %39, i32 %40) #26, !srcloc !18
  %42 = extractvalue { i64, i32 } %41, 0
  %43 = lshr i64 %42, 29
  %44 = trunc i64 %43 to i32
  %45 = mul i32 %44, -1000000000
  %46 = add i32 %45, %37
  %47 = udiv i32 %46, 1000
  %48 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %36, ptr noundef nonnull @.str.84, i32 noundef %44, i32 noundef %47) #25
  %49 = add i32 %48, %33
  %50 = add i32 %49, 1
  br label %51

51:                                               ; preds = %34, %32
  %52 = phi i32 [ %50, %34 ], [ %33, %32 ]
  %53 = mul i32 %52, %22
  %54 = load i16, ptr %19, align 8
  %55 = zext i16 %54 to i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #25
  %56 = add i32 %21, 1
  %57 = add i32 %56, %53
  %58 = add i32 %57, %55
  %59 = load i64, ptr %8, align 8
  %60 = add i64 %59, 1
  %61 = load ptr, ptr @prb, align 4
  %62 = call zeroext i1 @prb_read_valid_info(ptr noundef %61, i64 noundef %60, ptr noundef nonnull %8, ptr noundef nonnull %9) #25
  %63 = load i64, ptr %8, align 8
  %64 = icmp ult i64 %63, %1
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %20, label %66

66:                                               ; preds = %51, %5
  %67 = phi i32 [ 0, %5 ], [ %58, %51 ]
  %68 = phi i64 [ %0, %5 ], [ %60, %51 ]
  %69 = call i64 @llvm.umin.i64(i64 %68, i64 %1)
  %70 = load ptr, ptr @prb, align 4
  %71 = call zeroext i1 @prb_read_valid_info(ptr noundef %70, i64 noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %9) #25
  %72 = icmp ugt i32 %67, %2
  %73 = select i1 %71, i1 %72, i1 false
  %74 = load i64, ptr %8, align 8
  %75 = icmp ult i64 %74, %69
  %76 = select i1 %73, i1 %75, i1 false
  br i1 %76, label %77, label %130

77:                                               ; preds = %66
  %78 = getelementptr inbounds %struct.printk_info, ptr %8, i32 0, i32 3
  %79 = getelementptr inbounds %struct.printk_info, ptr %8, i32 0, i32 4
  %80 = getelementptr inbounds %struct.printk_info, ptr %8, i32 0, i32 1
  %81 = getelementptr inbounds %struct.printk_info, ptr %8, i32 0, i32 2
  br label %82

82:                                               ; preds = %113, %77
  %83 = phi i32 [ %67, %77 ], [ %120, %113 ]
  %84 = load i32, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #25
  br i1 %3, label %85, label %94

85:                                               ; preds = %82
  %86 = load i8, ptr %78, align 2
  %87 = zext i8 %86 to i32
  %88 = shl nuw nsw i32 %87, 3
  %89 = load i8, ptr %79, align 1
  %90 = lshr i8 %89, 5
  %91 = zext i8 %90 to i32
  %92 = or i32 %88, %91
  %93 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.83, i32 noundef %92) #25
  br label %94

94:                                               ; preds = %85, %82
  %95 = phi i32 [ %93, %85 ], [ 0, %82 ]
  br i1 %4, label %96, label %113

96:                                               ; preds = %94
  %97 = load i64, ptr %80, align 8
  %98 = getelementptr i8, ptr %6, i32 %95
  %99 = trunc i64 %97 to i32
  %100 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %97, i32 0) #26, !srcloc !17
  %101 = extractvalue { i64, i32 } %100, 0
  %102 = extractvalue { i64, i32 } %100, 1
  %103 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %97, i64 %101, i32 %102) #26, !srcloc !18
  %104 = extractvalue { i64, i32 } %103, 0
  %105 = lshr i64 %104, 29
  %106 = trunc i64 %105 to i32
  %107 = mul i32 %106, -1000000000
  %108 = add i32 %107, %99
  %109 = udiv i32 %108, 1000
  %110 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %98, ptr noundef nonnull @.str.84, i32 noundef %106, i32 noundef %109) #25
  %111 = add i32 %110, %95
  %112 = add i32 %111, 1
  br label %113

113:                                              ; preds = %96, %94
  %114 = phi i32 [ %112, %96 ], [ %95, %94 ]
  %115 = mul i32 %114, %84
  %116 = load i16, ptr %81, align 8
  %117 = zext i16 %116 to i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #25
  %118 = xor i32 %115, -1
  %119 = add i32 %83, %118
  %120 = sub i32 %119, %117
  %121 = load i64, ptr %8, align 8
  %122 = add i64 %121, 1
  %123 = load ptr, ptr @prb, align 4
  %124 = call zeroext i1 @prb_read_valid_info(ptr noundef %123, i64 noundef %122, ptr noundef nonnull %8, ptr noundef nonnull %9) #25
  %125 = icmp ugt i32 %120, %2
  %126 = select i1 %124, i1 %125, i1 false
  %127 = load i64, ptr %8, align 8
  %128 = icmp ult i64 %127, %69
  %129 = select i1 %126, i1 %128, i1 false
  br i1 %129, label %82, label %130

130:                                              ; preds = %113, %66
  %131 = phi i64 [ %0, %66 ], [ %122, %113 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %8) #25
  ret i64 %131
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kmsg_dump_rewind(ptr nocapture noundef writeonly %0) #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = load volatile i32, ptr @clear_seq, align 8
  %4 = and i32 %3, 1
  %5 = getelementptr %struct.latched_seq, ptr @clear_seq, i32 0, i32 1, i32 %4
  %6 = load i64, ptr %5, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !15
  %7 = load volatile i32, ptr @clear_seq, align 8
  %8 = icmp eq i32 %7, %3
  br i1 %8, label %9, label %2

9:                                                ; preds = %2
  store i64 %6, ptr %0, align 8
  %10 = load ptr, ptr @prb, align 4
  %11 = tail call i64 @prb_next_seq(ptr noundef %10) #25
  %12 = getelementptr inbounds %struct.kmsg_dump_iter, ptr %0, i32 0, i32 1
  store i64 %11, ptr %12, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__printk_wait_on_cpu_lock() #0 {
  br label %1

1:                                                ; preds = %1, %0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !54
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #25, !srcloc !55
  %2 = load volatile i32, ptr @printk_cpulock_owner, align 4
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %1

4:                                                ; preds = %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__printk_cpu_trylock() #0 {
  %1 = tail call ptr @llvm.thread.pointer() #25
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @printk_cpulock_owner) #25, !srcloc !13
  br label %4

4:                                                ; preds = %4, %0
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @printk_cpulock_owner, ptr nonnull @printk_cpulock_owner, i32 -1, i32 %3, ptr nonnull elementtype(i32) @printk_cpulock_owner) #25, !srcloc !56
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %4

8:                                                ; preds = %4
  %9 = extractvalue { i32, i32 } %5, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !57
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = icmp eq i32 %9, %3
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @printk_cpulock_nested) #25, !srcloc !13
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @printk_cpulock_nested, ptr nonnull @printk_cpulock_nested, i32 1, ptr nonnull elementtype(i32) @printk_cpulock_nested) #25, !srcloc !58
  br label %15

15:                                               ; preds = %13, %11, %8
  %16 = phi i32 [ 1, %13 ], [ 1, %8 ], [ 0, %11 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__printk_cpu_unlock() #0 {
  %1 = load volatile i32, ptr @printk_cpulock_nested, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @printk_cpulock_nested) #25, !srcloc !13
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @printk_cpulock_nested, ptr nonnull @printk_cpulock_nested, i32 1, ptr nonnull elementtype(i32) @printk_cpulock_nested) #25, !srcloc !59
  br label %6

5:                                                ; preds = %0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !60
  store volatile i32 -1, ptr @printk_cpulock_owner, align 4
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_console(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #25
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_console, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.67, ptr noundef %13) #25
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #25
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #15

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #18

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @devkmsg_emit(i32 noundef %0, i32 noundef %1, ptr nocapture readnone %2, ...) unnamed_addr #7 {
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.va_start(ptr nonnull %4)
  %5 = load i32, ptr %4, align 4
  %6 = insertvalue [1 x i32] poison, i32 %5, 0
  %7 = call i32 @vprintk_emit(i32 noundef %0, i32 noundef %1, ptr noundef null, ptr noundef nonnull @.str.73, [1 x i32] %6)
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #20

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #22

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #21

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @log_buf_len_update(i64 noundef %0) unnamed_addr #7 section ".init.text" {
  %2 = icmp ugt i64 %0, 2147483648
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #28
  br label %8

5:                                                ; preds = %1
  %6 = icmp eq i64 %0, 0
  %7 = trunc i64 %0 to i32
  br i1 %6, label %19, label %8

8:                                                ; preds = %5, %3
  %9 = phi i32 [ -2147483648, %3 ], [ %7, %5 ]
  %10 = add i32 %9, -1
  %11 = icmp eq i32 %10, 0
  %12 = tail call i32 @llvm.ctlz.i32(i32 %10, i1 false) #25, !range !23
  %13 = sub nuw nsw i32 32, %12
  %14 = shl nuw i32 1, %13
  %15 = select i1 %11, i32 1, i32 %14
  %16 = load i32, ptr @log_buf_len, align 4
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  store i32 %15, ptr @new_log_buf_len, align 4
  br label %19

19:                                               ; preds = %18, %8, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memblock_alloc_try_nid(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prb_record_text_space(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vscnprintf(ptr noundef, i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #23

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @msg_add_dict_text(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = tail call i32 @strlen(ptr noundef %3)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %91, label %7

7:                                                ; preds = %4
  %8 = getelementptr i8, ptr %0, i32 %1
  %9 = icmp ugt ptr %8, %0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = getelementptr i8, ptr %0, i32 1
  store i8 32, ptr %0, align 1
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi ptr [ %11, %10 ], [ %0, %7 ]
  %14 = ptrtoint ptr %13 to i32
  %15 = ptrtoint ptr %0 to i32
  %16 = sub i32 %14, %15
  %17 = getelementptr i8, ptr %0, i32 %16
  %18 = tail call i32 @strlen(ptr noundef %2)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %45, label %20

20:                                               ; preds = %12
  %21 = ptrtoint ptr %8 to i32
  br label %22

22:                                               ; preds = %41, %20
  %23 = phi i32 [ 0, %20 ], [ %43, %41 ]
  %24 = phi ptr [ %17, %20 ], [ %42, %41 ]
  %25 = getelementptr i8, ptr %2, i32 %23
  %26 = load i8, ptr %25, align 1
  %27 = add i8 %26, -127
  %28 = icmp ult i8 %27, -95
  %29 = icmp eq i8 %26, 92
  %30 = or i1 %29, %28
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = zext i8 %26 to i32
  %33 = ptrtoint ptr %24 to i32
  %34 = sub i32 %21, %33
  %35 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %24, i32 noundef %34, ptr noundef nonnull @.str.93, i32 noundef %32) #25
  %36 = getelementptr i8, ptr %24, i32 %35
  br label %41

37:                                               ; preds = %22
  %38 = icmp ult ptr %24, %8
  br i1 %38, label %39, label %41

39:                                               ; preds = %37
  %40 = getelementptr i8, ptr %24, i32 1
  store i8 %26, ptr %24, align 1
  br label %41

41:                                               ; preds = %39, %37, %31
  %42 = phi ptr [ %36, %31 ], [ %40, %39 ], [ %24, %37 ]
  %43 = add nuw i32 %23, 1
  %44 = icmp eq i32 %43, %18
  br i1 %44, label %45, label %22

45:                                               ; preds = %41, %12
  %46 = phi ptr [ %17, %12 ], [ %42, %41 ]
  %47 = icmp ult ptr %46, %8
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = getelementptr i8, ptr %46, i32 1
  store i8 61, ptr %46, align 1
  br label %50

50:                                               ; preds = %48, %45
  %51 = phi ptr [ %49, %48 ], [ %46, %45 ]
  %52 = ptrtoint ptr %51 to i32
  %53 = ptrtoint ptr %17 to i32
  %54 = sub i32 %52, %53
  %55 = add i32 %54, %16
  %56 = getelementptr i8, ptr %0, i32 %55
  %57 = ptrtoint ptr %8 to i32
  br label %58

58:                                               ; preds = %77, %50
  %59 = phi i32 [ 0, %50 ], [ %79, %77 ]
  %60 = phi ptr [ %56, %50 ], [ %78, %77 ]
  %61 = getelementptr i8, ptr %3, i32 %59
  %62 = load i8, ptr %61, align 1
  %63 = add i8 %62, -127
  %64 = icmp ult i8 %63, -95
  %65 = icmp eq i8 %62, 92
  %66 = or i1 %65, %64
  br i1 %66, label %67, label %73

67:                                               ; preds = %58
  %68 = zext i8 %62 to i32
  %69 = ptrtoint ptr %60 to i32
  %70 = sub i32 %57, %69
  %71 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %60, i32 noundef %70, ptr noundef nonnull @.str.93, i32 noundef %68) #25
  %72 = getelementptr i8, ptr %60, i32 %71
  br label %77

73:                                               ; preds = %58
  %74 = icmp ult ptr %60, %8
  br i1 %74, label %75, label %77

75:                                               ; preds = %73
  %76 = getelementptr i8, ptr %60, i32 1
  store i8 %62, ptr %60, align 1
  br label %77

77:                                               ; preds = %75, %73, %67
  %78 = phi ptr [ %72, %67 ], [ %76, %75 ], [ %60, %73 ]
  %79 = add nuw i32 %59, 1
  %80 = icmp eq i32 %79, %5
  br i1 %80, label %81, label %58

81:                                               ; preds = %77
  %82 = icmp ult ptr %78, %8
  br i1 %82, label %83, label %85

83:                                               ; preds = %81
  %84 = getelementptr i8, ptr %78, i32 1
  store i8 10, ptr %78, align 1
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi ptr [ %84, %83 ], [ %78, %81 ]
  %87 = ptrtoint ptr %86 to i32
  %88 = ptrtoint ptr %56 to i32
  %89 = sub i32 %55, %88
  %90 = add i32 %89, %87
  br label %91

91:                                               ; preds = %85, %4
  %92 = phi i32 [ %90, %85 ], [ 0, %4 ]
  ret i32 %92
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_enter_irqson() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_exit_irqson() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_initcall_level(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_initcall_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_initcall_finish(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @console_cpu_notify(i32 noundef %0) #0 {
  %2 = load i8, ptr @cpuhp_tasks_frozen, align 1, !range !30
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !24
  tail call void @__printk_safe_enter() #25
  %6 = tail call i32 @down_trylock(ptr noundef nonnull @console_sem) #25
  tail call void @__printk_safe_exit() #25
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %5) #25, !srcloc !25
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = load i1, ptr @console_suspended, align 4
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !24
  tail call void @__printk_safe_enter() #25
  tail call void @up(ptr noundef nonnull @console_sem) #25
  tail call void @__printk_safe_exit() #25
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #25, !srcloc !25
  br label %13

12:                                               ; preds = %8
  store i1 true, ptr @console_locked, align 4
  store i1 false, ptr @console_may_schedule, align 4
  tail call void @console_unlock()
  br label %13

13:                                               ; preds = %12, %10, %4, %1
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @printk_sysctl_init() local_unnamed_addr #16 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wake_up_klogd_work_func(ptr nocapture noundef readnone %0) #0 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #25
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #18, !srcloc !12
  %5 = add i32 %4, ptrtoint (ptr @printk_pending to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load i32, ptr %6, align 4
  store i32 0, ptr %6, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !24
  tail call void @__printk_safe_enter() #25
  %12 = tail call i32 @down_trylock(ptr noundef nonnull @console_sem) #25
  tail call void @__printk_safe_exit() #25
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #25, !srcloc !25
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i1, ptr @console_suspended, align 4
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #25, !srcloc !24
  tail call void @__printk_safe_enter() #25
  tail call void @up(ptr noundef nonnull @console_sem) #25
  tail call void @__printk_safe_exit() #25
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #25, !srcloc !25
  br label %19

18:                                               ; preds = %14
  store i1 true, ptr @console_locked, align 4
  store i1 false, ptr @console_may_schedule, align 4
  tail call void @console_unlock()
  br label %19

19:                                               ; preds = %18, %16, %10, %1
  %20 = and i32 %7, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @__wake_up(ptr noundef nonnull @log_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #25
  br label %23

23:                                               ; preds = %22, %19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #15

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #22

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #16 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { nounwind readonly }
attributes #19 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #21 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #22 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #23 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #24 = { argmemonly nofree nounwind readonly willreturn }
attributes #25 = { nounwind }
attributes #26 = { nounwind readnone }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { cold }
attributes #29 = { cold nounwind }
attributes #30 = { nounwind allocsize(2) }

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
!12 = !{i64 418912}
!13 = !{i64 504973, i64 2147994944, i64 2147994970, i64 2147995017, i64 2147995039, i64 2147995067, i64 2147995087}
!14 = !{i64 494832, i64 494852, i64 494880, i64 494910, i64 494926}
!15 = !{i64 2149344904}
!16 = !{i64 494587, i64 494608}
!17 = !{i64 934792, i64 934819, i64 934841, i64 934869}
!18 = !{i64 935200, i64 935227, i64 935260, i64 935281, i64 935308, i64 935334}
!19 = !{i64 2151596840, i64 2151596865}
!20 = !{i64 4092374}
!21 = !{i64 4092571}
!22 = !{i64 2151577850}
!23 = !{i32 0, i32 33}
!24 = !{i64 400212, i64 400273}
!25 = !{i64 403229}
!26 = !{i64 2154432655, i64 2154432680}
!27 = !{i64 2154433272, i64 2154433297}
!28 = !{i64 2149351955}
!29 = !{i64 2149352087}
!30 = !{i8 0, i8 2}
!31 = !{i64 2154469327}
!32 = !{i64 2149102099}
!33 = !{i64 2149097923}
!34 = !{i64 2149097998, i64 2149098025, i64 2149098072, i64 2149098094, i64 2149098122, i64 2149098142}
!35 = !{i64 2149125102}
!36 = !{i64 2154461241}
!37 = !{i64 2154461083}
!38 = !{i64 2154469375}
!39 = !{i64 2154527797}
!40 = !{i64 2154536044}
!41 = !{i64 2154059498}
!42 = !{i64 2154059642}
!43 = !{i64 2153976713}
!44 = !{i64 2153976863}
!45 = !{i64 2153992364}
!46 = !{i64 2153992512}
!47 = !{i64 2154008212}
!48 = !{i64 2154008372}
!49 = !{i64 2154536092}
!50 = !{i64 2154541461}
!51 = !{i64 2150409031}
!52 = !{i64 2149500871}
!53 = !{i64 2149501088}
!54 = !{i64 2154597624}
!55 = !{i64 2154597466}
!56 = !{i64 491036, i64 491060, i64 491081, i64 491098, i64 491115}
!57 = !{i64 2148119760}
!58 = !{i64 2148007156, i64 2148007182, i64 2148007211, i64 2148007245, i64 2148007276, i64 2148007299}
!59 = !{i64 2148009513, i64 2148009539, i64 2148009568, i64 2148009602, i64 2148009633, i64 2148009656}
!60 = !{i64 2148101612}
