; ModuleID = '/llk/IR/drivers/tty/serial/serial_core.c_pt.bc'
source_filename = "../drivers/tty/serial/serial_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uart_update_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22uart_update_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_uart_update_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uart_get_baud_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22uart_get_baud_rate\22\09\09\09\09\09"
module asm "__kstrtabns_uart_get_baud_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uart_get_divisor:\09\09\09\09\09"
module asm "\09.asciz \09\22uart_get_divisor\22\09\09\09\09\09"
module asm "__kstrtabns_uart_get_divisor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uart_console_write:\09\09\09\09\09"
module asm "\09.asciz \09\22uart_console_write\22\09\09\09\09\09"
module asm "__kstrtabns_uart_console_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uart_parse_earlycon:\09\09\09\09\09"
module asm "\09.asciz \09\22uart_parse_earlycon\22\09\09\09\09\09"
module asm "__kstrtabns_uart_parse_earlycon:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uart_parse_options:\09\09\09\09\09"
module asm "\09.asciz \09\22uart_parse_options\22\09\09\09\09\09"
module asm "__kstrtabns_uart_parse_options:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uart_set_options:\09\09\09\09\09"
module asm "\09.asciz \09\22uart_set_options\22\09\09\09\09\09"
module asm "__kstrtabns_uart_set_options:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uart_console_device:\09\09\09\09\09"
module asm "\09.asciz \09\22uart_console_device\22\09\09\09\09\09"
module asm "__kstrtabns_uart_console_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uart_match_port:\09\09\09\09\09"
module asm "\09.asciz \09\22uart_match_port\22\09\09\09\09\09"
module asm "__kstrtabns_uart_match_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uart_handle_dcd_change:\09\09\09\09\09"
module asm "\09.asciz \09\22uart_handle_dcd_change\22\09\09\09\09\09"
module asm "__kstrtabns_uart_handle_dcd_change:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uart_handle_cts_change:\09\09\09\09\09"
module asm "\09.asciz \09\22uart_handle_cts_change\22\09\09\09\09\09"
module asm "__kstrtabns_uart_handle_cts_change:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uart_insert_char:\09\09\09\09\09"
module asm "\09.asciz \09\22uart_insert_char\22\09\09\09\09\09"
module asm "__kstrtabns_uart_insert_char:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uart_try_toggle_sysrq:\09\09\09\09\09"
module asm "\09.asciz \09\22uart_try_toggle_sysrq\22\09\09\09\09\09"
module asm "__kstrtabns_uart_try_toggle_sysrq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uart_write_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22uart_write_wakeup\22\09\09\09\09\09"
module asm "__kstrtabns_uart_write_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uart_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22uart_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns_uart_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uart_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22uart_unregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_uart_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uart_suspend_port:\09\09\09\09\09"
module asm "\09.asciz \09\22uart_suspend_port\22\09\09\09\09\09"
module asm "__kstrtabns_uart_suspend_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uart_resume_port:\09\09\09\09\09"
module asm "\09.asciz \09\22uart_resume_port\22\09\09\09\09\09"
module asm "__kstrtabns_uart_resume_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uart_add_one_port:\09\09\09\09\09"
module asm "\09.asciz \09\22uart_add_one_port\22\09\09\09\09\09"
module asm "__kstrtabns_uart_add_one_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uart_remove_one_port:\09\09\09\09\09"
module asm "\09.asciz \09\22uart_remove_one_port\22\09\09\09\09\09"
module asm "__kstrtabns_uart_remove_one_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uart_get_rs485_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22uart_get_rs485_mode\22\09\09\09\09\09"
module asm "__kstrtabns_uart_get_rs485_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tty_port_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.uart_port = type { %struct.spinlock, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, ptr, %struct.serial_iso7816, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.uart_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uart_match = type { ptr, ptr }
%struct.uart_driver = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.uart_state = type { %struct.tty_port, i32, %struct.circ_buf, %struct.atomic_t, %struct.wait_queue_head, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.tty_buffer = type { %union.anon.1, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.1 = type { ptr }
%struct.llist_head = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.62, %struct.anon.63, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.62 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.63 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.49, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.21 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%union.anon.49 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.serial_icounter_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.serial_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, [1 x i8], i32, i16, i16, ptr, i16, i32, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__kstrtab_uart_update_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_uart_update_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_uart_update_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uart_update_timeout to i32), ptr @__kstrtab_uart_update_timeout, ptr @__kstrtabns_uart_update_timeout }, section "___ksymtab+uart_update_timeout", align 4
@.str = private unnamed_addr constant [33 x i8] c"drivers/tty/serial/serial_core.c\00", align 1
@__kstrtab_uart_get_baud_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_uart_get_baud_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_uart_get_baud_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uart_get_baud_rate to i32), ptr @__kstrtab_uart_get_baud_rate, ptr @__kstrtabns_uart_get_baud_rate }, section "___ksymtab+uart_get_baud_rate", align 4
@__kstrtab_uart_get_divisor = external dso_local constant [0 x i8], align 1
@__kstrtabns_uart_get_divisor = external dso_local constant [0 x i8], align 1
@__ksymtab_uart_get_divisor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uart_get_divisor to i32), ptr @__kstrtab_uart_get_divisor, ptr @__kstrtabns_uart_get_divisor }, section "___ksymtab+uart_get_divisor", align 4
@__kstrtab_uart_console_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_uart_console_write = external dso_local constant [0 x i8], align 1
@__ksymtab_uart_console_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uart_console_write to i32), ptr @__kstrtab_uart_console_write, ptr @__kstrtabns_uart_console_write }, section "___ksymtab_gpl+uart_console_write", align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"mmio,\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"mmio16,\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"mmio32,\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"mmio32be,\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"mmio32native,\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"io,\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@__kstrtab_uart_parse_earlycon = external dso_local constant [0 x i8], align 1
@__kstrtabns_uart_parse_earlycon = external dso_local constant [0 x i8], align 1
@__ksymtab_uart_parse_earlycon = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uart_parse_earlycon to i32), ptr @__kstrtab_uart_parse_earlycon, ptr @__kstrtabns_uart_parse_earlycon }, section "___ksymtab_gpl+uart_parse_earlycon", align 4
@__kstrtab_uart_parse_options = external dso_local constant [0 x i8], align 1
@__kstrtabns_uart_parse_options = external dso_local constant [0 x i8], align 1
@__ksymtab_uart_parse_options = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uart_parse_options to i32), ptr @__kstrtab_uart_parse_options, ptr @__kstrtabns_uart_parse_options }, section "___ksymtab_gpl+uart_parse_options", align 4
@uart_set_options.dummy = internal global %struct.ktermios zeroinitializer, align 4
@__kstrtab_uart_set_options = external dso_local constant [0 x i8], align 1
@__kstrtabns_uart_set_options = external dso_local constant [0 x i8], align 1
@__ksymtab_uart_set_options = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uart_set_options to i32), ptr @__kstrtab_uart_set_options, ptr @__kstrtabns_uart_set_options }, section "___ksymtab_gpl+uart_set_options", align 4
@console_suspend_enabled = external dso_local local_unnamed_addr global i8, align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"%s: Unable to drain transmitter\0A\00", align 1
@tty_std_termios = external dso_local local_unnamed_addr global %struct.ktermios, align 4
@uart_ops = internal constant %struct.tty_operations { ptr null, ptr @uart_install, ptr null, ptr @uart_open, ptr @uart_close, ptr null, ptr null, ptr @uart_write, ptr @uart_put_char, ptr @uart_flush_chars, ptr @uart_write_room, ptr @uart_chars_in_buffer, ptr @uart_ioctl, ptr null, ptr @uart_set_termios, ptr @uart_throttle, ptr @uart_unthrottle, ptr @uart_stop, ptr @uart_start, ptr @uart_hangup, ptr @uart_break_ctl, ptr @uart_flush_buffer, ptr @uart_set_ldisc, ptr @uart_wait_until_sent, ptr @uart_send_xchar, ptr @uart_tiocmget, ptr @uart_tiocmset, ptr null, ptr @uart_get_icount, ptr @uart_get_info_user, ptr @uart_set_info_user, ptr null, ptr @uart_proc_show }, align 4
@uart_port_ops = internal constant %struct.tty_port_operations { ptr @uart_carrier_raised, ptr @uart_dtr_rts, ptr @uart_tty_port_shutdown, ptr @uart_port_activate, ptr null }, align 4
@__kstrtab_uart_console_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_uart_console_device = external dso_local constant [0 x i8], align 1
@__ksymtab_uart_console_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uart_console_device to i32), ptr @__kstrtab_uart_console_device, ptr @__kstrtabns_uart_console_device }, section "___ksymtab_gpl+uart_console_device", align 4
@port_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @port_mutex, i64 12), ptr getelementptr (i8, ptr @port_mutex, i64 12) } }, align 4
@uart_add_one_port.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"&state->remove_wait\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@tty_dev_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @tty_dev_attrs, ptr null }, align 4
@.str.11 = private unnamed_addr constant [39 x i8] c"Cannot register tty device on line %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Removing wrong port: %p != %p\0A\00", align 1
@__kstrtab_uart_match_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_uart_match_port = external dso_local constant [0 x i8], align 1
@__ksymtab_uart_match_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uart_match_port to i32), ptr @__kstrtab_uart_match_port, ptr @__kstrtabns_uart_match_port }, section "___ksymtab+uart_match_port", align 4
@__kstrtab_uart_handle_dcd_change = external dso_local constant [0 x i8], align 1
@__kstrtabns_uart_handle_dcd_change = external dso_local constant [0 x i8], align 1
@__ksymtab_uart_handle_dcd_change = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uart_handle_dcd_change to i32), ptr @__kstrtab_uart_handle_dcd_change, ptr @__kstrtabns_uart_handle_dcd_change }, section "___ksymtab_gpl+uart_handle_dcd_change", align 4
@__kstrtab_uart_handle_cts_change = external dso_local constant [0 x i8], align 1
@__kstrtabns_uart_handle_cts_change = external dso_local constant [0 x i8], align 1
@__ksymtab_uart_handle_cts_change = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uart_handle_cts_change to i32), ptr @__kstrtab_uart_handle_cts_change, ptr @__kstrtabns_uart_handle_cts_change }, section "___ksymtab_gpl+uart_handle_cts_change", align 4
@__kstrtab_uart_insert_char = external dso_local constant [0 x i8], align 1
@__kstrtabns_uart_insert_char = external dso_local constant [0 x i8], align 1
@__ksymtab_uart_insert_char = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uart_insert_char to i32), ptr @__kstrtab_uart_insert_char, ptr @__kstrtabns_uart_insert_char }, section "___ksymtab_gpl+uart_insert_char", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_uart_try_toggle_sysrq = external dso_local constant [0 x i8], align 1
@__kstrtabns_uart_try_toggle_sysrq = external dso_local constant [0 x i8], align 1
@__ksymtab_uart_try_toggle_sysrq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uart_try_toggle_sysrq to i32), ptr @__kstrtab_uart_try_toggle_sysrq, ptr @__kstrtabns_uart_try_toggle_sysrq }, section "___ksymtab_gpl+uart_try_toggle_sysrq", align 4
@__kstrtab_uart_write_wakeup = external dso_local constant [0 x i8], align 1
@__kstrtabns_uart_write_wakeup = external dso_local constant [0 x i8], align 1
@__ksymtab_uart_write_wakeup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uart_write_wakeup to i32), ptr @__kstrtab_uart_write_wakeup, ptr @__kstrtabns_uart_write_wakeup }, section "___ksymtab+uart_write_wakeup", align 4
@__kstrtab_uart_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_uart_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_uart_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uart_register_driver to i32), ptr @__kstrtab_uart_register_driver, ptr @__kstrtabns_uart_register_driver }, section "___ksymtab+uart_register_driver", align 4
@__kstrtab_uart_unregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_uart_unregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_uart_unregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uart_unregister_driver to i32), ptr @__kstrtab_uart_unregister_driver, ptr @__kstrtabns_uart_unregister_driver }, section "___ksymtab+uart_unregister_driver", align 4
@__kstrtab_uart_suspend_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_uart_suspend_port = external dso_local constant [0 x i8], align 1
@__ksymtab_uart_suspend_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uart_suspend_port to i32), ptr @__kstrtab_uart_suspend_port, ptr @__kstrtabns_uart_suspend_port }, section "___ksymtab+uart_suspend_port", align 4
@__kstrtab_uart_resume_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_uart_resume_port = external dso_local constant [0 x i8], align 1
@__ksymtab_uart_resume_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uart_resume_port to i32), ptr @__kstrtab_uart_resume_port, ptr @__kstrtabns_uart_resume_port }, section "___ksymtab+uart_resume_port", align 4
@__kstrtab_uart_add_one_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_uart_add_one_port = external dso_local constant [0 x i8], align 1
@__ksymtab_uart_add_one_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uart_add_one_port to i32), ptr @__kstrtab_uart_add_one_port, ptr @__kstrtabns_uart_add_one_port }, section "___ksymtab+uart_add_one_port", align 4
@__kstrtab_uart_remove_one_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_uart_remove_one_port = external dso_local constant [0 x i8], align 1
@__ksymtab_uart_remove_one_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uart_remove_one_port to i32), ptr @__kstrtab_uart_remove_one_port, ptr @__kstrtabns_uart_remove_one_port }, section "___ksymtab+uart_remove_one_port", align 4
@.str.13 = private unnamed_addr constant [16 x i8] c"rs485-rts-delay\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"rs485-rx-during-tx\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"linux,rs485-enabled-at-boot-time\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"rs485-rts-active-low\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"rs485-term\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Cannot get rs485-term-gpios\0A\00", align 1
@__kstrtab_uart_get_rs485_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_uart_get_rs485_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_uart_get_rs485_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uart_get_rs485_mode to i32), ptr @__kstrtab_uart_get_rs485_mode, ptr @__kstrtabns_uart_get_rs485_mode }, section "___ksymtab_gpl+uart_get_rs485_mode", align 4
@__UNIQUE_ID_description227 = internal constant [43 x i8] c"serial_core.description=Serial driver core\00", section ".modinfo", align 1
@__UNIQUE_ID_file228 = internal constant [48 x i8] c"serial_core.file=drivers/tty/serial/serial_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [24 x i8] c"serial_core.license=GPL\00", section ".modinfo", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"hangup of detached port!\0A\00", align 1
@nr_irqs = external dso_local local_unnamed_addr global i32, align 4
@uart_set_info._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.uart_set_info = private unnamed_addr constant [14 x i8] c"uart_set_info\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"%s sets custom speed on %s. This is deprecated.\0A\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"serinfo:1.0 driver%s%s revision:%s\0A\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"%d: uart:%s %s%08llX irq:%d\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"mmio:0x\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"port:\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c" tx:%d rx:%d\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c" fe:%d\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c" pe:%d\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c" brk:%d\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c" oe:%d\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c" bo:%d\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"|RTS\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"|CTS\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"|DTR\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"|DSR\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"|CD\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"|RI\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"detached port still initialized!\0A\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"I/O 0x%lx\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"I/O 0x%lx offset 0x%x\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"MMIO 0x%llx\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"*unknown*\00", align 1
@.str.46 = private unnamed_addr constant [51 x i8] c"\016%s%s%s at %s (irq = %d, base_baud = %d) is a %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.48 = private unnamed_addr constant [44 x i8] c"\016%s%s%s extra baud rates supported: %d, %d\00", align 1
@tty_dev_attrs = internal global [15 x ptr] [ptr @dev_attr_uartclk, ptr @dev_attr_type, ptr @dev_attr_line, ptr @dev_attr_port, ptr @dev_attr_irq, ptr @dev_attr_flags, ptr @dev_attr_xmit_fifo_size, ptr @dev_attr_close_delay, ptr @dev_attr_closing_wait, ptr @dev_attr_custom_divisor, ptr @dev_attr_io_type, ptr @dev_attr_iomem_base, ptr @dev_attr_iomem_reg_shift, ptr @dev_attr_console, ptr null], align 4
@dev_attr_uartclk = internal global %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292 }, ptr @uartclk_show, ptr null }, align 4
@dev_attr_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292 }, ptr @type_show, ptr null }, align 4
@dev_attr_line = internal global %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292 }, ptr @line_show, ptr null }, align 4
@dev_attr_port = internal global %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292 }, ptr @port_show, ptr null }, align 4
@dev_attr_irq = internal global %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292 }, ptr @irq_show, ptr null }, align 4
@dev_attr_flags = internal global %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292 }, ptr @flags_show, ptr null }, align 4
@dev_attr_xmit_fifo_size = internal global %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292 }, ptr @xmit_fifo_size_show, ptr null }, align 4
@dev_attr_close_delay = internal global %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292 }, ptr @close_delay_show, ptr null }, align 4
@dev_attr_closing_wait = internal global %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292 }, ptr @closing_wait_show, ptr null }, align 4
@dev_attr_custom_divisor = internal global %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292 }, ptr @custom_divisor_show, ptr null }, align 4
@dev_attr_io_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292 }, ptr @io_type_show, ptr null }, align 4
@dev_attr_iomem_base = internal global %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292 }, ptr @iomem_base_show, ptr null }, align 4
@dev_attr_iomem_reg_shift = internal global %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292 }, ptr @iomem_reg_shift_show, ptr null }, align 4
@dev_attr_console = internal global %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 420 }, ptr @console_show, ptr @console_store }, align 4
@.str.49 = private unnamed_addr constant [8 x i8] c"uartclk\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"0x%lX\0A\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"0x%X\0A\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"xmit_fifo_size\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"close_delay\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"closing_wait\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"custom_divisor\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"io_type\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"iomem_base\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"iomem_reg_shift\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"console\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_description227, ptr @__UNIQUE_ID_file228, ptr @__UNIQUE_ID_license229, ptr @__ksymtab_uart_add_one_port, ptr @__ksymtab_uart_console_device, ptr @__ksymtab_uart_console_write, ptr @__ksymtab_uart_get_baud_rate, ptr @__ksymtab_uart_get_divisor, ptr @__ksymtab_uart_get_rs485_mode, ptr @__ksymtab_uart_handle_cts_change, ptr @__ksymtab_uart_handle_dcd_change, ptr @__ksymtab_uart_insert_char, ptr @__ksymtab_uart_match_port, ptr @__ksymtab_uart_parse_earlycon, ptr @__ksymtab_uart_parse_options, ptr @__ksymtab_uart_register_driver, ptr @__ksymtab_uart_remove_one_port, ptr @__ksymtab_uart_resume_port, ptr @__ksymtab_uart_set_options, ptr @__ksymtab_uart_suspend_port, ptr @__ksymtab_uart_try_toggle_sysrq, ptr @__ksymtab_uart_unregister_driver, ptr @__ksymtab_uart_update_timeout, ptr @__ksymtab_uart_write_wakeup], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uart_write_wakeup(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/serial_core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 105, 0\0A.popsection", ""() #18, !srcloc !9
  unreachable

6:                                                ; preds = %1
  tail call void @tty_port_tty_wakeup(ptr noundef nonnull %3) #18
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uart_update_timeout(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call zeroext i8 @tty_get_frame_size(i32 noundef %1) #18
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 23
  %7 = load i32, ptr %6, align 4
  %8 = mul nuw nsw i32 %5, 100
  %9 = mul i32 %8, %7
  %10 = udiv i32 %9, %2
  %11 = add i32 %10, 2
  %12 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 37
  store i32 %11, ptr %12, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tty_get_frame_size(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uart_get_baud_rate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 4144
  switch i32 %8, label %12 [
    i32 16, label %13
    i32 32, label %9
    i32 4096, label %10
    i32 4112, label %11
  ]

9:                                                ; preds = %5
  br label %13

10:                                               ; preds = %5
  br label %13

11:                                               ; preds = %5
  br label %13

12:                                               ; preds = %5
  br label %13

13:                                               ; preds = %12, %11, %10, %9, %5
  %14 = phi i32 [ 38400, %12 ], [ 460800, %11 ], [ 230400, %10 ], [ 115200, %9 ], [ 57600, %5 ]
  %15 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 2
  %16 = add i32 %3, 1
  %17 = add i32 %4, -1
  %18 = tail call i32 @tty_termios_baud_rate(ptr noundef %1) #18
  %19 = icmp eq i32 %18, 38400
  %20 = select i1 %19, i32 %14, i32 %18
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 9600, i32 %20
  %23 = icmp ult i32 %22, %3
  %24 = icmp ugt i32 %22, %4
  %25 = or i1 %23, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %13
  %27 = load i32, ptr %15, align 4
  %28 = and i32 %27, -4112
  store i32 %28, ptr %15, align 4
  %29 = icmp eq ptr %2, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @tty_termios_baud_rate(ptr noundef nonnull %2) #18
  br i1 %21, label %38, label %32

32:                                               ; preds = %30
  tail call void @tty_termios_encode_baud_rate(ptr noundef %1, i32 noundef %31, i32 noundef %31) #18
  br label %38

33:                                               ; preds = %26
  br i1 %21, label %38, label %34

34:                                               ; preds = %33
  %35 = icmp ugt i32 %22, %3
  br i1 %35, label %37, label %36

36:                                               ; preds = %34
  tail call void @tty_termios_encode_baud_rate(ptr noundef %1, i32 noundef %16, i32 noundef %16) #18
  br label %38

37:                                               ; preds = %34
  tail call void @tty_termios_encode_baud_rate(ptr noundef %1, i32 noundef %17, i32 noundef %17) #18
  br label %38

38:                                               ; preds = %37, %36, %33, %32, %30
  %39 = tail call i32 @tty_termios_baud_rate(ptr noundef %1) #18
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 9600, i32 %39
  %42 = icmp ult i32 %41, %3
  %43 = icmp ugt i32 %41, %4
  %44 = or i1 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load i32, ptr %15, align 4
  %47 = and i32 %46, -4112
  store i32 %47, ptr %15, align 4
  %48 = select i1 %40, i1 true, i1 %21
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = icmp ugt i32 %41, %3
  br i1 %50, label %52, label %51

51:                                               ; preds = %49
  tail call void @tty_termios_encode_baud_rate(ptr noundef %1, i32 noundef %16, i32 noundef %16) #18
  br label %53

52:                                               ; preds = %49
  tail call void @tty_termios_encode_baud_rate(ptr noundef %1, i32 noundef %17, i32 noundef %17) #18
  br label %53

53:                                               ; preds = %52, %51, %45
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 445, i32 noundef 9, ptr noundef null) #18
  br label %54

54:                                               ; preds = %53, %38, %13
  %55 = phi i32 [ 0, %53 ], [ %22, %13 ], [ %41, %38 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_termios_baud_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_termios_encode_baud_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @uart_get_divisor(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = icmp eq i32 %1, 38400
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 33
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 4144
  %8 = icmp eq i32 %7, 48
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 40
  %11 = load i32, ptr %10, align 4
  br label %19

12:                                               ; preds = %4, %2
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 22
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %1, 4
  %16 = lshr exact i32 %15, 1
  %17 = add i32 %14, %16
  %18 = udiv i32 %17, %15
  br label %19

19:                                               ; preds = %12, %9
  %20 = phi i32 [ %11, %9 ], [ %18, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uart_console_write(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %13, %4
  %7 = phi i32 [ %16, %13 ], [ 0, %4 ]
  %8 = phi ptr [ %17, %13 ], [ %1, %4 ]
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 10
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  tail call void %3(ptr noundef %0, i32 noundef 13) #18
  %12 = load i8, ptr %8, align 1
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi i8 [ %12, %11 ], [ %9, %6 ]
  %15 = zext i8 %14 to i32
  tail call void %3(ptr noundef %0, i32 noundef %15) #18
  %16 = add nuw i32 %7, 1
  %17 = getelementptr i8, ptr %8, i32 1
  %18 = icmp eq i32 %16, %2
  br i1 %18, label %19, label %6

19:                                               ; preds = %13, %4
  ret void
}

; Function Attrs: argmemonly cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @uart_get_console(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #4 section ".init.text" {
  %4 = getelementptr inbounds %struct.console, ptr %2, i32 0, i32 9
  %5 = load i16, ptr %4, align 2
  %6 = sext i16 %5 to i32
  %7 = icmp sgt i16 %5, -1
  %8 = icmp slt i32 %6, %1
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = getelementptr %struct.uart_port, ptr %0, i32 %6, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = getelementptr %struct.uart_port, ptr %0, i32 %6, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %14, %3
  %19 = icmp sgt i32 %1, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %29, %18
  %21 = phi i32 [ %30, %29 ], [ 0, %18 ]
  %22 = getelementptr %struct.uart_port, ptr %0, i32 %21, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = getelementptr %struct.uart_port, ptr %0, i32 %21, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = add nuw nsw i32 %21, 1
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %32, label %20

32:                                               ; preds = %29, %25, %20, %18, %14, %10
  %33 = phi i32 [ %6, %14 ], [ %6, %10 ], [ 0, %18 ], [ %21, %20 ], [ %21, %25 ], [ %1, %29 ]
  %34 = trunc i32 %33 to i16
  store i16 %34, ptr %4, align 2
  %35 = getelementptr %struct.uart_port, ptr %0, i32 %33
  ret ptr %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uart_parse_earlycon(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(6) @.str.1, i32 noundef 5)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  store i8 2, ptr %1, align 1
  %8 = getelementptr i8, ptr %0, i32 5
  br label %38

9:                                                ; preds = %4
  %10 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(8) @.str.2, i32 noundef 7)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  store i8 7, ptr %1, align 1
  %13 = getelementptr i8, ptr %0, i32 7
  br label %38

14:                                               ; preds = %9
  %15 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(8) @.str.3, i32 noundef 7)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  store i8 3, ptr %1, align 1
  %18 = getelementptr i8, ptr %0, i32 7
  br label %38

19:                                               ; preds = %14
  %20 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(10) @.str.4, i32 noundef 9)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  store i8 6, ptr %1, align 1
  %23 = getelementptr i8, ptr %0, i32 9
  br label %38

24:                                               ; preds = %19
  %25 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(14) @.str.5, i32 noundef 13)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  store i8 3, ptr %1, align 1
  %28 = getelementptr i8, ptr %0, i32 13
  br label %38

29:                                               ; preds = %24
  %30 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(4) @.str.6, i32 noundef 3)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  store i8 0, ptr %1, align 1
  %33 = getelementptr i8, ptr %0, i32 3
  br label %38

34:                                               ; preds = %29
  %35 = tail call i32 @strncmp(ptr noundef %0, ptr noundef nonnull dereferenceable(3) @.str.7, i32 noundef 2)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  store i8 2, ptr %1, align 1
  br label %38

38:                                               ; preds = %37, %32, %27, %22, %17, %12, %7
  %39 = phi ptr [ %8, %7 ], [ %13, %12 ], [ %18, %17 ], [ %23, %22 ], [ %28, %27 ], [ %33, %32 ], [ %0, %37 ]
  %40 = tail call i64 @simple_strtoull(ptr noundef %39, ptr noundef null, i32 noundef 0) #18
  %41 = trunc i64 %40 to i32
  store i32 %41, ptr %2, align 4
  %42 = tail call ptr @strchr(ptr noundef %39, i32 noundef 44)
  %43 = icmp eq ptr %42, null
  %44 = getelementptr i8, ptr %42, i32 1
  %45 = select i1 %43, ptr null, ptr %44
  store ptr %45, ptr %3, align 4
  br label %46

46:                                               ; preds = %38, %34
  %47 = phi i32 [ 0, %38 ], [ -22, %34 ]
  ret i32 %47
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @simple_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uart_parse_options(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = tail call i32 @simple_strtoul(ptr noundef %0, ptr noundef null, i32 noundef 10) #18
  store i32 %6, ptr %1, align 4
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi ptr [ %0, %5 ], [ %12, %7 ]
  %9 = load i8, ptr %8, align 1
  %10 = add i8 %9, -48
  %11 = icmp ult i8 %10, 10
  %12 = getelementptr i8, ptr %8, i32 1
  br i1 %11, label %7, label %13

13:                                               ; preds = %7
  %14 = icmp eq i8 %9, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %13
  %16 = zext i8 %9 to i32
  store i32 %16, ptr %2, align 4
  %17 = load i8, ptr %12, align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %8, i32 2
  %21 = zext i8 %17 to i32
  %22 = add nsw i32 %21, -48
  store i32 %22, ptr %3, align 4
  %23 = load i8, ptr %20, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = zext i8 %23 to i32
  store i32 %26, ptr %4, align 4
  br label %27

27:                                               ; preds = %25, %19, %15, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uart_set_options(ptr noundef %0, ptr noundef writeonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.ktermios, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %7) #18
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 32
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.console, ptr %9, i32 0, i32 9
  %13 = load i16, ptr %12, align 2
  %14 = sext i16 %13 to i32
  %15 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 41
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %14
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.console, ptr %9, i32 0, i32 8
  %20 = load i16, ptr %19, align 4
  %21 = and i16 %20, 4
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18, %11, %6
  %24 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 52
  %25 = load i8, ptr %24, align 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, ptr %0, align 4
  br label %28

28:                                               ; preds = %27, %23, %18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %7, i8 0, i32 44, i1 false)
  %29 = getelementptr inbounds %struct.ktermios, ptr %7, i32 0, i32 2
  store i32 3200, ptr %29, align 4
  call void @tty_termios_encode_baud_rate(ptr noundef nonnull %7, i32 noundef %2, i32 noundef %2) #18
  %30 = icmp eq i32 %4, 7
  %31 = load i32, ptr %29, align 4
  %32 = select i1 %30, i32 32, i32 48
  %33 = or i32 %31, %32
  store i32 %33, ptr %29, align 4
  switch i32 %3, label %39 [
    i32 111, label %34
    i32 79, label %34
    i32 101, label %36
    i32 69, label %36
  ]

34:                                               ; preds = %28, %28
  %35 = or i32 %33, 512
  br label %36

36:                                               ; preds = %34, %28, %28
  %37 = phi i32 [ %33, %28 ], [ %33, %28 ], [ %35, %34 ]
  %38 = or i32 %37, 256
  store i32 %38, ptr %29, align 4
  br label %39

39:                                               ; preds = %36, %28
  %40 = phi i32 [ %33, %28 ], [ %38, %36 ]
  %41 = icmp eq i32 %5, 114
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = or i32 %40, -2147483648
  store i32 %43, ptr %29, align 4
  br label %44

44:                                               ; preds = %42, %39
  %45 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 36
  %46 = load i32, ptr %45, align 4
  %47 = or i32 %46, 2
  store i32 %47, ptr %45, align 4
  %48 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 39
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.uart_ops, ptr %49, i32 0, i32 14
  %51 = load ptr, ptr %50, align 4
  call void %51(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull @uart_set_options.dummy) #18
  %52 = icmp eq ptr %1, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %44
  %54 = load i32, ptr %29, align 4
  %55 = getelementptr inbounds %struct.console, ptr %1, i32 0, i32 10
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.ktermios, ptr %7, i32 0, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.console, ptr %1, i32 0, i32 11
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.ktermios, ptr %7, i32 0, i32 7
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.console, ptr %1, i32 0, i32 12
  store i32 %60, ptr %61, align 4
  br label %62

62:                                               ; preds = %53, %44
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %7) #18
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uart_suspend_port(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.uart_match, align 8
  %4 = getelementptr inbounds %struct.uart_driver, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 41
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.uart_state, ptr %5, i32 %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  store ptr %1, ptr %3, align 8
  %9 = getelementptr inbounds %struct.uart_match, ptr %3, i32 0, i32 1
  store ptr %0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.tty_port, ptr %8, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %10) #18
  %11 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 45
  %12 = load ptr, ptr %11, align 4
  %13 = call ptr @device_find_child(ptr noundef %12, ptr noundef nonnull %3, ptr noundef nonnull @serial_match_port) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 11, i32 1
  %17 = load i16, ptr %16, align 4
  %18 = and i16 %17, 1
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 11, i32 6
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 20
  %26 = load i32, ptr %25, align 4
  %27 = call i32 @irq_set_irq_wake(i32 noundef %26, i32 noundef 1) #18
  call void @put_device(ptr noundef nonnull %13) #18
  br label %105

28:                                               ; preds = %20, %15, %2
  call void @put_device(ptr noundef %13) #18
  %29 = load i8, ptr @console_suspend_enabled, align 1, !range !10
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 32
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.console, ptr %33, i32 0, i32 9
  %37 = load i16, ptr %36, align 2
  %38 = sext i16 %37 to i32
  %39 = load i32, ptr %6, align 4
  %40 = icmp eq i32 %39, %38
  br i1 %40, label %105, label %41

41:                                               ; preds = %35, %31, %28
  %42 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 51
  store i8 1, ptr %42, align 1
  %43 = getelementptr inbounds %struct.tty_port, ptr %8, i32 0, i32 11
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %78, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 39
  %49 = load ptr, ptr %48, align 4
  call void @_set_bit(i32 noundef 1, ptr noundef %43) #18
  call void @_clear_bit(i32 noundef 0, ptr noundef %43) #18
  call void @_raw_spin_lock_irq(ptr noundef %1) #18
  %50 = getelementptr inbounds %struct.uart_ops, ptr %49, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  call void %51(ptr noundef %1) #18
  %52 = getelementptr inbounds %struct.uart_ops, ptr %49, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  call void %53(ptr noundef %1, i32 noundef 0) #18
  %54 = getelementptr inbounds %struct.uart_ops, ptr %49, i32 0, i32 8
  %55 = load ptr, ptr %54, align 4
  call void %55(ptr noundef %1) #18
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !11
  %56 = load i16, ptr %1, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr %1, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !13
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !15
  %58 = load ptr, ptr %49, align 4
  %59 = call i32 %58(ptr noundef %1) #18
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %47
  call void @msleep(i32 noundef 10) #18
  %62 = load ptr, ptr %49, align 4
  %63 = call i32 %62(ptr noundef %1) #18
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  call void @msleep(i32 noundef 10) #18
  %66 = load ptr, ptr %49, align 4
  %67 = call i32 %66(ptr noundef %1) #18
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  call void @msleep(i32 noundef 10) #18
  %70 = load ptr, ptr %49, align 4
  %71 = call i32 %70(ptr noundef %1) #18
  %72 = load ptr, ptr %11, align 4
  %73 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 53
  %74 = load ptr, ptr %73, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.8, ptr noundef %74) #19
  br label %75

75:                                               ; preds = %69, %65, %61, %47
  %76 = getelementptr inbounds %struct.uart_ops, ptr %49, i32 0, i32 12
  %77 = load ptr, ptr %76, align 4
  call void %77(ptr noundef %1) #18
  br label %78

78:                                               ; preds = %75, %41
  %79 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 32
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %89, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.console, ptr %80, i32 0, i32 9
  %84 = load i16, ptr %83, align 2
  %85 = sext i16 %84 to i32
  %86 = load i32, ptr %6, align 4
  %87 = icmp eq i32 %86, %85
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  call void @console_stop(ptr noundef nonnull %80) #18
  br label %89

89:                                               ; preds = %88, %82, %78
  %90 = getelementptr %struct.uart_state, ptr %5, i32 %7, i32 5
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr %struct.uart_state, ptr %5, i32 %7, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 3
  br i1 %94, label %105, label %95

95:                                               ; preds = %89
  %96 = icmp eq ptr %91, null
  br i1 %96, label %104, label %97

97:                                               ; preds = %95
  %98 = getelementptr inbounds %struct.uart_port, ptr %91, i32 0, i32 39
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.uart_ops, ptr %99, i32 0, i32 16
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %97
  call void %101(ptr noundef nonnull %91, i32 noundef 3, i32 noundef %93) #18
  br label %104

104:                                              ; preds = %103, %97, %95
  store i32 3, ptr %92, align 4
  br label %105

105:                                              ; preds = %104, %89, %35, %24
  call void @mutex_unlock(ptr noundef %10) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_find_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @serial_match_port(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.uart_match, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_driver, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tty_driver, ptr %6, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 20
  %10 = getelementptr inbounds %struct.tty_driver, ptr %6, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %9, %11
  %13 = load ptr, ptr %1, align 4
  %14 = getelementptr inbounds %struct.uart_port, ptr %13, i32 0, i32 41
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %12
  %17 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 27
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, %16
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uart_resume_port(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.uart_match, align 8
  %4 = alloca %struct.ktermios, align 4
  %5 = getelementptr inbounds %struct.uart_driver, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 41
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.uart_state, ptr %6, i32 %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  store ptr %1, ptr %3, align 8
  %10 = getelementptr inbounds %struct.uart_match, ptr %3, i32 0, i32 1
  store ptr %0, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %4, i8 0, i32 44, i1 false), !annotation !16
  %11 = getelementptr inbounds %struct.tty_port, ptr %9, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %11) #18
  %12 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 45
  %13 = load ptr, ptr %12, align 4
  %14 = call ptr @device_find_child(ptr noundef %13, ptr noundef nonnull %3, ptr noundef nonnull @serial_match_port) #18
  %15 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 51
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 11, i32 1
  %20 = load i16, ptr %19, align 4
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 11, i32 6
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %40, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 20
  %29 = load i32, ptr %28, align 4
  %30 = call ptr @irq_get_irq_data(i32 noundef %29) #18
  %31 = getelementptr inbounds %struct.irq_data, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 16384
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = load i32, ptr %28, align 4
  %38 = call i32 @irq_set_irq_wake(i32 noundef %37, i32 noundef 0) #18
  br label %39

39:                                               ; preds = %36, %27
  call void @put_device(ptr noundef %14) #18
  br label %154

40:                                               ; preds = %23, %18, %2
  call void @put_device(ptr noundef %14) #18
  store i8 0, ptr %15, align 1
  %41 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 32
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %95, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.console, ptr %42, i32 0, i32 9
  %46 = load i16, ptr %45, align 2
  %47 = sext i16 %46 to i32
  %48 = load i32, ptr %7, align 4
  %49 = icmp eq i32 %48, %47
  br i1 %49, label %50, label %95

50:                                               ; preds = %44
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %4, i8 0, i32 36, i1 false)
  %51 = getelementptr inbounds %struct.console, ptr %42, i32 0, i32 10
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.ktermios, ptr %4, i32 0, i32 2
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.console, ptr %42, i32 0, i32 11
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.ktermios, ptr %4, i32 0, i32 6
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.console, ptr %42, i32 0, i32 12
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.ktermios, ptr %4, i32 0, i32 7
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.tty_port, ptr %9, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = icmp ne ptr %61, null
  %63 = icmp eq i32 %52, 0
  %64 = select i1 %62, i1 %63, i1 false
  br i1 %64, label %65, label %67

65:                                               ; preds = %50
  %66 = getelementptr inbounds %struct.tty_struct, ptr %61, i32 0, i32 13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %4, ptr noundef align 4 dereferenceable(44) %66, i32 44, i1 false)
  br label %67

67:                                               ; preds = %65, %50
  %68 = load i8, ptr @console_suspend_enabled, align 1, !range !10
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %86, label %70

70:                                               ; preds = %67
  %71 = getelementptr %struct.uart_state, ptr %6, i32 %8, i32 5
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr %struct.uart_state, ptr %6, i32 %8, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %70
  %77 = icmp eq ptr %72, null
  br i1 %77, label %85, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.uart_port, ptr %72, i32 0, i32 39
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.uart_ops, ptr %80, i32 0, i32 16
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  call void %82(ptr noundef nonnull %72, i32 noundef 0, i32 noundef %74) #18
  br label %85

85:                                               ; preds = %84, %78, %76
  store i32 0, ptr %73, align 4
  br label %86

86:                                               ; preds = %85, %70, %67
  %87 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 39
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.uart_ops, ptr %88, i32 0, i32 14
  %90 = load ptr, ptr %89, align 4
  call void %90(ptr noundef %1, ptr noundef nonnull %4, ptr noundef null) #18
  %91 = load i8, ptr @console_suspend_enabled, align 1, !range !10
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %86
  %94 = load ptr, ptr %41, align 4
  call void @console_start(ptr noundef %94) #18
  br label %95

95:                                               ; preds = %93, %86, %44, %40
  %96 = getelementptr inbounds %struct.tty_port, ptr %9, i32 0, i32 11
  %97 = load volatile i32, ptr %96, align 4
  %98 = and i32 %97, 2
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %154, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 39
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr %struct.uart_state, ptr %6, i32 %8, i32 5
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr %struct.uart_state, ptr %6, i32 %8, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %100
  %109 = icmp eq ptr %104, null
  br i1 %109, label %117, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.uart_port, ptr %104, i32 0, i32 39
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.uart_ops, ptr %112, i32 0, i32 16
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %110
  call void %114(ptr noundef nonnull %104, i32 noundef 0, i32 noundef %106) #18
  br label %117

117:                                              ; preds = %116, %110, %108
  store i32 0, ptr %105, align 4
  br label %118

118:                                              ; preds = %117, %100
  call void @_raw_spin_lock_irq(ptr noundef %1) #18
  %119 = getelementptr inbounds %struct.uart_ops, ptr %102, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  call void %120(ptr noundef %1, i32 noundef 0) #18
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !11
  %121 = load i16, ptr %1, align 4
  %122 = add i16 %121, 1
  store i16 %122, ptr %1, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !13
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !15
  %123 = load i8, ptr @console_suspend_enabled, align 1, !range !10
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %118
  %126 = load ptr, ptr %41, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %134, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.console, ptr %126, i32 0, i32 9
  %130 = load i16, ptr %129, align 2
  %131 = sext i16 %130 to i32
  %132 = load i32, ptr %7, align 4
  %133 = icmp eq i32 %132, %131
  br i1 %133, label %153, label %134

134:                                              ; preds = %128, %125, %118
  %135 = getelementptr inbounds %struct.tty_port, ptr %9, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.uart_ops, ptr %102, i32 0, i32 11
  %138 = load ptr, ptr %137, align 4
  %139 = call i32 %138(ptr noundef %1) #18
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %134
  %142 = icmp eq ptr %136, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %141
  call fastcc void @uart_change_speed(ptr noundef nonnull %136, ptr noundef %9, ptr noundef null)
  br label %144

144:                                              ; preds = %143, %141
  call void @_raw_spin_lock_irq(ptr noundef %1) #18
  %145 = load ptr, ptr %119, align 4
  %146 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 36
  %147 = load i32, ptr %146, align 4
  call void %145(ptr noundef %1, i32 noundef %147) #18
  %148 = getelementptr inbounds %struct.uart_ops, ptr %102, i32 0, i32 4
  %149 = load ptr, ptr %148, align 4
  call void %149(ptr noundef %1) #18
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !11
  %150 = load i16, ptr %1, align 4
  %151 = add i16 %150, 1
  store i16 %151, ptr %1, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !13
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !15
  call void @_set_bit(i32 noundef 0, ptr noundef %96) #18
  br label %153

152:                                              ; preds = %134
  call fastcc void @uart_shutdown(ptr noundef %136, ptr noundef %9)
  br label %153

153:                                              ; preds = %152, %144, %128
  call void @_clear_bit(i32 noundef 1, ptr noundef %96) #18
  br label %154

154:                                              ; preds = %153, %95, %39
  call void @mutex_unlock(ptr noundef %11) #18
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @uart_change_speed(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %0, null
  br i1 %6, label %81, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 38
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %81, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13
  %13 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 39
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.uart_ops, ptr %14, i32 0, i32 14
  %16 = load ptr, ptr %15, align 4
  tail call void %16(ptr noundef %5, ptr noundef %12, ptr noundef %2) #18
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #18
  %17 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 34
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, -2
  %22 = lshr i32 %18, 31
  %23 = or i32 %21, %22
  store i32 %23, ptr %19, align 4
  %24 = load i32, ptr %17, align 4
  %25 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 34
  %26 = and i32 %23, -3
  %27 = lshr i32 %24, 10
  %28 = and i32 %27, 2
  %29 = or i32 %28, %26
  %30 = xor i32 %29, 2
  store i32 %30, ptr %25, align 4
  %31 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 35
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %23, 9
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %50

35:                                               ; preds = %11
  %36 = load ptr, ptr %13, align 4
  %37 = getelementptr inbounds %struct.uart_ops, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 %38(ptr noundef %5) #18
  %40 = and i32 %39, 32
  %41 = icmp eq i32 %40, 0
  %42 = lshr exact i32 %40, 5
  %43 = xor i32 %42, 1
  store i32 %43, ptr %31, align 4
  br i1 %41, label %44, label %51

44:                                               ; preds = %35
  %45 = icmp eq i32 %32, 0
  br i1 %45, label %46, label %78

46:                                               ; preds = %44
  %47 = load ptr, ptr %13, align 4
  %48 = getelementptr inbounds %struct.uart_ops, ptr %47, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  tail call void %49(ptr noundef %5) #18
  br label %78

50:                                               ; preds = %11
  store i32 0, ptr %31, align 4
  br label %51

51:                                               ; preds = %50, %35
  %52 = icmp eq i32 %32, 0
  br i1 %52, label %78, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.uart_state, ptr %55, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %78, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.uart_port, ptr %57, i32 0, i32 30
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.tty_port, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.tty_struct, ptr %63, i32 0, i32 19, i32 1
  %67 = load i8, ptr %66, align 4, !range !10
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %65, %59
  %70 = getelementptr inbounds %struct.uart_port, ptr %57, i32 0, i32 35
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.uart_port, ptr %57, i32 0, i32 39
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.uart_ops, ptr %75, i32 0, i32 4
  %77 = load ptr, ptr %76, align 4
  tail call void %77(ptr noundef nonnull %57) #18
  br label %78

78:                                               ; preds = %73, %69, %65, %53, %51, %46, %44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !11
  %79 = load i16, ptr %5, align 4
  %80 = add i16 %79, 1
  store i16 %80, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !15
  br label %81

81:                                               ; preds = %78, %7, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @uart_shutdown(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp ne ptr %0, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 1, ptr noundef %7) #18
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 11
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %73, label %13

13:                                               ; preds = %8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %9) #18
  %14 = icmp eq ptr %4, null
  br i1 %14, label %39, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 32
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %39, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.console, ptr %17, i32 0, i32 9
  %21 = load i16, ptr %20, align 2
  %22 = sext i16 %21 to i32
  %23 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 41
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %22
  %26 = and i1 %5, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.console, ptr %17, i32 0, i32 10
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %16, align 4
  %34 = getelementptr inbounds %struct.console, ptr %33, i32 0, i32 11
  store i32 %32, ptr %34, align 4
  %35 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = load ptr, ptr %16, align 4
  %38 = getelementptr inbounds %struct.console, ptr %37, i32 0, i32 12
  store i32 %36, ptr %38, align 4
  br label %39

39:                                               ; preds = %27, %19, %15, %13
  br i1 %5, label %40, label %45

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 1024
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %62, label %45

45:                                               ; preds = %40, %39
  %46 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 56
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  %50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #18
  %51 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 36
  %52 = load i32, ptr %51, align 4
  %53 = select i1 %49, i32 -7, i32 -3
  %54 = and i32 %53, %52
  store i32 %54, ptr %51, align 4
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 39
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.uart_ops, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  tail call void %60(ptr noundef %4, i32 noundef %54) #18
  br label %61

61:                                               ; preds = %56, %45
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %50) #18
  br label %62

62:                                               ; preds = %61, %40
  %63 = load ptr, ptr %3, align 4
  %64 = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %64, i32 noundef 1, i32 noundef 1, ptr noundef null) #18
  %65 = icmp eq ptr %63, null
  br i1 %65, label %73, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.uart_port, ptr %63, i32 0, i32 39
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.uart_ops, ptr %68, i32 0, i32 12
  %70 = load ptr, ptr %69, align 4
  tail call void %70(ptr noundef nonnull %63) #18
  %71 = getelementptr inbounds %struct.uart_port, ptr %63, i32 0, i32 20
  %72 = load i32, ptr %71, align 4
  tail call void @synchronize_irq(i32 noundef %72) #18
  br label %73

73:                                               ; preds = %66, %62, %8
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %9) #18
  %74 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %74) #18, !srcloc !18
  %75 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %74, ptr %74, i32 0, i32 1, ptr elementtype(i32) %74) #18, !srcloc !19
  %76 = extractvalue { i32, i32, i32 } %75, 0
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !20
  %79 = load ptr, ptr %3, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %79) #18
  br label %83

83:                                               ; preds = %81, %78, %73
  %84 = phi i32 [ %82, %81 ], [ 0, %78 ], [ 0, %73 ]
  %85 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  %86 = load ptr, ptr %85, align 4
  store ptr null, ptr %85, align 4
  %87 = icmp eq ptr %4, null
  br i1 %87, label %98, label %88

88:                                               ; preds = %83
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %4, i32 noundef %84) #18
  %89 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 30
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.uart_state, ptr %90, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %91) #18, !srcloc !18
  %92 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %91, ptr %91, i32 1, ptr elementtype(i32) %91) #18, !srcloc !22
  %93 = extractvalue { i32, i32 } %92, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load ptr, ptr %89, align 4
  %97 = getelementptr inbounds %struct.uart_state, ptr %96, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %97, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  br label %98

98:                                               ; preds = %95, %88, %83
  %99 = icmp eq ptr %86, null
  br i1 %99, label %102, label %100

100:                                              ; preds = %98
  %101 = ptrtoint ptr %86 to i32
  tail call void @free_pages(i32 noundef %101, i32 noundef 0) #18
  br label %102

102:                                              ; preds = %100, %98
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uart_register_driver(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.uart_driver, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !24

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/serial_core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2538, 0\0A.popsection", ""() #18, !srcloc !25
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uart_driver, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 248) #18
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %6
  store ptr null, ptr %2, align 4
  br label %71

12:                                               ; preds = %6
  %13 = extractvalue { i32, i1 } %9, 0
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #20
  store ptr %14, ptr %2, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %71, label %16

16:                                               ; preds = %12
  %17 = load i32, ptr %7, align 4
  %18 = tail call ptr @__tty_alloc_driver(i32 noundef %17, ptr noundef null, i32 noundef 12) #18
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = ptrtoint ptr %18 to i32
  br label %68

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.uart_driver, ptr %0, i32 0, i32 8
  store ptr %18, ptr %23, align 4
  %24 = getelementptr inbounds %struct.uart_driver, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.tty_driver, ptr %18, i32 0, i32 4
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.uart_driver, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.tty_driver, ptr %18, i32 0, i32 5
  store ptr %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.uart_driver, ptr %0, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.tty_driver, ptr %18, i32 0, i32 7
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.uart_driver, ptr %0, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.tty_driver, ptr %18, i32 0, i32 8
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.tty_driver, ptr %18, i32 0, i32 10
  store i16 3, ptr %36, align 4
  %37 = getelementptr inbounds %struct.tty_driver, ptr %18, i32 0, i32 11
  store i16 1, ptr %37, align 2
  %38 = getelementptr inbounds %struct.tty_driver, ptr %18, i32 0, i32 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %38, ptr noundef nonnull align 4 dereferenceable(44) @tty_std_termios, i32 36, i1 false)
  %39 = getelementptr inbounds %struct.tty_driver, ptr %18, i32 0, i32 12, i32 2
  store i32 3261, ptr %39, align 4
  %40 = getelementptr inbounds %struct.tty_driver, ptr %18, i32 0, i32 12, i32 7
  store i32 9600, ptr %40, align 4
  %41 = getelementptr inbounds %struct.tty_driver, ptr %18, i32 0, i32 12, i32 6
  store i32 9600, ptr %41, align 4
  %42 = getelementptr inbounds %struct.tty_driver, ptr %18, i32 0, i32 19
  store ptr %0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.tty_driver, ptr %18, i32 0, i32 20
  store ptr @uart_ops, ptr %43, align 4
  %44 = load i32, ptr %7, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %46, %22
  %47 = phi i32 [ %51, %46 ], [ 0, %22 ]
  %48 = load ptr, ptr %2, align 4
  %49 = getelementptr %struct.uart_state, ptr %48, i32 %47
  tail call void @tty_port_init(ptr noundef %49) #18
  %50 = getelementptr inbounds %struct.tty_port, ptr %49, i32 0, i32 3
  store ptr @uart_port_ops, ptr %50, align 4
  %51 = add nuw nsw i32 %47, 1
  %52 = load i32, ptr %7, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %46, label %54

54:                                               ; preds = %46, %22
  %55 = tail call i32 @tty_register_driver(ptr noundef %18) #18
  %56 = icmp sgt i32 %55, -1
  br i1 %56, label %71, label %57

57:                                               ; preds = %54
  %58 = load i32, ptr %7, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %60, %57
  %61 = phi i32 [ %64, %60 ], [ 0, %57 ]
  %62 = load ptr, ptr %2, align 4
  %63 = getelementptr %struct.uart_state, ptr %62, i32 %61
  tail call void @tty_port_destroy(ptr noundef %63) #18
  %64 = add nuw nsw i32 %61, 1
  %65 = load i32, ptr %7, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %60, label %67

67:                                               ; preds = %60, %57
  tail call void @tty_driver_kref_put(ptr noundef %18) #18
  br label %68

68:                                               ; preds = %67, %20
  %69 = phi i32 [ %21, %20 ], [ %55, %67 ]
  %70 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %70) #18
  br label %71

71:                                               ; preds = %68, %54, %12, %11
  %72 = phi i32 [ %55, %54 ], [ %69, %68 ], [ -12, %12 ], [ -12, %11 ]
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__tty_alloc_driver(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_driver_kref_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uart_unregister_driver(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.uart_driver, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  tail call void @tty_unregister_driver(ptr noundef %3) #18
  tail call void @tty_driver_kref_put(ptr noundef %3) #18
  %4 = getelementptr inbounds %struct.uart_driver, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.uart_driver, ptr %0, i32 0, i32 7
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ 0, %7 ], [ %13, %9 ]
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr %struct.uart_state, ptr %11, i32 %10
  tail call void @tty_port_destroy(ptr noundef %12) #18
  %13 = add nuw i32 %10, 1
  %14 = load i32, ptr %4, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %9, label %16

16:                                               ; preds = %9, %1
  %17 = getelementptr inbounds %struct.uart_driver, ptr %0, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  tail call void @kfree(ptr noundef %18) #18
  store ptr null, ptr %17, align 4
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @uart_console_device(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.console, ptr %0, i32 0, i32 9
  %6 = load i16, ptr %5, align 2
  %7 = sext i16 %6 to i32
  store i32 %7, ptr %1, align 4
  %8 = getelementptr inbounds %struct.uart_driver, ptr %4, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uart_add_one_port(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca [64 x i8], align 1
  %4 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 41
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uart_driver, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %278

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.uart_driver, ptr %0, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.uart_state, ptr %11, i32 %5
  tail call void @mutex_lock(ptr noundef nonnull @port_mutex) #18
  %13 = getelementptr inbounds %struct.tty_port, ptr %12, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %13) #18
  %14 = getelementptr %struct.uart_state, ptr %11, i32 %5, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %276

17:                                               ; preds = %9
  %18 = getelementptr %struct.uart_state, ptr %11, i32 %5, i32 3
  store volatile i32 1, ptr %18, align 4
  %19 = getelementptr %struct.uart_state, ptr %11, i32 %5, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %19, ptr noundef nonnull @.str.9, ptr noundef nonnull @uart_add_one_port.__key) #18
  store ptr %1, ptr %14, align 4
  %20 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 30
  store ptr %12, ptr %20, align 4
  %21 = getelementptr %struct.uart_state, ptr %11, i32 %5, i32 1
  store i32 4, ptr %21, align 4
  %22 = getelementptr inbounds %struct.uart_driver, ptr %0, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 32
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.uart_driver, ptr %0, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.tty_driver, ptr %26, i32 0, i32 8
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %4, align 4
  %30 = add i32 %29, %28
  %31 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 42
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.uart_driver, ptr %0, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %25, align 4
  %35 = getelementptr inbounds %struct.tty_driver, ptr %34, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, %29
  %38 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.10, ptr noundef %33, i32 noundef %37) #18
  %39 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 53
  store ptr %38, ptr %39, align 4
  %40 = icmp eq ptr %38, null
  br i1 %40, label %276, label %41

41:                                               ; preds = %17
  %42 = load ptr, ptr %24, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 0, ptr %1, align 4
  br label %65

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.console, ptr %42, i32 0, i32 9
  %47 = load i16, ptr %46, align 2
  %48 = sext i16 %47 to i32
  %49 = load i32, ptr %4, align 4
  %50 = icmp eq i32 %49, %48
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.console, ptr %42, i32 0, i32 8
  %53 = load i16, ptr %52, align 4
  %54 = and i16 %53, 4
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51, %45
  store i32 0, ptr %1, align 4
  br label %57

57:                                               ; preds = %56, %51
  %58 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 45
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.device, ptr %59, i32 0, i32 25
  %63 = load ptr, ptr %62, align 8
  %64 = tail call zeroext i1 @of_console_check(ptr noundef %63, ptr noundef nonnull %42, i32 noundef %49) #18
  br label %65

65:                                               ; preds = %61, %57, %44
  %66 = load ptr, ptr %25, align 4
  %67 = load i32, ptr %4, align 4
  tail call void @tty_port_link_device(ptr noundef %12, ptr noundef %66, i32 noundef %67) #18
  %68 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 43
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %233, label %79

79:                                               ; preds = %75, %71, %65
  %80 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 33
  %81 = load i32, ptr %80, align 4
  %82 = lshr i32 %81, 6
  %83 = and i32 %82, 2
  %84 = and i32 %81, 268435456
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %98, label %86

86:                                               ; preds = %79
  %87 = and i32 %81, 134217728
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 38
  store i32 0, ptr %90, align 4
  %91 = or i32 %83, 1
  br label %92

92:                                               ; preds = %89, %86
  %93 = phi i32 [ %83, %86 ], [ %91, %89 ]
  %94 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 39
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.uart_ops, ptr %95, i32 0, i32 20
  %97 = load ptr, ptr %96, align 4
  tail call void %97(ptr noundef %1, i32 noundef %93) #18
  br label %98

98:                                               ; preds = %92, %79
  %99 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 38
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %233, label %102

102:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %3, i8 0, i32 64, i1 false) #18, !annotation !16
  %103 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 26
  %104 = load i8, ptr %103, align 2
  switch i8 %104, label %119 [
    i8 0, label %105
    i8 1, label %108
    i8 2, label %114
    i8 7, label %114
    i8 3, label %114
    i8 6, label %114
    i8 4, label %114
    i8 5, label %114
  ]

105:                                              ; preds = %102
  %106 = load i32, ptr %68, align 4
  %107 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 64, ptr noundef nonnull @.str.42, i32 noundef %106) #18
  br label %121

108:                                              ; preds = %102
  %109 = load i32, ptr %68, align 4
  %110 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 50
  %111 = load i8, ptr %110, align 2
  %112 = zext i8 %111 to i32
  %113 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 64, ptr noundef nonnull @.str.43, i32 noundef %109, i32 noundef %112) #18
  br label %121

114:                                              ; preds = %102, %102, %102, %102, %102, %102
  %115 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 43
  %116 = load i32, ptr %115, align 4
  %117 = zext i32 %116 to i64
  %118 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 64, ptr noundef nonnull @.str.44, i64 noundef %117) #18
  br label %121

119:                                              ; preds = %102
  %120 = call i32 @strlcpy(ptr noundef nonnull %3, ptr noundef nonnull @.str.45, i32 noundef 64) #18
  br label %121

121:                                              ; preds = %119, %114, %108, %105
  %122 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 45
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %131, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.device, ptr %123, i32 0, i32 3
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load ptr, ptr %123, align 4
  br label %131

131:                                              ; preds = %129, %125, %121
  %132 = phi ptr [ @.str.47, %129 ], [ @.str.47, %125 ], [ @.str.24, %121 ]
  %133 = phi ptr [ %130, %129 ], [ %127, %125 ], [ @.str.24, %121 ]
  %134 = load ptr, ptr %39, align 4
  %135 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 20
  %136 = load i32, ptr %135, align 4
  %137 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 22
  %138 = load i32, ptr %137, align 4
  %139 = lshr i32 %138, 4
  %140 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 39
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.uart_ops, ptr %141, i32 0, i32 17
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %147, label %145

145:                                              ; preds = %131
  %146 = call ptr %143(ptr noundef %1) #18
  br label %147

147:                                              ; preds = %145, %131
  %148 = phi ptr [ %146, %145 ], [ null, %131 ]
  %149 = icmp eq ptr %148, null
  %150 = select i1 %149, ptr @.str.40, ptr %148
  %151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %133, ptr noundef nonnull %132, ptr noundef %134, ptr noundef nonnull %3, i32 noundef %136, i32 noundef %139, ptr noundef %150) #19
  %152 = load i32, ptr %80, align 4
  %153 = and i32 %152, 65536
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %172, label %155

155:                                              ; preds = %147
  %156 = load ptr, ptr %122, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %164, label %158

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.device, ptr %156, i32 0, i32 3
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = load ptr, ptr %156, align 4
  br label %164

164:                                              ; preds = %162, %158, %155
  %165 = phi ptr [ @.str.47, %162 ], [ @.str.47, %158 ], [ @.str.24, %155 ]
  %166 = phi ptr [ %163, %162 ], [ %160, %158 ], [ @.str.24, %155 ]
  %167 = load ptr, ptr %39, align 4
  %168 = load i32, ptr %137, align 4
  %169 = lshr i32 %168, 3
  %170 = lshr i32 %168, 2
  %171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %166, ptr noundef nonnull %165, ptr noundef %167, i32 noundef %169, i32 noundef %170) #19
  br label %172

172:                                              ; preds = %164, %147
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #18
  %173 = load ptr, ptr %14, align 4
  %174 = load i32, ptr %21, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %186, label %176

176:                                              ; preds = %172
  %177 = icmp eq ptr %173, null
  br i1 %177, label %185, label %178

178:                                              ; preds = %176
  %179 = getelementptr inbounds %struct.uart_port, ptr %173, i32 0, i32 39
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.uart_ops, ptr %180, i32 0, i32 16
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %185, label %184

184:                                              ; preds = %178
  call void %182(ptr noundef nonnull %173, i32 noundef 0, i32 noundef %174) #18
  br label %185

185:                                              ; preds = %184, %178, %176
  store i32 0, ptr %21, align 4
  br label %186

186:                                              ; preds = %185, %172
  %187 = call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #18
  %188 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 36
  %189 = load i32, ptr %188, align 4
  %190 = and i32 %189, 2
  store i32 %190, ptr %188, align 4
  %191 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 56
  %192 = load i32, ptr %191, align 4
  %193 = and i32 %192, 5
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %197

195:                                              ; preds = %186
  %196 = or i32 %190, 4
  store i32 %196, ptr %188, align 4
  br label %197

197:                                              ; preds = %195, %186
  %198 = phi i32 [ %196, %195 ], [ %190, %186 ]
  %199 = load ptr, ptr %140, align 4
  %200 = getelementptr inbounds %struct.uart_ops, ptr %199, i32 0, i32 1
  %201 = load ptr, ptr %200, align 4
  call void %201(ptr noundef %1, i32 noundef %198) #18
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %187) #18
  %202 = load ptr, ptr %24, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %219, label %204

204:                                              ; preds = %197
  %205 = getelementptr inbounds %struct.console, ptr %202, i32 0, i32 8
  %206 = load i16, ptr %205, align 4
  %207 = and i16 %206, 4
  %208 = icmp eq i16 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  call void @register_console(ptr noundef nonnull %202) #18
  %210 = load ptr, ptr %24, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %219, label %212

212:                                              ; preds = %209, %204
  %213 = phi ptr [ %210, %209 ], [ %202, %204 ]
  %214 = getelementptr inbounds %struct.console, ptr %213, i32 0, i32 9
  %215 = load i16, ptr %214, align 2
  %216 = sext i16 %215 to i32
  %217 = load i32, ptr %4, align 4
  %218 = icmp eq i32 %217, %216
  br i1 %218, label %233, label %219

219:                                              ; preds = %212, %209, %197
  %220 = load ptr, ptr %14, align 4
  %221 = load i32, ptr %21, align 4
  %222 = icmp eq i32 %221, 3
  br i1 %222, label %233, label %223

223:                                              ; preds = %219
  %224 = icmp eq ptr %220, null
  br i1 %224, label %232, label %225

225:                                              ; preds = %223
  %226 = getelementptr inbounds %struct.uart_port, ptr %220, i32 0, i32 39
  %227 = load ptr, ptr %226, align 4
  %228 = getelementptr inbounds %struct.uart_ops, ptr %227, i32 0, i32 16
  %229 = load ptr, ptr %228, align 4
  %230 = icmp eq ptr %229, null
  br i1 %230, label %232, label %231

231:                                              ; preds = %225
  call void %229(ptr noundef nonnull %220, i32 noundef 3, i32 noundef %221) #18
  br label %232

232:                                              ; preds = %231, %225, %223
  store i32 3, ptr %21, align 4
  br label %233

233:                                              ; preds = %232, %219, %212, %98, %75
  %234 = load ptr, ptr %24, align 4
  %235 = icmp eq ptr %234, null
  br i1 %235, label %242, label %236

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.console, ptr %234, i32 0, i32 9
  %238 = load i16, ptr %237, align 2
  %239 = sext i16 %238 to i32
  %240 = load i32, ptr %4, align 4
  %241 = icmp eq i32 %240, %239
  br label %242

242:                                              ; preds = %236, %233
  %243 = phi i1 [ false, %233 ], [ %241, %236 ]
  %244 = zext i1 %243 to i8
  %245 = getelementptr inbounds %struct.tty_port, ptr %12, i32 0, i32 12
  %246 = load i8, ptr %245, align 4
  %247 = and i8 %246, -2
  %248 = or i8 %247, %244
  store i8 %248, ptr %245, align 4
  %249 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 54
  %250 = load ptr, ptr %249, align 4
  %251 = icmp eq ptr %250, null
  %252 = select i1 %251, i32 8, i32 12
  %253 = call noalias align 64 ptr @__kmalloc(i32 noundef %252, i32 noundef 3520) #20
  %254 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 55
  store ptr %253, ptr %254, align 4
  %255 = icmp eq ptr %253, null
  br i1 %255, label %276, label %256

256:                                              ; preds = %242
  store ptr @tty_dev_attr_group, ptr %253, align 64
  %257 = load ptr, ptr %249, align 4
  %258 = icmp eq ptr %257, null
  br i1 %258, label %261, label %259

259:                                              ; preds = %256
  %260 = getelementptr ptr, ptr %253, i32 1
  store ptr %257, ptr %260, align 4
  br label %261

261:                                              ; preds = %259, %256
  %262 = load ptr, ptr %25, align 4
  %263 = load i32, ptr %4, align 4
  %264 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 45
  %265 = load ptr, ptr %264, align 4
  %266 = call ptr @tty_port_register_device_attr_serdev(ptr noundef %12, ptr noundef %262, i32 noundef %263, ptr noundef %265, ptr noundef %12, ptr noundef nonnull %253) #18
  %267 = icmp ugt ptr %266, inttoptr (i32 -4096 to ptr)
  br i1 %267, label %269, label %268

268:                                              ; preds = %261
  call void @device_set_wakeup_capable(ptr noundef %266, i1 noundef zeroext true) #18
  br label %272

269:                                              ; preds = %261
  %270 = load ptr, ptr %264, align 4
  %271 = load i32, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %270, ptr noundef nonnull @.str.11, i32 noundef %271) #19
  br label %272

272:                                              ; preds = %269, %268
  %273 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 33
  %274 = load i32, ptr %273, align 4
  %275 = and i32 %274, -1073741825
  store i32 %275, ptr %273, align 4
  br label %276

276:                                              ; preds = %272, %242, %17, %9
  %277 = phi i32 [ 0, %272 ], [ -22, %9 ], [ -12, %17 ], [ -12, %242 ]
  call void @mutex_unlock(ptr noundef %13) #18
  call void @mutex_unlock(ptr noundef nonnull @port_mutex) #18
  br label %278

278:                                              ; preds = %276, %2
  %279 = phi i32 [ %277, %276 ], [ -22, %2 ]
  ret i32 %279
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_console_check(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_link_device(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_register_device_attr_serdev(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uart_remove_one_port(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.uart_driver, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 41
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.uart_state, ptr %5, i32 %7
  tail call void @mutex_lock(ptr noundef nonnull @port_mutex) #18
  %9 = getelementptr inbounds %struct.tty_port, ptr %8, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %9) #18
  %10 = getelementptr %struct.uart_state, ptr %5, i32 %7, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 45
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %15, ptr noundef nonnull @.str.12, ptr noundef %11, ptr noundef %1) #19
  br label %16

16:                                               ; preds = %13, %2
  %17 = icmp eq ptr %11, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @mutex_unlock(ptr noundef %9) #18
  br label %78

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 33
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %21, 1073741824
  store i32 %22, ptr %20, align 4
  tail call void @mutex_unlock(ptr noundef %9) #18
  %23 = getelementptr inbounds %struct.uart_driver, ptr %0, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = load i32, ptr %6, align 4
  tail call void @tty_port_unregister_device(ptr noundef %8, ptr noundef %24, i32 noundef %25) #18
  %26 = tail call ptr @tty_port_tty_get(ptr noundef %8) #18
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.tty_port, ptr %8, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  tail call void @tty_vhangup(ptr noundef %30) #18
  tail call void @tty_kref_put(ptr noundef nonnull %26) #18
  br label %31

31:                                               ; preds = %28, %19
  %32 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 32
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.console, ptr %33, i32 0, i32 9
  %37 = load i16, ptr %36, align 2
  %38 = sext i16 %37 to i32
  %39 = load i32, ptr %6, align 4
  %40 = icmp eq i32 %39, %38
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = tail call i32 @unregister_console(ptr noundef nonnull %33) #18
  br label %43

43:                                               ; preds = %41, %35, %31
  %44 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 38
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 39
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.uart_ops, ptr %49, i32 0, i32 18
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  tail call void %51(ptr noundef %1) #18
  br label %54

54:                                               ; preds = %53, %47, %43
  %55 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 55
  %56 = load ptr, ptr %55, align 4
  tail call void @kfree(ptr noundef %56) #18
  %57 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 53
  %58 = load ptr, ptr %57, align 4
  tail call void @kfree(ptr noundef %58) #18
  store i32 0, ptr %44, align 4
  tail call void @mutex_lock(ptr noundef %9) #18
  %59 = getelementptr %struct.uart_state, ptr %5, i32 %7, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #18, !srcloc !18
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 1, ptr elementtype(i32) %59) #18, !srcloc !22
  %61 = extractvalue { i32, i32 } %60, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64, !prof !8

63:                                               ; preds = %54
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3020, i32 noundef 9, ptr noundef null) #18
  br label %64

64:                                               ; preds = %63, %54
  %65 = load volatile i32, ptr %59, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !16
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #18
  %68 = getelementptr %struct.uart_state, ptr %5, i32 %7, i32 4
  %69 = call i32 @prepare_to_wait_event(ptr noundef %68, ptr noundef nonnull %3, i32 noundef 2) #18
  %70 = load volatile i32, ptr %59, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %72, %67
  call void @schedule() #18
  %73 = call i32 @prepare_to_wait_event(ptr noundef %68, ptr noundef nonnull %3, i32 noundef 2) #18
  %74 = load volatile i32, ptr %59, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %72

76:                                               ; preds = %72, %67
  call void @finish_wait(ptr noundef %68, ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #18
  br label %77

77:                                               ; preds = %76, %64
  store ptr null, ptr %10, align 4
  call void @mutex_unlock(ptr noundef %9) #18
  br label %78

78:                                               ; preds = %77, %18
  %79 = phi i32 [ 0, %77 ], [ -22, %18 ]
  call void @mutex_unlock(ptr noundef nonnull @port_mutex) #18
  ret i32 %79
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_unregister_device(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_port_tty_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_vhangup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_console(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @uart_match_port(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 26
  %4 = load i8, ptr %3, align 2
  %5 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 26
  %6 = load i8, ptr %5, align 2
  %7 = icmp eq i8 %4, %6
  br i1 %7, label %8, label %33

8:                                                ; preds = %2
  switch i8 %4, label %33 [
    i8 0, label %9
    i8 1, label %15
    i8 2, label %27
    i8 7, label %27
    i8 3, label %27
    i8 6, label %27
    i8 4, label %27
    i8 5, label %27
  ]

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %11, %13
  br label %33

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 50
  %23 = load i8, ptr %22, align 2
  %24 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 50
  %25 = load i8, ptr %24, align 2
  %26 = icmp eq i8 %23, %25
  br label %33

27:                                               ; preds = %8, %8, %8, %8, %8, %8
  %28 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 43
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 43
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %29, %31
  br label %33

33:                                               ; preds = %27, %21, %15, %9, %8, %2
  %34 = phi i1 [ %32, %27 ], [ %14, %9 ], [ false, %2 ], [ false, %15 ], [ %26, %21 ], [ false, %8 ]
  ret i1 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uart_handle_dcd_change(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tty_port, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @tty_ldisc_ref(ptr noundef nonnull %6) #18
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.tty_ldisc_ops, ptr %12, i32 0, i32 14
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void %14(ptr noundef nonnull %6, i32 noundef %1) #18
  br label %17

17:                                               ; preds = %16, %11
  tail call void @tty_ldisc_deref(ptr noundef nonnull %9) #18
  br label %18

18:                                               ; preds = %17, %8, %2
  %19 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 4
  %22 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 34
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %18
  %27 = icmp eq i32 %1, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.tty_port, ptr %4, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %29, i32 noundef 1, i32 noundef 1, ptr noundef null) #18
  br label %32

30:                                               ; preds = %26
  br i1 %7, label %32, label %31

31:                                               ; preds = %30
  tail call void @tty_hangup(ptr noundef nonnull %6) #18
  br label %32

32:                                               ; preds = %31, %30, %28, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_ldisc_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_deref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_hangup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uart_handle_cts_change(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 34
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 9
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %32

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 35
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = icmp eq i32 %1, 0
  br i1 %13, label %26, label %15

15:                                               ; preds = %10
  br i1 %14, label %32, label %16

16:                                               ; preds = %15
  store i32 0, ptr %11, align 4
  %17 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 39
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.uart_ops, ptr %18, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  tail call void %20(ptr noundef %0) #18
  %21 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25, !prof !8

24:                                               ; preds = %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/tty/serial/serial_core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 105, 0\0A.popsection", ""() #18, !srcloc !9
  unreachable

25:                                               ; preds = %16
  tail call void @tty_port_tty_wakeup(ptr noundef nonnull %22) #18
  br label %32

26:                                               ; preds = %10
  br i1 %14, label %27, label %32

27:                                               ; preds = %26
  store i32 1, ptr %11, align 4
  %28 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 39
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.uart_ops, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef %0) #18
  br label %32

32:                                               ; preds = %27, %26, %25, %15, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uart_insert_char(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 30
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 29
  %9 = load i32, ptr %8, align 4
  %10 = xor i32 %2, -1
  %11 = and i32 %10, %1
  %12 = and i32 %11, %9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %50

14:                                               ; preds = %5
  %15 = trunc i32 %3 to i8
  %16 = trunc i32 %4 to i8
  %17 = getelementptr inbounds %struct.tty_bufhead, ptr %7, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.tty_buffer, ptr %18, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  %23 = icmp ne i8 %16, 0
  %24 = and i1 %23, %22
  br i1 %24, label %43, label %25

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.tty_buffer, ptr %18, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.tty_buffer, ptr %18, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = icmp eq i32 %21, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.tty_buffer, ptr %18, i32 0, i32 6
  %35 = getelementptr i8, ptr %34, i32 %27
  %36 = getelementptr i8, ptr %35, i32 %29
  store i8 %16, ptr %36, align 1
  %37 = load i32, ptr %26, align 4
  br label %38

38:                                               ; preds = %33, %31
  %39 = phi i32 [ %37, %33 ], [ %27, %31 ]
  %40 = add i32 %39, 1
  store i32 %40, ptr %26, align 4
  %41 = getelementptr inbounds %struct.tty_buffer, ptr %18, i32 0, i32 6
  %42 = getelementptr i8, ptr %41, i32 %39
  store i8 %15, ptr %42, align 1
  br label %50

43:                                               ; preds = %25, %14
  %44 = tail call i32 @__tty_insert_flip_char(ptr noundef %7, i8 noundef zeroext %15, i8 noundef zeroext %16) #18
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 10
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr %47, align 4
  br label %50

50:                                               ; preds = %46, %43, %38, %5
  %51 = load i32, ptr %8, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %2, %1
  %54 = and i32 %53, %52
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %83, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.tty_bufhead, ptr %7, i32 0, i32 8
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.tty_buffer, ptr %58, i32 0, i32 5
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.tty_buffer, ptr %58, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.tty_buffer, ptr %58, i32 0, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.tty_buffer, ptr %58, i32 0, i32 6
  %71 = getelementptr i8, ptr %70, i32 %65
  %72 = getelementptr i8, ptr %71, i32 %67
  store i8 4, ptr %72, align 1
  %73 = load i32, ptr %64, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %64, align 4
  %75 = getelementptr i8, ptr %70, i32 %73
  store i8 0, ptr %75, align 1
  br label %83

76:                                               ; preds = %63, %56
  %77 = tail call i32 @__tty_insert_flip_char(ptr noundef %7, i8 noundef zeroext 0, i8 noundef zeroext 4) #18
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 31, i32 10
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, 1
  store i32 %82, ptr %80, align 4
  br label %83

83:                                               ; preds = %79, %76, %69, %50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @uart_try_toggle_sysrq(ptr nocapture noundef readnone %0, i32 noundef %1) #11 {
  ret i1 false
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uart_get_rs485_mode(ptr nocapture noundef %0) #0 {
  %2 = alloca [2 x i32], align 8
  %3 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 45
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  store i64 0, ptr %2, align 8, !annotation !16
  %6 = call i32 @device_property_read_u32_array(ptr noundef %5, ptr noundef nonnull @.str.13, ptr noundef nonnull %2, i32 noundef 2) #18
  %7 = icmp eq i32 %6, 0
  %8 = load i32, ptr %2, align 8
  %9 = getelementptr inbounds [2 x i32], ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = select i1 %7, i32 %8, i32 0
  %12 = select i1 %7, i32 %10, i32 0
  %13 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56, i32 1
  store i32 %11, ptr %13, align 4
  %14 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56, i32 2
  store i32 %12, ptr %14, align 4
  %15 = load i32, ptr %3, align 4
  %16 = and i32 %15, -56
  %17 = or i32 %16, 2
  store i32 %17, ptr %3, align 4
  %18 = call zeroext i1 @device_property_present(ptr noundef %5, ptr noundef nonnull @.str.14) #18
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, ptr %3, align 4
  %21 = or i32 %20, 16
  store i32 %21, ptr %3, align 4
  br label %22

22:                                               ; preds = %19, %1
  %23 = call zeroext i1 @device_property_present(ptr noundef %5, ptr noundef nonnull @.str.15) #18
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load i32, ptr %3, align 4
  %26 = or i32 %25, 1
  store i32 %26, ptr %3, align 4
  br label %27

27:                                               ; preds = %24, %22
  %28 = call zeroext i1 @device_property_present(ptr noundef %5, ptr noundef nonnull @.str.16) #18
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = load i32, ptr %3, align 4
  %31 = and i32 %30, -7
  %32 = or i32 %31, 4
  store i32 %32, ptr %3, align 4
  br label %33

33:                                               ; preds = %29, %27
  %34 = call ptr @devm_gpiod_get_optional(ptr noundef %5, ptr noundef nonnull @.str.17, i32 noundef 3) #18
  %35 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 57
  store ptr %34, ptr %35, align 4
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = ptrtoint ptr %34 to i32
  store ptr null, ptr %35, align 4
  %39 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %5, i32 noundef %38, ptr noundef nonnull @.str.18) #18
  br label %40

40:                                               ; preds = %37, %33
  %41 = phi i32 [ %39, %37 ], [ 0, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uart_install(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tty_driver, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_driver, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.uart_state, ptr %6, i32 %8
  %10 = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 30
  store ptr %9, ptr %10, align 4
  %11 = tail call i32 @tty_standard_install(ptr noundef %0, ptr noundef %1) #18
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uart_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @tty_port_open(ptr noundef %4, ptr noundef %0, ptr noundef %1) #18
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uart_close(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tty_driver, ptr %8, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.uart_driver, ptr %10, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr %struct.uart_state, ptr %12, i32 %14
  %16 = getelementptr inbounds %struct.tty_port, ptr %15, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %16) #18
  %17 = getelementptr inbounds %struct.tty_port, ptr %15, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, -1
  store i32 %19, ptr %17, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !11
  %20 = load i16, ptr %16, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !15
  br label %25

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 37
  %24 = load ptr, ptr %23, align 4
  tail call void @tty_port_close(ptr noundef %24, ptr noundef %0, ptr noundef %1) #18
  br label %25

25:                                               ; preds = %22, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uart_write(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 565, i32 noundef 9, ptr noundef null) #18
  br label %135

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #18, !srcloc !18
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 0, i32 1, ptr elementtype(i32) %9) #18, !srcloc !19
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !20
  %14 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %135, label %111

21:                                               ; preds = %13
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %15) #18
  %23 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %43, label %30

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %135, label %111

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2, i32 1
  %32 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 2, i32 2
  %33 = load i32, ptr %31, align 4
  %34 = sub i32 4095, %33
  %35 = load i32, ptr %32, align 4
  %36 = add i32 %34, %35
  %37 = and i32 %36, 4095
  %38 = icmp sgt i32 %37, %34
  %39 = sub i32 4096, %33
  %40 = select i1 %38, i32 %39, i32 %37
  %41 = tail call i32 @llvm.smin.i32(i32 %2, i32 %40)
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %76, label %53

43:                                               ; preds = %21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %15, i32 noundef %22) #18
  %44 = getelementptr inbounds %struct.uart_port, ptr %15, i32 0, i32 30
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.uart_state, ptr %45, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #18, !srcloc !18
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 1, ptr elementtype(i32) %46) #18, !srcloc !22
  %48 = extractvalue { i32, i32 } %47, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %135

50:                                               ; preds = %43
  %51 = load ptr, ptr %44, align 4
  %52 = getelementptr inbounds %struct.uart_state, ptr %51, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %52, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  br label %135

53:                                               ; preds = %53, %30
  %54 = phi i32 [ %74, %53 ], [ %41, %30 ]
  %55 = phi i32 [ %66, %53 ], [ 0, %30 ]
  %56 = phi i32 [ %65, %53 ], [ %2, %30 ]
  %57 = phi ptr [ %64, %53 ], [ %1, %30 ]
  %58 = phi i32 [ %63, %53 ], [ %33, %30 ]
  %59 = load ptr, ptr %23, align 4
  %60 = getelementptr i8, ptr %59, i32 %58
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %60, ptr align 1 %57, i32 %54, i1 false)
  %61 = load i32, ptr %31, align 4
  %62 = add i32 %61, %54
  %63 = and i32 %62, 4095
  store i32 %63, ptr %31, align 4
  %64 = getelementptr i8, ptr %57, i32 %54
  %65 = sub i32 %56, %54
  %66 = add i32 %54, %55
  %67 = xor i32 %63, 4095
  %68 = load i32, ptr %32, align 4
  %69 = add i32 %67, %68
  %70 = and i32 %69, 4095
  %71 = icmp ugt i32 %70, %67
  %72 = sub nuw nsw i32 4096, %63
  %73 = select i1 %71, i32 %72, i32 %70
  %74 = tail call i32 @llvm.smin.i32(i32 %65, i32 %73)
  %75 = icmp slt i32 %74, 1
  br i1 %75, label %76, label %53

76:                                               ; preds = %53, %30
  %77 = phi i32 [ 0, %30 ], [ %66, %53 ]
  %78 = load ptr, ptr %4, align 4
  %79 = getelementptr inbounds %struct.uart_state, ptr %78, i32 0, i32 5
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %101, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.uart_port, ptr %80, i32 0, i32 30
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.tty_port, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.tty_struct, ptr %86, i32 0, i32 19, i32 1
  %90 = load i8, ptr %89, align 4, !range !10
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %88, %82
  %93 = getelementptr inbounds %struct.uart_port, ptr %80, i32 0, i32 35
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.uart_port, ptr %80, i32 0, i32 39
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.uart_ops, ptr %98, i32 0, i32 4
  %100 = load ptr, ptr %99, align 4
  tail call void %100(ptr noundef nonnull %80) #18
  br label %101

101:                                              ; preds = %96, %92, %88, %76
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %15, i32 noundef %22) #18
  %102 = getelementptr inbounds %struct.uart_port, ptr %15, i32 0, i32 30
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.uart_state, ptr %103, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %104) #18, !srcloc !18
  %105 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %104, ptr %104, i32 1, ptr elementtype(i32) %104) #18, !srcloc !22
  %106 = extractvalue { i32, i32 } %105, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %135

108:                                              ; preds = %101
  %109 = load ptr, ptr %102, align 4
  %110 = getelementptr inbounds %struct.uart_state, ptr %109, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %110, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  br label %135

111:                                              ; preds = %26, %17
  %112 = load ptr, ptr %4, align 4
  %113 = getelementptr inbounds %struct.uart_state, ptr %112, i32 0, i32 5
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %135, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.uart_port, ptr %114, i32 0, i32 30
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.tty_port, ptr %118, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %126, label %122

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.tty_struct, ptr %120, i32 0, i32 19, i32 1
  %124 = load i8, ptr %123, align 4, !range !10
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %122, %116
  %127 = getelementptr inbounds %struct.uart_port, ptr %114, i32 0, i32 35
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.uart_port, ptr %114, i32 0, i32 39
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.uart_ops, ptr %132, i32 0, i32 4
  %134 = load ptr, ptr %133, align 4
  tail call void %134(ptr noundef nonnull %114) #18
  br label %135

135:                                              ; preds = %130, %126, %122, %111, %108, %101, %50, %43, %26, %17, %7
  %136 = phi i32 [ -46, %7 ], [ 0, %43 ], [ 0, %50 ], [ %77, %101 ], [ %77, %108 ], [ 0, %111 ], [ 0, %122 ], [ 0, %126 ], [ 0, %130 ], [ 0, %26 ], [ 0, %17 ]
  ret i32 %136
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uart_put_char(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #18, !srcloc !18
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 0, i32 1, ptr elementtype(i32) %6) #18, !srcloc !19
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %52, label %10

10:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !20
  %11 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %52, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %12) #18
  %16 = load ptr, ptr %5, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %12, i32 noundef %15) #18
  %19 = getelementptr inbounds %struct.uart_port, ptr %12, i32 0, i32 30
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.uart_state, ptr %20, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #18, !srcloc !18
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #18, !srcloc !22
  %23 = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %47, label %52

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 2, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 2, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = xor i32 %29, -1
  %31 = add i32 %27, %30
  %32 = and i32 %31, 4095
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %25
  %35 = getelementptr i8, ptr %16, i32 %29
  store i8 %1, ptr %35, align 1
  %36 = load i32, ptr %28, align 4
  %37 = add i32 %36, 1
  %38 = and i32 %37, 4095
  store i32 %38, ptr %28, align 4
  br label %39

39:                                               ; preds = %34, %25
  %40 = phi i32 [ 1, %34 ], [ 0, %25 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %12, i32 noundef %15) #18
  %41 = getelementptr inbounds %struct.uart_port, ptr %12, i32 0, i32 30
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.uart_state, ptr %42, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #18, !srcloc !18
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #18, !srcloc !22
  %45 = extractvalue { i32, i32 } %44, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %39, %18
  %48 = phi ptr [ %19, %18 ], [ %41, %39 ]
  %49 = phi i32 [ 0, %18 ], [ %40, %39 ]
  %50 = load ptr, ptr %48, align 4
  %51 = getelementptr inbounds %struct.uart_state, ptr %50, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %51, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  br label %52

52:                                               ; preds = %47, %39, %18, %10, %2
  %53 = phi i32 [ 0, %18 ], [ %40, %39 ], [ 0, %2 ], [ 0, %10 ], [ %49, %47 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uart_flush_chars(ptr nocapture noundef readonly %0) #0 {
  tail call void @uart_start(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uart_write_room(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #18, !srcloc !18
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 0, i32 1, ptr elementtype(i32) %4) #18, !srcloc !19
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !20
  %9 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %16 = load i32, ptr %15, align 4
  br label %32

17:                                               ; preds = %8
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %10) #18
  %19 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %22 = load i32, ptr %21, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %10, i32 noundef %18) #18
  %23 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 30
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.uart_state, ptr %24, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #18, !srcloc !18
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #18, !srcloc !22
  %27 = extractvalue { i32, i32 } %26, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load ptr, ptr %23, align 4
  %31 = getelementptr inbounds %struct.uart_state, ptr %30, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %31, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  br label %32

32:                                               ; preds = %29, %17, %12
  %33 = phi i32 [ %16, %12 ], [ %22, %17 ], [ %22, %29 ]
  %34 = phi i32 [ %14, %12 ], [ %20, %17 ], [ %20, %29 ]
  %35 = xor i32 %33, -1
  %36 = add i32 %34, %35
  %37 = and i32 %36, 4095
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uart_chars_in_buffer(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #18, !srcloc !18
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 0, i32 1, ptr elementtype(i32) %4) #18, !srcloc !19
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !20
  %9 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %16 = load i32, ptr %15, align 4
  br label %32

17:                                               ; preds = %8
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %10) #18
  %19 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  %22 = load i32, ptr %21, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %10, i32 noundef %18) #18
  %23 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 30
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.uart_state, ptr %24, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #18, !srcloc !18
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #18, !srcloc !22
  %27 = extractvalue { i32, i32 } %26, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load ptr, ptr %23, align 4
  %31 = getelementptr inbounds %struct.uart_state, ptr %30, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %31, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  br label %32

32:                                               ; preds = %29, %17, %12
  %33 = phi i32 [ %16, %12 ], [ %22, %17 ], [ %22, %29 ]
  %34 = phi i32 [ %14, %12 ], [ %20, %17 ], [ %20, %29 ]
  %35 = sub i32 %34, %33
  %36 = and i32 %35, 4095
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uart_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %6 = load ptr, ptr %5, align 4
  %7 = inttoptr i32 %2 to ptr
  %8 = icmp eq i32 %1, 21587
  br i1 %8, label %9, label %59

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 11
  tail call void @down_write(ptr noundef %10) #18
  %11 = tail call zeroext i1 @capable(i32 noundef 21) #18
  br i1 %11, label %12, label %54

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.tty_port, ptr %6, i32 0, i32 13
  %14 = tail call i32 @mutex_lock_interruptible(ptr noundef %13) #18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %54

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.uart_state, ptr %6, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %56, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.tty_port, ptr %6, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.tty_port, ptr %6, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %22
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %56

27:                                               ; preds = %20
  tail call fastcc void @uart_shutdown(ptr noundef %0, ptr noundef %6) #18
  %28 = getelementptr inbounds %struct.uart_port, ptr %18, i32 0, i32 38
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.uart_port, ptr %18, i32 0, i32 39
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.uart_ops, ptr %33, i32 0, i32 18
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  tail call void %35(ptr noundef nonnull %18) #18
  br label %38

38:                                               ; preds = %37, %31, %27
  %39 = getelementptr inbounds %struct.uart_port, ptr %18, i32 0, i32 33
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 128
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 1, i32 3
  %44 = getelementptr inbounds %struct.uart_port, ptr %18, i32 0, i32 39
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.uart_ops, ptr %45, i32 0, i32 20
  %47 = load ptr, ptr %46, align 4
  tail call void %47(ptr noundef nonnull %18, i32 noundef %43) #18
  %48 = tail call fastcc i32 @uart_startup(ptr noundef %0, ptr noundef %6, i32 noundef 1) #18
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = getelementptr inbounds %struct.tty_port, ptr %6, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 0, ptr noundef %51) #18
  br label %52

52:                                               ; preds = %50, %38
  %53 = tail call i32 @llvm.smin.i32(i32 %48, i32 0) #18
  br label %56

54:                                               ; preds = %12, %9
  %55 = phi i32 [ -512, %12 ], [ -1, %9 ]
  tail call void @up_write(ptr noundef %10) #18
  br label %187

56:                                               ; preds = %52, %20, %16
  %57 = phi i32 [ %53, %52 ], [ -16, %20 ], [ -5, %16 ]
  tail call void @mutex_unlock(ptr noundef %13) #18
  tail call void @up_write(ptr noundef %10) #18
  %58 = icmp eq i32 %57, -515
  br i1 %58, label %64, label %187

59:                                               ; preds = %3
  %60 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %61, 2
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %187

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %66, 2
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %156, label %187

69:                                               ; preds = %59
  %70 = icmp eq i32 %1, 21596
  br i1 %70, label %71, label %156

71:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #18
  %72 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 1
  %73 = tail call ptr @llvm.thread.pointer() #18
  store i32 0, ptr %4, align 4
  store ptr %73, ptr %72, align 4
  %74 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 2
  store ptr @default_wake_function, ptr %74, align 4
  %75 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3
  store ptr null, ptr %75, align 4
  %76 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3, i32 1
  store ptr null, ptr %76, align 4
  %77 = getelementptr inbounds %struct.uart_state, ptr %6, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %77) #18, !srcloc !18
  %78 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %77, ptr %77, i32 0, i32 1, ptr elementtype(i32) %77) #18, !srcloc !19
  %79 = extractvalue { i32, i32, i32 } %78, 0
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %154, label %81

81:                                               ; preds = %71
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !20
  %82 = getelementptr inbounds %struct.uart_state, ptr %6, i32 0, i32 5
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %154, label %85

85:                                               ; preds = %81
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull %83) #18
  %86 = getelementptr inbounds %struct.uart_port, ptr %83, i32 0, i32 31
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.uart_port, ptr %83, i32 0, i32 31, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.uart_port, ptr %83, i32 0, i32 31, i32 2
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.uart_port, ptr %83, i32 0, i32 31, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr inbounds %struct.uart_port, ptr %83, i32 0, i32 39
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.uart_ops, ptr %95, i32 0, i32 9
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %85
  tail call void %97(ptr noundef nonnull %83) #18
  br label %100

100:                                              ; preds = %99, %85
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !11
  %101 = load i16, ptr %83, align 4
  %102 = add i16 %101, 1
  store i16 %102, ptr %83, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !15
  %103 = getelementptr inbounds %struct.tty_port, ptr %6, i32 0, i32 9
  call void @add_wait_queue(ptr noundef %103, ptr noundef nonnull %4) #18
  %104 = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 1
  %105 = and i32 %2, 128
  %106 = icmp eq i32 %105, 0
  %107 = and i32 %2, 256
  %108 = icmp eq i32 %107, 0
  %109 = and i32 %2, 64
  %110 = icmp eq i32 %109, 0
  %111 = and i32 %2, 32
  %112 = icmp eq i32 %111, 0
  br label %113

113:                                              ; preds = %139, %100
  %114 = phi i32 [ %87, %100 ], [ %118, %139 ]
  %115 = phi i32 [ %89, %100 ], [ %119, %139 ]
  %116 = phi i32 [ %91, %100 ], [ %120, %139 ]
  %117 = phi i32 [ %93, %100 ], [ %121, %139 ]
  call void @_raw_spin_lock_irq(ptr noundef nonnull %83) #18
  %118 = load i32, ptr %86, align 4
  %119 = load i32, ptr %88, align 4
  %120 = load i32, ptr %90, align 4
  %121 = load i32, ptr %92, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !11
  %122 = load i16, ptr %83, align 4
  %123 = add i16 %122, 1
  store i16 %123, ptr %83, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !13
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !15
  store volatile i32 1, ptr %104, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !26
  %124 = icmp eq i32 %120, %116
  %125 = select i1 %106, i1 true, i1 %124
  %126 = icmp eq i32 %119, %115
  %127 = select i1 %108, i1 true, i1 %126
  %128 = select i1 %125, i1 %127, i1 false
  %129 = icmp eq i32 %121, %117
  %130 = select i1 %110, i1 true, i1 %129
  %131 = select i1 %128, i1 %130, i1 false
  %132 = icmp eq i32 %118, %114
  %133 = select i1 %112, i1 true, i1 %132
  %134 = select i1 %131, i1 %133, i1 false
  br i1 %134, label %135, label %143

135:                                              ; preds = %113
  call void @schedule() #18
  %136 = load volatile i32, ptr %73, align 4
  %137 = and i32 %136, 256
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %143, !prof !24

139:                                              ; preds = %135
  %140 = load volatile i32, ptr %73, align 4
  %141 = and i32 %140, 1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %113, label %143

143:                                              ; preds = %139, %135, %113
  %144 = phi i32 [ 0, %113 ], [ -512, %139 ], [ -512, %135 ]
  store volatile i32 0, ptr %104, align 8
  call void @remove_wait_queue(ptr noundef %103, ptr noundef nonnull %4) #18
  %145 = getelementptr inbounds %struct.uart_port, ptr %83, i32 0, i32 30
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.uart_state, ptr %146, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !21
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %147) #18, !srcloc !18
  %148 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %147, ptr %147, i32 1, ptr elementtype(i32) %147) #18, !srcloc !22
  %149 = extractvalue { i32, i32 } %148, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %143
  %152 = load ptr, ptr %145, align 4
  %153 = getelementptr inbounds %struct.uart_state, ptr %152, i32 0, i32 4
  call void @__wake_up(ptr noundef %153, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  br label %154

154:                                              ; preds = %151, %143, %81, %71
  %155 = phi i32 [ -5, %81 ], [ %144, %143 ], [ %144, %151 ], [ -5, %71 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #18
  br label %187

156:                                              ; preds = %69, %64
  %157 = phi ptr [ %60, %69 ], [ %65, %64 ]
  %158 = getelementptr inbounds %struct.tty_port, ptr %6, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %158) #18
  %159 = getelementptr inbounds %struct.uart_state, ptr %6, i32 0, i32 5
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %185, label %162

162:                                              ; preds = %156
  %163 = load volatile i32, ptr %157, align 4
  %164 = and i32 %163, 2
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %185

166:                                              ; preds = %162
  switch i32 %1, label %177 [
    i32 21593, label %167
    i32 21550, label %169
    i32 21551, label %171
    i32 -1071098813, label %173
    i32 -2144840638, label %175
  ]

167:                                              ; preds = %166
  %168 = tail call fastcc i32 @uart_get_lsr_info(ptr noundef %6, ptr noundef %7)
  br label %185

169:                                              ; preds = %166
  %170 = tail call fastcc i32 @uart_get_rs485_config(ptr noundef nonnull %160, ptr noundef %7)
  br label %185

171:                                              ; preds = %166
  %172 = tail call fastcc i32 @uart_set_rs485_config(ptr noundef nonnull %160, ptr noundef %7)
  br label %185

173:                                              ; preds = %166
  %174 = tail call fastcc i32 @uart_set_iso7816_config(ptr noundef nonnull %160, ptr noundef %7)
  br label %185

175:                                              ; preds = %166
  %176 = tail call fastcc i32 @uart_get_iso7816_config(ptr noundef nonnull %160, ptr noundef %7)
  br label %185

177:                                              ; preds = %166
  %178 = getelementptr inbounds %struct.uart_port, ptr %160, i32 0, i32 39
  %179 = load ptr, ptr %178, align 4
  %180 = getelementptr inbounds %struct.uart_ops, ptr %179, i32 0, i32 22
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %185, label %183

183:                                              ; preds = %177
  %184 = tail call i32 %181(ptr noundef nonnull %160, i32 noundef %1, i32 noundef %2) #18
  br label %185

185:                                              ; preds = %183, %177, %175, %173, %171, %169, %167, %162, %156
  %186 = phi i32 [ %184, %183 ], [ -515, %177 ], [ %176, %175 ], [ %174, %173 ], [ %172, %171 ], [ %170, %169 ], [ %168, %167 ], [ -5, %162 ], [ -5, %156 ]
  tail call void @mutex_unlock(ptr noundef %158) #18
  br label %187

187:                                              ; preds = %185, %154, %64, %59, %56, %54
  %188 = phi i32 [ %57, %56 ], [ %155, %154 ], [ %186, %185 ], [ -5, %59 ], [ %55, %54 ], [ -5, %64 ]
  ret i32 %188
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uart_set_termios(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13
  %6 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tty_port, ptr %4, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %8) #18
  %9 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %104, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 33
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 4194304
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %12
  %18 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 8
  %19 = load i8, ptr %18, align 1
  %20 = getelementptr %struct.ktermios, ptr %1, i32 0, i32 5, i32 8
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %19, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 9
  %25 = load i8, ptr %24, align 1
  %26 = getelementptr %struct.ktermios, ptr %1, i32 0, i32 5, i32 9
  %27 = load i8, ptr %26, align 1
  %28 = icmp ne i8 %25, %27
  br label %29

29:                                               ; preds = %23, %17, %12
  %30 = phi i32 [ 31, %12 ], [ 7199, %23 ], [ 7199, %17 ]
  %31 = phi i1 [ false, %12 ], [ %28, %23 ], [ true, %17 ]
  %32 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %7, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 7
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ktermios, ptr %1, i32 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load i32, ptr %5, align 4
  %49 = load i32, ptr %1, align 4
  %50 = xor i32 %49, %48
  %51 = and i32 %50, %30
  %52 = icmp ne i32 %51, 0
  %53 = select i1 %52, i1 true, i1 %31
  br i1 %53, label %54, label %104

54:                                               ; preds = %47, %41, %35, %29
  tail call fastcc void @uart_change_speed(ptr noundef %0, ptr noundef %4, ptr noundef %1)
  %55 = load i32, ptr %6, align 4
  %56 = load i32, ptr %32, align 4
  %57 = and i32 %56, 4111
  %58 = icmp ne i32 %57, 0
  %59 = and i32 %55, 4111
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %62, label %73

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 56
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  %67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %10) #18
  %68 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 36
  %69 = load i32, ptr %68, align 4
  %70 = select i1 %66, i32 -7, i32 -3
  %71 = and i32 %70, %69
  store i32 %71, ptr %68, align 4
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %102, label %95

73:                                               ; preds = %54
  %74 = select i1 %58, i1 true, i1 %60
  br i1 %74, label %104, label %75

75:                                               ; preds = %73
  %76 = icmp sgt i32 %55, -1
  br i1 %76, label %82, label %77

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  %79 = load volatile i32, ptr %78, align 4
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77, %75
  br label %83

83:                                               ; preds = %82, %77
  %84 = phi i32 [ 2, %77 ], [ 6, %82 ]
  %85 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 56
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %88, i32 %84, i32 2
  %90 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %10) #18
  %91 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 36
  %92 = load i32, ptr %91, align 4
  %93 = or i32 %89, %92
  store i32 %93, ptr %91, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %102, label %95

95:                                               ; preds = %83, %62
  %96 = phi i32 [ %71, %62 ], [ %93, %83 ]
  %97 = phi i32 [ %67, %62 ], [ %90, %83 ]
  %98 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 39
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.uart_ops, ptr %99, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  tail call void %101(ptr noundef nonnull %10, i32 noundef %96) #18
  br label %102

102:                                              ; preds = %95, %83, %62
  %103 = phi i32 [ %67, %62 ], [ %90, %83 ], [ %97, %95 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %10, i32 noundef %103) #18
  br label %104

104:                                              ; preds = %102, %73, %47, %2
  tail call void @mutex_unlock(ptr noundef %8) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uart_throttle(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #18, !srcloc !18
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 0, i32 1, ptr elementtype(i32) %4) #18, !srcloc !19
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %71, label %8

8:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !20
  %9 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %71, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 4096
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 32, i32 48
  %18 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %17, 4
  %21 = icmp slt i32 %19, 0
  %22 = select i1 %21, i32 %20, i32 %17
  %23 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 34
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %22, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 39
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.uart_ops, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef nonnull %10) #18
  %32 = load i32, ptr %23, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %22, %33
  br label %35

35:                                               ; preds = %27, %12
  %36 = phi i32 [ %34, %27 ], [ %22, %12 ]
  %37 = and i32 %36, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 56
  %41 = load i32, ptr %40, align 4
  %42 = shl i32 %41, 2
  %43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %10) #18
  %44 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 36
  %45 = load i32, ptr %44, align 4
  %46 = or i32 %42, -5
  %47 = and i32 %45, %46
  store i32 %47, ptr %44, align 4
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 39
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.uart_ops, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  tail call void %53(ptr noundef nonnull %10, i32 noundef %47) #18
  br label %54

54:                                               ; preds = %49, %39
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %10, i32 noundef %43) #18
  br label %55

55:                                               ; preds = %54, %35
  %56 = and i32 %36, 16
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 9
  %60 = load i8, ptr %59, align 1
  tail call void @uart_send_xchar(ptr noundef %0, i8 noundef zeroext %60)
  br label %61

61:                                               ; preds = %58, %55
  %62 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 30
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.uart_state, ptr %63, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %64) #18, !srcloc !18
  %65 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %64, ptr %64, i32 1, ptr elementtype(i32) %64) #18, !srcloc !22
  %66 = extractvalue { i32, i32 } %65, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load ptr, ptr %62, align 4
  %70 = getelementptr inbounds %struct.uart_state, ptr %69, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %70, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  br label %71

71:                                               ; preds = %68, %61, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uart_unthrottle(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #18, !srcloc !18
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 0, i32 1, ptr elementtype(i32) %4) #18, !srcloc !19
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %72, label %8

8:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !20
  %9 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %72, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 4096
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 32, i32 48
  %18 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %17, 4
  %21 = icmp slt i32 %19, 0
  %22 = select i1 %21, i32 %20, i32 %17
  %23 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 34
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %22, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 39
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.uart_ops, ptr %29, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef nonnull %10) #18
  %32 = load i32, ptr %23, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %22, %33
  br label %35

35:                                               ; preds = %27, %12
  %36 = phi i32 [ %34, %27 ], [ %22, %12 ]
  %37 = and i32 %36, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %56, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 56
  %41 = load i32, ptr %40, align 4
  %42 = shl i32 %41, 2
  %43 = and i32 %42, 4
  %44 = xor i32 %43, 4
  %45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %10) #18
  %46 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 36
  %47 = load i32, ptr %46, align 4
  %48 = or i32 %44, %47
  store i32 %48, ptr %46, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 39
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.uart_ops, ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  tail call void %54(ptr noundef nonnull %10, i32 noundef %48) #18
  br label %55

55:                                               ; preds = %50, %39
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %10, i32 noundef %45) #18
  br label %56

56:                                               ; preds = %55, %35
  %57 = and i32 %36, 16
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = getelementptr %struct.tty_struct, ptr %0, i32 0, i32 13, i32 5, i32 8
  %61 = load i8, ptr %60, align 1
  tail call void @uart_send_xchar(ptr noundef %0, i8 noundef zeroext %61)
  br label %62

62:                                               ; preds = %59, %56
  %63 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 30
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.uart_state, ptr %64, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %65) #18, !srcloc !18
  %66 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %65, ptr %65, i32 1, ptr elementtype(i32) %65) #18, !srcloc !22
  %67 = extractvalue { i32, i32 } %66, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load ptr, ptr %63, align 4
  %71 = getelementptr inbounds %struct.uart_state, ptr %70, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %71, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  br label %72

72:                                               ; preds = %69, %62, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uart_stop(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #18, !srcloc !18
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 0, i32 1, ptr elementtype(i32) %4) #18, !srcloc !19
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !20
  %9 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %10) #18
  %14 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 39
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.uart_ops, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  tail call void %17(ptr noundef nonnull %10) #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %10, i32 noundef %13) #18
  %18 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 30
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.uart_state, ptr %19, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #18, !srcloc !18
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #18, !srcloc !22
  %22 = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %12
  %25 = load ptr, ptr %18, align 4
  %26 = getelementptr inbounds %struct.uart_state, ptr %25, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %26, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  br label %27

27:                                               ; preds = %24, %12, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uart_start(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #18, !srcloc !18
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 0, i32 1, ptr elementtype(i32) %4) #18, !srcloc !19
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !20
  %9 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %10) #18
  br label %14

14:                                               ; preds = %12, %8, %1
  %15 = phi i1 [ false, %12 ], [ true, %8 ], [ true, %1 ]
  %16 = phi ptr [ %10, %12 ], [ null, %8 ], [ null, %1 ]
  %17 = phi i32 [ %13, %12 ], [ 0, %8 ], [ 0, %1 ]
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr inbounds %struct.uart_state, ptr %18, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %41, label %22

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.uart_port, ptr %20, i32 0, i32 30
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.tty_port, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.tty_struct, ptr %26, i32 0, i32 19, i32 1
  %30 = load i8, ptr %29, align 4, !range !10
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %28, %22
  %33 = getelementptr inbounds %struct.uart_port, ptr %20, i32 0, i32 35
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.uart_port, ptr %20, i32 0, i32 39
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.uart_ops, ptr %38, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  tail call void %40(ptr noundef nonnull %20) #18
  br label %41

41:                                               ; preds = %36, %32, %28, %14
  br i1 %15, label %52, label %42

42:                                               ; preds = %41
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #18
  %43 = getelementptr inbounds %struct.uart_port, ptr %16, i32 0, i32 30
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.uart_state, ptr %44, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #18, !srcloc !18
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #18, !srcloc !22
  %47 = extractvalue { i32, i32 } %46, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load ptr, ptr %43, align 4
  %51 = getelementptr inbounds %struct.uart_state, ptr %50, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %51, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  br label %52

52:                                               ; preds = %49, %42, %41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uart_hangup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %4) #18
  %5 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1658, i32 noundef 9, ptr noundef nonnull @.str.21) #18
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 11
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %47, label %14

14:                                               ; preds = %9
  tail call void @uart_flush_buffer(ptr noundef %0)
  tail call fastcc void @uart_shutdown(ptr noundef %0, ptr noundef %3)
  %15 = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 5
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #18
  %17 = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 7
  store i32 0, ptr %17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #18
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %10) #18
  tail call void @tty_port_tty_set(ptr noundef %3, ptr noundef null) #18
  br i1 %7, label %44, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 32
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.console, ptr %20, i32 0, i32 9
  %24 = load i16, ptr %23, align 2
  %25 = sext i16 %24 to i32
  %26 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 41
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %25
  br i1 %28, label %44, label %29

29:                                               ; preds = %22, %18
  %30 = load ptr, ptr %5, align 4
  %31 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = icmp eq ptr %30, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.uart_port, ptr %30, i32 0, i32 39
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.uart_ops, ptr %38, i32 0, i32 16
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  tail call void %40(ptr noundef nonnull %30, i32 noundef 3, i32 noundef %32) #18
  br label %43

43:                                               ; preds = %42, %36, %34
  store i32 3, ptr %31, align 4
  br label %44

44:                                               ; preds = %43, %29, %22, %14
  %45 = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %45, i32 noundef 1, i32 noundef 1, ptr noundef null) #18
  %46 = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %46, i32 noundef 1, i32 noundef 1, ptr noundef null) #18
  br label %47

47:                                               ; preds = %44, %9
  tail call void @mutex_unlock(ptr noundef %4) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uart_break_ctl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tty_port, ptr %4, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %5) #18
  %6 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 38
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.uart_port, ptr %7, i32 0, i32 39
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.uart_ops, ptr %15, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  tail call void %17(ptr noundef nonnull %7, i32 noundef %1) #18
  br label %20

20:                                               ; preds = %19, %13, %9, %2
  %21 = phi i32 [ -5, %2 ], [ 0, %19 ], [ 0, %13 ], [ 0, %9 ]
  tail call void @mutex_unlock(ptr noundef %5) #18
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uart_flush_buffer(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 631, i32 noundef 9, ptr noundef null) #18
  br label %36

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #18, !srcloc !18
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 0, i32 1, ptr elementtype(i32) %7) #18, !srcloc !19
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !20
  %12 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %36, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %13) #18
  %17 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 2
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 2, i32 1
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.uart_port, ptr %13, i32 0, i32 39
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.uart_ops, ptr %20, i32 0, i32 13
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  tail call void %22(ptr noundef nonnull %13) #18
  br label %25

25:                                               ; preds = %24, %15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %13, i32 noundef %16) #18
  %26 = getelementptr inbounds %struct.uart_port, ptr %13, i32 0, i32 30
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.uart_state, ptr %27, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #18, !srcloc !18
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 1, ptr elementtype(i32) %28) #18, !srcloc !22
  %30 = extractvalue { i32, i32 } %29, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load ptr, ptr %26, align 4
  %34 = getelementptr inbounds %struct.uart_state, ptr %33, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %34, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  br label %35

35:                                               ; preds = %32, %25
  tail call void @tty_port_tty_wakeup(ptr noundef nonnull %3) #18
  br label %36

36:                                               ; preds = %35, %11, %6, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uart_set_ldisc(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 11
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %9) #18
  %10 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 39
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.uart_ops, ptr %15, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13
  tail call void %17(ptr noundef nonnull %11, ptr noundef %20) #18
  br label %21

21:                                               ; preds = %19, %13, %8
  tail call void @mutex_unlock(ptr noundef %9) #18
  br label %22

22:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uart_wait_until_sent(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #18, !srcloc !18
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 0, i32 1, ptr elementtype(i32) %5) #18, !srcloc !19
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %79, label %9

9:                                                ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !20
  %10 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %79, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 38
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 23
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17, %13
  %22 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 30
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.uart_state, ptr %23, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #18, !srcloc !18
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #18, !srcloc !22
  %26 = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %75, label %79

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 37
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, -2
  %32 = udiv i32 %31, %19
  %33 = udiv i32 %32, 5
  %34 = icmp ult i32 %32, 5
  %35 = select i1 %34, i32 1, i32 %33
  %36 = icmp ne i32 %1, 0
  %37 = icmp ugt i32 %35, %1
  %38 = select i1 %36, i1 %37, i1 false
  %39 = select i1 %38, i32 %1, i32 %35
  %40 = icmp eq i32 %1, 0
  %41 = shl i32 %30, 1
  %42 = icmp ult i32 %41, %1
  %43 = select i1 %40, i1 true, i1 %42
  %44 = select i1 %43, i32 %41, i32 %1
  %45 = load volatile i32, ptr @jiffies, align 64
  %46 = add i32 %44, %45
  %47 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 39
  br label %48

48:                                               ; preds = %64, %28
  %49 = load ptr, ptr %47, align 4
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 %50(ptr noundef nonnull %11) #18
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %48
  %54 = tail call i32 @jiffies_to_msecs(i32 noundef %39) #18
  %55 = tail call i32 @msleep_interruptible(i32 noundef %54) #18
  %56 = tail call ptr @llvm.thread.pointer() #18
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %57, 256
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %68, !prof !24

60:                                               ; preds = %53
  %61 = load volatile i32, ptr %56, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load volatile i32, ptr @jiffies, align 64
  %66 = sub i32 %46, %65
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %48

68:                                               ; preds = %64, %60, %53, %48
  %69 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 30
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.uart_state, ptr %70, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %71) #18, !srcloc !18
  %72 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %71, ptr %71, i32 1, ptr elementtype(i32) %71) #18, !srcloc !22
  %73 = extractvalue { i32, i32 } %72, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68, %21
  %76 = phi ptr [ %22, %21 ], [ %69, %68 ]
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.uart_state, ptr %77, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %78, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  br label %79

79:                                               ; preds = %75, %68, %21, %9, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uart_send_xchar(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #18, !srcloc !18
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 0, i32 1, ptr elementtype(i32) %5) #18, !srcloc !19
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %39, label %9

9:                                                ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !20
  %10 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %39, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 39
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.uart_ops, ptr %15, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  tail call void %17(ptr noundef nonnull %11, i8 noundef zeroext %1) #18
  br label %29

20:                                               ; preds = %13
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %11) #18
  %22 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 24
  store i8 %1, ptr %22, align 4
  %23 = icmp eq i8 %1, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %14, align 4
  %26 = getelementptr inbounds %struct.uart_ops, ptr %25, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  tail call void %27(ptr noundef nonnull %11) #18
  br label %28

28:                                               ; preds = %24, %20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %11, i32 noundef %21) #18
  br label %29

29:                                               ; preds = %28, %19
  %30 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 30
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.uart_state, ptr %31, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #18, !srcloc !18
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #18, !srcloc !22
  %34 = extractvalue { i32, i32 } %33, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load ptr, ptr %30, align 4
  %38 = getelementptr inbounds %struct.uart_state, ptr %37, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %38, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  br label %39

39:                                               ; preds = %36, %29, %9, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uart_tiocmget(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tty_port, ptr %3, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %4) #18
  %5 = getelementptr inbounds %struct.uart_state, ptr %3, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 36
  %15 = load i32, ptr %14, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull %6) #18
  %16 = getelementptr inbounds %struct.uart_port, ptr %6, i32 0, i32 39
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.uart_ops, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef nonnull %6) #18
  %21 = or i32 %20, %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !11
  %22 = load i16, ptr %6, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !15
  br label %24

24:                                               ; preds = %13, %8, %1
  %25 = phi i32 [ -5, %8 ], [ %21, %13 ], [ -5, %1 ]
  tail call void @mutex_unlock(ptr noundef %4) #18
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uart_tiocmset(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %6) #18
  %7 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %37, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 56
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  %20 = and i32 %1, -5
  %21 = and i32 %2, -5
  %22 = select i1 %19, i32 %2, i32 %21
  %23 = select i1 %19, i32 %1, i32 %20
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %8) #18
  %25 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 36
  %26 = load i32, ptr %25, align 4
  %27 = xor i32 %22, -1
  %28 = and i32 %26, %27
  %29 = or i32 %28, %23
  store i32 %29, ptr %25, align 4
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %15
  %32 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 39
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.uart_ops, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  tail call void %35(ptr noundef nonnull %8, i32 noundef %29) #18
  br label %36

36:                                               ; preds = %31, %15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %8, i32 noundef %24) #18
  br label %37

37:                                               ; preds = %36, %10, %3
  %38 = phi i32 [ -5, %10 ], [ 0, %36 ], [ -5, %3 ]
  tail call void @mutex_unlock(ptr noundef %6) #18
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uart_get_icount(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #18, !srcloc !18
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 0, i32 1, ptr elementtype(i32) %5) #18, !srcloc !19
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %58, label %9

9:                                                ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !20
  %10 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %58, label %13

13:                                               ; preds = %9
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull %11) #18
  %14 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 31
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 31, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 31, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 31, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 31, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 31, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 31, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 31, i32 7
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 31, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 31, i32 9
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 31, i32 10
  %35 = load i32, ptr %34, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !11
  %36 = load i16, ptr %11, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !15
  %38 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 30
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.uart_state, ptr %39, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #18, !srcloc !18
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 1, ptr elementtype(i32) %40) #18, !srcloc !22
  %42 = extractvalue { i32, i32 } %41, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %13
  %45 = load ptr, ptr %38, align 4
  %46 = getelementptr inbounds %struct.uart_state, ptr %45, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %46, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  br label %47

47:                                               ; preds = %44, %13
  store i32 %15, ptr %1, align 4
  %48 = getelementptr inbounds %struct.serial_icounter_struct, ptr %1, i32 0, i32 1
  store i32 %17, ptr %48, align 4
  %49 = getelementptr inbounds %struct.serial_icounter_struct, ptr %1, i32 0, i32 2
  store i32 %19, ptr %49, align 4
  %50 = getelementptr inbounds %struct.serial_icounter_struct, ptr %1, i32 0, i32 3
  store i32 %21, ptr %50, align 4
  %51 = getelementptr inbounds %struct.serial_icounter_struct, ptr %1, i32 0, i32 4
  store i32 %23, ptr %51, align 4
  %52 = getelementptr inbounds %struct.serial_icounter_struct, ptr %1, i32 0, i32 5
  store i32 %25, ptr %52, align 4
  %53 = getelementptr inbounds %struct.serial_icounter_struct, ptr %1, i32 0, i32 6
  store i32 %27, ptr %53, align 4
  %54 = getelementptr inbounds %struct.serial_icounter_struct, ptr %1, i32 0, i32 7
  store i32 %29, ptr %54, align 4
  %55 = getelementptr inbounds %struct.serial_icounter_struct, ptr %1, i32 0, i32 8
  store i32 %31, ptr %55, align 4
  %56 = getelementptr inbounds %struct.serial_icounter_struct, ptr %1, i32 0, i32 9
  store i32 %33, ptr %56, align 4
  %57 = getelementptr inbounds %struct.serial_icounter_struct, ptr %1, i32 0, i32 10
  store i32 %35, ptr %57, align 4
  br label %58

58:                                               ; preds = %47, %9, %2
  %59 = phi i32 [ 0, %47 ], [ -5, %9 ], [ -5, %2 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uart_get_info_user(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc i32 @uart_get_info(ptr noundef %4, ptr noundef %1)
  %6 = icmp slt i32 %5, 0
  %7 = select i1 %6, i32 -5, i32 0
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uart_set_info_user(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 11
  tail call void @down_write(ptr noundef %5) #18
  %6 = getelementptr inbounds %struct.tty_port, ptr %4, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %6) #18
  %7 = getelementptr inbounds %struct.uart_state, ptr %4, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %261, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 3
  %14 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 8
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = mul nuw nsw i32 %16, 10
  %18 = tail call i32 @__msecs_to_jiffies(i32 noundef %17) #18
  %19 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 12
  %20 = load i16, ptr %19, align 4
  %21 = icmp eq i16 %20, -1
  br i1 %21, label %26, label %22

22:                                               ; preds = %10
  %23 = zext i16 %20 to i32
  %24 = mul nuw nsw i32 %23, 10
  %25 = tail call i32 @__msecs_to_jiffies(i32 noundef %24) #18
  br label %26

26:                                               ; preds = %22, %10
  %27 = phi i32 [ 65535, %10 ], [ %25, %22 ]
  %28 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 33
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 536870912
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %72

32:                                               ; preds = %26
  %33 = load i32, ptr %13, align 4
  %34 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 20
  %35 = load i32, ptr %34, align 4
  %36 = icmp ne i32 %33, %35
  %37 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %12, %38
  br i1 %39, label %40, label %72

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 14
  %42 = load ptr, ptr %41, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 43
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, %43
  br i1 %46, label %47, label %72

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 11
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 50
  %51 = load i8, ptr %50, align 2
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 9
  %56 = load i8, ptr %55, align 2
  %57 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 26
  %58 = load i8, ptr %57, align 2
  %59 = icmp eq i8 %56, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 15
  %62 = load i16, ptr %61, align 4
  %63 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 25
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i16
  %66 = icmp eq i16 %62, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load i32, ptr %1, align 4
  %69 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 38
  %70 = load i32, ptr %69, align 4
  %71 = icmp ne i32 %68, %70
  br label %72

72:                                               ; preds = %67, %60, %54, %47, %40, %32, %26
  %73 = phi i1 [ %36, %60 ], [ %36, %54 ], [ %36, %47 ], [ %36, %40 ], [ %36, %32 ], [ %36, %67 ], [ false, %26 ]
  %74 = phi i1 [ true, %60 ], [ true, %54 ], [ true, %47 ], [ true, %40 ], [ true, %32 ], [ %71, %67 ], [ false, %26 ]
  %75 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 4
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 40
  %78 = load i32, ptr %77, align 4
  %79 = tail call zeroext i1 @capable(i32 noundef 21) #18
  br i1 %79, label %116, label %80

80:                                               ; preds = %72
  %81 = select i1 %73, i1 true, i1 %74
  br i1 %81, label %261, label %82

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 7
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 22
  %86 = load i32, ptr %85, align 4
  %87 = lshr i32 %86, 4
  %88 = icmp eq i32 %84, %87
  br i1 %88, label %89, label %261

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.tty_port, ptr %4, i32 0, i32 16
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %18, %91
  br i1 %92, label %93, label %261

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.tty_port, ptr %4, i32 0, i32 17
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %27, %95
  br i1 %96, label %97, label %261

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 5
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 23
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %99, %103
  br i1 %104, label %105, label %261

105:                                              ; preds = %101, %97
  %106 = xor i32 %76, %29
  %107 = and i32 %106, -12337
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %261

109:                                              ; preds = %105
  %110 = load i32, ptr %28, align 4
  %111 = and i32 %110, -12337
  %112 = and i32 %76, 12336
  %113 = or i32 %111, %112
  store i32 %113, ptr %28, align 4
  %114 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 6
  %115 = load i32, ptr %114, align 4
  store i32 %115, ptr %77, align 4
  br label %223

116:                                              ; preds = %72
  %117 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 39
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.uart_ops, ptr %118, i32 0, i32 21
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %116
  %123 = tail call i32 %120(ptr noundef nonnull %8, ptr noundef %1) #18
  br label %124

124:                                              ; preds = %122, %116
  %125 = phi i32 [ %123, %122 ], [ 0, %116 ]
  %126 = load i32, ptr %13, align 4
  %127 = load i32, ptr @nr_irqs, align 4
  %128 = icmp sge i32 %126, %127
  %129 = icmp slt i32 %126, 0
  %130 = or i1 %129, %128
  br i1 %130, label %261, label %131

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 7
  %133 = load i32, ptr %132, align 4
  %134 = icmp slt i32 %133, 9600
  br i1 %134, label %261, label %135

135:                                              ; preds = %131
  %136 = icmp eq i32 %125, 0
  br i1 %136, label %137, label %261

137:                                              ; preds = %135
  %138 = select i1 %74, i1 true, i1 %73
  br i1 %138, label %139, label %147

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.tty_port, ptr %4, i32 0, i32 7
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr inbounds %struct.tty_port, ptr %4, i32 0, i32 6
  %143 = load i32, ptr %142, align 4
  %144 = add i32 %143, %141
  %145 = icmp sgt i32 %144, 1
  br i1 %145, label %261, label %146

146:                                              ; preds = %139
  tail call fastcc void @uart_shutdown(ptr noundef %0, ptr noundef %4) #18
  br label %147

147:                                              ; preds = %146, %137
  br i1 %74, label %148, label %198

148:                                              ; preds = %147
  %149 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 1
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 43
  %152 = load i32, ptr %151, align 4
  %153 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 38
  %154 = load i32, ptr %153, align 4
  %155 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 50
  %156 = load i8, ptr %155, align 2
  %157 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 26
  %158 = load i8, ptr %157, align 2
  %159 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 25
  %160 = load i8, ptr %159, align 1
  %161 = icmp eq i32 %154, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %148
  %163 = load ptr, ptr %117, align 4
  %164 = getelementptr inbounds %struct.uart_ops, ptr %163, i32 0, i32 18
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %168, label %167

167:                                              ; preds = %162
  tail call void %165(ptr noundef nonnull %8) #18
  br label %168

168:                                              ; preds = %167, %162, %148
  store i32 %12, ptr %149, align 4
  %169 = load i32, ptr %1, align 4
  store i32 %169, ptr %153, align 4
  %170 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 11
  %171 = load i32, ptr %170, align 4
  %172 = trunc i32 %171 to i8
  store i8 %172, ptr %155, align 2
  %173 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 9
  %174 = load i8, ptr %173, align 2
  store i8 %174, ptr %157, align 2
  %175 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 15
  %176 = load i16, ptr %175, align 4
  %177 = trunc i16 %176 to i8
  store i8 %177, ptr %159, align 1
  %178 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 14
  %179 = load ptr, ptr %178, align 4
  %180 = ptrtoint ptr %179 to i32
  store i32 %180, ptr %151, align 4
  %181 = icmp eq i32 %169, 0
  br i1 %181, label %198, label %182

182:                                              ; preds = %168
  %183 = load ptr, ptr %117, align 4
  %184 = getelementptr inbounds %struct.uart_ops, ptr %183, i32 0, i32 19
  %185 = load ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %198, label %187

187:                                              ; preds = %182
  %188 = tail call i32 %185(ptr noundef nonnull %8) #18
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %198, label %190

190:                                              ; preds = %187
  store i32 %150, ptr %149, align 4
  store i32 %154, ptr %153, align 4
  store i8 %156, ptr %155, align 2
  store i8 %158, ptr %157, align 2
  store i8 %160, ptr %159, align 1
  store i32 %152, ptr %151, align 4
  br i1 %161, label %261, label %191

191:                                              ; preds = %190
  %192 = load ptr, ptr %117, align 4
  %193 = getelementptr inbounds %struct.uart_ops, ptr %192, i32 0, i32 19
  %194 = load ptr, ptr %193, align 4
  %195 = tail call i32 %194(ptr noundef nonnull %8) #18
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %261, label %197

197:                                              ; preds = %191
  store i32 0, ptr %153, align 4
  br label %261

198:                                              ; preds = %187, %182, %168, %147
  br i1 %73, label %199, label %202

199:                                              ; preds = %198
  %200 = load i32, ptr %13, align 4
  %201 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 20
  store i32 %200, ptr %201, align 4
  br label %202

202:                                              ; preds = %199, %198
  %203 = load i32, ptr %28, align 4
  %204 = and i32 %203, 536870912
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %202
  %207 = load i32, ptr %132, align 4
  %208 = shl i32 %207, 4
  %209 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 22
  store i32 %208, ptr %209, align 4
  br label %210

210:                                              ; preds = %206, %202
  %211 = and i32 %203, -98304
  %212 = and i32 %76, 98303
  %213 = or i32 %211, %212
  store i32 %213, ptr %28, align 4
  %214 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 6
  %215 = load i32, ptr %214, align 4
  store i32 %215, ptr %77, align 4
  %216 = getelementptr inbounds %struct.tty_port, ptr %4, i32 0, i32 16
  store i32 %18, ptr %216, align 4
  %217 = getelementptr inbounds %struct.tty_port, ptr %4, i32 0, i32 17
  store i32 %27, ptr %217, align 4
  %218 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 5
  %219 = load i32, ptr %218, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %223, label %221

221:                                              ; preds = %210
  %222 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 23
  store i32 %219, ptr %222, align 4
  br label %223

223:                                              ; preds = %221, %210, %109
  %224 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 38
  %225 = load i32, ptr %224, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %261, label %227

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.tty_port, ptr %4, i32 0, i32 11
  %229 = load volatile i32, ptr %228, align 4
  %230 = and i32 %229, 1
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %255, label %232

232:                                              ; preds = %227
  %233 = load i32, ptr %28, align 4
  %234 = xor i32 %233, %29
  %235 = and i32 %234, 4144
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %232
  %238 = load i32, ptr %77, align 4
  %239 = icmp eq i32 %78, %238
  br i1 %239, label %261, label %240

240:                                              ; preds = %237, %232
  %241 = and i32 %233, 4144
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %254, label %243

243:                                              ; preds = %240
  %244 = tail call i32 @___ratelimit(ptr noundef nonnull @uart_set_info._rs, ptr noundef nonnull @__func__.uart_set_info) #18
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %254, label %246

246:                                              ; preds = %243
  %247 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 45
  %248 = load ptr, ptr %247, align 4
  %249 = tail call ptr @llvm.thread.pointer() #18
  %250 = getelementptr inbounds %struct.task_struct, ptr %249, i32 0, i32 85
  %251 = getelementptr inbounds %struct.tty_port, ptr %4, i32 0, i32 1
  %252 = load ptr, ptr %251, align 4
  %253 = tail call ptr @tty_name(ptr noundef %252) #18
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %248, ptr noundef nonnull @.str.22, ptr noundef %250, ptr noundef %253) #19
  br label %254

254:                                              ; preds = %246, %243, %240
  tail call fastcc void @uart_change_speed(ptr noundef %0, ptr noundef %4, ptr noundef null) #18
  br label %261

255:                                              ; preds = %227
  %256 = tail call fastcc i32 @uart_startup(ptr noundef %0, ptr noundef %4, i32 noundef 1) #18
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %255
  tail call void @_set_bit(i32 noundef 0, ptr noundef %228) #18
  br label %259

259:                                              ; preds = %258, %255
  %260 = tail call i32 @llvm.smin.i32(i32 %256, i32 0) #18
  br label %261

261:                                              ; preds = %259, %254, %237, %223, %197, %191, %190, %139, %135, %131, %124, %105, %101, %93, %89, %82, %80, %2
  %262 = phi i32 [ -5, %2 ], [ %125, %135 ], [ -16, %139 ], [ 0, %223 ], [ 0, %254 ], [ 0, %237 ], [ -1, %80 ], [ -1, %82 ], [ -1, %89 ], [ -1, %93 ], [ -1, %101 ], [ -1, %105 ], [ %260, %259 ], [ -22, %124 ], [ -22, %131 ], [ -16, %191 ], [ -16, %197 ], [ %188, %190 ]
  tail call void @mutex_unlock(ptr noundef %6) #18
  tail call void @up_write(ptr noundef %5) #18
  ret i32 %262
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uart_proc_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca [32 x i8], align 1
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tty_driver, ptr %5, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.24) #18
  %8 = getelementptr inbounds %struct.uart_driver, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %171

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.uart_driver, ptr %7, i32 0, i32 7
  %13 = getelementptr inbounds [32 x i8], ptr %3, i32 0, i32 1
  br label %14

14:                                               ; preds = %167, %11
  %15 = phi i32 [ 0, %11 ], [ %168, %167 ]
  %16 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i32 32, i1 false) #18, !annotation !16
  %17 = getelementptr %struct.uart_state, ptr %16, i32 %15, i32 0, i32 13
  call void @mutex_lock(ptr noundef %17) #18
  %18 = getelementptr %struct.uart_state, ptr %16, i32 %15, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %167, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 26
  %23 = load i8, ptr %22, align 2
  %24 = icmp ugt i8 %23, 1
  %25 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 41
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 39
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.uart_ops, ptr %28, i32 0, i32 17
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %21
  %33 = call ptr %30(ptr noundef nonnull %19) #18
  br label %34

34:                                               ; preds = %32, %21
  %35 = phi ptr [ %33, %32 ], [ null, %21 ]
  %36 = icmp eq ptr %35, null
  %37 = select i1 %36, ptr @.str.40, ptr %35
  %38 = select i1 %24, ptr @.str.26, ptr @.str.27
  %39 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 43
  %40 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 1
  %41 = select i1 %24, ptr %39, ptr %40
  %42 = load i32, ptr %41, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 20
  %45 = load i32, ptr %44, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %26, ptr noundef %37, ptr noundef nonnull %38, i64 noundef %43, i32 noundef %45) #18
  %46 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 38
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %166, label %49

49:                                               ; preds = %34
  %50 = call zeroext i1 @capable(i32 noundef 21) #18
  br i1 %50, label %51, label %166

51:                                               ; preds = %49
  %52 = getelementptr %struct.uart_state, ptr %16, i32 %15, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %18, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %65, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.uart_port, ptr %56, i32 0, i32 39
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.uart_ops, ptr %60, i32 0, i32 16
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  call void %62(ptr noundef nonnull %56, i32 noundef 0, i32 noundef %53) #18
  br label %65

65:                                               ; preds = %64, %58, %55
  store i32 0, ptr %52, align 4
  br label %66

66:                                               ; preds = %65, %51
  call void @_raw_spin_lock_irq(ptr noundef nonnull %19) #18
  %67 = load ptr, ptr %27, align 4
  %68 = getelementptr inbounds %struct.uart_ops, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = call i32 %69(ptr noundef nonnull %19) #18
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !11
  %71 = load i16, ptr %19, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr %19, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !13
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !15
  br i1 %54, label %87, label %73

73:                                               ; preds = %66
  %74 = load ptr, ptr %18, align 4
  %75 = load i32, ptr %52, align 4
  %76 = icmp eq i32 %75, %53
  br i1 %76, label %87, label %77

77:                                               ; preds = %73
  %78 = icmp eq ptr %74, null
  br i1 %78, label %86, label %79

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.uart_port, ptr %74, i32 0, i32 39
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.uart_ops, ptr %81, i32 0, i32 16
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  call void %83(ptr noundef nonnull %74, i32 noundef %53, i32 noundef %75) #18
  br label %86

86:                                               ; preds = %85, %79, %77
  store i32 %53, ptr %52, align 4
  br label %87

87:                                               ; preds = %86, %73, %66
  %88 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 31, i32 5
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 31, i32 4
  %91 = load i32, ptr %90, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %89, i32 noundef %91) #18
  %92 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 31, i32 6
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %87
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %93) #18
  br label %96

96:                                               ; preds = %95, %87
  %97 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 31, i32 8
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %98) #18
  br label %101

101:                                              ; preds = %100, %96
  %102 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 31, i32 9
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %103) #18
  br label %106

106:                                              ; preds = %105, %101
  %107 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 31, i32 7
  %108 = load i32, ptr %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef %108) #18
  br label %111

111:                                              ; preds = %110, %106
  %112 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 31, i32 10
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %111
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef %113) #18
  br label %116

116:                                              ; preds = %115, %111
  store i8 0, ptr %3, align 1
  store i8 0, ptr %13, align 1
  %117 = getelementptr inbounds %struct.uart_port, ptr %19, i32 0, i32 36
  %118 = load i32, ptr %117, align 4
  %119 = and i32 %118, 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %116
  %122 = call i32 @strlen(ptr noundef nonnull %3) #18
  %123 = sub i32 30, %122
  %124 = call ptr @strncat(ptr noundef nonnull %3, ptr noundef nonnull @.str.34, i32 noundef %123) #18
  br label %125

125:                                              ; preds = %121, %116
  %126 = and i32 %70, 32
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %125
  %129 = call i32 @strlen(ptr noundef nonnull %3) #18
  %130 = sub i32 30, %129
  %131 = call ptr @strncat(ptr noundef nonnull %3, ptr noundef nonnull @.str.35, i32 noundef %130) #18
  br label %132

132:                                              ; preds = %128, %125
  %133 = load i32, ptr %117, align 4
  %134 = and i32 %133, 2
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = call i32 @strlen(ptr noundef nonnull %3) #18
  %138 = sub i32 30, %137
  %139 = call ptr @strncat(ptr noundef nonnull %3, ptr noundef nonnull @.str.36, i32 noundef %138) #18
  br label %140

140:                                              ; preds = %136, %132
  %141 = and i32 %70, 256
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %140
  %144 = call i32 @strlen(ptr noundef nonnull %3) #18
  %145 = sub i32 30, %144
  %146 = call ptr @strncat(ptr noundef nonnull %3, ptr noundef nonnull @.str.37, i32 noundef %145) #18
  br label %147

147:                                              ; preds = %143, %140
  %148 = and i32 %70, 64
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %147
  %151 = call i32 @strlen(ptr noundef nonnull %3) #18
  %152 = sub i32 30, %151
  %153 = call ptr @strncat(ptr noundef nonnull %3, ptr noundef nonnull @.str.38, i32 noundef %152) #18
  br label %154

154:                                              ; preds = %150, %147
  %155 = and i32 %70, 128
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %154
  %158 = call i32 @strlen(ptr noundef nonnull %3) #18
  %159 = sub i32 30, %158
  %160 = call ptr @strncat(ptr noundef nonnull %3, ptr noundef nonnull @.str.39, i32 noundef %159) #18
  br label %161

161:                                              ; preds = %157, %154
  %162 = load i8, ptr %3, align 1
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %161
  store i8 32, ptr %3, align 1
  br label %165

165:                                              ; preds = %164, %161
  call void @seq_puts(ptr noundef %0, ptr noundef nonnull %3) #18
  br label %166

166:                                              ; preds = %165, %49, %34
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #18
  br label %167

167:                                              ; preds = %166, %14
  call void @mutex_unlock(ptr noundef %17) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  %168 = add nuw nsw i32 %15, 1
  %169 = load i32, ptr %8, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %14, label %171

171:                                              ; preds = %167, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_standard_install(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_port_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_close(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uart_get_lsr_info(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uart_state, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 39
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %4) #18
  %9 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 24
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.uart_state, ptr %0, i32 0, i32 2, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.uart_state, ptr %0, i32 0, i32 2, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 %14, %16
  %18 = and i32 %17, 4095
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 30
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.tty_port, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tty_struct, ptr %24, i32 0, i32 19, i32 1
  %28 = load i8, ptr %27, align 4, !range !10
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26, %20
  %31 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 35
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %2
  %35 = and i32 %8, -2
  br label %36

36:                                               ; preds = %34, %30, %26, %12
  %37 = phi i32 [ %35, %34 ], [ %8, %30 ], [ %8, %12 ], [ %8, %26 ]
  %38 = tail call ptr @llvm.thread.pointer() #18
  %39 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %40 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #21, !srcloc !27
  %41 = and i32 %40, -13
  %42 = or i32 %41, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #18, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !29
  %43 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %1, i32 %37, i32 -1090519041) #18, !srcloc !30
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #18, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !29
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uart_get_rs485_config(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.serial_rs485, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #18
  %5 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef align 4 dereferenceable(32) %5, i32 32, i1 false)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %4) #18
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 32, i32 -1090519040) #22, !srcloc !31
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = tail call ptr @llvm.thread.pointer() #18
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %11) #21, !srcloc !27
  %13 = and i32 %12, -13
  %14 = or i32 %13, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #18, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !29
  %15 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 32) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #18, !srcloc !28
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !29
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 0, i32 -14
  br label %18

18:                                               ; preds = %9, %2
  %19 = phi i32 [ -14, %2 ], [ %17, %9 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uart_set_rs485_config(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.serial_rs485, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !16
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 18
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %36, label %7

7:                                                ; preds = %2
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 32, i32 -1090519040) #22
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19, !prof !24

11:                                               ; preds = %7
  %12 = tail call ptr @llvm.thread.pointer() #18
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #21, !srcloc !27
  %15 = and i32 %14, -13
  %16 = or i32 %15, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #18, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !29
  %17 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 32) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #18, !srcloc !28
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !29
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !24

19:                                               ; preds = %11, %7
  %20 = phi i32 [ %17, %11 ], [ 32, %7 ]
  %21 = sub i32 32, %20
  %22 = getelementptr i8, ptr %3, i32 %21
  call void @llvm.memset.p0.i32(ptr align 1 %22, i8 0, i32 %20, i1 false) #18
  br label %36

23:                                               ; preds = %11
  %24 = call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #18
  %25 = load ptr, ptr %4, align 4
  %26 = call i32 %25(ptr noundef %0, ptr noundef nonnull %3) #18
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %24) #18
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 56
  %30 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #21, !srcloc !27
  %31 = and i32 %30, -13
  %32 = or i32 %31, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #18, !srcloc !28
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !29
  %33 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %29, i32 noundef 32) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #18, !srcloc !28
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !29
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 0, i32 -14
  br label %36

36:                                               ; preds = %28, %23, %19, %2
  %37 = phi i32 [ -25, %2 ], [ %26, %23 ], [ -14, %19 ], [ %35, %28 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uart_set_iso7816_config(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.serial_iso7816, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !16
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %56, label %7

7:                                                ; preds = %2
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 40, i32 -1090519040) #22
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %39, !prof !24

11:                                               ; preds = %7
  %12 = tail call ptr @llvm.thread.pointer() #18
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #21, !srcloc !27
  %15 = and i32 %14, -13
  %16 = or i32 %15, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #18, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !29
  %17 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 40) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #18, !srcloc !28
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !29
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %39, !prof !24

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.serial_iso7816, ptr %3, i32 0, i32 5, i32 0
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.serial_iso7816, ptr %3, i32 0, i32 5, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %22, i1 %25, i1 false
  %27 = getelementptr inbounds %struct.serial_iso7816, ptr %3, i32 0, i32 5, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %26, i1 %29, i1 false
  %31 = getelementptr inbounds %struct.serial_iso7816, ptr %3, i32 0, i32 5, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %30, i1 %33, i1 false
  %35 = getelementptr inbounds %struct.serial_iso7816, ptr %3, i32 0, i32 5, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %34, i1 %37, i1 false
  br i1 %38, label %43, label %56

39:                                               ; preds = %11, %7
  %40 = phi i32 [ %17, %11 ], [ 40, %7 ]
  %41 = sub i32 40, %40
  %42 = getelementptr i8, ptr %3, i32 %41
  call void @llvm.memset.p0.i32(ptr align 1 %42, i8 0, i32 %40, i1 false) #18
  br label %56

43:                                               ; preds = %19
  %44 = call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #18
  %45 = load ptr, ptr %4, align 4
  %46 = call i32 %45(ptr noundef %0, ptr noundef nonnull %3) #18
  call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %44) #18
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 58
  %50 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #21, !srcloc !27
  %51 = and i32 %50, -13
  %52 = or i32 %51, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #18, !srcloc !28
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !29
  %53 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %49, i32 noundef 40) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #18, !srcloc !28
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !29
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i32 0, i32 -14
  br label %56

56:                                               ; preds = %48, %43, %39, %19, %2
  %57 = phi i32 [ -25, %2 ], [ %46, %43 ], [ -14, %39 ], [ %55, %48 ], [ -22, %19 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #18
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uart_get_iso7816_config(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.serial_iso7816, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #18
  %4 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #18
  %9 = getelementptr inbounds %struct.uart_port, ptr %0, i32 0, i32 58
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, ptr noundef align 4 dereferenceable(40) %9, i32 40, i1 false)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %8) #18
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 40, i32 -1090519040) #22, !srcloc !31
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %7
  %14 = tail call ptr @llvm.thread.pointer() #18
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #21, !srcloc !27
  %17 = and i32 %16, -13
  %18 = or i32 %17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #18, !srcloc !28
  tail call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !29
  %19 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 40) #18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #18, !srcloc !28
  call void asm sideeffect "isb ", "~{memory}"() #18, !srcloc !29
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 0, i32 -14
  br label %22

22:                                               ; preds = %13, %7, %2
  %23 = phi i32 [ -25, %2 ], [ -14, %7 ], [ %21, %13 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #18
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uart_startup(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tty_port, ptr %1, i32 0, i32 11
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %142

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 38
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %137, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %14
  %19 = icmp eq ptr %10, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 39
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.uart_ops, ptr %22, i32 0, i32 16
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  tail call void %24(ptr noundef nonnull %10, i32 noundef 0, i32 noundef %16) #18
  br label %27

27:                                               ; preds = %26, %20, %18
  store i32 0, ptr %15, align 4
  br label %28

28:                                               ; preds = %27, %14
  %29 = tail call i32 @get_zeroed_page(i32 noundef 3264) #18
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %137, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #18, !srcloc !18
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 0, i32 1, ptr elementtype(i32) %32) #18, !srcloc !19
  %34 = extractvalue { i32, i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !20
  %37 = load ptr, ptr %9, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %37) #18
  br label %41

41:                                               ; preds = %39, %36, %31
  %42 = phi i32 [ %40, %39 ], [ 0, %36 ], [ 0, %31 ]
  %43 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = inttoptr i32 %29 to ptr
  store ptr %47, ptr %43, align 4
  %48 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 2
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.uart_state, ptr %1, i32 0, i32 2, i32 1
  store i32 0, ptr %49, align 4
  %50 = icmp eq ptr %10, null
  br i1 %50, label %74, label %51

51:                                               ; preds = %46
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %10, i32 noundef %42) #18
  %52 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 30
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.uart_state, ptr %53, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %54) #18, !srcloc !18
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %54, ptr %54, i32 1, ptr elementtype(i32) %54) #18, !srcloc !22
  %56 = extractvalue { i32, i32 } %55, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %51
  %59 = load ptr, ptr %52, align 4
  %60 = getelementptr inbounds %struct.uart_state, ptr %59, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %60, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  br label %74

61:                                               ; preds = %41
  %62 = icmp eq ptr %10, null
  br i1 %62, label %73, label %63

63:                                               ; preds = %61
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %10, i32 noundef %42) #18
  %64 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 30
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.uart_state, ptr %65, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %66) #18, !srcloc !18
  %67 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %66, ptr %66, i32 1, ptr elementtype(i32) %66) #18, !srcloc !22
  %68 = extractvalue { i32, i32 } %67, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load ptr, ptr %64, align 4
  %72 = getelementptr inbounds %struct.uart_state, ptr %71, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %72, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  br label %73

73:                                               ; preds = %70, %63, %61
  tail call void @free_pages(i32 noundef %29, i32 noundef 0) #18
  br label %74

74:                                               ; preds = %73, %58, %51, %46
  %75 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 39
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.uart_ops, ptr %76, i32 0, i32 11
  %78 = load ptr, ptr %77, align 4
  %79 = tail call i32 %78(ptr noundef %10) #18
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %135

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 32
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %112, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.console, ptr %83, i32 0, i32 9
  %87 = load i16, ptr %86, align 2
  %88 = sext i16 %87 to i32
  %89 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 41
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, %88
  br i1 %91, label %92, label %112

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.console, ptr %83, i32 0, i32 10
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %112, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 2
  store i32 %94, ptr %97, align 4
  %98 = load ptr, ptr %82, align 4
  %99 = getelementptr inbounds %struct.console, ptr %98, i32 0, i32 11
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 6
  store i32 %100, ptr %101, align 4
  %102 = load ptr, ptr %82, align 4
  %103 = getelementptr inbounds %struct.console, ptr %102, i32 0, i32 12
  %104 = load i32, ptr %103, align 4
  %105 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 7
  store i32 %104, ptr %105, align 4
  %106 = load ptr, ptr %82, align 4
  %107 = getelementptr inbounds %struct.console, ptr %106, i32 0, i32 10
  store i32 0, ptr %107, align 4
  %108 = load ptr, ptr %82, align 4
  %109 = getelementptr inbounds %struct.console, ptr %108, i32 0, i32 11
  store i32 0, ptr %109, align 4
  %110 = load ptr, ptr %82, align 4
  %111 = getelementptr inbounds %struct.console, ptr %110, i32 0, i32 12
  store i32 0, ptr %111, align 4
  br label %112

112:                                              ; preds = %96, %92, %85, %81
  tail call fastcc void @uart_change_speed(ptr noundef %0, ptr noundef %1, ptr noundef null) #18
  %113 = icmp eq i32 %2, 0
  br i1 %113, label %142, label %114

114:                                              ; preds = %112
  %115 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 13, i32 2
  %116 = load i32, ptr %115, align 4
  %117 = and i32 %116, 4111
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %142, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 56
  %121 = load i32, ptr %120, align 4
  %122 = and i32 %121, 1
  %123 = icmp eq i32 %122, 0
  %124 = select i1 %123, i32 6, i32 2
  %125 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #18
  %126 = getelementptr inbounds %struct.uart_port, ptr %10, i32 0, i32 36
  %127 = load i32, ptr %126, align 4
  %128 = or i32 %124, %127
  store i32 %128, ptr %126, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %119
  %131 = load ptr, ptr %75, align 4
  %132 = getelementptr inbounds %struct.uart_ops, ptr %131, i32 0, i32 1
  %133 = load ptr, ptr %132, align 4
  tail call void %133(ptr noundef %10, i32 noundef %128) #18
  br label %134

134:                                              ; preds = %130, %119
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %125) #18
  br label %142

135:                                              ; preds = %74
  %136 = tail call zeroext i1 @capable(i32 noundef 21) #18
  br i1 %136, label %137, label %139

137:                                              ; preds = %135, %28, %8
  %138 = phi i32 [ 1, %135 ], [ -12, %28 ], [ 1, %8 ]
  br label %139

139:                                              ; preds = %137, %135
  %140 = phi i32 [ %138, %137 ], [ %79, %135 ]
  %141 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 1, ptr noundef %141) #18
  br label %142

142:                                              ; preds = %139, %134, %114, %112, %3
  %143 = phi i32 [ 0, %3 ], [ %140, %139 ], [ 0, %112 ], [ 0, %114 ], [ 0, %134 ]
  ret i32 %143
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_port_tty_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uart_get_info(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %3) #18
  %4 = getelementptr inbounds %struct.uart_state, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %63, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 38
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %1, align 4
  %10 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 41
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 2
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 20
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 3
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 33
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 4
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 23
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 5
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 22
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, 4
  %28 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 7
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 16
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @jiffies_to_msecs(i32 noundef %30) #18
  %32 = udiv i32 %31, 10
  %33 = trunc i32 %32 to i16
  %34 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 8
  store i16 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 17
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 65535
  br i1 %37, label %42, label %38

38:                                               ; preds = %7
  %39 = tail call i32 @jiffies_to_msecs(i32 noundef %36) #18
  %40 = udiv i32 %39, 10
  %41 = trunc i32 %40 to i16
  br label %42

42:                                               ; preds = %38, %7
  %43 = phi i16 [ %41, %38 ], [ -1, %7 ]
  %44 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 12
  store i16 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 40
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 6
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 50
  %49 = load i8, ptr %48, align 2
  %50 = zext i8 %49 to i32
  %51 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 11
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 26
  %53 = load i8, ptr %52, align 2
  %54 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 9
  store i8 %53, ptr %54, align 2
  %55 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 25
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i16
  %58 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 15
  store i16 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 43
  %60 = load i32, ptr %59, align 4
  %61 = inttoptr i32 %60 to ptr
  %62 = getelementptr inbounds %struct.serial_struct, ptr %1, i32 0, i32 14
  store ptr %61, ptr %62, align 4
  br label %63

63:                                               ; preds = %42, %2
  %64 = phi i32 [ 0, %42 ], [ -19, %2 ]
  tail call void @mutex_unlock(ptr noundef %3) #18
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uart_carrier_raised(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.uart_state, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #18, !srcloc !18
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 0, i32 1, ptr elementtype(i32) %2) #18, !srcloc !19
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !20
  %7 = getelementptr inbounds %struct.uart_state, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %6, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1713, i32 noundef 9, ptr noundef null) #18
  br label %38

11:                                               ; preds = %6
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull %8) #18
  %12 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 39
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.uart_ops, ptr %13, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  tail call void %15(ptr noundef nonnull %8) #18
  %18 = load ptr, ptr %12, align 4
  br label %19

19:                                               ; preds = %17, %11
  %20 = phi ptr [ %13, %11 ], [ %18, %17 ]
  %21 = getelementptr inbounds %struct.uart_ops, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %22(ptr noundef nonnull %8) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !11
  %24 = load i16, ptr %8, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !15
  %26 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 30
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.uart_state, ptr %27, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #18, !srcloc !18
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 1, ptr elementtype(i32) %28) #18, !srcloc !22
  %30 = extractvalue { i32, i32 } %29, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %19
  %33 = load ptr, ptr %26, align 4
  %34 = getelementptr inbounds %struct.uart_state, ptr %33, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %34, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  br label %35

35:                                               ; preds = %32, %19
  %36 = lshr i32 %23, 6
  %37 = and i32 %36, 1
  br label %38

38:                                               ; preds = %35, %10
  %39 = phi i32 [ 1, %10 ], [ %37, %35 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uart_dtr_rts(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.uart_state, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #18, !srcloc !18
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 0, i32 1, ptr elementtype(i32) %3) #18, !srcloc !19
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %49, label %7

7:                                                ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !20
  %8 = getelementptr inbounds %struct.uart_state, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %49, label %11

11:                                               ; preds = %7
  %12 = icmp eq i32 %1, 0
  %13 = getelementptr inbounds %struct.uart_port, ptr %9, i32 0, i32 56
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %12, label %24, label %17

17:                                               ; preds = %11
  %18 = select i1 %16, i32 6, i32 2
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %9) #18
  %20 = getelementptr inbounds %struct.uart_port, ptr %9, i32 0, i32 36
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, ptr %20, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %38, label %31

24:                                               ; preds = %11
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %9) #18
  %26 = getelementptr inbounds %struct.uart_port, ptr %9, i32 0, i32 36
  %27 = load i32, ptr %26, align 4
  %28 = select i1 %16, i32 -7, i32 -3
  %29 = and i32 %27, %28
  store i32 %29, ptr %26, align 4
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %24, %17
  %32 = phi i32 [ %22, %17 ], [ %29, %24 ]
  %33 = phi i32 [ %19, %17 ], [ %25, %24 ]
  %34 = getelementptr inbounds %struct.uart_port, ptr %9, i32 0, i32 39
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.uart_ops, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void %37(ptr noundef nonnull %9, i32 noundef %32) #18
  br label %38

38:                                               ; preds = %31, %24, %17
  %39 = phi i32 [ %19, %17 ], [ %25, %24 ], [ %33, %31 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %9, i32 noundef %39) #18
  %40 = getelementptr inbounds %struct.uart_port, ptr %9, i32 0, i32 30
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.uart_state, ptr %41, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %42) #18, !srcloc !18
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %42, ptr %42, i32 1, ptr elementtype(i32) %42) #18, !srcloc !22
  %44 = extractvalue { i32, i32 } %43, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load ptr, ptr %40, align 4
  %48 = getelementptr inbounds %struct.uart_state, ptr %47, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %48, i32 noundef 3, i32 noundef 1, ptr noundef null) #18
  br label %49

49:                                               ; preds = %46, %38, %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uart_tty_port_shutdown(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.uart_state, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1550, i32 noundef 9, ptr noundef nonnull @.str.41) #18
  br label %47

6:                                                ; preds = %1
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull %3) #18
  %7 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 39
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.uart_ops, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  tail call void %10(ptr noundef nonnull %3) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !11
  %11 = load i16, ptr %3, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !15
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %14, i32 noundef 1, i32 noundef 1, ptr noundef null) #18
  %15 = icmp eq ptr %13, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.uart_port, ptr %13, i32 0, i32 39
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.uart_ops, ptr %18, i32 0, i32 12
  %20 = load ptr, ptr %19, align 4
  tail call void %20(ptr noundef nonnull %13) #18
  %21 = getelementptr inbounds %struct.uart_port, ptr %13, i32 0, i32 20
  %22 = load i32, ptr %21, align 4
  tail call void @synchronize_irq(i32 noundef %22) #18
  br label %23

23:                                               ; preds = %16, %6
  %24 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 11
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %24) #18
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull %3) #18
  %25 = getelementptr inbounds %struct.uart_state, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  store ptr null, ptr %25, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !11
  %27 = load i16, ptr %3, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !13
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !15
  %29 = icmp eq ptr %26, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = ptrtoint ptr %26 to i32
  tail call void @free_pages(i32 noundef %31, i32 noundef 0) #18
  br label %32

32:                                               ; preds = %30, %23
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr inbounds %struct.uart_state, ptr %0, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = icmp eq ptr %33, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.uart_port, ptr %33, i32 0, i32 39
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.uart_ops, ptr %41, i32 0, i32 16
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  tail call void %43(ptr noundef nonnull %33, i32 noundef 3, i32 noundef %35) #18
  br label %46

46:                                               ; preds = %45, %39, %37
  store i32 3, ptr %34, align 4
  br label %47

47:                                               ; preds = %46, %32, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uart_port_activate(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.uart_state, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.uart_port, ptr %4, i32 0, i32 33
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1073741824
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = tail call fastcc i32 @uart_startup(ptr noundef %1, ptr noundef %0, i32 noundef 0)
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.tty_port, ptr %0, i32 0, i32 11
  tail call void @_set_bit(i32 noundef 2, ptr noundef %15) #18
  br label %16

16:                                               ; preds = %14, %11, %6, %2
  %17 = phi i32 [ -6, %6 ], [ -6, %2 ], [ %12, %14 ], [ %12, %11 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_console(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uartclk_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %6) #18
  %7 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 22
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, -16
  %14 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 16
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @jiffies_to_msecs(i32 noundef %15) #18
  %17 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 17
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 65535
  br i1 %19, label %22, label %20

20:                                               ; preds = %10
  %21 = tail call i32 @jiffies_to_msecs(i32 noundef %18) #18
  br label %22

22:                                               ; preds = %20, %10, %3
  %23 = phi i32 [ 0, %3 ], [ %13, %20 ], [ %13, %10 ]
  tail call void @mutex_unlock(ptr noundef %6) #18
  %24 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.50, i32 noundef %23)
  ret i32 %24
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %6) #18
  %7 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 38
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 16
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @jiffies_to_msecs(i32 noundef %14) #18
  %16 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 17
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 65535
  br i1 %18, label %21, label %19

19:                                               ; preds = %10
  %20 = tail call i32 @jiffies_to_msecs(i32 noundef %17) #18
  br label %21

21:                                               ; preds = %19, %10, %3
  %22 = phi i32 [ 0, %3 ], [ %12, %19 ], [ %12, %10 ]
  tail call void @mutex_unlock(ptr noundef %6) #18
  %23 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.50, i32 noundef %22)
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @line_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %6) #18
  %7 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 41
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 16
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @jiffies_to_msecs(i32 noundef %14) #18
  %16 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 17
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 65535
  br i1 %18, label %21, label %19

19:                                               ; preds = %10
  %20 = tail call i32 @jiffies_to_msecs(i32 noundef %17) #18
  br label %21

21:                                               ; preds = %19, %10, %3
  %22 = phi i32 [ 0, %3 ], [ %12, %19 ], [ %12, %10 ]
  tail call void @mutex_unlock(ptr noundef %6) #18
  %23 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.50, i32 noundef %22)
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @port_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %6) #18
  %7 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 16
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @jiffies_to_msecs(i32 noundef %14) #18
  %16 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 17
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 65535
  br i1 %18, label %21, label %19

19:                                               ; preds = %10
  %20 = tail call i32 @jiffies_to_msecs(i32 noundef %17) #18
  br label %21

21:                                               ; preds = %19, %10, %3
  %22 = phi i32 [ 0, %3 ], [ %12, %19 ], [ %12, %10 ]
  tail call void @mutex_unlock(ptr noundef %6) #18
  %23 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.54, i32 noundef %22)
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @irq_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %6) #18
  %7 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 20
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 16
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @jiffies_to_msecs(i32 noundef %14) #18
  %16 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 17
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 65535
  br i1 %18, label %21, label %19

19:                                               ; preds = %10
  %20 = tail call i32 @jiffies_to_msecs(i32 noundef %17) #18
  br label %21

21:                                               ; preds = %19, %10, %3
  %22 = phi i32 [ 0, %3 ], [ %12, %19 ], [ %12, %10 ]
  tail call void @mutex_unlock(ptr noundef %6) #18
  %23 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.50, i32 noundef %22)
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flags_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %6) #18
  %7 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 33
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 16
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @jiffies_to_msecs(i32 noundef %14) #18
  %16 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 17
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 65535
  br i1 %18, label %21, label %19

19:                                               ; preds = %10
  %20 = tail call i32 @jiffies_to_msecs(i32 noundef %17) #18
  br label %21

21:                                               ; preds = %19, %10, %3
  %22 = phi i32 [ 0, %3 ], [ %12, %19 ], [ %12, %10 ]
  tail call void @mutex_unlock(ptr noundef %6) #18
  %23 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.57, i32 noundef %22)
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xmit_fifo_size_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %6) #18
  %7 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 23
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 16
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @jiffies_to_msecs(i32 noundef %14) #18
  %16 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 17
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 65535
  br i1 %18, label %21, label %19

19:                                               ; preds = %10
  %20 = tail call i32 @jiffies_to_msecs(i32 noundef %17) #18
  br label %21

21:                                               ; preds = %19, %10, %3
  %22 = phi i32 [ 0, %3 ], [ %12, %19 ], [ %12, %10 ]
  tail call void @mutex_unlock(ptr noundef %6) #18
  %23 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.50, i32 noundef %22)
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @close_delay_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %6) #18
  %7 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 16
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @jiffies_to_msecs(i32 noundef %12) #18
  %14 = udiv i32 %13, 10
  %15 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 17
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 65535
  br i1 %17, label %20, label %18

18:                                               ; preds = %10
  %19 = tail call i32 @jiffies_to_msecs(i32 noundef %16) #18
  br label %20

20:                                               ; preds = %18, %10
  %21 = and i32 %14, 65535
  br label %22

22:                                               ; preds = %20, %3
  %23 = phi i32 [ 0, %3 ], [ %21, %20 ]
  tail call void @mutex_unlock(ptr noundef %6) #18
  %24 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.50, i32 noundef %23)
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @closing_wait_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %6) #18
  %7 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 16
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @jiffies_to_msecs(i32 noundef %12) #18
  %14 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 17
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 65535
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = tail call i32 @jiffies_to_msecs(i32 noundef %15) #18
  %19 = udiv i32 %18, 10
  %20 = and i32 %19, 65535
  br label %21

21:                                               ; preds = %17, %10, %3
  %22 = phi i32 [ 0, %3 ], [ %20, %17 ], [ 65535, %10 ]
  tail call void @mutex_unlock(ptr noundef %6) #18
  %23 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.50, i32 noundef %22)
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @custom_divisor_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %6) #18
  %7 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 16
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @jiffies_to_msecs(i32 noundef %12) #18
  %14 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 17
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 65535
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = tail call i32 @jiffies_to_msecs(i32 noundef %15) #18
  br label %19

19:                                               ; preds = %17, %10
  %20 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 40
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %3
  %23 = phi i32 [ 0, %3 ], [ %21, %19 ]
  tail call void @mutex_unlock(ptr noundef %6) #18
  %24 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.50, i32 noundef %23)
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @io_type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %6) #18
  %7 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 16
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @jiffies_to_msecs(i32 noundef %12) #18
  %14 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 17
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 65535
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = tail call i32 @jiffies_to_msecs(i32 noundef %15) #18
  br label %19

19:                                               ; preds = %17, %10
  %20 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 26
  %21 = load i8, ptr %20, align 2
  %22 = zext i8 %21 to i32
  br label %23

23:                                               ; preds = %19, %3
  %24 = phi i32 [ 0, %3 ], [ %22, %19 ]
  tail call void @mutex_unlock(ptr noundef %6) #18
  %25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.50, i32 noundef %24)
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iomem_base_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %6) #18
  %7 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 16
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @jiffies_to_msecs(i32 noundef %12) #18
  %14 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 17
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 65535
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = tail call i32 @jiffies_to_msecs(i32 noundef %15) #18
  br label %19

19:                                               ; preds = %17, %10
  %20 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 43
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %3
  %23 = phi i32 [ 0, %3 ], [ %21, %19 ]
  tail call void @mutex_unlock(ptr noundef %6) #18
  %24 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.54, i32 noundef %23)
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iomem_reg_shift_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %6) #18
  %7 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 16
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @jiffies_to_msecs(i32 noundef %12) #18
  %14 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 17
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 65535
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = tail call i32 @jiffies_to_msecs(i32 noundef %15) #18
  br label %19

19:                                               ; preds = %17, %10
  %20 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 25
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  br label %23

23:                                               ; preds = %19, %3
  %24 = phi i32 [ 0, %3 ], [ %22, %19 ]
  tail call void @mutex_unlock(ptr noundef %6) #18
  %25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.50, i32 noundef %24)
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @console_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tty_port, ptr %5, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %6) #18
  %7 = getelementptr inbounds %struct.uart_state, ptr %5, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 32
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.console, ptr %12, i32 0, i32 9
  %16 = load i16, ptr %15, align 2
  %17 = sext i16 %16 to i32
  %18 = getelementptr inbounds %struct.uart_port, ptr %8, i32 0, i32 41
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %17
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.console, ptr %12, i32 0, i32 8
  %23 = load i16, ptr %22, align 4
  %24 = and i16 %23, 4
  %25 = icmp eq i16 %24, 0
  %26 = select i1 %25, i32 78, i32 89
  br label %27

27:                                               ; preds = %21, %14, %10, %3
  %28 = phi i32 [ 78, %3 ], [ 78, %14 ], [ 78, %10 ], [ %26, %21 ]
  tail call void @mutex_unlock(ptr noundef %6) #18
  %29 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.66, i32 noundef %28)
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @console_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #18
  store i8 0, ptr %5, align 1, !annotation !16
  %8 = call i32 @kstrtobool(ptr noundef %2, ptr noundef nonnull %5) #18
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %52

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tty_port, ptr %7, i32 0, i32 13
  call void @mutex_lock(ptr noundef %11) #18
  %12 = getelementptr inbounds %struct.uart_state, ptr %7, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %44, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.uart_port, ptr %13, i32 0, i32 32
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %34, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.console, ptr %17, i32 0, i32 9
  %21 = load i16, ptr %20, align 2
  %22 = sext i16 %21 to i32
  %23 = getelementptr inbounds %struct.uart_port, ptr %13, i32 0, i32 41
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %22
  br i1 %25, label %26, label %37

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.console, ptr %17, i32 0, i32 8
  %28 = load i16, ptr %27, align 4
  %29 = and i16 %28, 4
  %30 = icmp ne i16 %29, 0
  %31 = load i8, ptr %5, align 1
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %47, label %40

34:                                               ; preds = %15
  %35 = load i8, ptr %5, align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %46, label %44

37:                                               ; preds = %19
  %38 = load i8, ptr %5, align 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %46, label %44

40:                                               ; preds = %26
  %41 = select i1 %30, i1 true, i1 %32
  br i1 %41, label %46, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.uart_port, ptr %13, i32 0, i32 52
  store i8 1, ptr %43, align 4
  call void @register_console(ptr noundef nonnull %17) #18
  br label %46

44:                                               ; preds = %37, %34, %10
  %45 = phi i32 [ -6, %10 ], [ -2, %34 ], [ -2, %37 ]
  call void @mutex_unlock(ptr noundef %11) #18
  br label %50

46:                                               ; preds = %42, %40, %37, %34
  call void @mutex_unlock(ptr noundef %11) #18
  br label %52

47:                                               ; preds = %26
  %48 = call i32 @unregister_console(ptr noundef nonnull %17) #18
  call void @mutex_unlock(ptr noundef %11) #18
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47, %44
  %51 = phi i32 [ %45, %44 ], [ %48, %47 ]
  br label %52

52:                                               ; preds = %50, %47, %46, %4
  %53 = phi i32 [ %8, %4 ], [ %51, %50 ], [ %3, %47 ], [ %3, %46 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #18
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__tty_insert_flip_char(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nounwind }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind readonly }
attributes #22 = { nounwind readnone }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2153336595, i64 2153337092, i64 2153336632, i64 2153336688, i64 2153336722, i64 2153336746, i64 2153336787, i64 2153336808, i64 2153336836, i64 2153336870}
!10 = !{i8 0, i8 2}
!11 = !{i64 2149006329}
!12 = !{i64 2149002153}
!13 = !{i64 2149002228, i64 2149002255, i64 2149002302, i64 2149002324, i64 2149002352, i64 2149002372}
!14 = !{i64 527727}
!15 = !{i64 2149030473}
!16 = !{!"auto-init"}
!17 = !{i64 2148122697}
!18 = !{i64 621804, i64 2148111775, i64 2148111801, i64 2148111848, i64 2148111870, i64 2148111898, i64 2148111918}
!19 = !{i64 608373, i64 608398, i64 608420, i64 608436, i64 608448, i64 608468, i64 608492, i64 608508, i64 608520}
!20 = !{i64 2148122823}
!21 = !{i64 2148223869}
!22 = !{i64 2148126231, i64 2148126263, i64 2148126292, i64 2148126326, i64 2148126357, i64 2148126380}
!23 = !{i64 2148224072}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{i64 2153400293, i64 2153400791, i64 2153400330, i64 2153400386, i64 2153400420, i64 2153400444, i64 2153400485, i64 2153400506, i64 2153400534, i64 2153400568}
!26 = !{i64 2153371618}
!27 = !{i64 3824006}
!28 = !{i64 3824203}
!29 = !{i64 2151309482}
!30 = !{i64 2153365655, i64 2153365935, i64 2153366269, i64 2153366603}
!31 = !{i64 2151328472, i64 2151328497}
